# isCardinalPresentable_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ff6478bcfb8f6cdfe0a091f3c95295ced13edc5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 359,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/91d4ebc3580a56f04d549013eaa2aaf67b15229b6ab3281ae07530df80b88fb1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:852bec31-e1af-bdcc-4e22-7c2e477f9e4a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f5c90954-0cfa-9a7e-3e54-11d359a59bef",
  "kind": "lemma",
  "lexical_name": "isCardinalPresentable_iff'",
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
  "slug": "iscardinalpresentable-iff--a34d85028d6ac8628fd436ad",
  "source": {
    "blob": "9ff6478bcfb8f6cdfe0a091f3c95295ced13edc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 359,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalDirectedPoset/Variant91d4ebc3580a56f04d549013eaa2aaf67b15229b6ab3281ae07530df80b88fb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a34d85028d6ac8628fd436ad2b3b77289e59f35a64bc4f3256f76ba9b966bc3e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalDirectedPoset/Variant91d4ebc3580a56f04d549013eaa2aaf67b15229b6ab3281ae07530df80b88fb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5c90954-0cfa-9a7e-3e54-11d359a59bef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma isCardinalPresentable_iff' (J : CardinalDirectedPoset κ) :
    IsCardinalPresentable J κ ↔ HasCardinalLT J.obj κ :=
  CardinalDirectedPoset.isCardinalPresentable_iff _ (le_refl _)

section

variable (J : CardinalDirectedPoset κ)

/-- Given `J : CardinalDirectedPoset κ`, this is the predicate
on `Set J.obj` that is satisfied by subsets that are of
cardinality `< κ` and have a terminal object. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalDirectedPoset/Variant91d4ebc3580a56f04d549013eaa2aaf67b15229b6ab3281ae07530df80b88fb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalDirectedPoset/Variant91d4ebc3580a56f04d549013eaa2aaf67b15229b6ab3281ae07530df80b88fb1.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ff6478bcfb8f6cdfe0a091f3c95295ced13edc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
