# restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a2a733abfaa59518c2c99531086d65b4835789e6fca513e6d9bf6b74180600a",
  "kind": "def",
  "lexical_name": "restrict",
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
  "slug": "restrict--2d7928cb1c06857b7998fcde",
  "source": {
    "blob": "d29288324560c44b6460fd6940eaa153a916e821",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 45,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/ToposTheory/SheafTheory/Presheaves/ObservableFields/Content/Variant7b5acbd8/ContentData.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d7928cb1c06857b7998fcdead6067e9694e555cbcefd0c450362663e3b94c3c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/ToposTheory/SheafTheory/Presheaves/ObservableFields/Content/Variant7b5acbd8/ContentData.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a2a733abfaa59518c2c99531086d65b4835789e6fca513e6d9bf6b74180600a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def restrict {C : Type u} [Category.{v} C]
    (X : Content.{u, v, w} C) {U V : C} (f : U ⟶ V)
    (s : X.presheaf.F.obj (op V)) :
    X.presheaf.F.obj (op U) :=
  X.presheaf.restrict f s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/CategoriesAndHomologicalAlgebra/ToposTheory/SheafTheory/Presheaves/ObservableFields/Content/Variant7b5acbd8/ContentData.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/ToposTheory/SheafTheory/Presheaves/ObservableFields/Content/Variant7b5acbd8/ContentData.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d29288324560c44b6460fd6940eaa153a916e821` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
