# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.KernelCokernelComp.Variant7f93fdf572481b0928f547da102fa493939d072f1c1ad887b0f908f02e90d611

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c969ed446219487218cc24430d159a63c24b57c7",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant7f93fdf572481b0928f547da102fa493939d072f1c1ad887b0f908f02e90d611.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant7f93fdf572481b0928f547da102fa493939d072f1c1ad887b0f908f02e90d611.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant7f93fdf572481b0928f547da102fa493939d072f1c1ad887b0f908f02e90d611.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c969ed446219487218cc24430d159a63c24b57c7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant7f93fdf572481b0928f547da102fa493939d072f1c1ad887b0f908f02e90d611.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant7f93fdf572481b0928f547da102fa493939d072f1c1ad887b0f908f02e90d611.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.SnakeLemma` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant7f93fdf572481b0928f547da102fa493939d072f1c1ad887b0f908f02e90d611.lean/declarations/anonymous--68db71fe3bfa58c4b592585d.md) | 49 | `declaration-track:68db71fe3bfa58c4b592585d451cdd8bda5c037646ca2118e604c3b4645f0415` |
| 2 | `lemma` | [ι_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant7f93fdf572481b0928f547da102fa493939d072f1c1ad887b0f908f02e90d611.lean/declarations/fst--a031bb2ae3e9a266fd11bfbf.md) | 53 | `result-track:a031bb2ae3e9a266fd11bfbfb453e1aae72185e121e9b13fb5981e01aa1c36b7` |
| 3 | `lemma` | [ι_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant7f93fdf572481b0928f547da102fa493939d072f1c1ad887b0f908f02e90d611.lean/declarations/snd--fd64eb6d3cff84c551ebcca4.md) | 56 | `result-track:fd64eb6d3cff84c551ebcca48f515fa69327ac30330fca44e05db6910dbc809e` |
| 4 | `def` | [φ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant7f93fdf572481b0928f547da102fa493939d072f1c1ad887b0f908f02e90d611.lean/declarations/anonymous--043224ebc13501a31b4b6398.md) | 65 | `declaration-track:043224ebc13501a31b4b6398cfbe11dc57b21cbd22eb99077a6063b4985c6eda` |
| 5 | `lemma` | [inl_φ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant7f93fdf572481b0928f547da102fa493939d072f1c1ad887b0f908f02e90d611.lean/declarations/inl--e4b623edad8c04294070d9e9.md) | 69 | `result-track:e4b623edad8c04294070d9e92d5fbf95a2a0c1a8cda72e6122a36148599a2458` |
| 6 | `lemma` | [inr_φ_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant7f93fdf572481b0928f547da102fa493939d072f1c1ad887b0f908f02e90d611.lean/declarations/inr-fst--7e2bbe81d408570ff33f8cfd.md) | 72 | `result-track:7e2bbe81d408570ff33f8cfd5a2a4f031b1fc1a2d7dd7633bcef4bffeaa4ea0a` |
| 7 | `lemma` | [φ_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant7f93fdf572481b0928f547da102fa493939d072f1c1ad887b0f908f02e90d611.lean/declarations/snd--4ac48de4dcb41db58315858f.md) | 75 | `result-track:4ac48de4dcb41db58315858f753cd73ecde6b6beb16e68e78fd3d252a8540971` |
| 8 | `def` | [π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant7f93fdf572481b0928f547da102fa493939d072f1c1ad887b0f908f02e90d611.lean/declarations/anonymous--24f1d74f5193d822fb307b4f.md) | 82 | `declaration-track:24f1d74f5193d822fb307b4f4662626bf9ea5a4a068a9a8b37fecd497e0b92e5` |
| 9 | `lemma` | [inl_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant7f93fdf572481b0928f547da102fa493939d072f1c1ad887b0f908f02e90d611.lean/declarations/inl--06bddde7a72b5aa1c1b50fd8.md) | 86 | `result-track:06bddde7a72b5aa1c1b50fd8b5e9b98b2912a6d2f59da637d88a3fa60046acff` |
| 10 | `lemma` | [inr_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant7f93fdf572481b0928f547da102fa493939d072f1c1ad887b0f908f02e90d611.lean/declarations/inr--0ddcbb9e6b2fd291ead0d550.md) | 89 | `result-track:0ddcbb9e6b2fd291ead0d5503881a0d13bed0249c809f016172b161ddc89aac4` |
| 11 | `lemma` | [ι_φ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant7f93fdf572481b0928f547da102fa493939d072f1c1ad887b0f908f02e90d611.lean/declarations/anonymous--d4ff930864e7182b68194714.md) | 92 | `result-track:d4ff930864e7182b68194714ae04fe96f8fde8cdfbd826b3e5fac33811b62fb4` |
| 12 | `lemma` | [φ_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant7f93fdf572481b0928f547da102fa493939d072f1c1ad887b0f908f02e90d611.lean/declarations/anonymous--3542d885e0eeb83508a83d2f.md) | 97 | `result-track:3542d885e0eeb83508a83d2f7fc057f33d012777688fbad087828bdca438d146` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant7f93fdf572481b0928f547da102fa493939d072f1c1ad887b0f908f02e90d611.lean/declarations/instance--9e6ef1b0e94518f35190f91d.md) | 104 | `declaration-track:9e6ef1b0e94518f35190f91d1c60ed996bb2bc923ea35dda204e9b22fc51f144` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant7f93fdf572481b0928f547da102fa493939d072f1c1ad887b0f908f02e90d611.lean/declarations/instance--e6200014ec92ad2b5eef28f8.md) | 106 | `declaration-track:e6200014ec92ad2b5eef28f8b309798781954296ffb239cd5fc575f3260191c2` |
| 15 | `def` | [isLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant7f93fdf572481b0928f547da102fa493939d072f1c1ad887b0f908f02e90d611.lean/declarations/islimit--97f583f3e16461a8437d706b.md) | 111 | `declaration-track:97f583f3e16461a8437d706bc5c842bc7a83b46c659e2918d7c8e0253ac03cad` |
| 16 | `def` | [isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant7f93fdf572481b0928f547da102fa493939d072f1c1ad887b0f908f02e90d611.lean/declarations/iscolimit--e29332be0bd41e203969e899.md) | 125 | `declaration-track:e29332be0bd41e203969e8990f404d420270969e314dcb25f36f1f2bf2a84fb2` |
| 17 | `def` | [snakeInput](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant7f93fdf572481b0928f547da102fa493939d072f1c1ad887b0f908f02e90d611.lean/declarations/snakeinput--26281221705085a7d4bc005e.md) | 140 | `declaration-track:26281221705085a7d4bc005ecbdd42fc14fdf35ec401cd38160eb2adbb2c294d` |
| 18 | `def` | [δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant7f93fdf572481b0928f547da102fa493939d072f1c1ad887b0f908f02e90d611.lean/declarations/anonymous--856c98257854572cdc630144.md) | 182 | `declaration-track:856c98257854572cdc6301443abc648c8bc53acffe3e84d88752b886234e59a0` |
| 19 | `lemma` | [δ_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant7f93fdf572481b0928f547da102fa493939d072f1c1ad887b0f908f02e90d611.lean/declarations/fac--2aaa1b35123d2d2f5e5b2aa0.md) | 184 | `result-track:2aaa1b35123d2d2f5e5b2aa0bdcd93df9cbf363e8267f4069d96c52fddf46e1b` |
| 20 | `abbrev` | [kernelCokernelCompSequence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant7f93fdf572481b0928f547da102fa493939d072f1c1ad887b0f908f02e90d611.lean/declarations/kernelcokernelcompsequence--8ab66c476084a9256bff2134.md) | 195 | `declaration-track:8ab66c476084a9256bff21344c9542aadd50fe5d410aca350821dba86b05215c` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant7f93fdf572481b0928f547da102fa493939d072f1c1ad887b0f908f02e90d611.lean/declarations/instance--4de21cb2c3d80606c7790baf.md) | 202 | `declaration-track:4de21cb2c3d80606c7790baf3a173d50c25638ad5bcbf0dcfab04ca4035fbebb` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant7f93fdf572481b0928f547da102fa493939d072f1c1ad887b0f908f02e90d611.lean/declarations/instance--412214ff3d8a0b48bcbf8e1a.md) | 205 | `declaration-track:412214ff3d8a0b48bcbf8e1a3ff753af8a680c8d18d8689f7663e899b0321035` |
| 23 | `lemma` | [kernelCokernelCompSequence_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant7f93fdf572481b0928f547da102fa493939d072f1c1ad887b0f908f02e90d611.lean/declarations/kernelcokernelcompsequence-exact--4f69c0e49508deaea9424c73.md) | 209 | `result-track:4f69c0e49508deaea9424c73712cb2229b2dd4e975b1a7241eb93d5230eade21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
