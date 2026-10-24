# Real.hasLipschitzAdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4df7b2d51fbf8f82024d6f91ec030561d9911117d7633f878f6e5a121ef91b26",
  "kind": "instance",
  "lexical_name": "Real.hasLipschitzAdd",
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
  "slug": "real-haslipschitzadd--6e5a676974af7f51f96c72c8",
  "source": {
    "blob": "eeab88d7cdffd2898889c47c030e7c500f329aae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 115,
    "path": "GRWTSK/Topology/MetricTopology/Algebra/Variant9a7738659ecb344b18ae66e4fe91bb60a15f9d3d8bc287d933347af0c0288471.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e5a676974af7f51f96c72c836ee343161c9b2319c5b6f7b3314f425f5949a61",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Algebra/Variant9a7738659ecb344b18ae66e4fe91bb60a15f9d3d8bc287d933347af0c0288471.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4df7b2d51fbf8f82024d6f91ec030561d9911117d7633f878f6e5a121ef91b26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Real.hasLipschitzAdd : LipschitzAdd ℝ where
  lipschitz_add := ⟨2, LipschitzWith.of_dist_le_mul <| fun p q => by
    simp only [Real.dist_eq, Prod.dist_eq, Prod.fst_sub, Prod.snd_sub, NNReal.coe_ofNat,
      add_sub_add_comm, two_mul]
    refine le_trans (abs_add (p.1 - q.1) (p.2 - q.2)) ?_
    exact add_le_add (le_max_left _ _) (le_max_right _ _)⟩
#align real.has_lipschitz_add Real.hasLipschitzAdd

-- this instance has the same proof as `AddSubmonoid.lipschitzAdd`, but the former can't
-- directly be applied here since `ℝ≥0` is a subtype of `ℝ`, not an additive submonoid.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Algebra/Variant9a7738659ecb344b18ae66e4fe91bb60a15f9d3d8bc287d933347af0c0288471.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Algebra/Variant9a7738659ecb344b18ae66e4fe91bb60a15f9d3d8bc287d933347af0c0288471.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eeab88d7cdffd2898889c47c030e7c500f329aae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
