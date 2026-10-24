# Verification target: GRWTSK.Algebra.LinearAlgebra.TensorProduct.Variantc28e659a66e3f672b0bdac8de1f41bb9d0f587f3452ff2a494b72c8b51638776

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68b14da79b482f1714b52872de38a7dae07d854d",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variantc28e659a66e3f672b0bdac8de1f41bb9d0f587f3452ff2a494b72c8b51638776.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantc28e659a66e3f672b0bdac8de1f41bb9d0f587f3452ff2a494b72c8b51638776.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantc28e659a66e3f672b0bdac8de1f41bb9d0f587f3452ff2a494b72c8b51638776.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68b14da79b482f1714b52872de38a7dae07d854d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variantc28e659a66e3f672b0bdac8de1f41bb9d0f587f3452ff2a494b72c8b51638776.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Variantc28e659a66e3f672b0bdac8de1f41bb9d0f587f3452ff2a494b72c8b51638776.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tensorDistrib](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantc28e659a66e3f672b0bdac8de1f41bb9d0f587f3452ff2a494b72c8b51638776.lean/declarations/tensordistrib--da0d47121bf08d54b355f5c3.md) | 54 | `declaration-track:da0d47121bf08d54b355f5c395d27cbc7691f4a969d68a96d08923838fe226ef` |
| 2 | `theorem` | [tensorDistrib_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantc28e659a66e3f672b0bdac8de1f41bb9d0f587f3452ff2a494b72c8b51638776.lean/declarations/tensordistrib-tmul--bdfd8ea8fba78d0a5857ea08.md) | 65 | `result-track:bdfd8ea8fba78d0a5857ea0810e580d10662cb7abea126741a25fdced9050c21` |
| 3 | `abbrev` | [tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantc28e659a66e3f672b0bdac8de1f41bb9d0f587f3452ff2a494b72c8b51638776.lean/declarations/tmul--ecad4caaf1211af6ed1011ca.md) | 72 | `declaration-track:ecad4caaf1211af6ed1011cadf471e705c179402bba37dbd410c666b15953198` |
| 4 | `lemma` | [tmul_isSymm](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantc28e659a66e3f672b0bdac8de1f41bb9d0f587f3452ff2a494b72c8b51638776.lean/declarations/tmul-issymm--3bdcdbf0bd9825bb1684fc26.md) | 78 | `result-track:3bdcdbf0bd9825bb1684fc2641f40e7803fb4482da23b4bc1f4f0650c16d6538` |
| 5 | `def` | [baseChange](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantc28e659a66e3f672b0bdac8de1f41bb9d0f587f3452ff2a494b72c8b51638776.lean/declarations/basechange--b62f224270af6af533f1e7c6.md) | 88 | `declaration-track:b62f224270af6af533f1e7c60f3d653e9fc62f7ab1b895df396de38d1b6571c1` |
| 6 | `theorem` | [baseChange_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantc28e659a66e3f672b0bdac8de1f41bb9d0f587f3452ff2a494b72c8b51638776.lean/declarations/basechange-tmul--a5b16e4ab3bec15e6b4d15ea.md) | 92 | `result-track:a5b16e4ab3bec15e6b4d15eaf97c9c853a1dfe36f2d981c9626d495ff3ead6c0` |
| 7 | `lemma` | [baseChange_isSymm](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantc28e659a66e3f672b0bdac8de1f41bb9d0f587f3452ff2a494b72c8b51638776.lean/declarations/basechange-issymm--a86843b8eb7640bc2c3d2b19.md) | 97 | `result-track:a86843b8eb7640bc2c3d2b193cda8ffb973762fd5a7bbc094d4ddcb7592406eb` |
| 8 | `def` | [tensorDistrib](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantc28e659a66e3f672b0bdac8de1f41bb9d0f587f3452ff2a494b72c8b51638776.lean/declarations/tensordistrib--f7ca4d0d5a6e2854dd6c0fba.md) | 110 | `declaration-track:f7ca4d0d5a6e2854dd6c0fba65287dfd676eb092e8b4af0ef291022ad955a558` |
| 9 | `theorem` | [tensorDistrib_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantc28e659a66e3f672b0bdac8de1f41bb9d0f587f3452ff2a494b72c8b51638776.lean/declarations/tensordistrib-tmul--ca9f2072149c2980e874f0bf.md) | 117 | `result-track:ca9f2072149c2980e874f0bf8e1bac4eb4280977b1b503181bb7852639476a9d` |
| 10 | `abbrev` | [tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantc28e659a66e3f672b0bdac8de1f41bb9d0f587f3452ff2a494b72c8b51638776.lean/declarations/tmul--b2015cab3600930f6bf60ab3.md) | 124 | `declaration-track:b2015cab3600930f6bf60ab31437abc0ccda1190a5fa864de0996583495adfae` |
| 11 | `lemma` | [_root_.LinearMap.IsSymm.tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantc28e659a66e3f672b0bdac8de1f41bb9d0f587f3452ff2a494b72c8b51638776.lean/declarations/root-linearmap-issymm-tmul--a076262738a43914fe4c4160.md) | 129 | `result-track:a076262738a43914fe4c4160b3311ed947ca5db7f1c57667b5cfd571169e3f57` |
| 12 | `def` | [baseChange](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantc28e659a66e3f672b0bdac8de1f41bb9d0f587f3452ff2a494b72c8b51638776.lean/declarations/basechange--4f76f50d09a1b55ba02d146f.md) | 137 | `declaration-track:4f76f50d09a1b55ba02d146f055a211bd644ab383f83832021efd7d94263b393` |
| 13 | `theorem` | [baseChange_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantc28e659a66e3f672b0bdac8de1f41bb9d0f587f3452ff2a494b72c8b51638776.lean/declarations/basechange-tmul--69ff81993cd96cbc18148496.md) | 141 | `result-track:69ff81993cd96cbc18148496d042d00cb82746772837c018cd1a59925b9bca58` |
| 14 | `lemma` | [baseChange_zero](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantc28e659a66e3f672b0bdac8de1f41bb9d0f587f3452ff2a494b72c8b51638776.lean/declarations/basechange-zero--002c0d12ad138612d3fba876.md) | 146 | `result-track:002c0d12ad138612d3fba876fb5070bbca767b89dd0ed47e07eafa30abf76428` |
| 15 | `lemma` | [baseChange_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantc28e659a66e3f672b0bdac8de1f41bb9d0f587f3452ff2a494b72c8b51638776.lean/declarations/basechange-eq-zero-iff--934739414f8c84ef843f042b.md) | 148 | `result-track:934739414f8c84ef843f042bb8c7ffd242f90d808db8f8fd00bd18a189d97bde` |
| 16 | `lemma` | [IsSymm.baseChange](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantc28e659a66e3f672b0bdac8de1f41bb9d0f587f3452ff2a494b72c8b51638776.lean/declarations/issymm-basechange--97ef21ecda16e658047616f5.md) | 156 | `result-track:97ef21ecda16e658047616f5b556a2e38e16fbe24e1ff4ca0a898b4a85f56ef2` |
| 17 | `def` | [tensorDistribEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantc28e659a66e3f672b0bdac8de1f41bb9d0f587f3452ff2a494b72c8b51638776.lean/declarations/tensordistribequiv--912d1503610dc2370f173584.md) | 175 | `declaration-track:912d1503610dc2370f1735845d003f1997b8fef46fceb04f5f6182acd6cedf37` |
| 18 | `theorem` | [tensorDistribEquiv_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantc28e659a66e3f672b0bdac8de1f41bb9d0f587f3452ff2a494b72c8b51638776.lean/declarations/tensordistribequiv-tmul--91e977508c5695f4a20af29a.md) | 186 | `result-track:91e977508c5695f4a20af29a767ee3636d05dd27752b20e2e16a5acec92afab2` |
| 19 | `theorem` | [tensorDistribEquiv_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantc28e659a66e3f672b0bdac8de1f41bb9d0f587f3452ff2a494b72c8b51638776.lean/declarations/tensordistribequiv-tolinearmap--bb53aa4be1a70cf4a0eb18d0.md) | 194 | `result-track:bb53aa4be1a70cf4a0eb18d0c448d3fff8a0e55be266caf90390dec64d126d10` |
| 20 | `theorem` | [tensorDistribEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variantc28e659a66e3f672b0bdac8de1f41bb9d0f587f3452ff2a494b72c8b51638776.lean/declarations/tensordistribequiv-apply--50d3b626ac7d48c55e5ca5c9.md) | 198 | `result-track:50d3b626ac7d48c55e5ca5c9142d615db2a57baa483247c067a4cbc545ad4bba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
