# Verification target: GRWTSK.Algebra.LinearAlgebra.Goursat.Variant3593dc3c17362e752ab2c8402fa94ce60cf593de7c3140479d54ef8c76b9d227

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5eded4413b4deaae92bd2dc733131bd7ffbca446",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Goursat/Variant3593dc3c17362e752ab2c8402fa94ce60cf593de7c3140479d54ef8c76b9d227.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variant3593dc3c17362e752ab2c8402fa94ce60cf593de7c3140479d54ef8c76b9d227.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variant3593dc3c17362e752ab2c8402fa94ce60cf593de7c3140479d54ef8c76b9d227.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5eded4413b4deaae92bd2dc733131bd7ffbca446`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Goursat/Variant3593dc3c17362e752ab2c8402fa94ce60cf593de7c3140479d54ef8c76b9d227.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Goursat/Variant3593dc3c17362e752ab2c8402fa94ce60cf593de7c3140479d54ef8c76b9d227.lean.json)

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
| 1 | `def` | [goursatFst](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variant3593dc3c17362e752ab2c8402fa94ce60cf593de7c3140479d54ef8c76b9d227.lean/declarations/goursatfst--b9ac020f2768b2f5935be970.md) | 39 | `declaration-track:b9ac020f2768b2f5935be97099287bfca218a6c0100fb5faa49bf03ad3713dbe` |
| 2 | `def` | [goursatSnd](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variant3593dc3c17362e752ab2c8402fa94ce60cf593de7c3140479d54ef8c76b9d227.lean/declarations/goursatsnd--38294c62b77b168d41147371.md) | 48 | `declaration-track:38294c62b77b168d4114737126d80883f07f2e6d720a8290d2c2570b27bda6f3` |
| 3 | `lemma` | [goursatFst_toAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variant3593dc3c17362e752ab2c8402fa94ce60cf593de7c3140479d54ef8c76b9d227.lean/declarations/goursatfst-toaddsubgroup--9319142137480e6c96f15d89.md) | 51 | `result-track:9319142137480e6c96f15d89ee8adbdff3a4cddd3455e4edd21d170cee436600` |
| 4 | `lemma` | [goursatSnd_toAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variant3593dc3c17362e752ab2c8402fa94ce60cf593de7c3140479d54ef8c76b9d227.lean/declarations/goursatsnd-toaddsubgroup--be671ed0e5e1859235737bea.md) | 56 | `result-track:be671ed0e5e1859235737bea3c12e05269deaa1535524756cff39ff3d28cee56` |
| 5 | `lemma` | [goursatFst_prod_goursatSnd_le](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variant3593dc3c17362e752ab2c8402fa94ce60cf593de7c3140479d54ef8c76b9d227.lean/declarations/goursatfst-prod-goursatsnd-le--986b930470c5f7225844f096.md) | 62 | `result-track:986b930470c5f7225844f096a9fb06a7da78ca98636eeeeedba7336a34736471` |
| 6 | `lemma` | [goursat_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variant3593dc3c17362e752ab2c8402fa94ce60cf593de7c3140479d54ef8c76b9d227.lean/declarations/goursat-surjective--4ac97eae7f92841a60b4d4a9.md) | 75 | `result-track:4ac97eae7f92841a60b4d4a967b0b117b4f3d7c4d584b82925eb5fe4a6ff038e` |
| 7 | `lemma` | [goursat](../../../../../mathematics/Algebra/LinearAlgebra/Goursat/Variant3593dc3c17362e752ab2c8402fa94ce60cf593de7c3140479d54ef8c76b9d227.lean/declarations/goursat--01939b4cb51653de14c67f24.md) | 103 | `result-track:01939b4cb51653de14c67f24016b98185c6eec2fe8fd0745db51bbadd5ab2cfa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
