# Cauchy.eventually_mem_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b58ce027-f4ce-423e-6ec4-2e585e467974",
  "kind": "theorem",
  "lexical_name": "Cauchy.eventually_mem_nhds",
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
  "slug": "cauchy-eventually-mem-nhds--0e7a9c0a2838d9e58461cf2c",
  "source": {
    "blob": "9c5f98b1cf2470ff5595b1cc5786a8f0b072677b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 879,
    "line": 863,
    "path": "GRWTSK/Topology/GeneralTopology/LaurentSeries/Variant8ec127614a61df0f43b238a4e8dec38f6321a83c39a759862e26ccef09a3369c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e7a9c0a2838d9e58461cf2c5d2d1b1238d08c0fca569338aad3a6c57c2fd9ad",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LaurentSeries/Variant8ec127614a61df0f43b238a4e8dec38f6321a83c39a759862e26ccef09a3369c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b58ce027-f4ce-423e-6ec4-2e585e467974`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 863–879.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Cauchy.eventually_mem_nhds {ℱ : Filter K⸨X⸩} (hℱ : Cauchy ℱ)
    {U : Set K⸨X⸩} (hU : U ∈ 𝓝 (Cauchy.limit hℱ)) : ∀ᶠ f in ℱ, f ∈ U := by
  obtain ⟨γ, hU₁⟩ := Valued.mem_nhds.mp hU
  suffices ∀ᶠ f in ℱ, f ∈ {y : K⸨X⸩ | Valued.v (y - limit hℱ) < ↑γ} by
    apply this.mono fun _ hf ↦ hU₁ hf
  set D := -((WithZero.unzero γ.ne_zero).toAdd - 1) with hD₀
  have hD : ((Multiplicative.ofAdd (-D) : Multiplicative ℤ) : ℤₘ₀) < γ := by
    rw [← WithZero.coe_unzero γ.ne_zero, WithZero.coe_lt_coe, hD₀, neg_neg, ofAdd_sub,
      ofAdd_toAdd, div_lt_comm, div_self', ← ofAdd_zero, Multiplicative.ofAdd_lt]
    exact zero_lt_one
  apply coeff_eventually_equal (D := D) hℱ |>.mono
  intro _ hf
  apply lt_of_le_of_lt (valuation_le_iff_coeff_lt_eq_zero K |>.mpr _) hD
  intro n hn
  rw [HahnSeries.coeff_sub, sub_eq_zero, hf n hn |>.symm]; rfl

/- Laurent Series with coefficients in a field are complete w.r.t. the `X`-adic valuation -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LaurentSeries/Variant8ec127614a61df0f43b238a4e8dec38f6321a83c39a759862e26ccef09a3369c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LaurentSeries/Variant8ec127614a61df0f43b238a4e8dec38f6321a83c39a759862e26ccef09a3369c.lean#L863).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c5f98b1cf2470ff5595b1cc5786a8f0b072677b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
