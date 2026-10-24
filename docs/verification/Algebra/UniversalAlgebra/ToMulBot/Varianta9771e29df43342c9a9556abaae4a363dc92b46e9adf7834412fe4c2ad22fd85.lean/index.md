# Verification target: GRWTSK.Algebra.UniversalAlgebra.ToMulBot.Varianta9771e29df43342c9a9556abaae4a363dc92b46e9adf7834412fe4c2ad22fd85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c41641fd0bb4f8f3d840694bd97af05b55dc1aa0",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/ToMulBot/Varianta9771e29df43342c9a9556abaae4a363dc92b46e9adf7834412fe4c2ad22fd85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Varianta9771e29df43342c9a9556abaae4a363dc92b46e9adf7834412fe4c2ad22fd85.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Varianta9771e29df43342c9a9556abaae4a363dc92b46e9adf7834412fe4c2ad22fd85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c41641fd0bb4f8f3d840694bd97af05b55dc1aa0`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/ToMulBot/Varianta9771e29df43342c9a9556abaae4a363dc92b46e9adf7834412fe4c2ad22fd85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/ToMulBot/Varianta9771e29df43342c9a9556abaae4a363dc92b46e9adf7834412fe4c2ad22fd85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.WithZero` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.WithTop` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.TypeTags` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toMulBot](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Varianta9771e29df43342c9a9556abaae4a363dc92b46e9adf7834412fe4c2ad22fd85.lean/declarations/tomulbot--6e98b8af906ccaf167105346.md) | 36 | `declaration-track:6e98b8af906ccaf16710534699bc6679ac30792249445fa90b34f99baf63e1e1` |
| 2 | `theorem` | [toMulBot_zero](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Varianta9771e29df43342c9a9556abaae4a363dc92b46e9adf7834412fe4c2ad22fd85.lean/declarations/tomulbot-zero--bfdc24ccbc9804388d8d3e5a.md) | 41 | `result-track:bfdc24ccbc9804388d8d3e5aa9be726013da2e8c1e442164ec7801c5846d152f` |
| 3 | `theorem` | [toMulBot_coe](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Varianta9771e29df43342c9a9556abaae4a363dc92b46e9adf7834412fe4c2ad22fd85.lean/declarations/tomulbot-coe--3a8691c065c6785af269049d.md) | 46 | `result-track:3a8691c065c6785af269049d361b59dbdd847fde49e80c5d5c468022bb7f7dd6` |
| 4 | `theorem` | [toMulBot_symm_bot](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Varianta9771e29df43342c9a9556abaae4a363dc92b46e9adf7834412fe4c2ad22fd85.lean/declarations/tomulbot-symm-bot--44bcc409beb4afbe9059a86e.md) | 52 | `result-track:44bcc409beb4afbe9059a86efe185a506979002d9436b957fcf48e175365525a` |
| 5 | `theorem` | [toMulBot_coe_ofAdd](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Varianta9771e29df43342c9a9556abaae4a363dc92b46e9adf7834412fe4c2ad22fd85.lean/declarations/tomulbot-coe-ofadd--2f4d86bd75421302cdf6269b.md) | 57 | `result-track:2f4d86bd75421302cdf6269be66f3724a7de486d15dfd1c3d8f1533ee5935876` |
| 6 | `theorem` | [toMulBot_strictMono](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Varianta9771e29df43342c9a9556abaae4a363dc92b46e9adf7834412fe4c2ad22fd85.lean/declarations/tomulbot-strictmono--b1b6613ebcfcb15e14f49589.md) | 64 | `result-track:b1b6613ebcfcb15e14f49589a589d61ac91c8caac323269b3197a5b3db0345b4` |
| 7 | `theorem` | [toMulBot_le](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Varianta9771e29df43342c9a9556abaae4a363dc92b46e9adf7834412fe4c2ad22fd85.lean/declarations/tomulbot-le--b081b354792d8bc5c4caac49.md) | 68 | `result-track:b081b354792d8bc5c4caac49d65a78cc31d9ac2b4ab7fd657c6fee8dcdb84bb1` |
| 8 | `theorem` | [toMulBot_lt](../../../../../mathematics/Algebra/UniversalAlgebra/ToMulBot/Varianta9771e29df43342c9a9556abaae4a363dc92b46e9adf7834412fe4c2ad22fd85.lean/declarations/tomulbot-lt--0b04b50ed1033f22f5040298.md) | 73 | `result-track:0b04b50ed1033f22f5040298666875abf0273e44f48179d455412e588860cc75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
