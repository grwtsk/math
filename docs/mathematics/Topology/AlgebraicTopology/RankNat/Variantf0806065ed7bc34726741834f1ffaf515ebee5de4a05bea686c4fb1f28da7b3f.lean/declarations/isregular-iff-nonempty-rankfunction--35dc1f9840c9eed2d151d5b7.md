# isRegular_iff_nonempty_rankFunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8f75cdf-bf3b-07b9-a5d5-41389938f589",
  "kind": "lemma",
  "lexical_name": "isRegular_iff_nonempty_rankFunction",
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
  "slug": "isregular-iff-nonempty-rankfunction--35dc1f9840c9eed2d151d5b7",
  "source": {
    "blob": "8ee84c4c0781cf8f24a2f0346e88c26753518e1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 115,
    "path": "GRWTSK/Topology/AlgebraicTopology/RankNat/Variantf0806065ed7bc34726741834f1ffaf515ebee5de4a05bea686c4fb1f28da7b3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35dc1f9840c9eed2d151d5b7b786e3b36331e8f7c1bc0833c24b0c3b56c480c6",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/RankNat/Variantf0806065ed7bc34726741834f1ffaf515ebee5de4a05bea686c4fb1f28da7b3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8f75cdf-bf3b-07b9-a5d5-41389938f589`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isRegular_iff_nonempty_rankFunction [P.IsProper] :
    P.IsRegular ↔ Nonempty (P.RankFunction ℕ) := by
  rw [← isRegular_pairing_iff, Pairing.isRegular_iff_nonempty_rankFunction]
  exact (P.rankFunctionEquiv ℕ).symm.nonempty_congr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/RankNat/Variantf0806065ed7bc34726741834f1ffaf515ebee5de4a05bea686c4fb1f28da7b3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/RankNat/Variantf0806065ed7bc34726741834f1ffaf515ebee5de4a05bea686c4fb1f28da7b3f.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ee84c4c0781cf8f24a2f0346e88c26753518e1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
