# excluded_density_correction_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04f32041-8ff0-a8f8-8737-dc86ccc8b880",
  "kind": "theorem",
  "lexical_name": "excluded_density_correction_bounds",
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
  "slug": "excluded-density-correction-bounds--851addff6eaa2b3ca7efb7f4",
  "source": {
    "blob": "dbd76c9bcd8ab8764e07242a352a67dadd8c8b24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 96,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/ExcludedDensityCorrection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:851addff6eaa2b3ca7efb7f48548d0f05a749e8b6cc8f4936b442a55b3e1c54a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ExcludedDensityCorrection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04f32041-8ff0-a8f8-8737-dc86ccc8b880`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem excluded_density_correction_bounds (d n : ℕ) :
    0 ≤ excludedDensityCorrection d n ∧ excludedDensityCorrection d n ≤ 1 := by
  induction n using Nat.recOnPosPrimePosCoprime with
  | zero => simp
  | one => simp [excluded_density_correction_one]
  | prime_pow p k hp hk =>
    rw [excluded_density_correction_prime_power d hp hk.ne']
    split_ifs
    · constructor
      · positivity
      · apply (div_le_one (by positivity : (0:ℝ) < p+1)).mpr
        have hp0 : (0:ℝ) ≤ p := Nat.cast_nonneg p
        linarith
    · norm_num
  | coprime a b _ha _hb hab ha' hb' =>
    rw [excluded_density_correction_multiplicative d |>.map_mul_of_coprime hab]
    refine ⟨mul_nonneg ha'.1 hb'.1, ?_⟩
    simpa only [one_mul] using mul_le_mul ha'.2 hb'.2 hb'.1 (by norm_num : (0:ℝ) ≤ 1)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ExcludedDensityCorrection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/ExcludedDensityCorrection.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbd76c9bcd8ab8764e07242a352a67dadd8c8b24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
