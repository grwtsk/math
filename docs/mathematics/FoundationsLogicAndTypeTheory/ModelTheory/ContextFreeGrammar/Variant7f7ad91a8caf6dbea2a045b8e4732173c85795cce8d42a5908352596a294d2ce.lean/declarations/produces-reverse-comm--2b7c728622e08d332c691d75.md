# produces_reverse_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67d56877-42eb-93be-6927-de9138a486ea",
  "kind": "lemma",
  "lexical_name": "produces_reverse_comm",
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
  "slug": "produces-reverse-comm--2b7c728622e08d332c691d75",
  "source": {
    "blob": "2d08aba748016c84ba00098aad2add342e23fc7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 300,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ContextFreeGrammar/Variant7f7ad91a8caf6dbea2a045b8e4732173c85795cce8d42a5908352596a294d2ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b7c728622e08d332c691d750fb17a3424b58397ba5fec6fc0b40e6c22004418",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/ContextFreeGrammar/Variant7f7ad91a8caf6dbea2a045b8e4732173c85795cce8d42a5908352596a294d2ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67d56877-42eb-93be-6927-de9138a486ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma produces_reverse_comm : g.reverse.Produces u v ↔ g.Produces u.reverse v.reverse :=
  (Equiv.ofBijective _ ContextFreeRule.reverse_bijective).exists_congr
    (by simp [ContextFreeRule.reverse_involutive.eq_iff])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/ContextFreeGrammar/Variant7f7ad91a8caf6dbea2a045b8e4732173c85795cce8d42a5908352596a294d2ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ContextFreeGrammar/Variant7f7ad91a8caf6dbea2a045b8e4732173c85795cce8d42a5908352596a294d2ce.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d08aba748016c84ba00098aad2add342e23fc7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
