# desc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6a3cfd4669520e4b0ad0ca91bd3f9b3fcef3ce58d3fe451213b7c92a73b081c0",
  "kind": "def",
  "lexical_name": "desc",
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
  "slug": "desc--b5b836862fe56ea7fc5ceac7",
  "source": {
    "blob": "ef8fdf22773357ac2bb1a744f94a7c70384805fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 102,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant96af965114d9b8d8e8eb426759700af1f02f607f6ab73056c24ded9263cb073f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5b836862fe56ea7fc5ceac7a2af7f3d9ca87035544568881c6adb53ad4db37a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant96af965114d9b8d8e8eb426759700af1f02f607f6ab73056c24ded9263cb073f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6a3cfd4669520e4b0ad0ca91bd3f9b3fcef3ce58d3fe451213b7c92a73b081c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def desc {Y Z : C} (f : Z ⟶ Y) (I : InjectiveResolution Y) (J : InjectiveResolution Z) :
    J.cocomplex ⟶ I.cocomplex :=
  CochainComplex.mkHom _ _ (descFZero f _ _) (descFOne f _ _) (descFOne_zero_comm f I J).symm
    fun n ⟨g, g', w⟩ => ⟨(descFSucc I J n g g' w.symm).1, (descFSucc I J n g g' w.symm).2.symm⟩

set_option backward.isDefEq.respectTransparency.types false in
/-- The resolution maps intertwine the descent of a morphism and that morphism. -/
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant96af965114d9b8d8e8eb426759700af1f02f607f6ab73056c24ded9263cb073f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant96af965114d9b8d8e8eb426759700af1f02f607f6ab73056c24ded9263cb073f.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef8fdf22773357ac2bb1a744f94a7c70384805fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
