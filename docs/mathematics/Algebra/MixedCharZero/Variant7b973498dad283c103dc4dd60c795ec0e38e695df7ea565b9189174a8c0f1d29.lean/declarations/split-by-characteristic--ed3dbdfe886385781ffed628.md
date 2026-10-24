# split_by_characteristic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22c24f85-66fe-c587-9dac-cffb8eef9a35",
  "kind": "theorem",
  "lexical_name": "split_by_characteristic",
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
  "slug": "split-by-characteristic--ed3dbdfe886385781ffed628",
  "source": {
    "blob": "7f72dde770905fb1753b8e06580b9b79cedb41e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 354,
    "path": "GRWTSK/Algebra/MixedCharZero/Variant7b973498dad283c103dc4dd60c795ec0e38e695df7ea565b9189174a8c0f1d29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed3dbdfe886385781ffed6280c2c7b181e4044f50348110f71c860ef6d77bb25",
  "verification": {
    "reference": "docs/verification/Algebra/MixedCharZero/Variant7b973498dad283c103dc4dd60c795ec0e38e695df7ea565b9189174a8c0f1d29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22c24f85-66fe-c587-9dac-cffb8eef9a35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem split_by_characteristic (h_pos : ∀ p : ℕ, p ≠ 0 → CharP R p → P) (h_equal : Algebra ℚ R → P)
    (h_mixed : ∀ p : ℕ, Nat.Prime p → MixedCharZero R p → P) : P := by
  cases CharP.exists R with
  | intro p p_charP =>
    by_cases p = 0
    · rw [h] at p_charP
      haveI h0 : CharZero R := CharP.charP_to_charZero R
      exact split_equalCharZero_mixedCharZero R h_equal h_mixed
    · exact h_pos p h p_charP
#align split_by_characteristic split_by_characteristic

/--
In an `IsDomain R`, split any `Prop` over `R` into the three cases:
- *prime* characteristic.
- equal characteristic zero.
- mixed characteristic `(0, p)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MixedCharZero/Variant7b973498dad283c103dc4dd60c795ec0e38e695df7ea565b9189174a8c0f1d29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MixedCharZero/Variant7b973498dad283c103dc4dd60c795ec0e38e695df7ea565b9189174a8c0f1d29.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f72dde770905fb1753b8e06580b9b79cedb41e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
