# weightedSample_norm_integrals_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6db783a-b333-4803-d198-ab317e66f440",
  "kind": "theorem",
  "lexical_name": "weightedSample_norm_integrals_summable",
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
  "slug": "weightedsample-norm-integrals-summable--e8c87366e074ed96073dfd5e",
  "source": {
    "blob": "01cb0526005e83023c811fb7881f7b20a95328fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 55,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb08a8c3a8d0e5befa65b9d253d2d3fe46004fffb417e1e4f90bbe4abded3b900.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8c87366e074ed96073dfd5edbe930b7bf070a541c00a99c185c4165a29b7111",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb08a8c3a8d0e5befa65b9d253d2d3fe46004fffb417e1e4f90bbe4abded3b900.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6db783a-b333-4803-d198-ab317e66f440`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedSample_norm_integrals_summable {A : ℝ} (s : ℂ) (hs : 1 < s.re) :
    Summable (fun n : ℕ => ∫ x in Ioi 0, ‖weightedSample A s n x‖) := by
  simp_rw [weightedSample_norm_integral]
  exact ((summable_nat_add_iff 1).mpr (summable_nat_rpow.mpr (by linarith))).mul_right _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb08a8c3a8d0e5befa65b9d253d2d3fe46004fffb417e1e4f90bbe4abded3b900.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb08a8c3a8d0e5befa65b9d253d2d3fe46004fffb417e1e4f90bbe4abded3b900.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01cb0526005e83023c811fb7881f7b20a95328fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
