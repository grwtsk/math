# subgroups_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7153f94-2491-5ba0-36dc-0e1a9959a1bf",
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
  "slug": "subgroups-basis--378ef28b3f1f9c3fa431aa80",
  "source": {
    "blob": "5567be2aba293aaba62fe06477ad582ed2172e31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 65,
    "path": "GRWTSK/Topology/GeneralTopology/ValuationTopology/Variantc121be797bef6749ac076c6b3b943de7a7abcc66fb84e1dcd411a9bca457f2ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:378ef28b3f1f9c3fa431aa80d84fe44c687242a3b7509e1a3e6d8bd63bac9770",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ValuationTopology/Variantc121be797bef6749ac076c6b3b943de7a7abcc66fb84e1dcd411a9bca457f2ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7153f94-2491-5ba0-36dc-0e1a9959a1bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subgroups_basis :
    RingSubgroupsBasis fun γ : (ValueGroup₀ (.ofClass v))ˣ ↦
      v.ltAddSubgroup <| Units.map (ValueGroup₀.embedding (f := (.ofClass v))) γ :=
  { inter := by
      rintro γ₀ γ₁
      use min γ₀ γ₁
      have hmin : embedding (min γ₀.1 γ₁.1) = min (embedding γ₀.1) (embedding γ₁.1) :=
        embedding_strictMono.monotone.map_inf γ₀.1 γ₁.1
      simp [ltAddSubgroup, hmin]
      tauto
    mul := by
      rintro γ
      obtain ⟨γ₀, h⟩ := exists_square_le γ
      use γ₀
      rintro - ⟨r, r_in, s, s_in, rfl⟩
      simp only [ltAddSubgroup, Units.coe_map, MonoidHom.coe_coe, AddSubgroup.coe_set_mk,
        AddSubmonoid.coe_set_mk, AddSubsemigroup.coe_set_mk, mem_ofPred_eq] at r_in s_in
      simp only [coe_ltAddSubgroup, Units.coe_map, MonoidHom.coe_coe, mem_ofPred_eq]
      rw [← restrict_lt_iff_lt_embedding] at *
      calc
        v.restrict (r * s) = v.restrict r * v.restrict s := Valuation.map_mul _ _ _
        _ < γ₀.1 * γ₀.1 := by gcongr <;> exact zero_le
        _ ≤ γ := mod_cast h
    leftMul := by
      rintro x γ
      rcases GroupWithZero.eq_zero_or_unit (v x) with (Hx | ⟨γx, Hx⟩)
      · use (1 : (ValueGroup₀ (.ofClass v))ˣ)
        rintro y _
        simp only [coe_ltAddSubgroup, preimage_ofPred_eq, mem_ofPred_eq]
        rw [Valuation.map_mul, Hx, zero_mul]
        exact Units.zero_lt _
      · set u : (ValueGroup₀ (.ofClass v))ˣ := Units.mk0 ((restrict₀ (.ofClass v)) x)
          (by simp [restrict₀_apply]; aesop) with hu_def
        have hu : ValueGroup₀.embedding u⁻¹.1 = γx⁻¹ := by
          simp [restrict₀_apply, embedding_apply, hu_def, Hx]
        use u⁻¹ * γ
        rintro y (vy_lt : v y < ValueGroup₀.embedding (u⁻¹ * γ).1)
        simp only [coe_ltAddSubgroup, preimage_ofPred_eq, mem_ofPred_eq]
        rw [Valuation.map_mul, Hx, mul_comm]
        rw [Units.val_mul, mul_comm, map_mul, hu] at vy_lt
        simpa using mul_inv_lt_of_lt_mul₀ vy_lt
    rightMul := by
      rintro x γ
      rcases GroupWithZero.eq_zero_or_unit (v x) with (Hx | ⟨γx, Hx⟩)
      · use 1
        rintro y _
        simp only [coe_ltAddSubgroup, preimage_ofPred_eq, mem_ofPred_eq, Valuation.map_mul, Hx,
          mul_zero, Units.zero_lt]
      · set u : (ValueGroup₀ (.ofClass v))ˣ := Units.mk0 ((restrict₀ (.ofClass v)) x)
          (by simp [restrict₀_apply]; aesop) with hu_def
        have hu : ValueGroup₀.embedding u⁻¹.1 = γx⁻¹ := by simp [restrict₀_apply, embedding_apply,
          hu_def, Hx]
        use u⁻¹ * γ
        rintro y (vy_lt : v y < ValueGroup₀.embedding (u⁻¹ * γ).1)
        simp only [coe_ltAddSubgroup, preimage_ofPred_eq, mem_ofPred_eq, Valuation.map_mul, Hx]
        rw [Units.val_mul, mul_comm, map_mul, hu] at vy_lt
        simpa using mul_inv_lt_of_lt_mul₀ vy_lt }

end Valuation

/-- A valued ring is a ring that comes equipped with a distinguished valuation. The class `Valued`
is designed for the situation that there is a canonical valuation on the ring.

TODO: show that there always exists an equivalent valuation taking values in a type belonging to
the same universe as the ring.

See Note [forgetful inheritance] for why we extend `UniformSpace`, `IsUniformAddGroup`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ValuationTopology/Variantc121be797bef6749ac076c6b3b943de7a7abcc66fb84e1dcd411a9bca457f2ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ValuationTopology/Variantc121be797bef6749ac076c6b3b943de7a7abcc66fb84e1dcd411a9bca457f2ed.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5567be2aba293aaba62fe06477ad582ed2172e31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
