# Verification target: GRWTSK.Algebra.LinearAlgebra.TensorProduct.Variant63d12282e4ea6446dc861de28c71f117d789ce0f465005dcfa73c334c58b960f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ccdaf001a6adc160cb13ab277b0d9bbe149c2d8",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant63d12282e4ea6446dc861de28c71f117d789ce0f465005dcfa73c334c58b960f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant63d12282e4ea6446dc861de28c71f117d789ce0f465005dcfa73c334c58b960f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant63d12282e4ea6446dc861de28c71f117d789ce0f465005dcfa73c334c58b960f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ccdaf001a6adc160cb13ab277b0d9bbe149c2d8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant63d12282e4ea6446dc861de28c71f117d789ce0f465005dcfa73c334c58b960f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Variant63d12282e4ea6446dc861de28c71f117d789ce0f465005dcfa73c334c58b960f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Abelian` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hasBracketAux](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant63d12282e4ea6446dc861de28c71f117d789ce0f465005dcfa73c334c58b960f.lean/declarations/hasbracketaux--0038ed9c138cae370123e108.md) | 58 | `declaration-track:0038ed9c138cae370123e1082f98908d41156530931dedf378fb79071d0169d1` |
| 2 | `instance` | [lieRingModule](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant63d12282e4ea6446dc861de28c71f117d789ce0f465005dcfa73c334c58b960f.lean/declarations/lieringmodule--357d284a245497548d81ae2a.md) | 63 | `declaration-track:357d284a245497548d81ae2a487af42c6c517e0ee85b2ea8695bd217c1164227` |
| 3 | `instance` | [lieModule](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant63d12282e4ea6446dc861de28c71f117d789ce0f465005dcfa73c334c58b960f.lean/declarations/liemodule--a3f89e9071d53001a1315036.md) | 83 | `declaration-track:a3f89e9071d53001a1315036163b81a76c944ac32455d801e4e5ae6c8124ceba` |
| 4 | `theorem` | [lie_tmul_right](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant63d12282e4ea6446dc861de28c71f117d789ce0f465005dcfa73c334c58b960f.lean/declarations/lie-tmul-right--f2837dc59fa1ed2dcb2b6701.md) | 92 | `result-track:f2837dc59fa1ed2dcb2b6701adedf061c978bacd7e8ede9565ae3e642fbeca8d` |
| 5 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant63d12282e4ea6446dc861de28c71f117d789ce0f465005dcfa73c334c58b960f.lean/declarations/lift--2d8f8f7d6e6b9bd31233277b.md) | 102 | `declaration-track:2d8f8f7d6e6b9bd31233277bc18c34a9b0fa64ec66bec22d9c8b5a3018552efd` |
| 6 | `theorem` | [lift_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant63d12282e4ea6446dc861de28c71f117d789ce0f465005dcfa73c334c58b960f.lean/declarations/lift-apply--1f71de827652886c80349f65.md) | 112 | `result-track:1f71de827652886c80349f651a301f65ea36e9db8759a1760f1682f9cbc82050` |
| 7 | `def` | [liftLie](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant63d12282e4ea6446dc861de28c71f117d789ce0f465005dcfa73c334c58b960f.lean/declarations/liftlie--6de86820bac8563b62ca00b0.md) | 120 | `declaration-track:6de86820bac8563b62ca00b0e60355c37f53a40eec4e4a3d073474eb9b95d5a6` |
| 8 | `theorem` | [coe_liftLie_eq_lift_coe](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant63d12282e4ea6446dc861de28c71f117d789ce0f465005dcfa73c334c58b960f.lean/declarations/coe-liftlie-eq-lift-coe--a29cbd5a481b8d8843cf1f43.md) | 126 | `result-track:a29cbd5a481b8d8843cf1f43b95f4d7b568cb5323d1ee971d0c53c766d9f4c1a` |
| 9 | `theorem` | [liftLie_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant63d12282e4ea6446dc861de28c71f117d789ce0f465005dcfa73c334c58b960f.lean/declarations/liftlie-apply--719428a4ee846341057e2268.md) | 136 | `result-track:719428a4ee846341057e226832b30aafcce29f497bd78e58e5d1c52c02038ae6` |
| 10 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant63d12282e4ea6446dc861de28c71f117d789ce0f465005dcfa73c334c58b960f.lean/declarations/map--fea021df4e59ed49dd3fe869.md) | 145 | `declaration-track:fea021df4e59ed49dd3fe86997550540d92ee3b6929c9e5ebeed300c060b67c2` |
| 11 | `theorem` | [coe_linearMap_map](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant63d12282e4ea6446dc861de28c71f117d789ce0f465005dcfa73c334c58b960f.lean/declarations/coe-linearmap-map--982d8f443e7d8f66382b2acb.md) | 158 | `result-track:982d8f443e7d8f66382b2acb51b629748259b6bc841ec481293db6b3470a40ab` |
| 12 | `theorem` | [map_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant63d12282e4ea6446dc861de28c71f117d789ce0f465005dcfa73c334c58b960f.lean/declarations/map-tmul--05bbf311055f5bc14e2124b4.md) | 164 | `result-track:05bbf311055f5bc14e2124b4fffa40540ea5a0b1c91699b849a8772f13cf4fb4` |
| 13 | `def` | [mapIncl](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant63d12282e4ea6446dc861de28c71f117d789ce0f465005dcfa73c334c58b960f.lean/declarations/mapincl--f6320373937a8a327386e457.md) | 170 | `declaration-track:f6320373937a8a327386e457531056f7eb22ade71826fd30f35264e3a656a3f3` |
| 14 | `theorem` | [mapIncl_def](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant63d12282e4ea6446dc861de28c71f117d789ce0f465005dcfa73c334c58b960f.lean/declarations/mapincl-def--d612263079ebee2a09425810.md) | 175 | `result-track:d612263079ebee2a09425810641645e2e5ba518b17011a38e9fdaf41079aafa0` |
| 15 | `def` | [toModuleHom](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant63d12282e4ea6446dc861de28c71f117d789ce0f465005dcfa73c334c58b960f.lean/declarations/tomodulehom--9a553afe1f8bf7033b7fc972.md) | 195 | `declaration-track:9a553afe1f8bf7033b7fc9725862f957204d9f8c541f88a51402e7e8f6855951` |
| 16 | `theorem` | [toModuleHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant63d12282e4ea6446dc861de28c71f117d789ce0f465005dcfa73c334c58b960f.lean/declarations/tomodulehom-apply--1e88486a0482f8359ecadcbb.md) | 202 | `result-track:1e88486a0482f8359ecadcbbd93c27528397f7cb62ef141ea720e097ef4799e1` |
| 17 | `theorem` | [lieIdeal_oper_eq_tensor_map_range](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant63d12282e4ea6446dc861de28c71f117d789ce0f465005dcfa73c334c58b960f.lean/declarations/lieideal-oper-eq-tensor-map-range--21dbf20540a33fa5737d1011.md) | 228 | `result-track:21dbf20540a33fa5737d10114a3b321f45f8941f0af5bb4b91dccad321b86921` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
