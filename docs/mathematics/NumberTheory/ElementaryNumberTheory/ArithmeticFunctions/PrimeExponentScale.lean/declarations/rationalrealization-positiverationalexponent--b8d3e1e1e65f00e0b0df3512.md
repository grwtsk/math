# rationalRealization_positiveRationalExponent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a207e4d-c711-497a-17fd-af82f47b83d3",
  "kind": "theorem",
  "lexical_name": "rationalRealization_positiveRationalExponent",
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
  "slug": "rationalrealization-positiverationalexponent--b8d3e1e1e65f00e0b0df3512",
  "source": {
    "blob": "74d56ea401b2c7d48b4d9eb467d28fca909e75c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 276,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/PrimeExponentScale.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8d3e1e1e65f00e0b0df3512764efc23f96368bae9fb4b1ed99a123df41ee5f9",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a207e4d-c711-497a-17fd-af82f47b83d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rationalRealization_positiveRationalExponent
    (r : PositiveRationalScale) :
    rationalRealization (positiveRationalExponent r) =
      positiveRationalValue r := by
  have hnum : (positiveRationalValue r).num ≠ 0 :=
    Rat.num_ne_zero.mpr (ne_of_gt (positiveRationalValue_pos r))
  have hnumNat :
      (positiveRationalValue r).num.natAbs ≠ 0 := by
    exact Int.natAbs_ne_zero.mpr hnum
  have hden : (positiveRationalValue r).den ≠ 0 :=
    (positiveRationalValue r).den_nz
  rw [positiveRationalExponent, sub_eq_add_neg, rationalRealization_add,
    rationalRealization_neg,
    rationalRealization_natPrimeExponent hnumNat,
    rationalRealization_natPrimeExponent hden]
  have hnumcast : ((positiveRationalValue r).num.natAbs : ℚ) =
      ((positiveRationalValue r).num : ℚ) := by
    have hcast := congrArg (fun a : ℤ => (a : ℚ))
      (Int.natAbs_of_nonneg (le_of_lt (Rat.num_pos.mpr (positiveRationalValue_pos r))))
    simpa only [Int.cast_natCast] using hcast
  rw [hnumcast, ← div_eq_mul_inv]
  exact Rat.num_div_den _

/-- Prime-exponent coordinates of a positive rational. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/PrimeExponentScale.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74d56ea401b2c7d48b4d9eb467d28fca909e75c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
