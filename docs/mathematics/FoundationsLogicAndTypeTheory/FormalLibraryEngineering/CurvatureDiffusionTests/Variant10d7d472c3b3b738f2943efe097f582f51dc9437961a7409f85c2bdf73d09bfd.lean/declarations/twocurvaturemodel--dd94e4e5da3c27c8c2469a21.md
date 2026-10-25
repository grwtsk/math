# twoCurvatureModel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d83d0a5a3a73084ba53c4be7f41fa2a058e31cd2e28c1c8ff1cdfe19fcb14a6",
  "kind": "def",
  "lexical_name": "twoCurvatureModel",
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
  "slug": "twocurvaturemodel--dd94e4e5da3c27c8c2469a21",
  "source": {
    "blob": "0c1c718d7a263e9bd3d5ffb86c20dde760e7923b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CurvatureDiffusionTests/Variant10d7d472c3b3b738f2943efe097f582f51dc9437961a7409f85c2bdf73d09bfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd94e4e5da3c27c8c2469a21fee9089d0e5cb6e2b0b433e00e565693057ad43d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CurvatureDiffusionTests/Variant10d7d472c3b3b738f2943efe097f582f51dc9437961a7409f85c2bdf73d09bfd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d83d0a5a3a73084ba53c4be7f41fa2a058e31cd2e28c1c8ff1cdfe19fcb14a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def twoCurvatureModel : DiscreteCurvatureModel twoTerrain ℝ where
  semantics := .formanRicci
  semantics_discrete := trivial
  edgeWeight g x y := if y ∈ twoTerrain.neighbors x then g else 0
  edgeWeight_symmetric := by
    intro g x y hxy
    have hyx : twoTerrain.Adjacent y x :=
      (twoTerrain.adjacent_comm).1 hxy
    change y ∈ twoTerrain.neighbors x at hxy
    change x ∈ twoTerrain.neighbors y at hyx
    simp [hxy, hyx]
  illegal_edge_weight_zero := by
    intro g x y hxy
    change y ∉ twoTerrain.neighbors x at hxy
    simp [hxy]
  curvature := fun _ _ _ => 0
  referenceCurvature := fun _ _ => 0
  metricStep := id
  metricDistance := fun g h => |g - h|
  metricDistance_nonnegative := by intros; exact abs_nonneg _

/-- A one-step constant metric trajectory at the fixed reference metric. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CurvatureDiffusionTests/Variant10d7d472c3b3b738f2943efe097f582f51dc9437961a7409f85c2bdf73d09bfd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CurvatureDiffusionTests/Variant10d7d472c3b3b738f2943efe097f582f51dc9437961a7409f85c2bdf73d09bfd.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c1c718d7a263e9bd3d5ffb86c20dde760e7923b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
