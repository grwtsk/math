# bipointedToPointedFst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff4f7386c7a27749b6424049f651d76e34f5ea0d21d8ff2f1eabeaa5a251eae6",
  "kind": "def",
  "lexical_name": "bipointedToPointedFst",
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
  "slug": "bipointedtopointedfst--db1dbc6ebece4544a1cc695d",
  "source": {
    "blob": "524c94fc3c9ed6ce8b3ceeb8e33d657f4d1d961a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 119,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bipointed/Variantbb0cacb33b4988a1e9a73237c12136b5bfb0ea2067075191ede72b03605e00c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db1dbc6ebece4544a1cc695d4d9bc7537f05dbe5ef0c62bce486737cf7591a1e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bipointed/Variantbb0cacb33b4988a1e9a73237c12136b5bfb0ea2067075191ede72b03605e00c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff4f7386c7a27749b6424049f651d76e34f5ea0d21d8ff2f1eabeaa5a251eae6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bipointedToPointedFst : Bipointed ⥤ Pointed where
  obj X := ⟨X, X.toProd.1⟩
  map f := ⟨f.toFun, f.map_fst⟩

/-- The forgetful functor from `Bipointed` to `Pointed` which forgets about the first point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bipointed/Variantbb0cacb33b4988a1e9a73237c12136b5bfb0ea2067075191ede72b03605e00c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bipointed/Variantbb0cacb33b4988a1e9a73237c12136b5bfb0ea2067075191ede72b03605e00c2.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `524c94fc3c9ed6ce8b3ceeb8e33d657f4d1d961a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
