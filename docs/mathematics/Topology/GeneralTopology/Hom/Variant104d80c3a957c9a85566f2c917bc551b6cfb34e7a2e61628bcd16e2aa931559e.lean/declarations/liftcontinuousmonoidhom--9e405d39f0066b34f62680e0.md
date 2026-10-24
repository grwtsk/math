# liftContinuousMonoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34bc68113c1c1e5c046b02c0c2f3bd6aa599617d641831f8429223dec5955a43",
  "kind": "def",
  "lexical_name": "liftContinuousMonoidHom",
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
  "slug": "liftcontinuousmonoidhom--9e405d39f0066b34f62680e0",
  "source": {
    "blob": "6fde55a17f601fc6f0a2f372ef7920ef4dc4c602",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 25,
    "path": "GRWTSK/Topology/GeneralTopology/Hom/Variant104d80c3a957c9a85566f2c917bc551b6cfb34e7a2e61628bcd16e2aa931559e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e405d39f0066b34f62680e08f8ca594d50476d2c4cffe8b79466789e2d39b08",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hom/Variant104d80c3a957c9a85566f2c917bc551b6cfb34e7a2e61628bcd16e2aa931559e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34bc68113c1c1e5c046b02c0c2f3bd6aa599617d641831f8429223dec5955a43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def liftContinuousMonoidHom [CommMonoid M] [ContinuousMul M] [CommMonoid N]
    (f : ContinuousMonoidHom M N) (hf : ∀ x y, Inseparable x y → f x = f y) :
    ContinuousMonoidHom (SeparationQuotient M) N where
  toFun := SeparationQuotient.lift f hf
  map_one' := map_one f
  map_mul' := Quotient.ind₂ <| map_mul f
  continuous_toFun := SeparationQuotient.continuous_lift.mpr f.2

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hom/Variant104d80c3a957c9a85566f2c917bc551b6cfb34e7a2e61628bcd16e2aa931559e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hom/Variant104d80c3a957c9a85566f2c917bc551b6cfb34e7a2e61628bcd16e2aa931559e.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fde55a17f601fc6f0a2f372ef7920ef4dc4c602` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
