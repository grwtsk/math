# injective_of_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "28b1b8a992ff5d62e31f1219ed6e4d4db3225dec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 251,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aa2489ba-b864-5aa4-fb1c-52205569e309",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eac9d507-30c9-5ce7-046e-d010ea22bc94",
  "kind": "theorem",
  "lexical_name": "injective_of_mono",
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
  "slug": "injective-of-mono--a16ba7e2b4647371af7fcdc1",
  "source": {
    "blob": "28b1b8a992ff5d62e31f1219ed6e4d4db3225dec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 251,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a16ba7e2b4647371af7fcdc17a8c19d4157126537a8600e5f4ed4ef0b6440590",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eac9d507-30c9-5ce7-046e-d010ea22bc94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem injective_of_mono {X Y : Type u} (f : X ⟶ Y) [hf : Mono f] : Function.Injective f :=
  (mono_iff_injective f).1 hf
#align category_theory.injective_of_mono CategoryTheory.injective_of_mono

/-- A morphism in `Type` is an epimorphism if and only if it is surjective.

See <https://stacks.math.columbia.edu/tag/003C>.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28b1b8a992ff5d62e31f1219ed6e4d4db3225dec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
