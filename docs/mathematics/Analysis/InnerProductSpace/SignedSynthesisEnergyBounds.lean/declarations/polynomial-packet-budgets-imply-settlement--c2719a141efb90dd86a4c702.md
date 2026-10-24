# polynomial_packet_budgets_imply_settlement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5d06250307b20e2128de77d7c864657ce4054ee8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/Analysis/InnerProductSpace/SignedSynthesisEnergyBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4aaa8852-e9d0-1f12-ded8-2a4fd7255b9b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "5d06250307b20e2128de77d7c864657ce4054ee8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/Analysis/InnerProductSpace/SignedSynthesisEnergyBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:80fc1521-2749-b7b1-143d-2ac6f6ea78d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ac71f2d-a43d-6eab-83b5-954c4b042343",
  "kind": "theorem",
  "lexical_name": "polynomial_packet_budgets_imply_settlement",
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
  "slug": "polynomial-packet-budgets-imply-settlement--c2719a141efb90dd86a4c702",
  "source": {
    "blob": "5d06250307b20e2128de77d7c864657ce4054ee8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 35,
    "path": "GRWTSK/Analysis/InnerProductSpace/SignedSynthesisEnergyBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2719a141efb90dd86a4c70222c749dceaaca71bf172410817da6597a8e7d835",
  "verification": {
    "reference": "docs/verification/Analysis/InnerProductSpace/SignedSynthesisEnergyBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ac71f2d-a43d-6eab-83b5-954c4b042343`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polynomial_packet_budgets_imply_settlement {E : Type*}
    [NormedAddCommGroup E] [InnerProductSpace ℂ E]
    (model : PacketModel E) (D : ExactDecomposition) (height : ℝ → ℝ)
    (sourceReturn : SignedPacketReturn model D height)
    (gramBudget : PPNCP04.PolynomialBound model.gramConstant)
    (coeffBudget : PPNCP04.PolynomialBound (coefficientBudget model))
    (errorBudget : PPNCP04.PolynomialBound model.error) : SignedSettlementBound D height := by
  obtain ⟨C_G,r_G,hCG,hrG,hGram⟩ := gramBudget
  obtain ⟨C_A,r_A,hCA,hrA,hCoeff⟩ := coeffBudget
  obtain ⟨C_E,r_E,hCE,hrE,hErr⟩ := errorBudget
  refine ⟨C_G*C_A+C_E,max (r_G+r_A) r_E,by positivity,
    (add_nonneg hrG hrA).trans (le_max_left _ _),?_⟩
  intro T hT
  have hc : 0 ≤ coefficientBudget model T := Finset.sum_nonneg (fun _ _ => sq_nonneg _)
  have hSynth := WeightedGram.synthesis_of_weighted_gram_rows
    (model.indices T) (model.vectors T) (model.coefficients T) (model.weights T)
    (model.positiveWeights T hT) (model.weightedRows T hT)
  have hprod : model.gramConstant T*coefficientBudget model T ≤
      C_G*C_A*(1+T)^(r_G+r_A) := by
    calc
      _ ≤ (C_G*(1+T)^r_G)*(C_A*(1+T)^r_A) :=
        mul_le_mul (hGram T hT) (hCoeff T hT) hc (by positivity)
      _ = _ := by rw [Real.rpow_add (by linarith : 0 < 1+T)]; ring
  have hb : 1 ≤ 1+T := by linarith
  have hgp := Real.rpow_le_rpow_of_exponent_le hb (le_max_left (r_G+r_A) r_E)
  have hep := Real.rpow_le_rpow_of_exponent_le hb (le_max_right (r_G+r_A) r_E)
  calc
    signedSettlement D height T ≤
        model.gramConstant T*coefficientBudget model T+model.error T :=
      (sourceReturn T hT).trans (add_le_add hSynth le_rfl)
    _ ≤ C_G*C_A*(1+T)^(r_G+r_A)+C_E*(1+T)^r_E := add_le_add hprod (hErr T hT)
    _ ≤ C_G*C_A*(1+T)^(max (r_G+r_A) r_E)+C_E*(1+T)^(max (r_G+r_A) r_E) :=
      add_le_add (mul_le_mul_of_nonneg_left hgp (by positivity))
        (mul_le_mul_of_nonneg_left hep hCE)
    _ = _ := by ring

/-- BGP closes P04 only after actual reconstruction, coefficient, error, and tail budgets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/InnerProductSpace/SignedSynthesisEnergyBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/InnerProductSpace/SignedSynthesisEnergyBounds.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d06250307b20e2128de77d7c864657ce4054ee8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
