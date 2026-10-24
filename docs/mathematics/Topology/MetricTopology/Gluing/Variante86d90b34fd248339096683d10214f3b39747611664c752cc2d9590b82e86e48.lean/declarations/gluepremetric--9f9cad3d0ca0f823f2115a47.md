# gluePremetric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:013bbd38771b4a0f3b36cc53c8c06a08c939fec2ff175ff0090cc4d8529d255a",
  "kind": "def",
  "lexical_name": "gluePremetric",
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
  "slug": "gluepremetric--9f9cad3d0ca0f823f2115a47",
  "source": {
    "blob": "8df2793c74dfe8c10bfddab6d9d775ee303e5ee2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 467,
    "line": 460,
    "path": "GRWTSK/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f9cad3d0ca0f823f2115a473c96345be83abdac4fec15332a47aca52f813468",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:013bbd38771b4a0f3b36cc53c8c06a08c939fec2ff175ff0090cc4d8529d255a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 460–467.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def gluePremetric (hΦ : Isometry Φ) (hΨ : Isometry Ψ) : PseudoMetricSpace (X ⊕ Y) where
  dist := glueDist Φ Ψ 0
  dist_self := glueDist_self Φ Ψ 0
  dist_comm := glueDist_comm Φ Ψ 0
  dist_triangle := glueDist_triangle Φ Ψ 0 fun p q => by rw [hΦ.dist_eq, hΨ.dist_eq]; simp

/-- Given two isometric embeddings `Φ : Z → X` and `Ψ : Z → Y`, we define a
space `GlueSpace hΦ hΨ` by identifying in `X ⊕ Y` the points `Φ x` and `Ψ x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean#L460).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8df2793c74dfe8c10bfddab6d9d775ee303e5ee2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
