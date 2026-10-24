# norm_jacobiTheta₂_term_fderiv_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cd77f9b89bf0f397ea397436abf6b5f605eeb5ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ccdb9d90-acdd-cc77-7905-f196042292a9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8cd788bb-7eae-8c94-19fc-da5070fa6232",
  "kind": "lemma",
  "lexical_name": "norm_jacobiTheta₂_term_fderiv_ge",
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
  "slug": "norm-jacobitheta-term-fderiv-ge--ad828bb329be6773125e9fda",
  "source": {
    "blob": "cd77f9b89bf0f397ea397436abf6b5f605eeb5ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 178,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad828bb329be6773125e9fda62585cae2056824695fdd3d9eb9a611ad5287fb0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cd788bb-7eae-8c94-19fc-da5070fa6232`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_jacobiTheta₂_term_fderiv_ge (n : ℤ) (z τ : ℂ) :
    π * |n| ^ 2 * ‖jacobiTheta₂_term n z τ‖ ≤ ‖jacobiTheta₂_term_fderiv n z τ‖ := by
  have : ‖(jacobiTheta₂_term_fderiv n z τ) (0, 1)‖ ≤ ‖jacobiTheta₂_term_fderiv n z τ‖ := by
    refine (ContinuousLinearMap.le_opNorm _ _).trans ?_
    simp_rw [Prod.norm_def, norm_one, norm_zero, max_eq_right zero_le_one, mul_one, le_refl]
  refine le_trans ?_ this
  simp_rw [jacobiTheta₂_term_fderiv, jacobiTheta₂_term, ContinuousLinearMap.coe_smul',
    Pi.smul_apply, ContinuousLinearMap.add_apply, ContinuousLinearMap.coe_smul',
    ContinuousLinearMap.coe_fst', ContinuousLinearMap.coe_snd', Pi.smul_apply, smul_zero, zero_add,
    smul_eq_mul, mul_one, mul_comm _ ‖cexp _‖, norm_mul]
  refine mul_le_mul_of_nonneg_left (le_of_eq ?_) (norm_nonneg _)
  simp_rw [norm_real, norm_of_nonneg pi_pos.le, norm_I, mul_one,
    Int.cast_abs, ← norm_intCast, norm_pow]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd77f9b89bf0f397ea397436abf6b5f605eeb5ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
