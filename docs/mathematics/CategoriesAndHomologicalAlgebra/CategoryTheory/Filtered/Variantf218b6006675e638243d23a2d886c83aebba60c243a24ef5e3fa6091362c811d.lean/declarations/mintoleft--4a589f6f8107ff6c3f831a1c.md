# minToLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b1b874f36dcaadb6ef1c2cc212601fdbaff7fec3ee73d5985526210c2e280202",
  "kind": "def",
  "lexical_name": "minToLeft",
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
  "slug": "mintoleft--4a589f6f8107ff6c3f831a1c",
  "source": {
    "blob": "26fa8d03e5f044c964c3d58e434ecba4afcf7a80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 590,
    "line": 584,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf218b6006675e638243d23a2d886c83aebba60c243a24ef5e3fa6091362c811d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a589f6f8107ff6c3f831a1cd2cf1e680bd5892842da8e4cc5b0d02c7e63adb0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf218b6006675e638243d23a2d886c83aebba60c243a24ef5e3fa6091362c811d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b1b874f36dcaadb6ef1c2cc212601fdbaff7fec3ee73d5985526210c2e280202`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 584–590.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def minToLeft (j j' : C) : min j j' ⟶ j :=
  (IsCofilteredOrEmpty.cone_objs j j').choose_spec.choose
#align category_theory.is_cofiltered.min_to_left CategoryTheory.IsCofiltered.minToLeft

/-- `minToRight j j'` is an arbitrary choice of morphism from `min j j'` to `j'`,
whose existence is ensured by `IsCofiltered`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf218b6006675e638243d23a2d886c83aebba60c243a24ef5e3fa6091362c811d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf218b6006675e638243d23a2d886c83aebba60c243a24ef5e3fa6091362c811d.lean#L584).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26fa8d03e5f044c964c3d58e434ecba4afcf7a80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
