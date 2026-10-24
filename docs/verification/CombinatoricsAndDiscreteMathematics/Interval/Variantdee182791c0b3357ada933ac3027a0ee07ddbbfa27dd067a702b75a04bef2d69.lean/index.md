# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Interval.Variantdee182791c0b3357ada933ac3027a0ee07ddbbfa27dd067a702b75a04bef2d69

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d860fb0b082b4e0b27717d296ecec336366e6d12",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variantdee182791c0b3357ada933ac3027a0ee07ddbbfa27dd067a702b75a04bef2d69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdee182791c0b3357ada933ac3027a0ee07ddbbfa27dd067a702b75a04bef2d69.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdee182791c0b3357ada933ac3027a0ee07ddbbfa27dd067a702b75a04bef2d69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d860fb0b082b4e0b27717d296ecec336366e6d12`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variantdee182791c0b3357ada933ac3027a0ee07ddbbfa27dd067a702b75a04bef2d69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Interval/Variantdee182791c0b3357ada933ac3027a0ee07ddbbfa27dd067a702b75a04bef2d69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.DFinsupp.Interval` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Multiset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Lattice` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instLocallyFiniteOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdee182791c0b3357ada933ac3027a0ee07ddbbfa27dd067a702b75a04bef2d69.lean/declarations/instlocallyfiniteorder--b6390978f25f5a194585d656.md) | 45 | `declaration-track:b6390978f25f5a194585d656a398e2a3b80153962a47746117c211989f7df214` |
| 2 | `theorem` | [Icc_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdee182791c0b3357ada933ac3027a0ee07ddbbfa27dd067a702b75a04bef2d69.lean/declarations/icc-eq--ac6361c1902f69ba3c7bfb43.md) | 51 | `result-track:ac6361c1902f69ba3c7bfb437c0f78aa580b76cfcf159a64fbc159bae77ba021` |
| 3 | `theorem` | [uIcc_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdee182791c0b3357ada933ac3027a0ee07ddbbfa27dd067a702b75a04bef2d69.lean/declarations/uicc-eq--40b6712f8cade42f4601d28e.md) | 56 | `result-track:40b6712f8cade42f4601d28eec7a4df36b8b38a5ac6f06f8423dfb2a80763bc1` |
| 4 | `theorem` | [card_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdee182791c0b3357ada933ac3027a0ee07ddbbfa27dd067a702b75a04bef2d69.lean/declarations/card-icc--3b5b7b8a183d9193aad6bd6f.md) | 61 | `result-track:3b5b7b8a183d9193aad6bd6fc4d46d8cbc7c9686045319fb56e3199f1195692d` |
| 5 | `theorem` | [card_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdee182791c0b3357ada933ac3027a0ee07ddbbfa27dd067a702b75a04bef2d69.lean/declarations/card-ico--21781271dd2d8214cb7bb4e1.md) | 66 | `result-track:21781271dd2d8214cb7bb4e19c9f4486b6ddf8c0355982876904f89c8c330374` |
| 6 | `theorem` | [card_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdee182791c0b3357ada933ac3027a0ee07ddbbfa27dd067a702b75a04bef2d69.lean/declarations/card-ioc--594fe92d889a6ea1f0eca31e.md) | 70 | `result-track:594fe92d889a6ea1f0eca31e6e920f1251869c3925b9a208992b51e65bd8aa46` |
| 7 | `theorem` | [card_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdee182791c0b3357ada933ac3027a0ee07ddbbfa27dd067a702b75a04bef2d69.lean/declarations/card-ioo--0c4c9444510d608c29cf9a27.md) | 74 | `result-track:0c4c9444510d608c29cf9a27065e57df32b227c8b9abbc35a9dde886d0e73515` |
| 8 | `theorem` | [card_uIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdee182791c0b3357ada933ac3027a0ee07ddbbfa27dd067a702b75a04bef2d69.lean/declarations/card-uicc--ede52c81c9e821ae26bc84b2.md) | 78 | `result-track:ede52c81c9e821ae26bc84b2e544061f6050edaebe0e14264e7f15af8ede6ca6` |
| 9 | `theorem` | [card_Iic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variantdee182791c0b3357ada933ac3027a0ee07ddbbfa27dd067a702b75a04bef2d69.lean/declarations/card-iic--1d80b8e1c3c33cace8f2a990.md) | 83 | `result-track:1d80b8e1c3c33cace8f2a990643bf6545e992a591ec903d0d46c5eaf0930ad8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
