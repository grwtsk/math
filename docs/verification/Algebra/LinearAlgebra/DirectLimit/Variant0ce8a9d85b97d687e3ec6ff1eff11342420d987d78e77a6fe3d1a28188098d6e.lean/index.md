# Verification target: GRWTSK.Algebra.LinearAlgebra.DirectLimit.Variant0ce8a9d85b97d687e3ec6ff1eff11342420d987d78e77a6fe3d1a28188098d6e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b00d9658188e750cb7f5b68b1136a7f257815b5a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/DirectLimit/Variant0ce8a9d85b97d687e3ec6ff1eff11342420d987d78e77a6fe3d1a28188098d6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variant0ce8a9d85b97d687e3ec6ff1eff11342420d987d78e77a6fe3d1a28188098d6e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variant0ce8a9d85b97d687e3ec6ff1eff11342420d987d78e77a6fe3d1a28188098d6e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b00d9658188e750cb7f5b68b1136a7f257815b5a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/DirectLimit/Variant0ce8a9d85b97d687e3ec6ff1eff11342420d987d78e77a6fe3d1a28188098d6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/DirectLimit/Variant0ce8a9d85b97d687e3ec6ff1eff11342420d987d78e77a6fe3d1a28188098d6e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Colimit.Module` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fromDirectLimit](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variant0ce8a9d85b97d687e3ec6ff1eff11342420d987d78e77a6fe3d1a28188098d6e.lean/declarations/fromdirectlimit--2aa8843824920536d56acdd4.md) | 52 | `declaration-track:2aa8843824920536d56acdd451ccc40567ca42a058a6fe41abc3d556f97b0510` |
| 2 | `lemma` | [fromDirectLimit_of_tmul](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variant0ce8a9d85b97d687e3ec6ff1eff11342420d987d78e77a6fe3d1a28188098d6e.lean/declarations/fromdirectlimit-of-tmul--6e4cb748554d9dc7218b2e84.md) | 58 | `result-track:6e4cb748554d9dc7218b2e84f151ca5ef640f4b91fa9d236a94a03f3a52468dd` |
| 3 | `def` | [toDirectLimit](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variant0ce8a9d85b97d687e3ec6ff1eff11342420d987d78e77a6fe3d1a28188098d6e.lean/declarations/todirectlimit--780850bc649e6ea307742578.md) | 66 | `declaration-track:780850bc649e6ea3077425780dd8a354b22582c50b23c2ee6a1b1e04d6f19ed3` |
| 4 | `lemma` | [toDirectLimit_tmul_of](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variant0ce8a9d85b97d687e3ec6ff1eff11342420d987d78e77a6fe3d1a28188098d6e.lean/declarations/todirectlimit-tmul-of--d9b6565932819e4b897f9f03.md) | 73 | `result-track:d9b6565932819e4b897f9f03ff9397bc649a63bf40b2c3b38ae30880c8207b7e` |
| 5 | `def` | [directLimitLeft](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variant0ce8a9d85b97d687e3ec6ff1eff11342420d987d78e77a6fe3d1a28188098d6e.lean/declarations/directlimitleft--86ed4dc9d1bae9c7c3acac04.md) | 82 | `declaration-track:86ed4dc9d1bae9c7c3acac04265d4a4015c9571f3b068304a456724e3a9d6394` |
| 6 | `lemma` | [directLimitLeft_tmul_of](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variant0ce8a9d85b97d687e3ec6ff1eff11342420d987d78e77a6fe3d1a28188098d6e.lean/declarations/directlimitleft-tmul-of--e2838a7b54de1de522789dce.md) | 91 | `result-track:e2838a7b54de1de522789dce66b1c050a822c904758f94fa30aef13baa0c3d5c` |
| 7 | `lemma` | [directLimitLeft_symm_of_tmul](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variant0ce8a9d85b97d687e3ec6ff1eff11342420d987d78e77a6fe3d1a28188098d6e.lean/declarations/directlimitleft-symm-of-tmul--09c39943e7685fa591618b1f.md) | 95 | `result-track:09c39943e7685fa591618b1f5ca0fc83b1a95f1bc4f8c7d394b5186643d7837c` |
| 8 | `lemma` | [directLimitLeft_rTensor_of](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variant0ce8a9d85b97d687e3ec6ff1eff11342420d987d78e77a6fe3d1a28188098d6e.lean/declarations/directlimitleft-rtensor-of--564ad86fca3a54a2ebfed45e.md) | 99 | `result-track:564ad86fca3a54a2ebfed45e5bc0480820d72a4c26f0d96b13de3ca1fe91eaa9` |
| 9 | `def` | [directLimitRight](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variant0ce8a9d85b97d687e3ec6ff1eff11342420d987d78e77a6fe3d1a28188098d6e.lean/declarations/directlimitright--9993e3f8e2ffcdb13ce9e666.md) | 106 | `declaration-track:9993e3f8e2ffcdb13ce9e666ab193f8f87f309f75b835d78d8bb738bd8f127fb` |
| 10 | `lemma` | [directLimitRight_tmul_of](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variant0ce8a9d85b97d687e3ec6ff1eff11342420d987d78e77a6fe3d1a28188098d6e.lean/declarations/directlimitright-tmul-of--426f3b1c0acfcca9823f5a27.md) | 112 | `result-track:426f3b1c0acfcca9823f5a27fae046d0d7df9455ef8461acb9acd1393cf4e944` |
| 11 | `lemma` | [directLimitRight_symm_of_tmul](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variant0ce8a9d85b97d687e3ec6ff1eff11342420d987d78e77a6fe3d1a28188098d6e.lean/declarations/directlimitright-symm-of-tmul--2ed0cf3e5e31235702c10735.md) | 116 | `result-track:2ed0cf3e5e31235702c107353da7b06497d0053f555e6927c507001f057011d1` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variant0ce8a9d85b97d687e3ec6ff1eff11342420d987d78e77a6fe3d1a28188098d6e.lean/declarations/instance--f08281f4e2d09d0693d94a81.md) | 122 | `declaration-track:f08281f4e2d09d0693d94a81b2364edaab0d57d15834016c4d59a255da58b7f0` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variant0ce8a9d85b97d687e3ec6ff1eff11342420d987d78e77a6fe3d1a28188098d6e.lean/declarations/instance--9260b246b78a8d782ec2fe6c.md) | 128 | `declaration-track:9260b246b78a8d782ec2fe6ca9733b004d77dc2a1cf1755258c7642eded496cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
