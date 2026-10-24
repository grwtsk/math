# whiskerRight_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "526a6c295e8c96676060c0eb1ab7466e8394d87c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 417,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/522d3e836a4841ec52aaaa96a11eba84daa0e9bca42f1632c0faa2f76bd4471b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:da8cec7a-39ab-9295-0ba1-35698c89cc3a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:264454b3-72d8-81cc-8c71-b4f9d4eca358",
  "kind": "theorem",
  "lexical_name": "whiskerRight_iff",
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
  "slug": "whiskerright-iff--f9e3a31cee43a12422c85a81",
  "source": {
    "blob": "526a6c295e8c96676060c0eb1ab7466e8394d87c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 423,
    "line": 417,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant522d3e836a4841ec52aaaa96a11eba84daa0e9bca42f1632c0faa2f76bd4471b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9e3a31cee43a12422c85a815162cb9f7c4da12c535051c01716282f84db21b0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant522d3e836a4841ec52aaaa96a11eba84daa0e9bca42f1632c0faa2f76bd4471b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:264454b3-72d8-81cc-8c71-b4f9d4eca358`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 417–423.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem whiskerRight_iff {f g : a ⟶ b} (η θ : f ⟶ g) : η ▷ 𝟙 b = θ ▷ 𝟙 b ↔ η = θ := by simp
#align category_theory.bicategory.whisker_right_iff CategoryTheory.Bicategory.whiskerRight_iff

/-- We state it as a simp lemma, which is regarded as an involved version of
`id_whiskerRight f g : 𝟙 f ▷ g = 𝟙 (f ≫ g)`.
-/
@[reassoc, simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant522d3e836a4841ec52aaaa96a11eba84daa0e9bca42f1632c0faa2f76bd4471b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant522d3e836a4841ec52aaaa96a11eba84daa0e9bca42f1632c0faa2f76bd4471b.lean#L417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `526a6c295e8c96676060c0eb1ab7466e8394d87c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
