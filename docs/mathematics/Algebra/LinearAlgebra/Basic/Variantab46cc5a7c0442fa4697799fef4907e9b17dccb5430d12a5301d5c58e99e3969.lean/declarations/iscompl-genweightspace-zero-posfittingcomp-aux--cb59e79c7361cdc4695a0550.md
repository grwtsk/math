# isCompl_genWeightSpace_zero_posFittingComp_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ba9fdae-a23c-5a00-1290-ed35016d082d",
  "kind": "lemma",
  "lexical_name": "isCompl_genWeightSpace_zero_posFittingComp_aux",
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
  "slug": "iscompl-genweightspace-zero-posfittingcomp-aux--cb59e79c7361cdc4695a0550",
  "source": {
    "blob": "0aa055679cb082ed62c579167402aa1e8f8ebca4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 636,
    "line": 604,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantab46cc5a7c0442fa4697799fef4907e9b17dccb5430d12a5301d5c58e99e3969.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb59e79c7361cdc4695a0550b34a02780533a887285edde07a9316bae029462e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantab46cc5a7c0442fa4697799fef4907e9b17dccb5430d12a5301d5c58e99e3969.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ba9fdae-a23c-5a00-1290-ed35016d082d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 604–636.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma isCompl_genWeightSpace_zero_posFittingComp_aux
    (h : ∀ N < (⊤ : LieSubmodule R L M), IsCompl (genWeightSpace N 0) (posFittingComp R L N)) :
    IsCompl (genWeightSpace M 0) (posFittingComp R L M) := by
  set M₀ := genWeightSpace M (0 : L → R)
  set M₁ := posFittingComp R L M
  rcases forall_or_exists_not (fun (x : L) ↦ genWeightSpaceOf M (0 : R) x = ⊤)
    with h | ⟨x, hx : genWeightSpaceOf M (0 : R) x ≠ ⊤⟩
  · suffices IsNilpotent L M by simp [M₀, M₁, isCompl_top_bot]
    replace h : M₀ = ⊤ := by simpa [M₀, genWeightSpace]
    rw [← LieModule.isNilpotent_of_top_iff' (R := R), ← h]
    infer_instance
  · set M₀ₓ := genWeightSpaceOf M (0 : R) x
    set M₁ₓ := posFittingCompOf R M x
    set M₀ₓ₀ := genWeightSpace M₀ₓ (0 : L → R)
    set M₀ₓ₁ := posFittingComp R L M₀ₓ
    have h₁ : IsCompl M₀ₓ M₁ₓ := isCompl_genWeightSpaceOf_zero_posFittingCompOf R L M x
    have h₂ : IsCompl M₀ₓ₀ M₀ₓ₁ := h M₀ₓ hx.lt_top
    have h₃ : M₀ₓ₀.map M₀ₓ.incl = M₀ := by
      rw [map_genWeightSpace_eq_of_injective M₀ₓ.injective_incl, inf_eq_left,
        LieSubmodule.range_incl]
      exact iInf_le _ x
    have h₄ : M₀ₓ₁.map M₀ₓ.incl ⊔ M₁ₓ = M₁ := by
      apply le_antisymm <| sup_le_iff.mpr
        ⟨map_posFittingComp_le _, posFittingCompOf_le_posFittingComp R L M x⟩
      rw [← posFittingComp_map_incl_sup_of_codisjoint h₁.codisjoint]
      exact sup_le_sup_left LieSubmodule.map_incl_le _
    rw [← h₃, ← h₄]
    apply Disjoint.isCompl_sup_right_of_isCompl_sup_left
    · rw [disjoint_iff, ← LieSubmodule.map_inf M₀ₓ.injective_incl, h₂.inf_eq_bot,
        LieSubmodule.map_bot]
    · rwa [← LieSubmodule.map_sup, h₂.sup_eq_top, LieModuleHom.map_top, LieSubmodule.range_incl]

/-- This is the Fitting decomposition of the Lie module `M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantab46cc5a7c0442fa4697799fef4907e9b17dccb5430d12a5301d5c58e99e3969.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantab46cc5a7c0442fa4697799fef4907e9b17dccb5430d12a5301d5c58e99e3969.lean#L604).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0aa055679cb082ed62c579167402aa1e8f8ebca4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
