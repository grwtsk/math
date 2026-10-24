# robustness_certificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f251b1c-b868-2e8e-8d64-d08e75e9637c",
  "kind": "theorem",
  "lexical_name": "robustness_certificate",
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
  "slug": "robustness-certificate--6c8231964234e06bd554f098",
  "source": {
    "blob": "fb5ccbabe0f397a86a2cca9f8f4eabc18a71bc80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 131,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NeuralNet/Varianta54b795769bd3baaeecd2ed4e05fc4c23ef1e588cc6929036b8fc90ff7a2e0b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c8231964234e06bd554f098ef2b2b11fc0d02f66e4316d0e83ac88e1d93cd63",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NeuralNet/Varianta54b795769bd3baaeecd2ed4e05fc4c23ef1e588cc6929036b8fc90ff7a2e0b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f251b1c-b868-2e8e-8d64-d08e75e9637c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem robustness_certificate {x y : ℝ}
    (hx : |x - (1/2 : ℚ)| ≤ (1/10 : ℚ)) (hy : |y - (1/2 : ℚ)| ≤ (1/10 : ℚ)) :
    ∀ i, (hi : i < min exampleNet.layer2.outputDim exampleNet.layer2.bias.length) →
      (TwoLayerNet.forwardReal exampleNet [x, y])[i]'(by
        simp [TwoLayerNet.forwardReal, Layer.forwardReal_length]; omega) ∈
      outputInterval[i]'(by
        simp [outputInterval, TwoLayerNet.forwardInterval, Layer.forwardInterval_length]; omega) := by
  -- Apply the soundness theorem
  have hwf := exampleNet_wf
  have hdim : exampleNet.layer1.inputDim = inputRegion.length := by
    simp [exampleNet, layer1, Layer.inputDim, inputRegion]
  have hxlen : [x, y].length = inputRegion.length := by simp [inputRegion]
  have hmem : ∀ i, (hi : i < inputRegion.length) →
      [x, y][i]'(by omega) ∈ inputRegion[i]'hi := by
    intro i hi
    simp only [inputRegion, List.length_cons, List.length_nil] at hi
    match i with
    | 0 =>
      simp only [inputRegion, List.getElem_cons_zero]
      exact mem_intervalAround (by norm_num : (0 : ℚ) < 1/10) hx (-53) (by norm_num)
    | 1 =>
      simp only [inputRegion, List.getElem_cons_succ, List.getElem_cons_zero]
      exact mem_intervalAround (by norm_num : (0 : ℚ) < 1/10) hy (-53) (by norm_num)
    | n + 2 => omega
  intro i hi
  have h := TwoLayerNet.mem_forwardInterval hwf hdim hxlen hmem (-53) (by norm_num) i hi
  simp only [outputInterval]
  exact h

/-! ### Interpretation

The theorem `robustness_certificate` proves that for ANY real values x, y
satisfying |x - 0.5| ≤ 0.1 and |y - 0.5| ≤ 0.1, the network output is
guaranteed to be within the computed bounds.

This is a **formal verification** of robustness - not just an empirical test,
but a mathematical proof that holds for ALL inputs in the region.

Applications:
- Certified defense against adversarial examples
- Safety verification for neural network controllers
- Proving bounds on neural network outputs for formal verification
-/

end LeanCert.Examples.NeuralNet
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NeuralNet/Varianta54b795769bd3baaeecd2ed4e05fc4c23ef1e588cc6929036b8fc90ff7a2e0b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NeuralNet/Varianta54b795769bd3baaeecd2ed4e05fc4c23ef1e588cc6929036b8fc90ff7a2e0b5.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb5ccbabe0f397a86a2cca9f8f4eabc18a71bc80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
