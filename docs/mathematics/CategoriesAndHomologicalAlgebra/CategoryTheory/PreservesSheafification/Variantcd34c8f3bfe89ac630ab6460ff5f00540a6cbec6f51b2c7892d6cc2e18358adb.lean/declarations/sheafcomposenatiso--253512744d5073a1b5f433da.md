# sheafComposeNatIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7da0f153db081de0fa2236eea190addb722c43d731ec78b1de60713693479f75",
  "kind": "def",
  "lexical_name": "sheafComposeNatIso",
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
  "slug": "sheafcomposenatiso--253512744d5073a1b5f433da",
  "source": {
    "blob": "29d700e340a458dcda1725992e85e6b1117233ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 217,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:253512744d5073a1b5f433da46135cd146a19487221cbe8e736f643ef1ab912e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7da0f153db081de0fa2236eea190addb722c43d731ec78b1de60713693479f75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def sheafComposeNatIso :
    (whiskeringRight Cᵒᵖ A B).obj F ⋙ G₂ ≅ G₁ ⋙ sheafCompose J F :=
  asIso (sheafComposeNatTrans J F adj₁ adj₂)

end HasSheafCompose

end

section HasSheafCompose

variable [HasWeakSheafify J A] [HasWeakSheafify J B] [J.HasSheafCompose F]
  [J.PreservesSheafification F] (P : Cᵒᵖ ⥤ A)

/-- The canonical isomorphism `sheafify J (P ⋙ F) ≅ sheafify J P ⋙ F` when
`F` preserves the sheafification. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29d700e340a458dcda1725992e85e6b1117233ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
