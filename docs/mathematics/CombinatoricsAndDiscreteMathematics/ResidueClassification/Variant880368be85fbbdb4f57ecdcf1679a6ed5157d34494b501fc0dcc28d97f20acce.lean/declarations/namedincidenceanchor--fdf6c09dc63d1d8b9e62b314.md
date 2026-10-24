# NamedIncidenceAnchor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab811261174c379dcf3f2d939fde29c15d43f9ea7cd07dda3e0b37ee66fe072e",
  "kind": "structure",
  "lexical_name": "NamedIncidenceAnchor",
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
  "slug": "namedincidenceanchor--fdf6c09dc63d1d8b9e62b314",
  "source": {
    "blob": "4d8a823b2050b5d420a9b51696781fa094ac3399",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 31,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ResidueClassification/Variant880368be85fbbdb4f57ecdcf1679a6ed5157d34494b501fc0dcc28d97f20acce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fdf6c09dc63d1d8b9e62b31462d11a5f6ffcb5760c6ec50c8db5849e1e3df13a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ResidueClassification/Variant880368be85fbbdb4f57ecdcf1679a6ed5157d34494b501fc0dcc28d97f20acce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab811261174c379dcf3f2d939fde29c15d43f9ea7cd07dda3e0b37ee66fe072e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure NamedIncidenceAnchor
    (Element : Type u) [DecidableEq Element] where
  fiber : Finset Element
  singleton : IncidenceSingleton Element fiber
  routeKey : RigidKey
  nameObject : ObjectAddress

/--
Immutable work admitted to the neural plane.  The absence of a stable name is
represented positively by the exact non-singleton residue proof already
carried by `RoutingResidue`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ResidueClassification/Variant880368be85fbbdb4f57ecdcf1679a6ed5157d34494b501fc0dcc28d97f20acce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ResidueClassification/Variant880368be85fbbdb4f57ecdcf1679a6ed5157d34494b501fc0dcc28d97f20acce.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d8a823b2050b5d420a9b51696781fa094ac3399` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
