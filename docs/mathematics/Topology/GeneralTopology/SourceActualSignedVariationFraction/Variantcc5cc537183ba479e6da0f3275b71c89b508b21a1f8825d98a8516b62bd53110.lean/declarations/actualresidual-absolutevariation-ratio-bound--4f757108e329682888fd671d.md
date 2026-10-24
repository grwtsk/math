# actualResidual_absoluteVariation_ratio_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:281457f2-e7bd-a6d7-9c83-88fadf4a6a60",
  "kind": "theorem",
  "lexical_name": "actualResidual_absoluteVariation_ratio_bound",
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
  "slug": "actualresidual-absolutevariation-ratio-bound--4f757108e329682888fd671d",
  "source": {
    "blob": "214ac6c476c86c65a1388938d8895a436911c1fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 85,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualSignedVariationFraction/Variantcc5cc537183ba479e6da0f3275b71c89b508b21a1f8825d98a8516b62bd53110.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f757108e329682888fd671d8a2c9925252ccecf8def1ff0e797a378dc3cdd5a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualSignedVariationFraction/Variantcc5cc537183ba479e6da0f3275b71c89b508b21a1f8825d98a8516b62bd53110.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:281457f2-e7bd-a6d7-9c83-88fadf4a6a60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualResidual_absoluteVariation_ratio_bound :
    ∃ K c R : ℝ, 0 ≤ K ∧ 0 < c ∧ 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      0 < actualClosedAbsolutePrimeMoment A ∧
        |mertensResidual A| / actualClosedAbsolutePrimeMoment A ≤
          K * Real.exp (-c * A ^ (1 / 10 : ℝ)) := by
  obtain ⟨C,c,Rr,hC,hc,hRr,hr⟩ := actualMertensResidual_stretched_unscaled_bound
  obtain ⟨Rv,hRv,hv⟩ := actualClosedAbsolutePrimeMoment_eventually_lower
  have hd := actualNegativeEdgeConstant_pos
  refine ⟨2 * C / actualNegativeEdgeConstant,c,max Rr Rv,by positivity,hc,
    hRr.trans (le_max_left _ _),?_⟩
  intro A hA
  have hAr : Rr ≤ A := (le_max_left _ _).trans hA
  have hAv : Rv ≤ A := (le_max_right _ _).trans hA
  have hAp : 0 < A := by linarith [hRr.trans hAr]
  have hl : 0 < (actualNegativeEdgeConstant / 2) * Real.exp A / A ^ 9 := by positivity
  have hmass := hv A hAv
  refine ⟨hl.trans_le hmass,?_⟩
  calc
    _ ≤ (C * Real.exp (A - c * A ^ (1 / 10 : ℝ)) / A ^ 9) /
        ((actualNegativeEdgeConstant / 2) * Real.exp A / A ^ 9) :=
      div_le_div₀ (by positivity) (hr A hAr) hl hmass
    _ = _ := by
      rw [Real.exp_sub,show -c * A ^ (1 / 10 : ℝ) = -(c * A ^ (1 / 10 : ℝ)) by ring,
        Real.exp_neg]
      field_simp

/-- Both literal variation fractions differ from one half by exactly the
relative residual magnitude, including its original sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualSignedVariationFraction/Variantcc5cc537183ba479e6da0f3275b71c89b508b21a1f8825d98a8516b62bd53110.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualSignedVariationFraction/Variantcc5cc537183ba479e6da0f3275b71c89b508b21a1f8825d98a8516b62bd53110.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `214ac6c476c86c65a1388938d8895a436911c1fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
