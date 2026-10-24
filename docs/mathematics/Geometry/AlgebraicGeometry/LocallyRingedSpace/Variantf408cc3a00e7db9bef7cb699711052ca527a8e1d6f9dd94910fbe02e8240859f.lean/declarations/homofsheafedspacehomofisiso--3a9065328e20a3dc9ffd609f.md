# homOfSheafedSpaceHomOfIsIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9828b62218ce151963222d88a70a2e7a41eeaf8927a32c78c07ababb47ffde78",
  "kind": "def",
  "lexical_name": "homOfSheafedSpaceHomOfIsIso",
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
  "slug": "homofsheafedspacehomofisiso--3a9065328e20a3dc9ffd609f",
  "source": {
    "blob": "3b4bf8db2ddb209bbf78fee590785afe19fbe5dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 194,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf408cc3a00e7db9bef7cb699711052ca527a8e1d6f9dd94910fbe02e8240859f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3a9065328e20a3dc9ffd609f36c7addc61718daf1de7364e741dd72604a33614",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf408cc3a00e7db9bef7cb699711052ca527a8e1d6f9dd94910fbe02e8240859f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9828b62218ce151963222d88a70a2e7a41eeaf8927a32c78c07ababb47ffde78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homOfSheafedSpaceHomOfIsIso {X Y : LocallyRingedSpace.{u}}
    (f : X.toSheafedSpace ⟶ Y.toSheafedSpace) [IsIso f] : X ⟶ Y :=
  Hom.mk f fun _ =>
    -- Here we need to see that the stalk maps are really local ring homomorphisms.
    -- This can be solved by type class inference, because stalk maps of isomorphisms
    -- are isomorphisms and isomorphisms are local ring homomorphisms.
    inferInstance

/-- Given two locally ringed spaces `X` and `Y`, an isomorphism between `X` and `Y` as _sheafed_
spaces can be lifted to an isomorphism `X ⟶ Y` as locally ringed spaces.

This is related to the property that the functor `forgetToSheafedSpace` reflects isomorphisms.
In fact, it is slightly stronger as we do not require `f` to come from a morphism between
_locally_ ringed spaces.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf408cc3a00e7db9bef7cb699711052ca527a8e1d6f9dd94910fbe02e8240859f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf408cc3a00e7db9bef7cb699711052ca527a8e1d6f9dd94910fbe02e8240859f.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b4bf8db2ddb209bbf78fee590785afe19fbe5dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
