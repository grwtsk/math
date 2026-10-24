# core_inner_of_expression_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9824aea1-c7f6-bf22-30d6-424e6f90f8f7",
  "kind": "theorem",
  "lexical_name": "core_inner_of_expression_eq",
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
  "slug": "core-inner-of-expression-eq--a5c8df833b590423264ba0f0",
  "source": {
    "blob": "b9bf9e1a6ded1ccaf77e6fe4b74653bdf57ebc66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 118,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiMaximalDomain/Variant5ea02672114514dd66a8ecd8a9676a9f1b43e0f2b830680e306d36125017fa51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5c8df833b590423264ba0f048f16db591f434a8708f0d3ef5b3de1a7d899039",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiMaximalDomain/Variant5ea02672114514dd66a8ecd8a9676a9f1b43e0f2b830680e306d36125017fa51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9824aea1-c7f6-bf22-30d6-424e6f90f8f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem core_inner_of_expression_eq {t : ℝ} (ht : 0 ≤ t)
    (v w : lp (fun _ : ℕ => ℂ) 2)
    (hw : ∀ n : ℕ, w n = jacobiExpression t ht v n)
    (p : jacobiDomain t ht) (hp : p.val ∈ finiteSequences) :
    ⟪w, p.val⟫_ℂ = ⟪v, jacobiOperator t ht p⟫_ℂ := by
  let L : jacobiDomain t ht →ₗ[ℂ] ℂ :=
    (innerSL ℂ w).toLinearMap.comp (jacobiDomain t ht).subtype -
      (innerSL ℂ v).toLinearMap.comp (jacobiDomainMap t ht)
  let S : Submodule ℂ (jacobiDomain t ht) :=
    Submodule.span ℂ (Set.range (standardDomainVector t ht))
  have hs : S.map (jacobiDomain t ht).subtype = finiteSequences := by
    dsimp only [S]
    rw [Submodule.map_span, ← Set.range_comp]
    rfl
  have hpS : p ∈ S := by
    rw [← hs] at hp
    obtain ⟨q, hq, hqp⟩ := hp
    have hqp' : q = p := Subtype.ext hqp
    exact hqp' ▸ hq
  have hker : S ≤ L.ker := by
    apply Submodule.span_le.mpr
    rintro x ⟨n, rfl⟩
    change ⟪w, (standardDomainVector t ht n : lp (fun _ : ℕ => ℂ) 2)⟫_ℂ -
      ⟪v, jacobiOperator t ht (standardDomainVector t ht n)⟫_ℂ = 0
    exact sub_eq_zero.mpr (standard_inner_of_expression_eq ht v w hw n)
  have hz : L p = 0 := hker hpS
  exact sub_eq_zero.mp hz

/-- The proved graph core extends the adjoint test to every vector in the actual maximal domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiMaximalDomain/Variant5ea02672114514dd66a8ecd8a9676a9f1b43e0f2b830680e306d36125017fa51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiMaximalDomain/Variant5ea02672114514dd66a8ecd8a9676a9f1b43e0f2b830680e306d36125017fa51.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9bf9e1a6ded1ccaf77e6fe4b74653bdf57ebc66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
