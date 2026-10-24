# linearCombination_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31b32215a0b6e8e2773ba55e45ca9336f03db9ff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b2b03a2690cce460dd1425b6acd5309eaa31483c85f1f9fd39f58e53c1223081.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3157ef15-fdbc-9b52-7c74-95e95691d979",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:abef6de6-70d7-5f75-35a5-2b5fef4cf14c",
  "kind": "theorem",
  "lexical_name": "linearCombination_unique",
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
  "slug": "linearcombination-unique--c572ce438328c59ac445718e",
  "source": {
    "blob": "31b32215a0b6e8e2773ba55e45ca9336f03db9ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 101,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearCombination/Variantb2b03a2690cce460dd1425b6acd5309eaa31483c85f1f9fd39f58e53c1223081.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c572ce438328c59ac445718ec33180615720cbde9410714e6935a01aea9b2f8a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearCombination/Variantb2b03a2690cce460dd1425b6acd5309eaa31483c85f1f9fd39f58e53c1223081.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abef6de6-70d7-5f75-35a5-2b5fef4cf14c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearCombination_unique [Unique α] (l : α →₀ R) (v : α → M) :
    linearCombination R v l = l default • v default := by
  rw [← linearCombination_single, ← unique_single l]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearCombination/Variantb2b03a2690cce460dd1425b6acd5309eaa31483c85f1f9fd39f58e53c1223081.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearCombination/Variantb2b03a2690cce460dd1425b6acd5309eaa31483c85f1f9fd39f58e53c1223081.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31b32215a0b6e8e2773ba55e45ca9336f03db9ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
