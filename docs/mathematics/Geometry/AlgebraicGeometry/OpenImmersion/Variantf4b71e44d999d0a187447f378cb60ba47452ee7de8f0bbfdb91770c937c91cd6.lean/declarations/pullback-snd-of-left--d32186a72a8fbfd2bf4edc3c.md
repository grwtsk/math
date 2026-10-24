# pullback_snd_of_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:282bb3f5f7688c0fd529752aede513eb5315197e1087689dd05723cc01debe42",
  "kind": "instance",
  "lexical_name": "pullback_snd_of_left",
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
  "slug": "pullback-snd-of-left--d32186a72a8fbfd2bf4edc3c",
  "source": {
    "blob": "7b5cad5c5347d96072ffac32f1c447d094d643a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1066,
    "line": 1060,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variantf4b71e44d999d0a187447f378cb60ba47452ee7de8f0bbfdb91770c937c91cd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d32186a72a8fbfd2bf4edc3ca34c45bc6a6f0d52c108640eb61032218305daeb",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/OpenImmersion/Variantf4b71e44d999d0a187447f378cb60ba47452ee7de8f0bbfdb91770c937c91cd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:282bb3f5f7688c0fd529752aede513eb5315197e1087689dd05723cc01debe42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1060–1066.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance pullback_snd_of_left :
    LocallyRingedSpace.IsOpenImmersion (pullback.snd f g) := by
  delta pullback.snd
  rw [← limit.isoLimitCone_hom_π ⟨_, pullbackConeOfLeftIsLimit f g⟩ WalkingCospan.right]
  infer_instance

/-- Open immersions are stable under base-change. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/OpenImmersion/Variantf4b71e44d999d0a187447f378cb60ba47452ee7de8f0bbfdb91770c937c91cd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variantf4b71e44d999d0a187447f378cb60ba47452ee7de8f0bbfdb91770c937c91cd6.lean#L1060).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b5cad5c5347d96072ffac32f1c447d094d643a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
