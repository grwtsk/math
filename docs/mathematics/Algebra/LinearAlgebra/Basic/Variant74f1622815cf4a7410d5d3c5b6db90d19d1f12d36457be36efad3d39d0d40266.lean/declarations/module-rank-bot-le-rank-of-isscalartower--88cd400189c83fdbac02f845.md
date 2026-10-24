# Module.rank_bot_le_rank_of_isScalarTower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ac3a82c82b62128dd2c248938f3d544be49a992",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 399,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b1289b73-e1f4-7bc5-3523-12d92648c038",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:65c65122-504b-37e6-e3ee-7169b56204e8",
  "kind": "lemma",
  "lexical_name": "Module.rank_bot_le_rank_of_isScalarTower",
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
  "slug": "module-rank-bot-le-rank-of-isscalartower--88cd400189c83fdbac02f845",
  "source": {
    "blob": "9ac3a82c82b62128dd2c248938f3d544be49a992",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 399,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88cd400189c83fdbac02f8454ded0ef17708aaebc64fb2a710d4607717bd3c04",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65c65122-504b-37e6-e3ee-7169b56204e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.rank_bot_le_rank_of_isScalarTower (T : Type u') [Module R R'] [NonAssocSemiring T]
    [Module R T] [Module R' T] [IsScalarTower R' T T] [FaithfulSMul R' T] [IsScalarTower R R' T] :
    Module.rank R R' ≤ Module.rank R T := by
  simpa using Module.lift_rank_bot_le_lift_rank_of_isScalarTower R R' T

end

end Module
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ac3a82c82b62128dd2c248938f3d544be49a992` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
