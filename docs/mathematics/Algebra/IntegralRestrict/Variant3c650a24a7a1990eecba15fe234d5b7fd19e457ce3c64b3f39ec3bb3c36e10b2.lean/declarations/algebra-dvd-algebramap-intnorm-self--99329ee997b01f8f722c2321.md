# Algebra.dvd_algebraMap_intNorm_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c50daaf-e46e-0571-4854-7e5764979777",
  "kind": "theorem",
  "lexical_name": "Algebra.dvd_algebraMap_intNorm_self",
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
  "slug": "algebra-dvd-algebramap-intnorm-self--99329ee997b01f8f722c2321",
  "source": {
    "blob": "40382404349b2815648537a2bb46a3ce1953b233",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 574,
    "line": 539,
    "path": "GRWTSK/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99329ee997b01f8f722c23219bd40a8a5856d5717bda1c7bdc8650edea9f0b25",
  "verification": {
    "reference": "docs/verification/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c50daaf-e46e-0571-4854-7e5764979777`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 539–574.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Algebra.dvd_algebraMap_intNorm_self (x : B) : x ∣ algebraMap A B (intNorm A B x) := by
  classical
  have : FiniteDimensional (FractionRing A) (FractionRing B) := .of_isLocalization A B A⁰
  by_cases hx : x = 0
  · exact ⟨1, by simp [hx]⟩
  let K := FractionRing A
  let L := FractionRing B
  let E := AlgebraicClosure L
  suffices IsIntegral A ((algebraMap B L x)⁻¹ * (algebraMap A L (intNorm A B x))) by
    obtain ⟨y, hy⟩ := IsIntegrallyClosed.isIntegral_iff.mp <|
      _root_.IsIntegral.tower_top (A := B) this
    refine ⟨y, ?_⟩
    apply FaithfulSMul.algebraMap_injective B L
    rw [← algebraMap_apply, map_mul, hy, mul_inv_cancel_left₀]
    exact (map_ne_zero_iff _ (FaithfulSMul.algebraMap_injective B L)).mpr hx
  rw [← isIntegral_algHom_iff (toAlgHom A L E)
    (FaithfulSMul.algebraMap_injective L E), coe_toAlgHom', map_mul, map_inv₀,
    algebraMap_apply A K L, algebraMap_intNorm (L := L), ← algebraMap_apply, ← algebraMap_apply,
    norm_eq_prod_roots _ (IsAlgClosed.splits _), ← Multiset.prod_erase
    (a := algebraMap B E x)]
  · have := IsTorsionFree.trans_faithfulSMul B L E
    rw [mul_pow, ← mul_pow_sub_one (Nat.pos_iff_ne_zero.1 Module.finrank_pos) (algebraMap B E x),
      mul_assoc, inv_mul_cancel_left₀]
    · refine IsIntegral.mul (IsIntegral.pow ?_ _)
        (IsIntegral.pow (IsIntegral.multiset_prod (fun a ha ↦ ⟨minpoly A x, minpoly.monic
          (IsIntegral.isIntegral x), ?_⟩)) _)
      · exact isIntegral_algebraMap_iff.mpr (IsIntegral.isIntegral x)
      · replace ha := Multiset.erase_subset _ _ ha
        suffices (aeval a) ((minpoly A x).map (algebraMap A K)) = 0 by simpa
        rw [← minpoly.isIntegrallyClosed_eq_field_fractions K L (IsIntegral.isIntegral x)]
        simp only [mem_roots', ne_eq, Polynomial.map_eq_zero, IsRoot.def, eval_map_algebraMap] at ha
        exact ha.2
    · exact (map_ne_zero_iff _ (FaithfulSMul.algebraMap_injective B E)).mpr hx
  · simp only [mem_roots', ne_eq, Polynomial.map_eq_zero, IsRoot.def, eval_map_algebraMap]
    refine ⟨minpoly.ne_zero (IsIntegral.isIntegral _), ?_⟩
    simp [algebraMap_apply B L E, aeval_algebraMap_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IntegralRestrict/Variant3c650a24a7a1990eecba15fe234d5b7fd19e457ce3c64b3f39ec3bb3c36e10b2.lean#L539).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40382404349b2815648537a2bb46a3ce1953b233` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
