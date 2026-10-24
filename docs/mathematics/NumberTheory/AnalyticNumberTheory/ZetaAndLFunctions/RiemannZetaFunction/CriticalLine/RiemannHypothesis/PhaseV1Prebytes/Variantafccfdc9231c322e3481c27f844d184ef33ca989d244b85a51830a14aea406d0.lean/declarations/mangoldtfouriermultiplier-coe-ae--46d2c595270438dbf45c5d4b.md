# mangoldtFourierMultiplier_coe_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8777a582e925aecc3c6b5e2c0babe512c69a6239",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afccfdc9231c322e3481c27f844d184ef33ca989d244b85a51830a14aea406d0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db67abe0-c33a-7677-743d-e39ea729a548",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa01cb27-4a63-407e-9c3a-535e0fa36ad1",
  "kind": "theorem",
  "lexical_name": "mangoldtFourierMultiplier_coe_ae",
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
  "slug": "mangoldtfouriermultiplier-coe-ae--46d2c595270438dbf45c5d4b",
  "source": {
    "blob": "8777a582e925aecc3c6b5e2c0babe512c69a6239",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 89,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseV1Prebytes/Variantafccfdc9231c322e3481c27f844d184ef33ca989d244b85a51830a14aea406d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46d2c595270438dbf45c5d4b9e1fa999fa47cd65354e69e1fa0f60a04a4bb9a1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseV1Prebytes/Variantafccfdc9231c322e3481c27f844d184ef33ca989d244b85a51830a14aea406d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa01cb27-4a63-407e-9c3a-535e0fa36ad1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtFourierMultiplier_coe_ae (A : ℝ) (f : ComplexL2) :
    mangoldtFourierMultiplier A f =ᵐ[volume]
      fun ξ => (mangoldtFourierSymbol A ξ : ℂ) * f ξ := by
  let S := primePowerInventory (2 * A)
  have hterms : ∀ᵐ ξ ∂volume, ∀ n ∈ S,
      ((mangoldtCoefficient n : ℂ) • symmetricPhaseMultiplier (Real.log n) f) ξ =
        (mangoldtCoefficient n : ℂ) *
          (Real.cos (2 * Real.pi * ξ * Real.log n) : ℂ) * f ξ := by
    apply (Filter.eventually_all_finset S).mpr
    intro n _
    filter_upwards [Lp.coeFn_smul (mangoldtCoefficient n : ℂ)
      (symmetricPhaseMultiplier (Real.log n) f),
      symmetricPhaseMultiplier_coe_ae (Real.log n) f] with ξ hs hc
    rw [hs, hc]
    simp only [smul_eq_mul]
    ring
  filter_upwards [Lp.coeFn_fun_finsetSum S (fun n =>
    (mangoldtCoefficient n : ℂ) • symmetricPhaseMultiplier (Real.log n) f), hterms]
    with ξ hs ht
  rw [mangoldtFourierMultiplier_apply]
  change (∑ n ∈ S, (mangoldtCoefficient n : ℂ) •
    symmetricPhaseMultiplier (Real.log n) f) ξ = _
  rw [hs]
  simp only [mangoldtFourierSymbol, Complex.ofReal_sum, Complex.ofReal_mul, Finset.sum_mul]
  exact Finset.sum_congr rfl ht

end FormalResearch.RiemannHypothesis.SourceMangoldtInteractionFourier
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseV1Prebytes/Variantafccfdc9231c322e3481c27f844d184ef33ca989d244b85a51830a14aea406d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseV1Prebytes/Variantafccfdc9231c322e3481c27f844d184ef33ca989d244b85a51830a14aea406d0.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8777a582e925aecc3c6b5e2c0babe512c69a6239` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
