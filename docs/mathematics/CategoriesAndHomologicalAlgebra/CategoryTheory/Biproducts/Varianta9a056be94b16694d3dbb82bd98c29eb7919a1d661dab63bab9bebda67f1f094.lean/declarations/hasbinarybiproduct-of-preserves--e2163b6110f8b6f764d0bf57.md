# hasBinaryBiproduct_of_preserves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c06abb5c0e7dfa0c2c6469ef47e6ed42ec9f374d159f02bc12fc9194a5cce777",
  "kind": "instance",
  "lexical_name": "hasBinaryBiproduct_of_preserves",
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
  "slug": "hasbinarybiproduct-of-preserves--e2163b6110f8b6f764d0bf57",
  "source": {
    "blob": "f147443dbe19a751e73d712f43c4587a9bca60e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 359,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Varianta9a056be94b16694d3dbb82bd98c29eb7919a1d661dab63bab9bebda67f1f094.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e2163b6110f8b6f764d0bf57dd444f2440ede8b892d65272adf362df1603d06d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Varianta9a056be94b16694d3dbb82bd98c29eb7919a1d661dab63bab9bebda67f1f094.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c06abb5c0e7dfa0c2c6469ef47e6ed42ec9f374d159f02bc12fc9194a5cce777`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance hasBinaryBiproduct_of_preserves : HasBinaryBiproduct (F.obj X) (F.obj Y) :=
  HasBinaryBiproduct.mk
    { bicone := F.mapBinaryBicone (BinaryBiproduct.bicone X Y)
      isBilimit := isBinaryBilimitOfPreserves F (BinaryBiproduct.isBilimit _ _) }

/-- If `F` preserves a binary biproduct, we get a definitionally nice isomorphism
`F.obj (X ⊞ Y) ≅ F.obj X ⊞ F.obj Y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Varianta9a056be94b16694d3dbb82bd98c29eb7919a1d661dab63bab9bebda67f1f094.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Varianta9a056be94b16694d3dbb82bd98c29eb7919a1d661dab63bab9bebda67f1f094.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f147443dbe19a751e73d712f43c4587a9bca60e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
