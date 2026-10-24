# IsStarNormal.cfcₙ_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:756e251e21ee8ff238e46e5fab70e39ec41a5612f0e0be711101e1c8215145ff",
  "kind": "instance",
  "lexical_name": "IsStarNormal.cfcₙ_map",
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
  "slug": "isstarnormal-cfc-map--801b730e7fa5ee35ce0a9f21",
  "source": {
    "blob": "6488e8af4bb20e2115bde831a4265d2e61157d2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 503,
    "line": 494,
    "path": "GRWTSK/Topology/GeneralTopology/NonUnital/Variantf721bc25289d9195d4e0ed2d8c832a13d2b8485fbcad6e57d63a77e53f34cc4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:801b730e7fa5ee35ce0a9f21a645a5eeda49588215aac7280e5d28c387ee1b17",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NonUnital/Variantf721bc25289d9195d4e0ed2d8c832a13d2b8485fbcad6e57d63a77e53f34cc4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:756e251e21ee8ff238e46e5fab70e39ec41a5612f0e0be711101e1c8215145ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 494–503.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance IsStarNormal.cfcₙ_map (f : R → R) (a : A) : IsStarNormal (cfcₙ f a) where
  star_comm_self := by
    refine cfcₙ_cases (fun x ↦ Commute (star x) x) _ _ (Commute.zero_right _) fun _ _ _ ↦ ?_
    simp only [Commute, SemiconjBy]
    rw [← cfcₙ_apply f a, ← cfcₙ_star, ← cfcₙ_mul .., ← cfcₙ_mul ..]
    congr! 2
    exact mul_comm _ _

-- The following two lemmas are just `cfcₙ_predicate`, but specific enough for the `@[simp]` tag.
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NonUnital/Variantf721bc25289d9195d4e0ed2d8c832a13d2b8485fbcad6e57d63a77e53f34cc4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NonUnital/Variantf721bc25289d9195d4e0ed2d8c832a13d2b8485fbcad6e57d63a77e53f34cc4e.lean#L494).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6488e8af4bb20e2115bde831a4265d2e61157d2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
