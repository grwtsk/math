# centeredTwistedPsiStep_locallyIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7b0fcf7d64749973a5fb5d946954d9abe24d966",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c3c27e78-43ae-a014-a7a9-c646ef7e0c5d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:284871ba-4167-3449-6137-975322768f72",
  "kind": "theorem",
  "lexical_name": "centeredTwistedPsiStep_locallyIntegrable",
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
  "slug": "centeredtwistedpsistep-locallyintegrable--70e8b8260ab0b99a9b88ff86",
  "source": {
    "blob": "d7b0fcf7d64749973a5fb5d946954d9abe24d966",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 157,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70e8b8260ab0b99a9b88ff86576710bca41c5bfa9a1cacb7c4b7e77e63741be4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:284871ba-4167-3449-6137-975322768f72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredTwistedPsiStep_locallyIntegrable
    {q : ℕ} (χ : DirichletCharacter ℂ q) :
    LocallyIntegrableOn (centeredTwistedPsiStep χ) (Ioi 0) := by
  have hsum : LocallyIntegrableOn
      (fun t : ℝ ↦ twistedPsi χ ⌊t⌋₊) (Ici 0) := by
    have h := locallyIntegrableOn_mul_sum_Icc
      (c := fun n : ℕ ↦
        χ n * (ArithmeticFunction.vonMangoldt n : ℂ))
      (a := (0 : ℝ)) (m := 1) le_rfl
      (locallyIntegrableOn_const (1 : ℂ))
    change LocallyIntegrableOn
      (fun t : ℝ ↦ ∑ n ∈ Icc 1 ⌊t⌋₊,
        χ n * (ArithmeticFunction.vonMangoldt n : ℂ)) (Ici 0)
    simpa only [one_mul, twistedPsi] using h
  have hlinear : LocallyIntegrableOn
      (fun t : ℝ ↦ dirichletPrincipalIndicator χ * (t : ℂ)) (Ici 0) := by
    exact (by fun_prop : Continuous
      (fun t : ℝ ↦ dirichletPrincipalIndicator χ * (t : ℂ))).locallyIntegrable
        |>.locallyIntegrableOn (Ici 0)
  have hraw : LocallyIntegrableOn
      (fun t : ℝ ↦ twistedPsi χ ⌊t⌋₊ -
        dirichletPrincipalIndicator χ * (t : ℂ)) (Ici 0) :=
    hsum.sub hlinear
  rw [locallyIntegrableOn_iff isLocallyClosed_Ioi]
  intro K hK hKcompact
  have hrawK := hraw.integrableOn_compact_subset
    (hK.trans Ioi_subset_Ici_self) hKcompact
  have hindicator := hrawK.indicator (measurableSet_Ici : MeasurableSet (Ici (1 : ℝ)))
  have hfun : centeredTwistedPsiStep χ =
      (Ici (1 : ℝ)).indicator (fun t : ℝ ↦ twistedPsi χ ⌊t⌋₊ -
        dirichletPrincipalIndicator χ * (t : ℂ)) := by
    funext t
    by_cases ht : 1 ≤ t <;>
      simp [centeredTwistedPsiStep, Set.indicator, ht]
  rw [hfun]
  exact hindicator

/-- The centered step interpolation vanishes in a right neighborhood of
zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantf3108abed7f179fab07e285839df9a71bee35e1f31c4857009ac9971ff274b10.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7b0fcf7d64749973a5fb5d946954d9abe24d966` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
