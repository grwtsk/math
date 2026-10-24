# cast_nonneg_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd913082-d0b7-f77c-1473-844dcca08e9e",
  "kind": "lemma",
  "lexical_name": "cast_nonneg_iff",
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
  "slug": "cast-nonneg-iff--45f8c1ca70f9f380a0a337df",
  "source": {
    "blob": "6bc2d36b29921dcfe0b7f89ac917583e6807de07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 57,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Cast/Variant35e4946f09525e8eee25fdfb69daa989f176873ba1a27ca62dac54271abf24ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45f8c1ca70f9f380a0a337dfb8ac6da5192df36c3421dbdd173374b536eb89e2",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Cast/Variant35e4946f09525e8eee25fdfb69daa989f176873ba1a27ca62dac54271abf24ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd913082-d0b7-f77c-1473-844dcca08e9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma cast_nonneg_iff : ∀ {n : ℤ}, (0 : R) ≤ n ↔ 0 ≤ n
  | (n : ℕ) => by simp
  | -[n+1] => by
    have : -(n : R) < 1 := lt_of_le_of_lt (by simp) zero_lt_one
    simpa [(negSucc_lt_zero n).not_ge, ← sub_eq_add_neg, le_neg] using this.not_ge

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Cast/Variant35e4946f09525e8eee25fdfb69daa989f176873ba1a27ca62dac54271abf24ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Cast/Variant35e4946f09525e8eee25fdfb69daa989f176873ba1a27ca62dac54271abf24ea.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bc2d36b29921dcfe0b7f89ac917583e6807de07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
