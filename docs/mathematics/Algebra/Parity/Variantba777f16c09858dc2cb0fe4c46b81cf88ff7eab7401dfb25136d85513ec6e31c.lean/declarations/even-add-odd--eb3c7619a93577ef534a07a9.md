# Even.add_odd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4cd959d8d5568e2affc68a73ad7c83a30ca1078a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba777f16c09858dc2cb0fe4c46b81cf88ff7eab7401dfb25136d85513ec6e31c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:024901d7-8969-bb07-67b7-dc8828f31d94",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af4a0257-c8d5-d6ea-3303-5eb739e52088",
  "kind": "lemma",
  "lexical_name": "Even.add_odd",
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
  "slug": "even-add-odd--eb3c7619a93577ef534a07a9",
  "source": {
    "blob": "4cd959d8d5568e2affc68a73ad7c83a30ca1078a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 108,
    "path": "GRWTSK/Algebra/Parity/Variantba777f16c09858dc2cb0fe4c46b81cf88ff7eab7401dfb25136d85513ec6e31c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb3c7619a93577ef534a07a98615733bf345e2a96adb4cd1b906e46dc203986f",
  "verification": {
    "reference": "docs/verification/Algebra/Parity/Variantba777f16c09858dc2cb0fe4c46b81cf88ff7eab7401dfb25136d85513ec6e31c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af4a0257-c8d5-d6ea-3303-5eb739e52088`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Even.add_odd : Even a → Odd b → Odd (a + b) := by
  rintro ⟨a, rfl⟩ ⟨b, rfl⟩; exact ⟨a + b, by rw [mul_add, ← two_mul, add_assoc]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Parity/Variantba777f16c09858dc2cb0fe4c46b81cf88ff7eab7401dfb25136d85513ec6e31c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Parity/Variantba777f16c09858dc2cb0fe4c46b81cf88ff7eab7401dfb25136d85513ec6e31c.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cd959d8d5568e2affc68a73ad7c83a30ca1078a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
