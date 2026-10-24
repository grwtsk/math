# domain_inner_of_expression_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "80a886dcd9c4be62878660fcad4bb23a6aab70ec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0a/0a8a964a279cc91e4d99386c96e14341194c1269446ecd2de2d186b7efb01d41.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d25bc0b6-7db9-607d-66d1-f0b6e5513c88",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4869c0eb-a56a-b664-8e0d-5db3c46741e8",
  "kind": "theorem",
  "lexical_name": "domain_inner_of_expression_eq",
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
  "slug": "domain-inner-of-expression-eq--811141c923a8b68c430a2805",
  "source": {
    "blob": "80a886dcd9c4be62878660fcad4bb23a6aab70ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 139,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiMaximalDomain/Variant0a8a964a279cc91e4d99386c96e14341194c1269446ecd2de2d186b7efb01d41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:811141c923a8b68c430a28051cbe3ce65ffb6dd5b240a78109dee3a6366874d8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiMaximalDomain/Variant0a8a964a279cc91e4d99386c96e14341194c1269446ecd2de2d186b7efb01d41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4869c0eb-a56a-b664-8e0d-5db3c46741e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem domain_inner_of_expression_eq {t : ℝ} (ht : 0 ≤ t)
    (v w : lp (fun _ : ℕ => ℂ) 2)
    (hw : ∀ n : ℕ, w n = jacobiExpression t ht v n)
    (p : jacobiDomain t ht) :
    ⟪w, p.val⟫_ℂ = ⟪v, jacobiOperator t ht p⟫_ℂ := by
  let L : (lp (fun _ : ℕ => ℂ) 2 × lp (fun _ : ℕ => ℂ) 2) →L[ℂ] ℂ :=
    (innerSL ℂ w).comp (ContinuousLinearMap.fst ℂ _ _) -
      (innerSL ℂ v).comp (ContinuousLinearMap.snd ℂ _ _)
  have hker : ((jacobiOperator t ht).domRestrict finiteSequences).graph ≤ L.ker := by
    intro z hz
    obtain ⟨f, rfl⟩ := (LinearPMap.mem_graph_iff' _).mp hz
    change ⟪w, f.val⟫_ℂ -
      ⟪v, jacobiOperator t ht ⟨f.val, f.property.2⟩⟫_ℂ = 0
    exact sub_eq_zero.mpr
      (core_inner_of_expression_eq ht v w hw ⟨f.val, f.property.2⟩ f.property.1)
  have hclosed := Submodule.topologicalClosure_minimal _ hker L.isClosed_ker
  rw [finiteSequences_graph_closure ht] at hclosed
  have hz := hclosed ((LinearPMap.mem_graph_iff' _).mpr ⟨p, rfl⟩)
  exact sub_eq_zero.mp hz

/-- An lp2 witness for the raw expression puts a vector in the original actual domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiMaximalDomain/Variant0a8a964a279cc91e4d99386c96e14341194c1269446ecd2de2d186b7efb01d41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiMaximalDomain/Variant0a8a964a279cc91e4d99386c96e14341194c1269446ecd2de2d186b7efb01d41.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80a886dcd9c4be62878660fcad4bb23a6aab70ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
