# nonemptyFinLinOrdDualCompForgetToFinPartOrd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a73eecfeb1c3c3f9a6c35555057c759e2861999d1a4d05190d9b43be85c70a59",
  "kind": "def",
  "lexical_name": "nonemptyFinLinOrdDualCompForgetToFinPartOrd",
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
  "slug": "nonemptyfinlinorddualcompforgettofinpartord--b39f665b008456fb37922438",
  "source": {
    "blob": "9c639169de7cb6be76ef2fa1507d6b195451cdbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 266,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b39f665b008456fb37922438b3c6210e0183574aae8c3aa95669d6dfdd6e2aec",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a73eecfeb1c3c3f9a6c35555057c759e2861999d1a4d05190d9b43be85c70a59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def nonemptyFinLinOrdDualCompForgetToFinPartOrd :
    NonemptyFinLinOrdCat.dual ⋙ forget₂ NonemptyFinLinOrdCat FinPartOrd ≅
      forget₂ NonemptyFinLinOrdCat FinPartOrd ⋙ FinPartOrd.dual
    where
  hom := { app := fun X => OrderHom.id }
  inv := { app := fun X => OrderHom.id }
set_option linter.uppercaseLean3 false in
#align NonemptyFinLinOrd_dual_comp_forget_to_FinPartOrd nonemptyFinLinOrdDualCompForgetToFinPartOrd
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variantae472ca8764abb558f209d8750aa0c92c599b54661156f1c4cc9fd213426d7ae.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c639169de7cb6be76ef2fa1507d6b195451cdbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
