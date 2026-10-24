# finiteSequence_graph_approximation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77ba9247-6a10-2339-2083-763cc3022368",
  "kind": "theorem",
  "lexical_name": "finiteSequence_graph_approximation",
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
  "slug": "finitesequence-graph-approximation--50e11cafff8f1b95c63a42fb",
  "source": {
    "blob": "013acb9a90dd2de9e603c6387dcbab0388b18d9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 124,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variantd5b655f8ae4e21e025711b101838ae5d10bb1bc43743c3686a34b50b0dd2bdb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50e11cafff8f1b95c63a42fb550417224d1cff6303d2ef624048fe04c6058170",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variantd5b655f8ae4e21e025711b101838ae5d10bb1bc43743c3686a34b50b0dd2bdb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77ba9247-6a10-2339-2083-763cc3022368`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteSequence_graph_approximation {t : ℝ} (ht : 0 ≤ t)
    (f : jacobiDomain t ht) {ε : ℝ} (hε : 0 < ε) :
    ∃ q : jacobiDomain t ht, (q : lp (fun _ : ℕ => ℂ) 2) ∈ finiteSequences ∧
      ‖f.val - q.val‖ < ε ∧
      ‖jacobiOperator t ht f - jacobiOperator t ht q‖ < ε := by
  let U := pointedUnitary t ht
  obtain ⟨p, hp, hv, hm⟩ := polynomial_graph_approximation ht (domainUnitary t ht f) hε
  let q : jacobiDomain t ht := ⟨U.symm p, by
    change U (U.symm p) ∈ coordinateDomain (momentMeasure t)
    simpa only [LinearIsometryEquiv.apply_symm_apply] using p.property⟩
  have hq : domainUnitary t ht q = p := by
    apply Subtype.ext
    exact U.apply_symm_apply p
  refine ⟨q, ?_, ?_, ?_⟩
  · rw [← pointedUnitary_preimage_polynomialCore ht]
    change U (U.symm p) ∈ polynomialCore t ht
    rw [LinearIsometryEquiv.apply_symm_apply]
    exact ⟨p, hp, rfl⟩
  · have hu := U.norm_map (f.val - q.val)
    rw [map_sub] at hu
    change ‖U f.val - U q.val‖ = ‖f.val - q.val‖ at hu
    have hv' : ‖U f.val - U q.val‖ < ε := by
      change ‖(domainUnitary t ht f).val - (domainUnitary t ht q).val‖ < ε
      rwa [hq]
    rwa [hu] at hv'
  · have hu := U.norm_map (jacobiOperator t ht f - jacobiOperator t ht q)
    rw [map_sub] at hu
    have huf : U (jacobiOperator t ht f) =
        coordinateMultiplication (momentMeasure t) (domainUnitary t ht f) :=
      pointedUnitary_jacobiOperator ht f
    have huq : U (jacobiOperator t ht q) =
        coordinateMultiplication (momentMeasure t) p := by
      rw [pointedUnitary_jacobiOperator, hq]
    rw [huf, huq] at hu
    rwa [hu] at hm

/-- The all-degree finite-sequence restriction has exactly the full maximal graph as its closure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variantd5b655f8ae4e21e025711b101838ae5d10bb1bc43743c3686a34b50b0dd2bdb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variantd5b655f8ae4e21e025711b101838ae5d10bb1bc43743c3686a34b50b0dd2bdb7.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `013acb9a90dd2de9e603c6387dcbab0388b18d9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
