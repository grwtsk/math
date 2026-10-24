# isMaximal_comap_C_of_isMaximal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7f4993e-74ee-ebb6-fae7-b040fbf1c8ea",
  "kind": "theorem",
  "lexical_name": "isMaximal_comap_C_of_isMaximal",
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
  "slug": "ismaximal-comap-c-of-ismaximal--c1c33909099fc43371a27786",
  "source": {
    "blob": "7fb35473abe6e0a02c75127a03e061e8940348e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 483,
    "line": 440,
    "path": "GRWTSK/Algebra/Ring/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1c33909099fc43371a27786ece2b0857ead8bea9be239f39c3fa0f0b39213a6",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7f4993e-74ee-ebb6-fae7-b040fbf1c8ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 440–483.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isMaximal_comap_C_of_isMaximal [IsJacobsonRing R] [Nontrivial R]
    (hP' : ∀ x : R, C x ∈ P → x = 0) :
    IsMaximal (comap (C : R →+* R[X]) P : Ideal R) := by
  let P' := comap (C : R →+* R[X]) P
  have hP'_prime : P'.IsPrime := comap_isPrime C P
  obtain ⟨⟨m, hmem_P⟩, hm⟩ :=
    Submodule.nonzero_mem_of_bot_lt (bot_lt_of_maximal P (Polynomial.not_isField R))
  have hm' : m ≠ 0 := by
    simpa [Submodule.coe_eq_zero] using hm
  let φ : R ⧸ P' →+* R[X] ⧸ P := quotientMap P (C : R →+* R[X]) le_rfl
  let a : R ⧸ P' := (m.map (Ideal.Quotient.mk P')).leadingCoeff
  let M : Submonoid (R ⧸ P') := Submonoid.powers a
  rw [← bot_quotient_isMaximal_iff]
  have hp0 : a ≠ 0 := fun hp0' =>
    hm' <| map_injective (Ideal.Quotient.mk (P.comap (C : R →+* R[X]) : Ideal R))
      ((injective_iff_map_eq_zero (Ideal.Quotient.mk (P.comap (C : R →+* R[X]) : Ideal R))).2
        fun x hx => by
          rwa [Quotient.eq_zero_iff_mem, (by rwa [eq_bot_iff] : (P.comap C : Ideal R) = ⊥)] at hx)
        (by simpa only [a, leadingCoeff_eq_zero, Polynomial.map_zero] using hp0')
  have hM : (0 : R ⧸ P') ∉ M := fun ⟨n, hn⟩ => hp0 (eq_zero_of_pow_eq_zero hn)
  suffices (⊥ : Ideal (Localization M)).IsMaximal by
    rw [← IsLocalization.under_map_of_isPrime_disjoint M (Localization M) isPrime_bot
      (disjoint_iff_inf_le.mpr fun x hx => hM (hx.2 ▸ hx.1))]
    exact ((IsLocalization.isMaximal_iff_isMaximal_disjoint (Localization M) a _).mp
      (by rwa [Ideal.map_bot])).1
  let M' : Submonoid (R[X] ⧸ P) := M.map φ
  have hM' : (0 : R[X] ⧸ P) ∉ M' := fun ⟨z, hz⟩ =>
    hM (quotientMap_injective (_root_.trans hz.2 φ.map_zero.symm) ▸ hz.1)
  suffices (⊥ : Ideal (Localization M')).IsMaximal by
    rw [le_antisymm bot_le (comap_bot_le_of_injective _
      (IsLocalization.map_injective_of_injective M (Localization M) (Localization M')
        quotientMap_injective))]
    refine isMaximal_comap_of_isIntegral_of_isMaximal _ ?_ ⊥
    have isloc : IsLocalization (Submonoid.map φ M) (Localization M') := by infer_instance
    exact @isIntegral_isLocalization_polynomial_quotient R _
      (Localization M) (Localization M') _ _ P m hmem_P _ _ _ isloc
  rw [(map_bot.symm :
    (⊥ : Ideal (Localization M')) = Ideal.map (algebraMap (R[X] ⧸ P) (Localization M')) ⊥)]
  let bot_maximal := (bot_quotient_isMaximal_iff _).mpr hP
  refine bot_maximal.map_bijective (algebraMap (R[X] ⧸ P) (Localization M')) ?_
  apply IsField.localization_map_bijective hM'
  rwa [← Quotient.maximal_ideal_iff_isField_quotient, ← bot_quotient_isMaximal_iff]

/-- Used to bootstrap the more general `quotient_mk_comp_C_isIntegral_of_jacobson` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean#L440).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fb35473abe6e0a02c75127a03e061e8940348e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
