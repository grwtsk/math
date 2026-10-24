# coeffMoments_flat_D1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10e65d2b-bf94-8573-ef03-d01786c731a4",
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
  "slug": "coeffmoments-flat-d1--71b02e41f81334e4b46c9347",
  "source": {
    "blob": "e469ff09f771be09c30ddd2b49d0c7667f9d8be6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 37,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant2b63108ede9232a834c5f3fea281c789ce6af0edf4cdc9cbc6dc26fa139bb8eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71b02e41f81334e4b46c93473d5c7aca4505c9c78f2eecd2ebc00bfe6cc08b82",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant2b63108ede9232a834c5f3fea281c789ce6af0edf4cdc9cbc6dc26fa139bb8eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10e65d2b-bf94-8573-ef03-d01786c731a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–52.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant2b63108ede9232a834c5f3fea281c789ce6af0edf4cdc9cbc6dc26fa139bb8eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant2b63108ede9232a834c5f3fea281c789ce6af0edf4cdc9cbc6dc26fa139bb8eb.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e469ff09f771be09c30ddd2b49d0c7667f9d8be6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
