# limitFlipIsoCompLim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:48e310c1f2e8791bec7626231cbd421c165b5180deccd06bf4a6eb9ce7cb938a",
  "kind": "def",
  "lexical_name": "limitFlipIsoCompLim",
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
  "slug": "limitflipisocomplim--c1685e70777306cffee487a5",
  "source": {
    "blob": "d134bdd508e056b7bc19348117ca28a37c2bf94e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 477,
    "line": 470,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6cc2bad6920c19d49d9c343abe695096647c79c106165354ea1c05e7cea966bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1685e70777306cffee487a5702d1e18c2310fc2cdca8d6ca8f715dac02578e3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6cc2bad6920c19d49d9c343abe695096647c79c106165354ea1c05e7cea966bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:48e310c1f2e8791bec7626231cbd421c165b5180deccd06bf4a6eb9ce7cb938a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 470–477.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def limitFlipIsoCompLim [HasLimitsOfShape J C] (F : K ⥤ J ⥤ C) : limit F.flip ≅ F ⋙ lim :=
  let f := fun k =>
    limitObjIsoLimitCompEvaluation F.flip k ≪≫ HasLimit.isoOfNatIso (flipCompEvaluation _ _)
  NatIso.ofComponents f

set_option backward.defeqAttrib.useBackward true in
/-- `limitFlipIsoCompLim` is natural with respect to diagrams. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6cc2bad6920c19d49d9c343abe695096647c79c106165354ea1c05e7cea966bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6cc2bad6920c19d49d9c343abe695096647c79c106165354ea1c05e7cea966bb.lean#L470).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d134bdd508e056b7bc19348117ca28a37c2bf94e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
