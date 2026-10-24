# append_closes_preserves_prefix_safe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d911c50f-7dcb-e07e-cb3f-77f703d3dc17",
  "kind": "theorem",
  "lexical_name": "append_closes_preserves_prefix_safe",
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
  "slug": "append-closes-preserves-prefix-safe--0ace7c48f7236987bf3bfdb8",
  "source": {
    "blob": "0e19e4554c97d43de30c6df2feb39add0e648164",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 137,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Energy/Variant69b00a065fc67a87f79bc1bba94bac5a6dc6c7a0dbedd76d5be8005c05819d56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ace7c48f7236987bf3bfdb8b3a2b20580f21000301b5b23d433a327a27eb897",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Energy/Variant69b00a065fc67a87f79bc1bba94bac5a6dc6c7a0dbedd76d5be8005c05819d56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d911c50f-7dcb-e07e-cb3f-77f703d3dc17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem append_closes_preserves_prefix_safe
    (word : BinaryLogicMatrix) (safe : PrefixSafeWith word 0) :
    PrefixSafeWith
      (word ++ List.replicate (openingCount word - closingCount word) D) 0 := by
  intro prefixLength
  by_cases insideWord : prefixLength ≤ word.length
  · simpa [List.take_append, insideWord] using
      safe prefixLength
  · have wholeSafe := safe word.length
    have wordLengthLe : word.length ≤ prefixLength := Nat.le_of_not_ge insideWord
    have takeWhole : word.take prefixLength = word :=
      List.take_of_length_le wordLengthLe
    have appendedBound :
        (prefixLength - word.length).min
            (openingCount word - closingCount word) ≤
          openingCount word - closingCount word := Nat.min_le_right ..
    simp [List.take_append, takeWhole] at wholeSafe ⊢
    omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Energy/Variant69b00a065fc67a87f79bc1bba94bac5a6dc6c7a0dbedd76d5be8005c05819d56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Energy/Variant69b00a065fc67a87f79bc1bba94bac5a6dc6c7a0dbedd76d5be8005c05819d56.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e19e4554c97d43de30c6df2feb39add0e648164` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
