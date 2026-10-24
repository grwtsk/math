# CommGrp_Class.ofRepresentableBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c0fd8e9926920a55a90148904f361539adb5fb56cc4594e6dd955217ade11453",
  "kind": "def",
  "lexical_name": "CommGrp_Class.ofRepresentableBy",
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
  "slug": "commgrp-class-ofrepresentableby--45d9e9a39215ceb124f8f1a1",
  "source": {
    "blob": "be4c7b618cbfa9a3c193cfa7be8c0531d2702903",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 35,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant6e4841720b0810b3fe3973a78e12cb01131ac4e0b1c4b22ed361768381ea2899.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:45d9e9a39215ceb124f8f1a19d9e3400e1c0acf59238893283b1bbaa248d1465",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant6e4841720b0810b3fe3973a78e12cb01131ac4e0b1c4b22ed361768381ea2899.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c0fd8e9926920a55a90148904f361539adb5fb56cc4594e6dd955217ade11453`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CommGrp_Class.ofRepresentableBy (F : Cᵒᵖ ⥤ CommGrp.{w})
    (α : (F ⋙ forget _).RepresentableBy X) : CommGrp_Class X where
  __ := Grp_Class.ofRepresentableBy X (F ⋙ forget₂ CommGrp Grp) α
  __ := IsCommMon.ofRepresentableBy X (F ⋙ forget₂ CommGrp CommMonCat) α

end CommGrp_
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant6e4841720b0810b3fe3973a78e12cb01131ac4e0b1c4b22ed361768381ea2899.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant6e4841720b0810b3fe3973a78e12cb01131ac4e0b1c4b22ed361768381ea2899.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be4c7b618cbfa9a3c193cfa7be8c0531d2702903` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
