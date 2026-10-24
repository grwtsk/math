# weightedSample_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6ab6ae4-2f77-0405-6d7d-5ba4d68d2a80",
  "kind": "theorem",
  "lexical_name": "weightedSample_integrable",
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
  "slug": "weightedsample-integrable--8ce21bdc5ab71a6686e8810a",
  "source": {
    "blob": "01cb0526005e83023c811fb7881f7b20a95328fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 20,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb08a8c3a8d0e5befa65b9d253d2d3fe46004fffb417e1e4f90bbe4abded3b900.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ce21bdc5ab71a6686e8810a53a3534e501163d2987d236686dddb551f09ff65",
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

Occurrence: `result:c6ab6ae4-2f77-0405-6d7d-5ba4d68d2a80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedSample_integrable {A : ℝ} (hA : 0 < A) (s : ℂ) (n : ℕ) :
    IntegrableOn (weightedSample A s n) (Ioi 0) := by
  have hn : 0 < ((n+1 : ℕ) : ℝ) := by positivity
  change IntegrableOn (fun x : ℝ => (x : ℂ)^(s-1)*complexSource A (((n+1 : ℕ) : ℝ)*x)) (Ioi 0)
  simpa only [MellinConvergent,smul_eq_mul] using
    (MellinConvergent.comp_mul_left hn).mpr (actual_source_mellinConvergent hA s)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb08a8c3a8d0e5befa65b9d253d2d3fe46004fffb417e1e4f90bbe4abded3b900.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt02/Variantb08a8c3a8d0e5befa65b9d253d2d3fe46004fffb417e1e4f90bbe4abded3b900.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01cb0526005e83023c811fb7881f7b20a95328fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
