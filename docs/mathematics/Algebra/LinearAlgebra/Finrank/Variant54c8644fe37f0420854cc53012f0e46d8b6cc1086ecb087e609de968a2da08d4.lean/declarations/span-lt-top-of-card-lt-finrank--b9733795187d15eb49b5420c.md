# span_lt_top_of_card_lt_finrank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a44cf1d0-93c7-d5f1-8fd5-3c9d97662c3b",
  "kind": "theorem",
  "lexical_name": "span_lt_top_of_card_lt_finrank",
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
  "slug": "span-lt-top-of-card-lt-finrank--b9733795187d15eb49b5420c",
  "source": {
    "blob": "82306a695547ff2b49faf4ee84b82586587629f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 378,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finrank/Variant54c8644fe37f0420854cc53012f0e46d8b6cc1086ecb087e609de968a2da08d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9733795187d15eb49b5420ce434875fa4c31b1163483e63416401c954a08820",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finrank/Variant54c8644fe37f0420854cc53012f0e46d8b6cc1086ecb087e609de968a2da08d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a44cf1d0-93c7-d5f1-8fd5-3c9d97662c3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem span_lt_top_of_card_lt_finrank {s : Set V} [Fintype s]
    (card_lt : s.toFinset.card < finrank K V) : span K s < ⊤ :=
  lt_top_of_finrank_lt_finrank (lt_of_le_of_lt (finrank_span_le_card _) card_lt)
#align span_lt_top_of_card_lt_finrank span_lt_top_of_card_lt_finrank

/-- Given a family of `n` linearly independent vectors in a finite-dimensional space of
dimension `> n`, one may extend the family by another vector while retaining linear independence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finrank/Variant54c8644fe37f0420854cc53012f0e46d8b6cc1086ecb087e609de968a2da08d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finrank/Variant54c8644fe37f0420854cc53012f0e46d8b6cc1086ecb087e609de968a2da08d4.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82306a695547ff2b49faf4ee84b82586587629f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
