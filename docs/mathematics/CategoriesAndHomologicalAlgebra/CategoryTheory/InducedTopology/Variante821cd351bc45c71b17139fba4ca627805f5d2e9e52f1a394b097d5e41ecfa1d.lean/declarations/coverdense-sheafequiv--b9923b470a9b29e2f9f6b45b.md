# CoverDense.sheafEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02dd1fb6721d044bd58a8a4d9e0aa3ca51646014c8ef4788d99d320dc4c14e82",
  "kind": "def",
  "lexical_name": "CoverDense.sheafEquiv",
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
  "slug": "coverdense-sheafequiv--b9923b470a9b29e2f9f6b45b",
  "source": {
    "blob": "99cada5e7c69777f27136738b841f88bb555e7bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 165,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variante821cd351bc45c71b17139fba4ca627805f5d2e9e52f1a394b097d5e41ecfa1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9923b470a9b29e2f9f6b45baddbdd3c27e197ea30d117fa9fd97ad0495c8e9d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variante821cd351bc45c71b17139fba4ca627805f5d2e9e52f1a394b097d5e41ecfa1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:02dd1fb6721d044bd58a8a4d9e0aa3ca51646014c8ef4788d99d320dc4c14e82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def CoverDense.sheafEquiv [Full G] [Faithful G] (H : CoverDense K G) [HasLimits A] :
    Sheaf H.inducedTopology A ≌ Sheaf K A :=
  H.sheafEquivOfCoverPreservingCoverLifting H.locallyCoverDense.inducedTopology_coverPreserving
    H.locallyCoverDense.inducedTopology_coverLifting
set_option linter.uppercaseLean3 false in
#align category_theory.cover_dense.Sheaf_equiv CategoryTheory.CoverDense.sheafEquiv

end SmallSite

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variante821cd351bc45c71b17139fba4ca627805f5d2e9e52f1a394b097d5e41ecfa1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedTopology/Variante821cd351bc45c71b17139fba4ca627805f5d2e9e52f1a394b097d5e41ecfa1d.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99cada5e7c69777f27136738b841f88bb555e7bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
