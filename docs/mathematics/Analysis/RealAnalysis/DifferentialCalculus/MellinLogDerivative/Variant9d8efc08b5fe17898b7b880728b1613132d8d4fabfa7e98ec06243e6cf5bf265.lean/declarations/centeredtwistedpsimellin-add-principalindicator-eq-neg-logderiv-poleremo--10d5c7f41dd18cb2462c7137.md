# centeredTwistedPsiMellin_add_principalIndicator_eq_neg_logDeriv_poleRemovedLFunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "290f5ffc4bea1385f961f99cf14b89fcba315c8e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 517,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96dc4a17-847a-25fc-f893-fa7a0487babc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a3a7f7b4-abdf-28e4-9cd9-8b99d1b6ed1b",
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
  "slug": "centeredtwistedpsimellin-add-principalindicator-eq-neg-logderiv-poleremo--10d5c7f41dd18cb2462c7137",
  "source": {
    "blob": "290f5ffc4bea1385f961f99cf14b89fcba315c8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 550,
    "line": 517,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10d5c7f41dd18cb2462c71373428c7a1cca1e1d8f12049d77dbc485e4991aa61",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3a7f7b4-abdf-28e4-9cd9-8b99d1b6ed1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 517–550.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean#L517).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `290f5ffc4bea1385f961f99cf14b89fcba315c8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
