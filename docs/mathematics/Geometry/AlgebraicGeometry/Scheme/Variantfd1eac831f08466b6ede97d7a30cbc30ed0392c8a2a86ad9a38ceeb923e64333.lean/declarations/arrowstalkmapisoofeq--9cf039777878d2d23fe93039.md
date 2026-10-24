# arrowStalkMapIsoOfEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74a74ddf363416cbe1c0b68ca0791e46aae47ccafe2c421ce50d62986d54da58",
  "kind": "def",
  "lexical_name": "arrowStalkMapIsoOfEq",
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
  "slug": "arrowstalkmapisoofeq--9cf039777878d2d23fe93039",
  "source": {
    "blob": "b6c4978ca0c6e5ba7b14d3544e5ea590b760d8f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1009,
    "line": 991,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantfd1eac831f08466b6ede97d7a30cbc30ed0392c8a2a86ad9a38ceeb923e64333.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9cf039777878d2d23fe930390c6a6a856c2e3bc0b0171408ee4a8d8de4901e13",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Scheme/Variantfd1eac831f08466b6ede97d7a30cbc30ed0392c8a2a86ad9a38ceeb923e64333.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74a74ddf363416cbe1c0b68ca0791e46aae47ccafe2c421ce50d62986d54da58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 991–1009.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def arrowStalkMapIsoOfEq {x y : X}
    (h : x = y) : Arrow.mk (f.stalkMap x) ≅ Arrow.mk (f.stalkMap y) :=
  Arrow.isoMk (Y.presheaf.stalkCongr <| (Inseparable.of_eq h).map f.continuous)
      (X.presheaf.stalkCongr <| Inseparable.of_eq h) <| by
    simp only [Arrow.mk_left, Arrow.mk_right, TopCat.Presheaf.stalkCongr_hom,
      Arrow.mk_hom]
    rw [stalkSpecializes_stalkMap]

end Hom

end Scheme

end Stalks

section IsLocalRing

open IsLocalRing

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Scheme/Variantfd1eac831f08466b6ede97d7a30cbc30ed0392c8a2a86ad9a38ceeb923e64333.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantfd1eac831f08466b6ede97d7a30cbc30ed0392c8a2a86ad9a38ceeb923e64333.lean#L991).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6c4978ca0c6e5ba7b14d3544e5ea590b760d8f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
