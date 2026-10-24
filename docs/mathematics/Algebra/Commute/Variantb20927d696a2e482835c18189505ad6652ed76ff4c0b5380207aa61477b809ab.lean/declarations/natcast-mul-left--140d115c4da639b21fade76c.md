# natCast_mul_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a0cc842c8b496d7460f854158a27093c3b40750f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b20927d696a2e482835c18189505ad6652ed76ff4c0b5380207aa61477b809ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1eedcfbc-26f7-ba38-f093-37cb413d149b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1c4f2059-3655-9dd0-5806-3a965299dba1",
  "kind": "lemma",
  "lexical_name": "natCast_mul_left",
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
  "slug": "natcast-mul-left--140d115c4da639b21fade76c",
  "source": {
    "blob": "a0cc842c8b496d7460f854158a27093c3b40750f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 50,
    "path": "GRWTSK/Algebra/Commute/Variantb20927d696a2e482835c18189505ad6652ed76ff4c0b5380207aa61477b809ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:140d115c4da639b21fade76c0105db19bb58addd9e66f15d0337eb2882e60508",
  "verification": {
    "reference": "docs/verification/Algebra/Commute/Variantb20927d696a2e482835c18189505ad6652ed76ff4c0b5380207aa61477b809ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c4f2059-3655-9dd0-5806-3a965299dba1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma natCast_mul_left (h : SemiconjBy a x y) (n : ℕ) : SemiconjBy (n * a) x y :=
  SemiconjBy.mul_left (Nat.cast_commute _ _) h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Commute/Variantb20927d696a2e482835c18189505ad6652ed76ff4c0b5380207aa61477b809ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Commute/Variantb20927d696a2e482835c18189505ad6652ed76ff4c0b5380207aa61477b809ab.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0cc842c8b496d7460f854158a27093c3b40750f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
