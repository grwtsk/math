# Verification target: GRWTSK.Topology.AlgebraicTopology.Product.Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f3f92ffe6771c8d70acb23c76f94f015dcf7edc",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f3f92ffe6771c8d70acb23c76f94f015dcf7edc`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Constructions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Path` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HomotopyRel.pi](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean/declarations/homotopyrel-pi--11285a0d71a7cc8f25a5889a.md) | 73 | `declaration-track:11285a0d71a7cc8f25a5889a296bcaaa8c77d1ac551e82433bf22cd041f3c93a` |
| 2 | `def` | [Homotopy.prod](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean/declarations/homotopy-prod--c6386a4662f1df231481ce77.md) | 94 | `declaration-track:c6386a4662f1df231481ce770d5f6781a73c9e40b910507b56f271b3232a8160` |
| 3 | `def` | [HomotopyRel.prod](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean/declarations/homotopyrel-prod--2b0c89bbac9146e413afccc0.md) | 104 | `declaration-track:2b0c89bbac9146e413afccc0abf8fa0436476d92c45608c2a957c1ffc9a423a2` |
| 4 | `def` | [piHomotopy](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean/declarations/pihomotopy--5fea2ab67ebbbcd5d68cdfb0.md) | 130 | `declaration-track:5fea2ab67ebbbcd5d68cdfb0dfd2e1ff44f46f5709832fee29762eaf78f5f3d1` |
| 5 | `def` | [pi](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean/declarations/pi--a5a07921e19c97d2a62fef6d.md) | 136 | `declaration-track:a5a07921e19c97d2a62fef6dc5421c0dcb098f6d5b7e11b7cd552bced6a906ff` |
| 6 | `theorem` | [pi_lift](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean/declarations/pi-lift--b96aa8d8a614aaf6f7cd12ee.md) | 141 | `result-track:b96aa8d8a614aaf6f7cd12eef5a3bb03be457a3cc0822dc5423da80d143f2938` |
| 7 | `theorem` | [comp_pi_eq_pi_comp](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean/declarations/comp-pi-eq-pi-comp--d752b8cc94098599a6b1b515.md) | 147 | `result-track:d752b8cc94098599a6b1b5157f532dcd3853d07e815726aa1c9169987a670c21` |
| 8 | `def` | [proj](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean/declarations/proj--1d35d1ce813d5555669f3f16.md) | 160 | `declaration-track:1d35d1ce813d5555669f3f16cd5db14f851010991e56bff494223e82859a793e` |
| 9 | `theorem` | [proj_pi](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean/declarations/proj-pi--2033c55be4466fdc9d7b56cb.md) | 166 | `result-track:2033c55be4466fdc9d7b56cbbba131b57aa7693aca99205078b003b5ba7945d6` |
| 10 | `theorem` | [pi_proj](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean/declarations/pi-proj--7cc63b3b87802efa11b617ed.md) | 175 | `result-track:7cc63b3b87802efa11b617edb790389e9d55756fb7ec69b60e374b71c61a38be` |
| 11 | `def` | [prodHomotopy](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean/declarations/prodhomotopy--3f5caf10ce638d4e32216c93.md) | 193 | `declaration-track:3f5caf10ce638d4e32216c93b25eec92ddfd6099dc64a9a3d991983c46bbebe7` |
| 12 | `def` | [prod](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean/declarations/prod--05c5a50270eb7c038417fa5a.md) | 199 | `declaration-track:05c5a50270eb7c038417fa5afa492fc05721110aebecfe9538bf4ddcf9000663` |
| 13 | `theorem` | [prod_lift](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean/declarations/prod-lift--4b9dc74ed943b700674b5ec9.md) | 206 | `result-track:4b9dc74ed943b700674b5ec9f0fb090bc317a380cebc53a0e843e4e62a1c229b` |
| 14 | `theorem` | [comp_prod_eq_prod_comp](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean/declarations/comp-prod-eq-prod-comp--4a5db03b1cbd27441df9f9db.md) | 214 | `result-track:4a5db03b1cbd27441df9f9dbe29a60b2a79e0c1ed1120f725aad7b5897702754` |
| 15 | `def` | [projLeft](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean/declarations/projleft--1f42e35c9e5f6e4e711aad3d.md) | 226 | `declaration-track:1f42e35c9e5f6e4e711aad3db84a26665ec3ef2feb03eafe67bdd6379b0af57b` |
| 16 | `def` | [projRight](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean/declarations/projright--dcf46bd55fbb8e5852e01588.md) | 232 | `declaration-track:dcf46bd55fbb8e5852e015889ee9498f9d3b643d549e5eb8e477f3ebe6b42476` |
| 17 | `theorem` | [projLeft_prod](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean/declarations/projleft-prod--3f5e8c985b7de5e5df287990.md) | 238 | `result-track:3f5e8c985b7de5e5df287990a2106ae7501cf978ae0549965e4d7fab6ab39d63` |
| 18 | `theorem` | [projRight_prod](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean/declarations/projright-prod--682aae29d6bd7ff13604c013.md) | 247 | `result-track:682aae29d6bd7ff13604c013c9c5a4e6f67b1b937b064905dc8c16d785d56356` |
| 19 | `theorem` | [prod_projLeft_projRight](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean/declarations/prod-projleft-projright--a9168e8729ce9c5359a92b64.md) | 256 | `result-track:a9168e8729ce9c5359a92b649daf3e0509698c8eff762c402ac5f1277d9f94ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
