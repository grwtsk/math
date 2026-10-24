# isUnit_den

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b15f48f-6ade-bc05-f1e6-6d5693730e42",
  "kind": "theorem",
  "lexical_name": "isUnit_den",
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
  "slug": "isunit-den--5117a7ec93fbff5efe3a0845",
  "source": {
    "blob": "133710057c59a33dfd614205c183159246a63030",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 89,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/RingHoms/Variant3dba06d9d29432c0709db5a65b632b10672dbf14d6726b7e4cdb508b78b6640c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5117a7ec93fbff5efe3a084503614f36f3084656d9d6c8b15826636be491ac2f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/RingHoms/Variant3dba06d9d29432c0709db5a65b632b10672dbf14d6726b7e4cdb508b78b6640c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b15f48f-6ade-bc05-f1e6-6d5693730e42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_den (r : ℚ) (h : ‖(r : ℚ_[p])‖ ≤ 1) : IsUnit (r.den : ℤ_[p]) := by
  rw [isUnit_iff]
  apply le_antisymm (r.den : ℤ_[p]).2
  rw [← not_lt, coe_nat_cast]
  intro norm_denom_lt
  have hr : ‖(r * r.den : ℚ_[p])‖ = ‖(r.num : ℚ_[p])‖ := by
    congr
    rw_mod_cast [@Rat.mul_den_eq_num r]
  rw [padicNormE.mul] at hr
  have key : ‖(r.num : ℚ_[p])‖ < 1 := by
    calc
      _ = _ := hr.symm
      _ < 1 * 1 := (mul_lt_mul' h norm_denom_lt (norm_nonneg _) zero_lt_one)
      _ = 1 := mul_one 1

  have : ↑p ∣ r.num ∧ (p : ℤ) ∣ r.den := by
    simp only [← norm_int_lt_one_iff_dvd, ← padic_norm_e_of_padicInt]
    exact ⟨key, norm_denom_lt⟩
  apply hp_prime.1.not_dvd_one
  rwa [← r.reduced.gcd_eq_one, Nat.dvd_gcd_iff, ← Int.coe_nat_dvd_left, ← Int.coe_nat_dvd]
#align padic_int.is_unit_denom PadicInt.isUnit_den

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/RingHoms/Variant3dba06d9d29432c0709db5a65b632b10672dbf14d6726b7e4cdb508b78b6640c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/RingHoms/Variant3dba06d9d29432c0709db5a65b632b10672dbf14d6726b7e4cdb508b78b6640c.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `133710057c59a33dfd614205c183159246a63030` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
