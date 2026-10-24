# residual_cross_nonpos_of_source_jet_det

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b97936bb-4334-2301-3785-f98a533c2f21",
  "kind": "theorem",
  "lexical_name": "residual_cross_nonpos_of_source_jet_det",
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
  "slug": "residual-cross-nonpos-of-source-jet-det--d4423c439e148609333bf3fd",
  "source": {
    "blob": "f250eb72edba4481bef5f71e01b360726b8a738a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 87,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/7a0ef8ccc1633e676f0faec83e07fbe95825bde6a68d51cf6faece8d2fe90fe1Criterion01Faile/Variant4fe6148e78461be2979526f6405677514dd7e9bb5f80b674ddf703c51b4d3099.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4423c439e148609333bf3fdf60d09c2a32366d39b4c916c5b2372a095510418",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/7a0ef8ccc1633e676f0faec83e07fbe95825bde6a68d51cf6faece8d2fe90fe1Criterion01Faile/Variant4fe6148e78461be2979526f6405677514dd7e9bb5f80b674ddf703c51b4d3099.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b97936bb-4334-2301-3785-f98a533c2f21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_cross_nonpos_of_source_jet_det
    (f0 f1 f2 : ℝ → ℝ) (t u v : ℝ) (hp : 0 ≤ f0 t)
    (hd : Matrix.det !![f0 t, f0 u, f0 v; f1 t, f1 u, f1 v; f2 t, f2 u, f2 v] ≤ 0) :
    (f2 t * f0 v - f0 t * f2 v) * (f1 t * f0 u - f0 t * f1 u) -
      (f2 t * f0 u - f0 t * f2 u) * (f1 t * f0 v - f0 t * f1 v) ≤ 0 := by
  have heq := oriented_plucker_three_scalar
    (f0 t) (f1 t) (f2 t) (f0 u) (f1 u) (f2 u) (f0 v) (f1 v) (f2 v)
  have hprod := mul_nonpos_of_nonneg_of_nonpos hp hd
  simp [Matrix.det_fin_three] at hprod
  nlinarith only [heq, hprod]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/7a0ef8ccc1633e676f0faec83e07fbe95825bde6a68d51cf6faece8d2fe90fe1Criterion01Faile/Variant4fe6148e78461be2979526f6405677514dd7e9bb5f80b674ddf703c51b4d3099.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/7a0ef8ccc1633e676f0faec83e07fbe95825bde6a68d51cf6faece8d2fe90fe1Criterion01Faile/Variant4fe6148e78461be2979526f6405677514dd7e9bb5f80b674ddf703c51b4d3099.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f250eb72edba4481bef5f71e01b360726b8a738a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
