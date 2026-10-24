# riemannZeta_zeros_locallyFinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5bf6473-e49e-5b13-4b1a-86db8adeb6e6",
  "kind": "lemma",
  "lexical_name": "riemannZeta_zeros_locallyFinite",
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
  "slug": "riemannzeta-zeros-locallyfinite--d0f91bb5092d59198702e32e",
  "source": {
    "blob": "2ec14fde94f25ff8ab862c750523f504c461f66d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 71,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant9855b2884b8485312f233de9c443d476b7e82968c410ec9a803a540b44065bb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0f91bb5092d59198702e32ee634e73cbc4af0823cd073aa2bc563aa1717e925",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant9855b2884b8485312f233de9c443d476b7e82968c410ec9a803a540b44065bb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5bf6473-e49e-5b13-4b1a-86db8adeb6e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma riemannZeta_zeros_locallyFinite (z : ℂ) :
    ∃ t ∈ 𝓝 z, (t ∩ {ρ : ℂ | ρ ≠ 1 ∧ riemannZeta ρ = 0}).Finite := by
  by_cases hz : z = 1
  · -- near the pole there are no zeros at all
    subst hz
    have hres := riemannZeta_residue_one
    have hev : ∀ᶠ s in 𝓝[≠] (1 : ℂ), riemannZeta s ≠ 0 := by
      have : ∀ᶠ s in 𝓝[≠] (1 : ℂ), (s - 1) * riemannZeta s ≠ 0 :=
        hres.eventually_ne one_ne_zero
      exact this.mono fun s hs h => hs (by simp [h])
    rw [eventually_nhdsWithin_iff] at hev
    refine ⟨{s | s ∈ ({1}ᶜ : Set ℂ) → riemannZeta s ≠ 0}, hev, ?_⟩
    refine (Set.finite_empty).subset ?_
    rintro s ⟨hs, hs1, hz⟩
    exact hs hs1 hz
  · have hcod := (riemannZeta_analyticOnNhd_compl_one).eqOn_zero_or_eventually_ne_zero_of_preconnected
      isConnected_compl_one.isPreconnected
    rcases hcod with hzero | hcod
    · exfalso
      have : riemannZeta 2 = 0 := hzero (by norm_num : (2 : ℂ) ∈ ({1}ᶜ : Set ℂ))
      exact riemannZeta_ne_zero_of_one_lt_re (by norm_num) this
    · rw [Filter.Eventually, codiscreteWithin_iff_locallyFiniteComplementWithin] at hcod
      obtain ⟨t, ht, hfin⟩ := hcod z hz
      refine ⟨t, ht, hfin.subset ?_⟩
      rintro s ⟨hst, hs1, hs0⟩
      exact ⟨hst, hs1, by simpa using hs0⟩

/-- Seam obligation: local finiteness of the nontrivial zeros in ordinate windows. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant9855b2884b8485312f233de9c443d476b7e82968c410ec9a803a540b44065bb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant9855b2884b8485312f233de9c443d476b7e82968c410ec9a803a540b44065bb5.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ec14fde94f25ff8ab862c750523f504c461f66d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
