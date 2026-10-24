# coeffMoments_flat_D1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eec9cecd4a86639ea8e55727b1f2a01d92758af7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/93e72b5e5ba597b75d0a36d74fe4ba2baf1406a241f695192639b6cc9ab0cb5f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:686e7ba8-4658-d2a2-eba2-288d226d4a39",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:39010e81-326b-0e25-7e27-ca5713a36946",
  "kind": "theorem",
  "lexical_name": "coeffMoments_flat_D1",
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
  "slug": "coeffmoments-flat-d1--145aacac5a2f48ffa1a182be",
  "source": {
    "blob": "eec9cecd4a86639ea8e55727b1f2a01d92758af7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 29,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant93e72b5e5ba597b75d0a36d74fe4ba2baf1406a241f695192639b6cc9ab0cb5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:145aacac5a2f48ffa1a182bec4d2d223cd0d698b0a955071361ffa90119f50e2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant93e72b5e5ba597b75d0a36d74fe4ba2baf1406a241f695192639b6cc9ab0cb5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39010e81-326b-0e25-7e27-ca5713a36946`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeffMoments_flat_D1 (Z : ZeroConfig) (hR : RiemannVonMangoldt Z) {ϱ : ℝ → ℝ} (hϱ : TaperProfile ϱ)
    {lam : ℝ} (h0 : 0 < lam) (h1 : lam < 1) {Fam : CoeffFamily} (hF : Fam.Hyps) (hD : Fam.D = D1) :
    CoeffMoments Z (fun _ => paramsOf ϱ lam) Fam (kappaXi lam vFlat) := by
  have hP := paramsOf_valid hϱ h0 h1.le
  have hD0 : ∀ x ∈ Icc (0:ℝ) 1, 0 ≤ D1 x := fun x hx => D1_nonneg hx.1
  have hc := tendsto_cRatio_flat (P := paramsOf ϱ lam) hP (continuousOn_D1 (Icc 0 1)) hD0
  have hc0 : 0 < cWin D1 lam vFlat := cWin_D1_vFlat_pos h0 h1.le
  have e : kappaXi lam vFlat = (cWin D1 lam vFlat)⁻¹ := one_div _
  rw [e]
  refine coeffMoments_flat (P := paramsOf ϱ lam) hP h1 (admFamily_taper hP) hF gammaFacts MV.mv_hilbert
    ppInput_of_PP hR hc0 ?_
  rw [hD]
  exact hc

/-- **P1 for the QUARTIC family** Pf := (paramsOf ϱ λ).atV vQuartic, any coefficient family with density D₁:
combines `coeffMoments_atV`, `admFamily_atV_quartic`, and `tendsto_cRatio_quartic_D1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant93e72b5e5ba597b75d0a36d74fe4ba2baf1406a241f695192639b6cc9ab0cb5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant93e72b5e5ba597b75d0a36d74fe4ba2baf1406a241f695192639b6cc9ab0cb5f.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eec9cecd4a86639ea8e55727b1f2a01d92758af7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
