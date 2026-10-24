# centeredTwistedPsiMellin_add_principalIndicator_eq_neg_logDeriv_poleRemovedLFunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d66134f2-75cd-e5b7-2b6b-d5b46f9a1fcb",
  "kind": "theorem",
  "lexical_name": "centeredTwistedPsiMellin_add_principalIndicator_eq_neg_logDeriv_poleRemovedLFunction",
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
  "slug": "centeredtwistedpsimellin-add-principalindicator-eq-neg-logderiv-poleremo--137b028c3355351993a0f29f",
  "source": {
    "blob": "b6000020806bd4e60fb81b36430dd648e001b3fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 601,
    "line": 568,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantb5e7bce8bb7e0ef1756fbfd4a5c672959f60d847ed2e58a54bff4470dae7053b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:137b028c3355351993a0f29fcb425991989ece055eecac40c18c8ff948ec01de",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantb5e7bce8bb7e0ef1756fbfd4a5c672959f60d847ed2e58a54bff4470dae7053b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d66134f2-75cd-e5b7-2b6b-d5b46f9a1fcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 568–601.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredTwistedPsiMellin_add_principalIndicator_eq_neg_logDeriv_poleRemovedLFunction
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    {s : ℂ} (hs : 1 < s.re) :
    centeredTwistedPsiMellin χ s + dirichletPrincipalIndicator χ =
      -deriv (poleRemovedLFunction χ) s /
        poleRemovedLFunction χ s := by
  classical
  have hsOne : s ≠ 1 := by
    intro h
    subst s
    norm_num at hs
  rw [centeredTwistedPsiMellin_eq_LSeries_sub_principal χ hs]
  rw [DirichletCharacter.LSeries_twist_vonMangoldt_eq χ hs]
  rw [← DirichletCharacter.LFunction_eq_LSeries χ hs,
    ← DirichletCharacter.deriv_LFunction_eq_deriv_LSeries χ hs]
  by_cases hχ : χ = 1
  · subst χ
    rw [poleRemovedLFunction_one,
      DirichletCharacter.deriv_LFunctionTrivChar₁_apply_of_ne_one q hsOne]
    simp only [dirichletPrincipalIndicator_one]
    rw [DirichletCharacter.LFunctionTrivChar₁,
      Function.update_of_ne hsOne]
    have hLne : DirichletCharacter.LFunctionTrivChar q s ≠ 0 :=
      DirichletCharacter.LFunction_ne_zero_of_one_le_re
        (1 : DirichletCharacter ℂ q) (.inr hsOne) hs.le
    have hsDiff : s - 1 ≠ 0 := sub_ne_zero.mpr hsOne
    field_simp [hsOne, hsDiff, hLne]
    ring
  · rw [poleRemovedLFunction_eq_LFunction_of_ne_one hχ,
      dirichletPrincipalIndicator_eq_zero hχ]
    ring

/-- Open right half-plane used by the zero-exclusion argument. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantb5e7bce8bb7e0ef1756fbfd4a5c672959f60d847ed2e58a54bff4470dae7053b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantb5e7bce8bb7e0ef1756fbfd4a5c672959f60d847ed2e58a54bff4470dae7053b.lean#L568).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6000020806bd4e60fb81b36430dd648e001b3fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
