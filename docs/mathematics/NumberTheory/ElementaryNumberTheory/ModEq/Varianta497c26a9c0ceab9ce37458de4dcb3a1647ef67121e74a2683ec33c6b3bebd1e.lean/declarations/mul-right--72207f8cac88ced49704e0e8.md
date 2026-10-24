# mul_right'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "89b9538904c468cdd94f8cd1613fb1fea8c9700d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 145,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a497c26a9c0ceab9ce37458de4dcb3a1647ef67121e74a2683ec33c6b3bebd1e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ee4b1fa-0df2-7c1d-abae-1c57b45bbb23",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85cca15e-6317-51fa-fe1a-9f8ea679e3d9",
  "kind": "theorem",
  "lexical_name": "mul_right'",
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
  "slug": "mul-right--72207f8cac88ced49704e0e8",
  "source": {
    "blob": "89b9538904c468cdd94f8cd1613fb1fea8c9700d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 145,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ModEq/Varianta497c26a9c0ceab9ce37458de4dcb3a1647ef67121e74a2683ec33c6b3bebd1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72207f8cac88ced49704e0e8d7bb1737b3b1b2875e73f479de35f65bd4f1c05f",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ModEq/Varianta497c26a9c0ceab9ce37458de4dcb3a1647ef67121e74a2683ec33c6b3bebd1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85cca15e-6317-51fa-fe1a-9f8ea679e3d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem mul_right' (c : ℕ) (h : a ≡ b [MOD n]) : a * c ≡ b * c [MOD n * c] := by
  rw [mul_comm a, mul_comm b, mul_comm n]; exact h.mul_left' c

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ModEq/Varianta497c26a9c0ceab9ce37458de4dcb3a1647ef67121e74a2683ec33c6b3bebd1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ModEq/Varianta497c26a9c0ceab9ce37458de4dcb3a1647ef67121e74a2683ec33c6b3bebd1e.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89b9538904c468cdd94f8cd1613fb1fea8c9700d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
