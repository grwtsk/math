# colimitSMulAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4918b2a2941f03034dec636bf9c3846db5edffb8dfcd27736f7e4f578ae3d7bf",
  "kind": "def",
  "lexical_name": "colimitSMulAux",
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
  "slug": "colimitsmulaux--867d44b358d7dc10d0c26d6e",
  "source": {
    "blob": "e1455fa67b087d7fb893c375d3abb580732c9b75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 76,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant13f1b2a2b62c09bdf980c7463f2d6feadd5d925fbf2d588c0b5936c0a8afe686.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:867d44b358d7dc10d0c26d6eca457c4bf73c7e9b04d94973faebc78f86d772d6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant13f1b2a2b62c09bdf980c7463f2d6feadd5d925fbf2d588c0b5936c0a8afe686.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4918b2a2941f03034dec636bf9c3846db5edffb8dfcd27736f7e4f578ae3d7bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def colimitSMulAux (r : R) (x : Σ j, F.obj j) : M F :=
  M.mk F ⟨x.1, r • x.2⟩

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant13f1b2a2b62c09bdf980c7463f2d6feadd5d925fbf2d588c0b5936c0a8afe686.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant13f1b2a2b62c09bdf980c7463f2d6feadd5d925fbf2d588c0b5936c0a8afe686.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1455fa67b087d7fb893c375d3abb580732c9b75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
