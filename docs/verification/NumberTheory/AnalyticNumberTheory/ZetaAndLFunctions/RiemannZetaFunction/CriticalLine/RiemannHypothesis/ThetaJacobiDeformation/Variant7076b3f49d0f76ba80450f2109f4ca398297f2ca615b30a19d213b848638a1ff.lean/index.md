# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaJacobiDeformation.Variant7076b3f49d0f76ba80450f2109f4ca398297f2ca615b30a19d213b848638a1ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60f8ec0bf5fa9c98123ec6d899949079efe86484",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiDeformation/Variant7076b3f49d0f76ba80450f2109f4ca398297f2ca615b30a19d213b848638a1ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiDeformation/Variant7076b3f49d0f76ba80450f2109f4ca398297f2ca615b30a19d213b848638a1ff.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiDeformation/Variant7076b3f49d0f76ba80450f2109f4ca398297f2ca615b30a19d213b848638a1ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60f8ec0bf5fa9c98123ec6d899949079efe86484`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiDeformation/Variant7076b3f49d0f76ba80450f2109f4ca398297f2ca615b30a19d213b848638a1ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiDeformation/Variant7076b3f49d0f76ba80450f2109f4ca398297f2ca615b30a19d213b848638a1ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaJacobiAdapter` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Spectral.JacobiTransfer` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Notation` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedTransferDeformation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiDeformation/Variant7076b3f49d0f76ba80450f2109f4ca398297f2ca615b30a19d213b848638a1ff.lean/declarations/weightedtransferdeformation--2ee9edb4d4a2c32b7df58eba.md) | 34 | `declaration-track:2ee9edb4d4a2c32b7df58ebab8d903b37badcb41cd6b06bd2890e5c5b9ce9247` |
| 2 | `theorem` | [weightedJacobiTransfer_eq_free_add_deformation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiDeformation/Variant7076b3f49d0f76ba80450f2109f4ca398297f2ca615b30a19d213b848638a1ff.lean/declarations/weightedjacobitransfer-eq-free-add-deformation--96418e571b21ceab518b2b11.md) | 40 | `result-track:96418e571b21ceab518b2b1159effa9179bf93ff8fb9ff900356a8749cdc4085` |
| 3 | `theorem` | [weightedJacobiTransfer_eq_free_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiDeformation/Variant7076b3f49d0f76ba80450f2109f4ca398297f2ca615b30a19d213b848638a1ff.lean/declarations/weightedjacobitransfer-eq-free-iff--5a479e7b097977f8bcc13eaf.md) | 51 | `result-track:5a479e7b097977f8bcc13eafd8075f2cb6789834d73183565430106c58426223` |
| 4 | `def` | [finiteJacobi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiDeformation/Variant7076b3f49d0f76ba80450f2109f4ca398297f2ca615b30a19d213b848638a1ff.lean/declarations/finitejacobi--aa844f5ae85947b847043f54.md) | 67 | `declaration-track:aa844f5ae85947b847043f5446e5f56f39c9711b4d3c57caf9d37ff5b1dc5012` |
| 5 | `def` | [finiteFreeJacobi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiDeformation/Variant7076b3f49d0f76ba80450f2109f4ca398297f2ca615b30a19d213b848638a1ff.lean/declarations/finitefreejacobi--9e855c08ace8c8cbdb7dee98.md) | 76 | `declaration-track:9e855c08ace8c8cbdb7dee982c21232e566a841cfd3c3208e06f79f9fb240757` |
| 6 | `def` | [finiteJacobiDeformation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiDeformation/Variant7076b3f49d0f76ba80450f2109f4ca398297f2ca615b30a19d213b848638a1ff.lean/declarations/finitejacobideformation--2e247bea6f04ef00a4dd7d37.md) | 81 | `declaration-track:2e247bea6f04ef00a4dd7d376b4aa52b4076289884cd9eef001d4cbaba17ffc1` |
| 7 | `theorem` | [finiteJacobi_eq_free_add_deformation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiDeformation/Variant7076b3f49d0f76ba80450f2109f4ca398297f2ca615b30a19d213b848638a1ff.lean/declarations/finitejacobi-eq-free-add-deformation--f4022058fb892e3ea8f88964.md) | 91 | `result-track:f4022058fb892e3ea8f8896403050e8ef0d69189a95353c6ac14cc4342b56138` |
| 8 | `theorem` | [finiteJacobi_diagonal](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiDeformation/Variant7076b3f49d0f76ba80450f2109f4ca398297f2ca615b30a19d213b848638a1ff.lean/declarations/finitejacobi-diagonal--a3d308ead34f4a7ecfff7e7f.md) | 99 | `result-track:a3d308ead34f4a7ecfff7e7f7c8cd450eb3d7eebad38adf4ccb0f9fa93aa9c29` |
| 9 | `def` | [finiteCyclicMoment](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiDeformation/Variant7076b3f49d0f76ba80450f2109f4ca398297f2ca615b30a19d213b848638a1ff.lean/declarations/finitecyclicmoment--fa3eabb6793ce94a2917edef.md) | 104 | `declaration-track:fa3eabb6793ce94a2917edef4d036762ebbcfc03bad725da348f882ea28a2be1` |
| 10 | `theorem` | [finiteJacobi_first_moment](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiDeformation/Variant7076b3f49d0f76ba80450f2109f4ca398297f2ca615b30a19d213b848638a1ff.lean/declarations/finitejacobi-first-moment--7e1802f9fbc4e204439bbd74.md) | 110 | `result-track:7e1802f9fbc4e204439bbd74f3c4ce9657d2daad6d6fc26661acd816b5d6eacf` |
| 11 | `theorem` | [finiteFreeJacobi_first_moment](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiDeformation/Variant7076b3f49d0f76ba80450f2109f4ca398297f2ca615b30a19d213b848638a1ff.lean/declarations/finitefreejacobi-first-moment--ad903b042e00edae3b81c308.md) | 115 | `result-track:ad903b042e00edae3b81c3089e374e4e972730f34fdbd0977d4451c066857757` |
| 12 | `theorem` | [finiteJacobi_moments_not_free_of_initial_diagonal](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiDeformation/Variant7076b3f49d0f76ba80450f2109f4ca398297f2ca615b30a19d213b848638a1ff.lean/declarations/finitejacobi-moments-not-free-of-initial-diagonal--cca7f3b8b91eca8e124dfaef.md) | 121 | `result-track:cca7f3b8b91eca8e124dfaeffd3124ba796bd0aec1006c8b6eefdda8ba674c71` |
| 13 | `theorem` | [positive_magnitude_forces_initial_deformation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiDeformation/Variant7076b3f49d0f76ba80450f2109f4ca398297f2ca615b30a19d213b848638a1ff.lean/declarations/positive-magnitude-forces-initial-deformation--f29ea1491140c63c20213905.md) | 131 | `result-track:f29ea1491140c63c20213905f675b90c05a7c4ce6e4c64766485f2762a3a076f` |
| 14 | `theorem` | [finiteJacobi_first_edge](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiDeformation/Variant7076b3f49d0f76ba80450f2109f4ca398297f2ca615b30a19d213b848638a1ff.lean/declarations/finitejacobi-first-edge--4c21ffe480d1fd825aa0eb35.md) | 142 | `result-track:4c21ffe480d1fd825aa0eb35fca62ef9b1a02236fe8ae21d7383b5747e26f5ea` |
| 15 | `theorem` | [diagonal_perturbation_forces_first_edge](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiDeformation/Variant7076b3f49d0f76ba80450f2109f4ca398297f2ca615b30a19d213b848638a1ff.lean/declarations/diagonal-perturbation-forces-first-edge--8e7625a254a398859c70cb1b.md) | 148 | `result-track:8e7625a254a398859c70cb1bd00a0bad443e18005b0893370e5d24afc4a8f510` |
| 16 | `theorem` | [nonfree_hopping_not_diagonal_potential](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiDeformation/Variant7076b3f49d0f76ba80450f2109f4ca398297f2ca615b30a19d213b848638a1ff.lean/declarations/nonfree-hopping-not-diagonal-potential--0ff816472ed83791ae80b470.md) | 157 | `result-track:0ff816472ed83791ae80b470f8a1bf2d15bba83b269c9670494013dad9338b96` |
| 17 | `def` | [twoSiteFree](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiDeformation/Variant7076b3f49d0f76ba80450f2109f4ca398297f2ca615b30a19d213b848638a1ff.lean/declarations/twositefree--9ac496c8d38a97e23f608f46.md) | 166 | `declaration-track:9ac496c8d38a97e23f608f4680e1cb17ed15cdeace1901475f687bc5be0ae5ec` |
| 18 | `def` | [twoSiteSecondPotential](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiDeformation/Variant7076b3f49d0f76ba80450f2109f4ca398297f2ca615b30a19d213b848638a1ff.lean/declarations/twositesecondpotential--ba316d0f60c4f7206dd4dc2f.md) | 169 | `declaration-track:ba316d0f60c4f7206dd4dc2ffa5cecc88d6c39c2b52b23c17723bbfd0bb7a248` |
| 19 | `theorem` | [three_moments_match_but_fourth_differs](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiDeformation/Variant7076b3f49d0f76ba80450f2109f4ca398297f2ca615b30a19d213b848638a1ff.lean/declarations/three-moments-match-but-fourth-differs--7e2feb08e88709c07c1d31fa.md) | 173 | `result-track:7e2feb08e88709c07c1d31fa76643e24071e5e9a60fdaa0f6cd83296cfa2fa17` |
| 20 | `theorem` | [cyclic_zero_not_zero_eigenvector](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiDeformation/Variant7076b3f49d0f76ba80450f2109f4ca398297f2ca615b30a19d213b848638a1ff.lean/declarations/cyclic-zero-not-zero-eigenvector--6c0f98f9bac5e30cef32b2fa.md) | 185 | `result-track:6c0f98f9bac5e30cef32b2fa12f9db3731fa30a3788124cd261b939567ff4388` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
