# mul_div_cancel_left_of_imp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0313751e6be6d84be29c51b23c11f3a75da03cf5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac32ffbd-1b38-0720-3472-d789b974f324",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8e8b5bb0-a4d9-9575-0844-d7cf8415de53",
  "kind": "theorem",
  "lexical_name": "mul_div_cancel_left_of_imp",
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
  "slug": "mul-div-cancel-left-of-imp--df7ddfe6d850b6b8f24e0418",
  "source": {
    "blob": "0313751e6be6d84be29c51b23c11f3a75da03cf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 160,
    "path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df7ddfe6d850b6b8f24e041862f014e3d34d4fb1369451e5dc3e3874b0283ec6",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e8b5bb0-a4d9-9575-0844-d7cf8415de53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_div_cancel_left_of_imp {a b : G₀} (h : a = 0 → b = 0) : a * b / a = b := by
  rw [mul_comm, mul_div_cancel_of_imp h]
#align mul_div_cancel_left_of_imp mul_div_cancel_left_of_imp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lemmas/Variant860204c7efc8403497db56d236811139ff9924c51530e7427b490d83f8656d3a.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0313751e6be6d84be29c51b23c11f3a75da03cf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
