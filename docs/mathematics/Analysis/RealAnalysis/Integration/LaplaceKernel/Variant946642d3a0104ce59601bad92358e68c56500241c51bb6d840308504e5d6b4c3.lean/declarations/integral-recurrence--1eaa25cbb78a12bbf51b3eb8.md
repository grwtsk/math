# integral_recurrence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b3797e814591ccde5aeff374feae6e5bd0e454a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/946642d3a0104ce59601bad92358e68c56500241c51bb6d840308504e5d6b4c3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d130db4a-5623-1110-b316-fe27a0a344cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:97a1dfb9-1cec-1652-337f-0caafb54ecb6",
  "kind": "lemma",
  "lexical_name": "integral_recurrence",
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
  "slug": "integral-recurrence--1eaa25cbb78a12bbf51b3eb8",
  "source": {
    "blob": "7b3797e814591ccde5aeff374feae6e5bd0e454a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 48,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant946642d3a0104ce59601bad92358e68c56500241c51bb6d840308504e5d6b4c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1eaa25cbb78a12bbf51b3eb821e5dd87d0645e9412ed32ba604a7a267d517cd3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant946642d3a0104ce59601bad92358e68c56500241c51bb6d840308504e5d6b4c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97a1dfb9-1cec-1652-337f-0caafb54ecb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_recurrence (k : ℕ) (w : ℂ) (hw : 0 < w.re) :
    (∫ A in Ioi (1 : ℝ), kernelIntegrand (k+1) w A) =
      (Complex.exp (-w) + ((k+1 : ℕ) : ℂ) * ∫ A in Ioi (1 : ℝ), kernelIntegrand k w A) / w := by
  have h := integral_Ioi_of_hasDerivAt_of_tendsto'
    (a := (1 : ℝ)) (fun A _ ↦ kernelIntegrand_deriv k w A)
    (((kernelIntegrand_integrable k w hw).const_mul _).sub
      ((kernelIntegrand_integrable (k+1) w hw).const_mul _))
    (kernelIntegrand_tendsto (k+1) w hw)
  rw [integral_sub ((kernelIntegrand_integrable k w hw).const_mul _)
    ((kernelIntegrand_integrable (k+1) w hw).const_mul _), integral_const_mul,
    integral_const_mul] at h
  have hw0 : w ≠ 0 := by intro he; simp [he] at hw
  simp only [kernelIntegrand, Complex.ofReal_one, one_pow, mul_one, one_mul, zero_sub] at h
  apply (eq_div_iff hw0).mpr
  dsimp only [kernelIntegrand]
  linear_combination -h

/-- Polynomial numerator of the exact tail kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant946642d3a0104ce59601bad92358e68c56500241c51bb6d840308504e5d6b4c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LaplaceKernel/Variant946642d3a0104ce59601bad92358e68c56500241c51bb6d840308504e5d6b4c3.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b3797e814591ccde5aeff374feae6e5bd0e454a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
