# im_integral_logDeriv_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:517ae74e-e720-81ce-7343-238cf2ea40f1",
  "kind": "theorem",
  "lexical_name": "im_integral_logDeriv_le",
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
  "slug": "im-integral-logderiv-le--6ebd6d742274f1db63c9c68b",
  "source": {
    "blob": "b53b984edd7dd34a14c656c928b79798ae274f69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 274,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ebd6d742274f1db63c9c68b8f98b358773a3ed3ece63cdae2caf0137e4887c0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:517ae74e-e720-81ce-7343-238cf2ea40f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem im_integral_logDeriv_le (hT : T ≠ 0)
    (hnz : ∀ σ ∈ Set.Icc (1/2 : ℝ) 2, riemannZeta (σ + T * I) ≠ 0)
    (hfin : (reZeroSet T).Finite) :
    |(∫ σ in (1 / 2 : ℝ)..2, logDeriv riemannZeta (σ + T * I)).im|
      ≤ 2 * Real.pi * ((reZeroSet T).ncard + 1) := by
  set P := hfin.toFinset with hPdef
  have hP : ∀ σ ∈ Set.Icc (1/2 : ℝ) 2, (riemannZeta (σ + T * I)).re = 0 → σ ∈ P :=
    fun σ hσ h => hfin.mem_toFinset.mpr ⟨hσ, h⟩
  have h := im_integral_logDeriv_le_aux hT hnz P hP P.card (1/2) 2 le_rfl (by norm_num) le_rfl
    (Finset.card_filter_le _ _)
  have hc : ((P.filter (fun x => (1/2 : ℝ) < x ∧ x < 2)).card : ℝ) ≤ (reZeroSet T).ncard := by
    rw [Set.ncard_eq_toFinset_card _ hfin]
    exact_mod_cast Finset.card_filter_le _ _
  refine h.trans ?_
  nlinarith [Real.pi_pos]

end Variation

/-! ## Assembly of Backlund's bound from (J) = `reZeroSet_card_le`  and (V) -/

/-- ζ has no zero on `[1/2,2] + iT` when `T` is not the ordinate of a nontrivial zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b53b984edd7dd34a14c656c928b79798ae274f69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
