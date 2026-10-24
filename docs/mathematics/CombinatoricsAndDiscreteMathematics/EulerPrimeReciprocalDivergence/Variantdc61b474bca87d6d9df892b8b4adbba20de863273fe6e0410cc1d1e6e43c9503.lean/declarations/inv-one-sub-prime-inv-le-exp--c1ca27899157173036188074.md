# inv_one_sub_prime_inv_le_exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a5f03c1-7094-e49b-f116-ead67ed18dd7",
  "kind": "theorem",
  "lexical_name": "inv_one_sub_prime_inv_le_exp",
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
  "slug": "inv-one-sub-prime-inv-le-exp--c1ca27899157173036188074",
  "source": {
    "blob": "7f953d9761bf00ed90f742ff7be64dd956fbd0b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 102,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variantdc61b474bca87d6d9df892b8b4adbba20de863273fe6e0410cc1d1e6e43c9503.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1ca27899157173036188074368d25851a3138e9df8d52610bb8385303b0d109",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variantdc61b474bca87d6d9df892b8b4adbba20de863273fe6e0410cc1d1e6e43c9503.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a5f03c1-7094-e49b-f116-ead67ed18dd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inv_one_sub_prime_inv_le_exp
    {p : Nat}
    (hp2 : 2 ≤ p) :
    (1 - (p : Real)⁻¹)⁻¹ ≤ Real.exp (2 * (p : Real)⁻¹) := by
  let x : Real := (p : Real)⁻¹
  have hp_pos_nat : 0 < p := lt_of_lt_of_le (by norm_num : 0 < 2) hp2
  have hp_pos : 0 < (p : Real) := Nat.cast_pos.mpr hp_pos_nat
  have hx0 : 0 ≤ x := by
    exact inv_nonneg.mpr hp_pos.le
  have hp2_real : (2 : Real) ≤ p := by exact_mod_cast hp2
  have hxhalf : x ≤ (1 / 2 : Real) := by
    have h := one_div_le_one_div_of_le (by norm_num : (0 : Real) < 2) hp2_real
    simpa [x, one_div] using h
  have h1mx_pos : 0 < 1 - x := by linarith
  have h2x_le_one : 2 * x ≤ 1 := by linarith
  have hinv :
      (1 - x)⁻¹ ≤ 1 + 2 * x := by
    rw [inv_le_iff_one_le_mul₀ h1mx_pos]
    nlinarith [mul_nonneg hx0 (sub_nonneg.mpr h2x_le_one)]
  have hexp : 1 + 2 * x ≤ Real.exp (2 * x) := by
    simpa [add_comm] using Real.add_one_le_exp (2 * x)
  simpa [x] using hinv.trans hexp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variantdc61b474bca87d6d9df892b8b4adbba20de863273fe6e0410cc1d1e6e43c9503.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variantdc61b474bca87d6d9df892b8b4adbba20de863273fe6e0410cc1d1e6e43c9503.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f953d9761bf00ed90f742ff7be64dd956fbd0b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
