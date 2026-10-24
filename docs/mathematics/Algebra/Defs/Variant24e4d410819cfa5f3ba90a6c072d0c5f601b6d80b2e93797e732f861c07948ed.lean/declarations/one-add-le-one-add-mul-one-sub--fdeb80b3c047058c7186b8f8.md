# one_add_le_one_add_mul_one_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb346c78-e93b-d799-5032-75756cbd2bdb",
  "kind": "lemma",
  "lexical_name": "one_add_le_one_add_mul_one_sub",
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
  "slug": "one-add-le-one-add-mul-one-sub--fdeb80b3c047058c7186b8f8",
  "source": {
    "blob": "1839bf429774f632807aaf5c200cbd89309ea78e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 184,
    "path": "GRWTSK/Algebra/Defs/Variant24e4d410819cfa5f3ba90a6c072d0c5f601b6d80b2e93797e732f861c07948ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdeb80b3c047058c7186b8f8237e1ad7689fcb2393ce5d226fe6e48f69826498",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variant24e4d410819cfa5f3ba90a6c072d0c5f601b6d80b2e93797e732f861c07948ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb346c78-e93b-d799-5032-75756cbd2bdb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma one_add_le_one_add_mul_one_sub (h : a + c + b * c ≤ b) : 1 + a ≤ (1 + b) * (1 - c) := by
  rw [mul_one_sub, one_add_mul, le_sub_iff_add_le, add_assoc, ← add_assoc a]
  gcongr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variant24e4d410819cfa5f3ba90a6c072d0c5f601b6d80b2e93797e732f861c07948ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variant24e4d410819cfa5f3ba90a6c072d0c5f601b6d80b2e93797e732f861c07948ed.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1839bf429774f632807aaf5c200cbd89309ea78e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
