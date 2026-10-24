# isCompact_setOfPred_finiteMeasure_mass_eq_compl_isCompact_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7099f3c4-7a46-15dc-46fd-d7d6ac0cce60",
  "kind": "lemma",
  "lexical_name": "isCompact_setOfPred_finiteMeasure_mass_eq_compl_isCompact_le",
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
  "slug": "iscompact-setofpred-finitemeasure-mass-eq-compl-iscompact-le--b83bfa66baa4a58f7809501a",
  "source": {
    "blob": "caeefca8ede961defa13ae3cd7890c0e421d203e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 512,
    "line": 495,
    "path": "GRWTSK/Topology/GeneralTopology/Prokhorov/Variant5b20de6d752838a48ecbd22b3718557c2d5ebe79ab8bb5a6aaa299a1ecb95bbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b83bfa66baa4a58f7809501a0f1ddf73a176707e66027ad5b2957157c0a5f603",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prokhorov/Variant5b20de6d752838a48ecbd22b3718557c2d5ebe79ab8bb5a6aaa299a1ecb95bbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7099f3c4-7a46-15dc-46fd-d7d6ac0cce60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 495–512.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCompact_setOfPred_finiteMeasure_mass_eq_compl_isCompact_le {u : ℕ → ℝ≥0}
    {K : ℕ → Set E} (C : ℝ≥0) (hu : Tendsto u atTop (𝓝 0)) (hK : ∀ n, IsCompact (K n))
    (h : NormalSpace E ∨ Monotone K) :
    IsCompact {μ : FiniteMeasure E | μ.mass = C ∧ ∀ n, μ (K n)ᶜ ≤ u n} := by
  have : {μ : FiniteMeasure E | μ.mass = C ∧ ∀ n, μ (K n)ᶜ ≤ u n} =
    {μ | μ.mass ≤ C ∧ ∀ n, μ (K n)ᶜ ≤ u n} ∩ {μ | μ.mass = C} := by ext; grind
  rw [this]
  apply IsCompact.inter_right
    (isCompact_setOfPred_finiteMeasure_mass_le_compl_isCompact_le C hu hK h)
  exact isClosed_eq (by fun_prop) (by fun_prop)

@[deprecated (since := "2026-07-09")]
alias isCompact_setOf_finiteMeasure_mass_eq_compl_isCompact_le :=
  isCompact_setOfPred_finiteMeasure_mass_eq_compl_isCompact_le

/-- **Prokhorov theorem**: Given a sequence of compact sets `Kₙ` and a sequence `uₙ` tending to
zero, the probability measures giving mass at most `uₙ` to the complement of `Kₙ` form a
compact set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prokhorov/Variant5b20de6d752838a48ecbd22b3718557c2d5ebe79ab8bb5a6aaa299a1ecb95bbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prokhorov/Variant5b20de6d752838a48ecbd22b3718557c2d5ebe79ab8bb5a6aaa299a1ecb95bbe.lean#L495).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `caeefca8ede961defa13ae3cd7890c0e421d203e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
