# inl_snd'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c095f5d742d6fd51df32656687f120cfba7dcdfa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 568,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/291f1e75a9ca59ce52589f175f2e01d1b6356abc653af17ae81f0cccc8ba81e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a75a93f-88fc-15e4-a74e-26d7884bcb0f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:177f0c72-afb9-24bb-9e04-ae278538f1e9",
  "kind": "theorem",
  "lexical_name": "inl_snd'",
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
  "slug": "inl-snd--bed3a8de5996d7abe3ee9bde",
  "source": {
    "blob": "c095f5d742d6fd51df32656687f120cfba7dcdfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 585,
    "line": 568,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant291f1e75a9ca59ce52589f175f2e01d1b6356abc653af17ae81f0cccc8ba81e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bed3a8de5996d7abe3ee9bde99cd89b17c26fcd7a6d7f467b26506e95355f928",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant291f1e75a9ca59ce52589f175f2e01d1b6356abc653af17ae81f0cccc8ba81e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:177f0c72-afb9-24bb-9e04-ae278538f1e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 568–585.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem inl_snd' {b : BinaryBicone X Y} (h : b.IsBilimit) :
    IsPullback b.inl (0 : X ⟶ 0) b.snd (0 : 0 ⟶ Y) := by
  refine' of_right _ (by simp) (of_isBilimit h)
  simp
#align category_theory.is_pullback.inl_snd' CategoryTheory.IsPullback.inl_snd'

/-- The square
```
  X --inl--> X ⊞ Y
  |            |
  0           snd
  |            |
  v            v
  0 ---0-----> Y
```
is a pullback square.
-/
@[simp]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant291f1e75a9ca59ce52589f175f2e01d1b6356abc653af17ae81f0cccc8ba81e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant291f1e75a9ca59ce52589f175f2e01d1b6356abc653af17ae81f0cccc8ba81e9.lean#L568).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c095f5d742d6fd51df32656687f120cfba7dcdfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
