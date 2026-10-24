# density_moebius_correction_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa45a28f-e664-c587-90aa-919a44e73dbe",
  "kind": "theorem",
  "lexical_name": "density_moebius_correction_bounds",
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
  "slug": "density-moebius-correction-bounds--934bec2cb564a73df79899b9",
  "source": {
    "blob": "b56b195f7bff1566e7221c36a83b7e4129a7c30a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 54,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/PositiveDensityCorrection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:934bec2cb564a73df79899b948f6ebb6ba88c7f12a77038ac7b650e8f41a3155",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PositiveDensityCorrection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa45a28f-e664-c587-90aa-919a44e73dbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem density_moebius_correction_bounds (n : ℕ) :
    0 ≤ densityMoebiusCorrection n ∧ densityMoebiusCorrection n ≤ 1 := by
  induction n using Nat.recOnPosPrimePosCoprime with
  | zero => simp
  | one => simp [density_moebius_correction_one]
  | prime_pow p k hp hk =>
    rw [density_moebius_correction_prime_power hp hk.ne']
    constructor
    · positivity
    · apply (div_le_one (by positivity : (0 : ℝ) < p + 1)).mpr
      have hp0 : (0 : ℝ) ≤ p := Nat.cast_nonneg p
      linarith
  | coprime a b _ha _hb hab ha' hb' =>
    rw [density_moebius_correction_multiplicative.map_mul_of_coprime hab]
    refine ⟨mul_nonneg ha'.1 hb'.1, ?_⟩
    simpa only [one_mul] using mul_le_mul ha'.2 hb'.2 hb'.1 (by norm_num : (0 : ℝ) ≤ 1)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PositiveDensityCorrection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/PositiveDensityCorrection.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b56b195f7bff1566e7221c36a83b7e4129a7c30a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
