# exists_zeroFree_line

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3be1b63d6b73cf535968d8bb367401c8ae167f3d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 321,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bdadeffa-0d3d-8efd-8304-fe95dacce37a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0ff07b14-24a1-6292-4709-040cd99339bc",
  "kind": "theorem",
  "lexical_name": "exists_zeroFree_line",
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
  "slug": "exists-zerofree-line--c6df0de9bc9aaf348c2d84d2",
  "source": {
    "blob": "3be1b63d6b73cf535968d8bb367401c8ae167f3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 321,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6df0de9bc9aaf348c2d84d2a7f132f5c417bb9602950be39cc950d3dafae5c4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ff07b14-24a1-6292-4709-040cd99339bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_zeroFree_line (t₀ : ℝ) :
    ∃ c : ℝ, 9/8 ≤ c ∧ c ≤ 5/4 ∧ ∀ s : ℂ, s.re = c → |s.im| < t₀ → hardyW s ≠ 0 := by
  have hfin := finite_lowZeros_right t₀
  set bad : Finset ℝ := (hfin.image Complex.re).toFinset with hbad
  obtain ⟨c, hc, hcb⟩ := (Icc_infinite (show (9/8:ℝ) < 5/4 by norm_num)).exists_notMem_finset bad
  refine ⟨c, hc.1, hc.2, fun s hsre hsim h0 => hcb ?_⟩
  rw [hbad, Set.Finite.mem_toFinset]
  exact ⟨s, ⟨⟨by rw [hsre]; exact hc.1, by rw [hsre]; exact hc.2, hsim.le⟩, h0⟩, hsre⟩

/-- … and then also none on Re s = 1 − c (off ℝ by W(1−s) = 0 ↔ W(s) = 0; at the real point via
the reflection identity extended to the real point by continuity). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant9ae66315190a8a011793daf61d8b2f55d3921010f8e4093263dee7c954f8005e.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3be1b63d6b73cf535968d8bb367401c8ae167f3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
