# Verification target: GRWTSK.Algebra.UniversalAlgebra.Convolution.Variant6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df18e72dbdbd64822f90a7feebe982ced14e81fa",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Convolution/Variant6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Convolution/Variant6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Convolution/Variant6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df18e72dbdbd64822f90a7feebe982ced14e81fa`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Convolution/Variant6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Convolution/Variant6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.Transformation` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.WorldModel.ActiveRegion` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [WeightDependencyProfile](../../../../../mathematics/Algebra/UniversalAlgebra/Convolution/Variant6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31.lean/declarations/weightdependencyprofile--b8ca9f7e95b2e419eab57c8b.md) | 25 | `declaration-track:b8ca9f7e95b2e419eab57c8badf042140b7c9bbe9c6ea0d0312140a81344b12f` |
| 2 | `structure` | [ConvolutionPins](../../../../../mathematics/Algebra/UniversalAlgebra/Convolution/Variant6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31.lean/declarations/convolutionpins--40a7102d9fc5c5f9436ce1fd.md) | 36 | `declaration-track:40a7102d9fc5c5f9436ce1fda88a4a4541cdba350a9147d1537fb034aa228eff` |
| 3 | `inductive` | [ApproximationStatus](../../../../../mathematics/Algebra/UniversalAlgebra/Convolution/Variant6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31.lean/declarations/approximationstatus--6f64da11e7ad482b3fba3f10.md) | 44 | `declaration-track:6f64da11e7ad482b3fba3f10ed386df2062d8b9481ce048c43098ff9dcb7b9af` |
| 4 | `structure` | [ContributionDefect](../../../../../mathematics/Algebra/UniversalAlgebra/Convolution/Variant6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31.lean/declarations/contributiondefect--fbdd6aa3a198b3764d27bf87.md) | 50 | `declaration-track:fbdd6aa3a198b3764d27bf876772930d9bb222eae25b4877e8a1391f0efe2adb` |
| 5 | `structure` | [FiniteModelConvolution](../../../../../mathematics/Algebra/UniversalAlgebra/Convolution/Variant6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31.lean/declarations/finitemodelconvolution--82bc4b7c450597ae5f3cd489.md) | 62 | `declaration-track:82bc4b7c450597ae5f3cd489b6fc69e6c8473b2a7cae75b11a566fd76f776f64` |
| 6 | `def` | [denominator](../../../../../mathematics/Algebra/UniversalAlgebra/Convolution/Variant6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31.lean/declarations/denominator--aee372402eab530809de110d.md) | 98 | `declaration-track:aee372402eab530809de110d282ff9cff2c67205e8c473908c007c2816cd7c09` |
| 7 | `def` | [numerator](../../../../../mathematics/Algebra/UniversalAlgebra/Convolution/Variant6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31.lean/declarations/numerator--df11dfc12ad0d28ae8724961.md) | 105 | `declaration-track:df11dfc12ad0d28ae87249612944dc33681147ab51f2696fd5b1debd029f61a8` |
| 8 | `def` | [outputAt](../../../../../mathematics/Algebra/UniversalAlgebra/Convolution/Variant6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31.lean/declarations/outputat--90ec6f1069fbdfc747c765c5.md) | 113 | `declaration-track:90ec6f1069fbdfc747c765c50aa34d605e669fa52d39a6a116293124104f0a5a` |
| 9 | `theorem` | [finite_overlap](../../../../../mathematics/Algebra/UniversalAlgebra/Convolution/Variant6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31.lean/declarations/finite-overlap--c3f962e89313fff6426c1182.md) | 120 | `result-track:c3f962e89313fff6426c1182ad6be35d6c5f26cec43edd5f6a85103850a3198a` |
| 10 | `theorem` | [denominator_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Convolution/Variant6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31.lean/declarations/denominator-pos--ff84b92f1195d50784563e93.md) | 127 | `result-track:ff84b92f1195d50784563e93fee89dafff43e5b049fa582a01032bfdcb4c3141` |
| 11 | `theorem` | [denominator_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Convolution/Variant6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31.lean/declarations/denominator-ne-zero--f50cea09c92d32786af29dc6.md) | 135 | `result-track:f50cea09c92d32786af29dc6e06cef5a8f7c130d14e29d4a143d6545d67049b9` |
| 12 | `theorem` | [output_deterministic](../../../../../mathematics/Algebra/UniversalAlgebra/Convolution/Variant6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31.lean/declarations/output-deterministic--9fa0c26ea1884169ff3f32bd.md) | 143 | `result-track:9fa0c26ea1884169ff3f32bddc43ad0da27a9040f9f0755da2056bfb38b8b326` |
| 13 | `theorem` | [approximation_status_preserved](../../../../../mathematics/Algebra/UniversalAlgebra/Convolution/Variant6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31.lean/declarations/approximation-status-preserved--fdba7b5d08b0d64ce6b68a21.md) | 151 | `result-track:fdba7b5d08b0d64ce6b68a21e2e592987977cc6f5e6d187942703a26f311e4d2` |
| 14 | `theorem` | [authority_nonpromotion](../../../../../mathematics/Algebra/UniversalAlgebra/Convolution/Variant6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31.lean/declarations/authority-nonpromotion--9bd65fd9b112a201bca45108.md) | 157 | `result-track:9bd65fd9b112a201bca451083da09fbb3bc197e6fc04416e7b5957019d275ca2` |
| 15 | `theorem` | [incompatible_contributions_record_defect](../../../../../mathematics/Algebra/UniversalAlgebra/Convolution/Variant6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31.lean/declarations/incompatible-contributions-record-defect--8f4c0271c02ba042c0f4f1fe.md) | 163 | `result-track:8f4c0271c02ba042c0f4f1fe367ac72a786995ec140fd569925810fb015d1f27` |
| 16 | `theorem` | [averaging_does_not_erase_incompatibility](../../../../../mathematics/Algebra/UniversalAlgebra/Convolution/Variant6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31.lean/declarations/averaging-does-not-erase-incompatibility--4f1cfeafe42faed49057d440.md) | 176 | `result-track:4f1cfeafe42faed49057d4404dbae3dccd0759e9028be135a85f91dcedb3b971` |
| 17 | `structure` | [RegistryFiniteModelConvolution](../../../../../mathematics/Algebra/UniversalAlgebra/Convolution/Variant6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31.lean/declarations/registryfinitemodelconvolution--28feeff81a81ee8bc9c0c760.md) | 189 | `declaration-track:28feeff81a81ee8bc9c0c7607acb8dfa98330ec33496a7d828b26c31308fc16a` |
| 18 | `theorem` | [active_models_exact](../../../../../mathematics/Algebra/UniversalAlgebra/Convolution/Variant6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31.lean/declarations/active-models-exact--ccc2f8e780c099e6e101ed88.md) | 201 | `result-track:ccc2f8e780c099e6e101ed8820efe2f43bc5c4f7c548fb02ffa9d35b325194f8` |
| 19 | `theorem` | [denominator_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Convolution/Variant6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31.lean/declarations/denominator-pos--228d576fc579ac557541dd8e.md) | 209 | `result-track:228d576fc579ac557541dd8e9e030221f0dd032d585acbc24216cded44d9c155` |
| 20 | `structure` | [ConvolutionCostScope](../../../../../mathematics/Algebra/UniversalAlgebra/Convolution/Variant6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31.lean/declarations/convolutioncostscope--65a4fdfa39aab308cdde3da9.md) | 221 | `declaration-track:65a4fdfa39aab308cdde3da95bfd366cb5681245953c85dcc79600ac62e3c7f3` |
| 21 | `theorem` | [convolution_cost_names_scope](../../../../../mathematics/Algebra/UniversalAlgebra/Convolution/Variant6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31.lean/declarations/convolution-cost-names-scope--08ec58468b71039c2fa9b085.md) | 229 | `result-track:08ec58468b71039c2fa9b085ee2bce62038f9a16ccb6a27458e15c85cf8520c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
