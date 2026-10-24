# Verification target: GRWTSK.Analysis.SpecialFunctions.BKLNWA2TailBounds.Variantfc8b5a2ed90b6a87dd0a11ac64131d040286ac23259b60268e2641173316b3ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f78e8c4b70cd1d84188789ac9b7c521a7c3fc603",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/BKLNWA2TailBounds/Variantfc8b5a2ed90b6a87dd0a11ac64131d040286ac23259b60268e2641173316b3ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2TailBounds/Variantfc8b5a2ed90b6a87dd0a11ac64131d040286ac23259b60268e2641173316b3ad.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2TailBounds/Variantfc8b5a2ed90b6a87dd0a11ac64131d040286ac23259b60268e2641173316b3ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f78e8c4b70cd1d84188789ac9b7c521a7c3fc603`.

Source path: `GRWTSK/Analysis/SpecialFunctions/BKLNWA2TailBounds/Variantfc8b5a2ed90b6a87dd0a11ac64131d040286ac23259b60268e2641173316b3ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/BKLNWA2TailBounds/Variantfc8b5a2ed90b6a87dd0a11ac64131d040286ac23259b60268e2641173316b3ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Tactic.IntervalAuto` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [head_100_lower](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2TailBounds/Variantfc8b5a2ed90b6a87dd0a11ac64131d040286ac23259b60268e2641173316b3ad.lean/declarations/head-100-lower--a9be5cfa9bc0a309f3eb8a2a.md) | 29 | `result-track:a9be5cfa9bc0a309f3eb8a2ac4d326f9b6d06c6e17faf5ece6559a506d552da1` |
| 2 | `theorem` | [head_100_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2TailBounds/Variantfc8b5a2ed90b6a87dd0a11ac64131d040286ac23259b60268e2641173316b3ad.lean/declarations/head-100-upper--f38f475272f6c5e416f8ac4e.md) | 33 | `result-track:f38f475272f6c5e416f8ac4edce075f0bc3dd9ddc3f8613ad6719c840ddbf396` |
| 3 | `theorem` | [tail_100](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2TailBounds/Variantfc8b5a2ed90b6a87dd0a11ac64131d040286ac23259b60268e2641173316b3ad.lean/declarations/tail-100--5093d8597d0856ccdb8e6d5c.md) | 37 | `result-track:5093d8597d0856ccdb8e6d5cbe3cef99ba4a3e5412447c7c0610fafdc1e5bdc5` |
| 4 | `theorem` | [head_150_lower](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2TailBounds/Variantfc8b5a2ed90b6a87dd0a11ac64131d040286ac23259b60268e2641173316b3ad.lean/declarations/head-150-lower--4c6cf0d8136f48b431a23298.md) | 49 | `result-track:4c6cf0d8136f48b431a2329851f569c11ab6614be43855b8f335b6cc3ea8d7c4` |
| 5 | `theorem` | [head_150_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2TailBounds/Variantfc8b5a2ed90b6a87dd0a11ac64131d040286ac23259b60268e2641173316b3ad.lean/declarations/head-150-upper--4a0d8ce2b5fafded6ff4d7b1.md) | 53 | `result-track:4a0d8ce2b5fafded6ff4d7b1ed6713563b40a8128c643c1b30b476b3bc05815f` |
| 6 | `theorem` | [tail_150](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2TailBounds/Variantfc8b5a2ed90b6a87dd0a11ac64131d040286ac23259b60268e2641173316b3ad.lean/declarations/tail-150--e40f002288efff8bcd50a8cc.md) | 57 | `result-track:e40f002288efff8bcd50a8cc5b4b3205b0d4118e7692bf36e553bcad4442dd65` |
| 7 | `theorem` | [head_200_lower](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2TailBounds/Variantfc8b5a2ed90b6a87dd0a11ac64131d040286ac23259b60268e2641173316b3ad.lean/declarations/head-200-lower--05b26063da7a435e1f2b0666.md) | 69 | `result-track:05b26063da7a435e1f2b0666518d725d1cf4ca4fc5f6ac153188399d539404be` |
| 8 | `theorem` | [head_200_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2TailBounds/Variantfc8b5a2ed90b6a87dd0a11ac64131d040286ac23259b60268e2641173316b3ad.lean/declarations/head-200-upper--c791eedf73b3625f8761484e.md) | 73 | `result-track:c791eedf73b3625f8761484e1da51cec86ab64f02528017dd1c45ffb6e2fb7e6` |
| 9 | `theorem` | [tail_200](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2TailBounds/Variantfc8b5a2ed90b6a87dd0a11ac64131d040286ac23259b60268e2641173316b3ad.lean/declarations/tail-200--815e3c388ace5e04a74c1d86.md) | 77 | `result-track:815e3c388ace5e04a74c1d86d7738a4244e5451ebba05c302f11d325d92ecde4` |
| 10 | `theorem` | [head_250_lower](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2TailBounds/Variantfc8b5a2ed90b6a87dd0a11ac64131d040286ac23259b60268e2641173316b3ad.lean/declarations/head-250-lower--48c3577a5130e9b2a354cb9c.md) | 89 | `result-track:48c3577a5130e9b2a354cb9c7bb7fb9afb0455865c9d3c681620cf2200a95662` |
| 11 | `theorem` | [head_250_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2TailBounds/Variantfc8b5a2ed90b6a87dd0a11ac64131d040286ac23259b60268e2641173316b3ad.lean/declarations/head-250-upper--3bd1f2a1a5cf86c94768ae67.md) | 93 | `result-track:3bd1f2a1a5cf86c94768ae67a7cff60a62e13671b6e74fe5abde8d9374bb5c31` |
| 12 | `theorem` | [tail_250](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2TailBounds/Variantfc8b5a2ed90b6a87dd0a11ac64131d040286ac23259b60268e2641173316b3ad.lean/declarations/tail-250--b8c5d904de178c3dda2423df.md) | 97 | `result-track:b8c5d904de178c3dda2423df014aacd3a5ad5aef95a6b0566c19f6254fe0ea44` |
| 13 | `theorem` | [head_300_lower](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2TailBounds/Variantfc8b5a2ed90b6a87dd0a11ac64131d040286ac23259b60268e2641173316b3ad.lean/declarations/head-300-lower--98eca136f36ffbeb37d28083.md) | 109 | `result-track:98eca136f36ffbeb37d2808304e0fd79873692fa44b2e2fa462ed7643871fc63` |
| 14 | `theorem` | [head_300_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2TailBounds/Variantfc8b5a2ed90b6a87dd0a11ac64131d040286ac23259b60268e2641173316b3ad.lean/declarations/head-300-upper--f981cb555f7b18bfce38f616.md) | 113 | `result-track:f981cb555f7b18bfce38f6162a09d307aaba8e80c4dbfbde7d6d137be2a69119` |
| 15 | `theorem` | [tail_300](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2TailBounds/Variantfc8b5a2ed90b6a87dd0a11ac64131d040286ac23259b60268e2641173316b3ad.lean/declarations/tail-300--044f688b90335a1bbc6d7247.md) | 117 | `result-track:044f688b90335a1bbc6d72473014f4e550e02c5079dc988dc1c64a02ac51dcc3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
