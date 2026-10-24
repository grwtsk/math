# Verification target: GRWTSK.Algebra.LinearAlgebra.SupportGraphAbstraction.Variant4d422f72408fd7fff345cbe56e0a64e8c379da7e9001420fe4120a5a56a703dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b7737f7bdfd6686407b80efa51a33a67cc8644c",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant4d422f72408fd7fff345cbe56e0a64e8c379da7e9001420fe4120a5a56a703dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant4d422f72408fd7fff345cbe56e0a64e8c379da7e9001420fe4120a5a56a703dd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant4d422f72408fd7fff345cbe56e0a64e8c379da7e9001420fe4120a5a56a703dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b7737f7bdfd6686407b80efa51a33a67cc8644c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant4d422f72408fd7fff345cbe56e0a64e8c379da7e9001420fe4120a5a56a703dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant4d422f72408fd7fff345cbe56e0a64e8c379da7e9001420fe4120a5a56a703dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BinaryMatrix` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [undirectedSupport](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant4d422f72408fd7fff345cbe56e0a64e8c379da7e9001420fe4120a5a56a703dd.lean/declarations/undirectedsupport--e040fdd47198814af75d35a3.md) | 27 | `declaration-track:e040fdd47198814af75d35a3e9578821df107cb6b06f760f043abfc42fdef2c3` |
| 2 | `theorem` | [directed_edge_visible](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant4d422f72408fd7fff345cbe56e0a64e8c379da7e9001420fe4120a5a56a703dd.lean/declarations/directed-edge-visible--ae8c2681c56e790565e6a1b1.md) | 34 | `result-track:ae8c2681c56e790565e6a1b1125f8348710758a12c424444e0d8d254fafd42be` |
| 3 | `theorem` | [undirectedSupport_symmetric](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant4d422f72408fd7fff345cbe56e0a64e8c379da7e9001420fe4120a5a56a703dd.lean/declarations/undirectedsupport-symmetric--7f7613252c285a034b66b9ad.md) | 43 | `result-track:7f7613252c285a034b66b9adad8874dae0f1c6e413a56215eb5147544fedd172` |
| 4 | `def` | [boolZModMatrix](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant4d422f72408fd7fff345cbe56e0a64e8c379da7e9001420fe4120a5a56a703dd.lean/declarations/boolzmodmatrix--d5ef1d37b65f81b9c823d20f.md) | 51 | `declaration-track:d5ef1d37b65f81b9c823d20ff0a91896cf45c5a96f05a05135d923928eb20df0` |
| 5 | `def` | [swapSupportExample](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant4d422f72408fd7fff345cbe56e0a64e8c379da7e9001420fe4120a5a56a703dd.lean/declarations/swapsupportexample--cf3fd3767b7347df5d345cc5.md) | 58 | `declaration-track:cf3fd3767b7347df5d345cc57af37853415ca30b1e49ff119078bf04d6dfc386` |
| 6 | `def` | [orientedSupportExample](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant4d422f72408fd7fff345cbe56e0a64e8c379da7e9001420fe4120a5a56a703dd.lean/declarations/orientedsupportexample--0796406272569f155b3399d7.md) | 62 | `declaration-track:0796406272569f155b3399d79e1f021c503123e933107b4ba8860af51edc6723` |
| 7 | `theorem` | [support_examples_distinct](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant4d422f72408fd7fff345cbe56e0a64e8c379da7e9001420fe4120a5a56a703dd.lean/declarations/support-examples-distinct--44c523a4518097400a034d20.md) | 66 | `result-track:44c523a4518097400a034d2060e306526bed4ee4a14baf3572457301eab903b5` |
| 8 | `theorem` | [support_examples_same_abstraction](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant4d422f72408fd7fff345cbe56e0a64e8c379da7e9001420fe4120a5a56a703dd.lean/declarations/support-examples-same-abstraction--e4d083ff99dea17cc952424f.md) | 73 | `result-track:e4d083ff99dea17cc952424f16d552abf0f287aa09f91826be4e175963d0accb` |
| 9 | `theorem` | [swapSupportExample_det](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant4d422f72408fd7fff345cbe56e0a64e8c379da7e9001420fe4120a5a56a703dd.lean/declarations/swapsupportexample-det--4daa4e664b4847358c19c50a.md) | 80 | `result-track:4daa4e664b4847358c19c50a2382cf7a7f09613f32edb91d314e915c2b476cad` |
| 10 | `theorem` | [orientedSupportExample_det](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant4d422f72408fd7fff345cbe56e0a64e8c379da7e9001420fe4120a5a56a703dd.lean/declarations/orientedsupportexample-det--aab069a30945d9329faa5b4f.md) | 85 | `result-track:aab069a30945d9329faa5b4f4d92a1503cec456d664199f43cd2e14be7e2f034` |
| 11 | `theorem` | [support_does_not_determine_invertibility](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant4d422f72408fd7fff345cbe56e0a64e8c379da7e9001420fe4120a5a56a703dd.lean/declarations/support-does-not-determine-invertibility--fbc732ef9dcf3319889f5a87.md) | 93 | `result-track:fbc732ef9dcf3319889f5a874934691a7e90dc22441ad5cac4df26a9c5a42f79` |
| 12 | `structure` | [SupportAbstractionLoss](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant4d422f72408fd7fff345cbe56e0a64e8c379da7e9001420fe4120a5a56a703dd.lean/declarations/supportabstractionloss--e2d5d59a8d266fb0d9e4a3de.md) | 106 | `declaration-track:e2d5d59a8d266fb0d9e4a3ded30af6d573ae22043ebdda43b2102bb770e587e9` |
| 13 | `def` | [undirectedSupportLoss](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant4d422f72408fd7fff345cbe56e0a64e8c379da7e9001420fe4120a5a56a703dd.lean/declarations/undirectedsupportloss--025c9fc26cca11606d7ebeb8.md) | 114 | `declaration-track:025c9fc26cca11606d7ebeb8b2261256a92fb4b5875223fb29bcfc8fbb1448c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
