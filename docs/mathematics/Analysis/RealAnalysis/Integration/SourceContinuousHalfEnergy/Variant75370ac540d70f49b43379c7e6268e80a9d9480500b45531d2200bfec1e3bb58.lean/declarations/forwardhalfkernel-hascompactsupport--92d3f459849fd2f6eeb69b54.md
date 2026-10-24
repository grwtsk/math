# forwardHalfKernel_hasCompactSupport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4b1f9f5aa6ac99b83f939c567dcbc130802a55a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c4598658-2799-2eea-ab9a-7f201a225e0c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad5de374-c6d7-7f67-e8da-a37b451de5ad",
  "kind": "theorem",
  "lexical_name": "forwardHalfKernel_hasCompactSupport",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "forwardhalfkernel-hascompactsupport--92d3f459849fd2f6eeb69b54",
  "source": {
    "blob": "4b1f9f5aa6ac99b83f939c567dcbc130802a55a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 43,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variant75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92d3f459849fd2f6eeb69b54f935e2c0c836fc420775a5752c0960fd38fae2cc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variant75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad5de374-c6d7-7f67-e8da-a37b451de5ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forwardHalfKernel_hasCompactSupport {A : ℝ} (hA : 0 < A) :
    HasCompactSupport (forwardHalfKernel A) := by
  refine exists_compact_iff_hasCompactSupport.mp
    ⟨(Icc (-(2 * A)) (2 * A)) ×ˢ (Icc (-A) A), isCompact_Icc.prod isCompact_Icc, ?_⟩
  rintro ⟨t,x⟩ hp
  dsimp only [forwardHalfKernel]
  by_cases hx : A ≤ |x|
  · rw [normalizedTest_zero_of_le_abs A x hA hx]
    ring
  · have hx' : x ∈ Icc (-A) A := abs_le.mp (le_of_lt (lt_of_not_ge hx))
    have ht : t ∉ Icc (-(2 * A)) (2 * A) := fun ht ↦ hp ⟨ht, hx'⟩
    have hxt : A ≤ |x + t| := by
      have hbounds := abs_le.mp (le_of_lt (lt_of_not_ge hx))
      simp only [mem_Icc, not_and_or, not_le] at ht
      rcases ht with ht | ht
      · rw [abs_of_nonpos (by linarith : x + t ≤ 0)]
        linarith
      · exact (show A ≤ x + t by linarith).trans (le_abs_self _)
    rw [normalizedTest_zero_of_le_abs A (x + t) hA hxt]
    ring

/-- Every Fubini premise is an actual integrability theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variant75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variant75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b1f9f5aa6ac99b83f939c567dcbc130802a55a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
