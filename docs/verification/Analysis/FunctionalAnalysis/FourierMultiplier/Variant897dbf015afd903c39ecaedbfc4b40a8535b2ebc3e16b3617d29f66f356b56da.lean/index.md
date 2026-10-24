# Verification target: GRWTSK.Analysis.FunctionalAnalysis.FourierMultiplier.Variant897dbf015afd903c39ecaedbfc4b40a8535b2ebc3e16b3617d29f66f356b56da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0a7193c8dd123e3f7062d405572e1921bccd308",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/FourierMultiplier/Variant897dbf015afd903c39ecaedbfc4b40a8535b2ebc3e16b3617d29f66f356b56da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/FourierMultiplier/Variant897dbf015afd903c39ecaedbfc4b40a8535b2ebc3e16b3617d29f66f356b56da.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/FourierMultiplier/Variant897dbf015afd903c39ecaedbfc4b40a8535b2ebc3e16b3617d29f66f356b56da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0a7193c8dd123e3f7062d405572e1921bccd308`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/FourierMultiplier/Variant897dbf015afd903c39ecaedbfc4b40a8535b2ebc3e16b3617d29f66f356b56da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/FourierMultiplier/Variant897dbf015afd903c39ecaedbfc4b40a8535b2ebc3e16b3617d29f66f356b56da.lean.json)

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
| 1 | `def` | [fourierMultiplierCLM](../../../../../mathematics/Analysis/FunctionalAnalysis/FourierMultiplier/Variant897dbf015afd903c39ecaedbfc4b40a8535b2ebc3e16b3617d29f66f356b56da.lean/declarations/fouriermultiplierclm--3d4b0bb80c95142cf014898d.md) | 58 | `declaration-track:3d4b0bb80c95142cf014898d757e6082a25ada1692204213c5741be92db8c329` |
| 2 | `theorem` | [fourierMultiplierCLM_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/FourierMultiplier/Variant897dbf015afd903c39ecaedbfc4b40a8535b2ebc3e16b3617d29f66f356b56da.lean/declarations/fouriermultiplierclm-apply--3503d8ac7fe290541eee7750.md) | 61 | `result-track:3503d8ac7fe290541eee77508b0414b973d7cb554ef775fbb89b56bb605b8ba8` |
| 3 | `theorem` | [fourierMultiplierCLM_ofReal](../../../../../mathematics/Analysis/FunctionalAnalysis/FourierMultiplier/Variant897dbf015afd903c39ecaedbfc4b40a8535b2ebc3e16b3617d29f66f356b56da.lean/declarations/fouriermultiplierclm-ofreal--43c66a696452e855f3941b67.md) | 66 | `result-track:43c66a696452e855f3941b67174786da73644f1d179802a736ad61c9f978a1fc` |
| 4 | `theorem` | [fourierMultiplierCLM_smul](../../../../../mathematics/Analysis/FunctionalAnalysis/FourierMultiplier/Variant897dbf015afd903c39ecaedbfc4b40a8535b2ebc3e16b3617d29f66f356b56da.lean/declarations/fouriermultiplierclm-smul--3319958e429eeabdd0d92d3b.md) | 73 | `result-track:3319958e429eeabdd0d92d3bf9b599cb1d2169daddd441c0e8091cd8e49de28b` |
| 5 | `theorem` | [fourierMultiplierCLM_sum](../../../../../mathematics/Analysis/FunctionalAnalysis/FourierMultiplier/Variant897dbf015afd903c39ecaedbfc4b40a8535b2ebc3e16b3617d29f66f356b56da.lean/declarations/fouriermultiplierclm-sum--a18a9a7dc61bc48a64d5063a.md) | 79 | `result-track:a18a9a7dc61bc48a64d5063a7007258f876a65908be691588dcbaf299192bc10` |
| 6 | `theorem` | [fourierMultiplierCLM_const](../../../../../mathematics/Analysis/FunctionalAnalysis/FourierMultiplier/Variant897dbf015afd903c39ecaedbfc4b40a8535b2ebc3e16b3617d29f66f356b56da.lean/declarations/fouriermultiplierclm-const--d323b818174c734f4cf3ade5.md) | 88 | `result-track:d323b818174c734f4cf3ade5c9631b84e4d52c0177f3bfa9b0306cf6360bab5a` |
| 7 | `theorem` | [fourierMultiplierCLM_fourierMultiplierCLM_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/FourierMultiplier/Variant897dbf015afd903c39ecaedbfc4b40a8535b2ebc3e16b3617d29f66f356b56da.lean/declarations/fouriermultiplierclm-fouriermultiplierclm-apply--bf53db2fdefce92e7e3cdafe.md) | 93 | `result-track:bf53db2fdefce92e7e3cdafe99d078b1fc194d19e67812e49e5bf8c528b68a85` |
| 8 | `theorem` | [fourierMultiplierCLM_compL_fourierMultiplierCLM](../../../../../mathematics/Analysis/FunctionalAnalysis/FourierMultiplier/Variant897dbf015afd903c39ecaedbfc4b40a8535b2ebc3e16b3617d29f66f356b56da.lean/declarations/fouriermultiplierclm-compl-fouriermultiplierclm--e90d7efee313a357a2b19063.md) | 99 | `result-track:e90d7efee313a357a2b190632b466a6bf74a25cddfef2c50ab05127b126d05e4` |
| 9 | `theorem` | [lineDeriv_eq_fourierMultiplierCLM](../../../../../mathematics/Analysis/FunctionalAnalysis/FourierMultiplier/Variant897dbf015afd903c39ecaedbfc4b40a8535b2ebc3e16b3617d29f66f356b56da.lean/declarations/linederiv-eq-fouriermultiplierclm--7a7eda280cd74a8db8319cd0.md) | 108 | `result-track:7a7eda280cd74a8db8319cd0b4ade0120c5f50774c9ae11546be3f509cb29b76` |
| 10 | `theorem` | [laplacian_eq_fourierMultiplierCLM](../../../../../mathematics/Analysis/FunctionalAnalysis/FourierMultiplier/Variant897dbf015afd903c39ecaedbfc4b40a8535b2ebc3e16b3617d29f66f356b56da.lean/declarations/laplacian-eq-fouriermultiplierclm--37fb45002c7b4da3d5e3fc8d.md) | 115 | `result-track:37fb45002c7b4da3d5e3fc8d553e4edf0f4be00b6737e66eff1c22b73db10704` |
| 11 | `def` | [fourierMultiplierCLM](../../../../../mathematics/Analysis/FunctionalAnalysis/FourierMultiplier/Variant897dbf015afd903c39ecaedbfc4b40a8535b2ebc3e16b3617d29f66f356b56da.lean/declarations/fouriermultiplierclm--6f5455fb07dcd1972f66871e.md) | 151 | `declaration-track:6f5455fb07dcd1972f66871e278742d51598186462243dfafffbde8e5ca945fd` |
| 12 | `theorem` | [fourierMultiplierCLM_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/FourierMultiplier/Variant897dbf015afd903c39ecaedbfc4b40a8535b2ebc3e16b3617d29f66f356b56da.lean/declarations/fouriermultiplierclm-apply--d07a88e5df7bfd5f4fc87532.md) | 154 | `result-track:d07a88e5df7bfd5f4fc87532ca17495b548ff1c10ad4919eafdc44213259d1ad` |
| 13 | `theorem` | [fourierMultiplierCLM_apply_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/FourierMultiplier/Variant897dbf015afd903c39ecaedbfc4b40a8535b2ebc3e16b3617d29f66f356b56da.lean/declarations/fouriermultiplierclm-apply-apply--17ab6ca86719d6d297c361c8.md) | 159 | `result-track:17ab6ca86719d6d297c361c8b1bedb10b8f38c78c703057c4037f5cbd176b168` |
| 14 | `theorem` | [fourierMultiplierCLM_const](../../../../../mathematics/Analysis/FunctionalAnalysis/FourierMultiplier/Variant897dbf015afd903c39ecaedbfc4b40a8535b2ebc3e16b3617d29f66f356b56da.lean/declarations/fouriermultiplierclm-const--82db1545392a3a2372604842.md) | 164 | `result-track:82db1545392a3a237260484228be01cad0d9d4ac5b55ae02c174ad3bd853e00a` |
| 15 | `theorem` | [fourierMultiplierCLM_fourierMultiplierCLM_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/FourierMultiplier/Variant897dbf015afd903c39ecaedbfc4b40a8535b2ebc3e16b3617d29f66f356b56da.lean/declarations/fouriermultiplierclm-fouriermultiplierclm-apply--ba8742df29aafb66b97dbcd2.md) | 169 | `result-track:ba8742df29aafb66b97dbcd20f462ada5bb8589c7eca222262faea3eb3ee670e` |
| 16 | `theorem` | [fourierMultiplierCLM_compL_fourierMultiplierCLM](../../../../../mathematics/Analysis/FunctionalAnalysis/FourierMultiplier/Variant897dbf015afd903c39ecaedbfc4b40a8535b2ebc3e16b3617d29f66f356b56da.lean/declarations/fouriermultiplierclm-compl-fouriermultiplierclm--f62d9ef4997fdf369518acb9.md) | 175 | `result-track:f62d9ef4997fdf369518acb97820f0ec110c0f3680bfefbc8a5a7c7e28c3bccd` |
| 17 | `theorem` | [fourierMultiplierCLM_smul](../../../../../mathematics/Analysis/FunctionalAnalysis/FourierMultiplier/Variant897dbf015afd903c39ecaedbfc4b40a8535b2ebc3e16b3617d29f66f356b56da.lean/declarations/fouriermultiplierclm-smul--c8675fb0306644838a068c69.md) | 182 | `result-track:c8675fb0306644838a068c69d502f505d0d6d6d7364f14fda9dd84bb9cf8f461` |
| 18 | `theorem` | [fourierMultiplierCLM_sum](../../../../../mathematics/Analysis/FunctionalAnalysis/FourierMultiplier/Variant897dbf015afd903c39ecaedbfc4b40a8535b2ebc3e16b3617d29f66f356b56da.lean/declarations/fouriermultiplierclm-sum--01226bce1993635af1eee068.md) | 188 | `result-track:01226bce1993635af1eee068f6159d36fee502166af6299bb2fc08038c462de1` |
| 19 | `theorem` | [fourierMultiplierCLM_toTemperedDistributionCLM_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/FourierMultiplier/Variant897dbf015afd903c39ecaedbfc4b40a8535b2ebc3e16b3617d29f66f356b56da.lean/declarations/fouriermultiplierclm-totempereddistributionclm-eq--431fca7578974eaacb9a289a.md) | 198 | `result-track:431fca7578974eaacb9a289a935e86ab4aac7be0b28dc4c91df0b1bb35970122` |
| 20 | `theorem` | [lineDeriv_eq_fourierMultiplierCLM](../../../../../mathematics/Analysis/FunctionalAnalysis/FourierMultiplier/Variant897dbf015afd903c39ecaedbfc4b40a8535b2ebc3e16b3617d29f66f356b56da.lean/declarations/linederiv-eq-fouriermultiplierclm--8dab20055a8bd3cbbdba5794.md) | 209 | `result-track:8dab20055a8bd3cbbdba57945f8e2b144e42ed72fa8d75b03e317cef11e066e8` |
| 21 | `theorem` | [laplacian_eq_fourierMultiplierCLM](../../../../../mathematics/Analysis/FunctionalAnalysis/FourierMultiplier/Variant897dbf015afd903c39ecaedbfc4b40a8535b2ebc3e16b3617d29f66f356b56da.lean/declarations/laplacian-eq-fouriermultiplierclm--5dcb268b46378bb517ec3aa5.md) | 216 | `result-track:5dcb268b46378bb517ec3aa56755d5dbcb90782c1eb0ac413525aa0f96807f19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
