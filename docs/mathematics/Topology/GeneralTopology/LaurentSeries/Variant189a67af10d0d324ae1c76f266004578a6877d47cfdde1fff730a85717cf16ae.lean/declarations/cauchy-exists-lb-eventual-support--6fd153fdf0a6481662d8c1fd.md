# Cauchy.exists_lb_eventual_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2c782bb7017d8b673e57ef41bf349b892c94a13e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 755,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/189a67af10d0d324ae1c76f266004578a6877d47cfdde1fff730a85717cf16ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:08808b42-3142-886c-76c0-5a161f97d20f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:79d32ec2-09a5-2ec3-cafa-85fa17dc2d52",
  "kind": "lemma",
  "lexical_name": "Cauchy.exists_lb_eventual_support",
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
  "slug": "cauchy-exists-lb-eventual-support--6fd153fdf0a6481662d8c1fd",
  "source": {
    "blob": "2c782bb7017d8b673e57ef41bf349b892c94a13e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 783,
    "line": 755,
    "path": "GRWTSK/Topology/GeneralTopology/LaurentSeries/Variant189a67af10d0d324ae1c76f266004578a6877d47cfdde1fff730a85717cf16ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fd153fdf0a6481662d8c1fd70cc2b953035127a95100a90664878ebcb50b7f3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LaurentSeries/Variant189a67af10d0d324ae1c76f266004578a6877d47cfdde1fff730a85717cf16ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79d32ec2-09a5-2ec3-cafa-85fa17dc2d52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 755–783.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Cauchy.exists_lb_eventual_support {ℱ : Filter K⸨X⸩} (hℱ : Cauchy ℱ) :
    ∃ N, ∀ᶠ f : K⸨X⸩ in ℱ, ∀ n < N, f.coeff n = (0 : K) := by
  let entourage : Set (K⸨X⸩ × K⸨X⸩) :=
    {P : K⸨X⸩ × K⸨X⸩ |
      Valued.v (P.snd - P.fst) < ((Multiplicative.ofAdd 0 : Multiplicative ℤ) : ℤₘ₀)}
  let ζ := Units.mk0 (G₀ := ℤₘ₀) _ (WithZero.coe_ne_zero (a := (Multiplicative.ofAdd 0)))
  obtain ⟨S, ⟨hS, ⟨T, ⟨hT, H⟩⟩⟩⟩ := mem_prod_iff.mp <| Filter.le_def.mp hℱ.2 entourage
    <| (Valued.hasBasis_uniformity K⸨X⸩ ℤₘ₀).mem_of_mem (i := ζ) (by tauto)
  obtain ⟨f, hf⟩ := forall_mem_nonempty_iff_neBot.mpr hℱ.1 (S ∩ T) (inter_mem_iff.mpr ⟨hS, hT⟩)
  obtain ⟨N, hN⟩ :  ∃ N : ℤ, ∀ g : K⸨X⸩,
    Valued.v (g - f) ≤ ↑(Multiplicative.ofAdd (0 : ℤ)) → ∀ n < N, g.coeff n = 0 := by
    by_cases hf : f = 0
    · refine ⟨0, fun x hg ↦ ?_⟩
      rw [hf, sub_zero] at hg
      exact (valuation_le_iff_coeff_lt_eq_zero K).mp hg
    · refine ⟨min (f.2.isWF.min (HahnSeries.support_nonempty_iff.mpr hf)) 0 - 1, fun _ hg n hn ↦ ?_⟩
      rw [eq_coeff_of_valuation_sub_lt K hg (d := 0)]
      · exact Function.notMem_support.mp fun h ↦
        f.2.isWF.not_lt_min (HahnSeries.support_nonempty_iff.mpr hf) h
        <| lt_trans hn <| Int.sub_one_lt_iff.mpr <| min_le_left _ _
      exact lt_of_lt_of_le hn <| le_of_lt (Int.sub_one_lt_of_le <| min_le_right _ _)
  use N
  apply mem_of_superset (inter_mem hS hT)
  intro g hg
  have h_prod : (f, g) ∈ entourage := Set.prod_mono (Set.inter_subset_left (t := T))
    (Set.inter_subset_right (s := S)) |>.trans H <| Set.mem_prod.mpr ⟨hf, hg⟩
  exact hN g (le_of_lt h_prod)

/- The support of `Cauchy.coeff` has a lower bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LaurentSeries/Variant189a67af10d0d324ae1c76f266004578a6877d47cfdde1fff730a85717cf16ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LaurentSeries/Variant189a67af10d0d324ae1c76f266004578a6877d47cfdde1fff730a85717cf16ae.lean#L755).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c782bb7017d8b673e57ef41bf349b892c94a13e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
