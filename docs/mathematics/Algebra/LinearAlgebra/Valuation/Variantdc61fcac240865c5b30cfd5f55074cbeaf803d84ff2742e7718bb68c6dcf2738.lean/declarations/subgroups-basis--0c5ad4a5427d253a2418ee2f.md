# subgroups_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a19954df-46e2-5305-f2cd-8d6b4a5ad0c6",
  "kind": "theorem",
  "lexical_name": "subgroups_basis",
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
  "slug": "subgroups-basis--0c5ad4a5427d253a2418ee2f",
  "source": {
    "blob": "10924efcb14d9be5261361e556251e7674c6635b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 44,
    "path": "GRWTSK/Algebra/LinearAlgebra/Valuation/Variantdc61fcac240865c5b30cfd5f55074cbeaf803d84ff2742e7718bb68c6dcf2738.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c5ad4a5427d253a2418ee2f776e2b4a8d494fce99b5469c5fdb43748899e5f4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Valuation/Variantdc61fcac240865c5b30cfd5f55074cbeaf803d84ff2742e7718bb68c6dcf2738.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a19954df-46e2-5305-f2cd-8d6b4a5ad0c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subgroups_basis : RingSubgroupsBasis fun γ : Γ₀ˣ => (v.ltAddSubgroup γ : AddSubgroup R) :=
  { inter := by
      rintro γ₀ γ₁
      use min γ₀ γ₁
      simp [Valuation.ltAddSubgroup]
      tauto
    mul := by
      rintro γ
      cases' exists_square_le γ with γ₀ h
      use γ₀
      rintro - ⟨r, s, r_in, s_in, rfl⟩
      calc
        (v (r * s) : Γ₀) = v r * v s := Valuation.map_mul _ _ _
        _ < γ₀ * γ₀ := (mul_lt_mul₀ r_in s_in)
        _ ≤ γ := by exact_mod_cast h
    leftMul := by
      rintro x γ
      rcases GroupWithZero.eq_zero_or_unit (v x) with (Hx | ⟨γx, Hx⟩)
      · use (1 : Γ₀ˣ)
        rintro y _
        change v (x * y) < _
        rw [Valuation.map_mul, Hx, zero_mul]
        exact Units.zero_lt γ
      · use γx⁻¹ * γ
        rintro y (vy_lt : v y < ↑(γx⁻¹ * γ))
        change (v (x * y) : Γ₀) < γ
        rw [Valuation.map_mul, Hx, mul_comm]
        rw [Units.val_mul, mul_comm] at vy_lt
        simpa using mul_inv_lt_of_lt_mul₀ vy_lt
    rightMul := by
      rintro x γ
      rcases GroupWithZero.eq_zero_or_unit (v x) with (Hx | ⟨γx, Hx⟩)
      · use 1
        rintro y _
        change v (y * x) < _
        rw [Valuation.map_mul, Hx, mul_zero]
        exact Units.zero_lt γ
      · use γx⁻¹ * γ
        rintro y (vy_lt : v y < ↑(γx⁻¹ * γ))
        change (v (y * x) : Γ₀) < γ
        rw [Valuation.map_mul, Hx]
        rw [Units.val_mul, mul_comm] at vy_lt
        simpa using mul_inv_lt_of_lt_mul₀ vy_lt }
#align valuation.subgroups_basis Valuation.subgroups_basis

end Valuation

/-- A valued ring is a ring that comes equipped with a distinguished valuation. The class `Valued`
is designed for the situation that there is a canonical valuation on the ring.

TODO: show that there always exists an equivalent valuation taking values in a type belonging to
the same universe as the ring.

See Note [forgetful inheritance] for why we extend `UniformSpace`, `UniformAddGroup`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Valuation/Variantdc61fcac240865c5b30cfd5f55074cbeaf803d84ff2742e7718bb68c6dcf2738.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Valuation/Variantdc61fcac240865c5b30cfd5f55074cbeaf803d84ff2742e7718bb68c6dcf2738.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10924efcb14d9be5261361e556251e7674c6635b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
