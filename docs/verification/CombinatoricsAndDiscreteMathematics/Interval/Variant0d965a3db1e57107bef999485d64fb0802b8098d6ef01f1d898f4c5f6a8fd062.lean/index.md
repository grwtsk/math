# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Interval.Variant0d965a3db1e57107bef999485d64fb0802b8098d6ef01f1d898f4c5f6a8fd062

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d27c972752373fe3cb1ca4858f59fc9ae5f377b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant0d965a3db1e57107bef999485d64fb0802b8098d6ef01f1d898f4c5f6a8fd062.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant0d965a3db1e57107bef999485d64fb0802b8098d6ef01f1d898f4c5f6a8fd062.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant0d965a3db1e57107bef999485d64fb0802b8098d6ef01f1d898f4c5f6a8fd062.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d27c972752373fe3cb1ca4858f59fc9ae5f377b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant0d965a3db1e57107bef999485d64fb0802b8098d6ef01f1d898f4c5f6a8fd062.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Interval/Variant0d965a3db1e57107bef999485d64fb0802b8098d6ef01f1d898f4c5f6a8fd062.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instLocallyFiniteOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant0d965a3db1e57107bef999485d64fb0802b8098d6ef01f1d898f4c5f6a8fd062.lean/declarations/instlocallyfiniteorder--0ad1ef52dd078b51dd8d623e.md) | 50 | `declaration-track:0ad1ef52dd078b51dd8d623e4d2a5a1bb7b31645017816b32cb70c69b85bba5d` |
| 2 | `theorem` | [Icc_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant0d965a3db1e57107bef999485d64fb0802b8098d6ef01f1d898f4c5f6a8fd062.lean/declarations/icc-eq--a347ac1504cf5c98314b4e9b.md) | 56 | `result-track:a347ac1504cf5c98314b4e9b72e33818bd42b83c208999ff2ab709198c39e8bd` |
| 3 | `theorem` | [uIcc_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant0d965a3db1e57107bef999485d64fb0802b8098d6ef01f1d898f4c5f6a8fd062.lean/declarations/uicc-eq--4537dca7b2829c1e8998006a.md) | 61 | `result-track:4537dca7b2829c1e8998006aac4f66c226e9b45b1d92ee3fa10e2836c8bfb906` |
| 4 | `theorem` | [card_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant0d965a3db1e57107bef999485d64fb0802b8098d6ef01f1d898f4c5f6a8fd062.lean/declarations/card-icc--8263ab9756e4d2f0f6ce6161.md) | 66 | `result-track:8263ab9756e4d2f0f6ce61618317dfb2b79b4873396fb7ea0ff83bddde7d9b02` |
| 5 | `theorem` | [card_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant0d965a3db1e57107bef999485d64fb0802b8098d6ef01f1d898f4c5f6a8fd062.lean/declarations/card-ico--6ec2307947829f24a17ff2ec.md) | 71 | `result-track:6ec2307947829f24a17ff2ecfb07a7a89678c7378fa63323ed5f1ec0f1d30d1e` |
| 6 | `theorem` | [card_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant0d965a3db1e57107bef999485d64fb0802b8098d6ef01f1d898f4c5f6a8fd062.lean/declarations/card-ioc--d0621b207a85e90adb7f429d.md) | 75 | `result-track:d0621b207a85e90adb7f429d11939fa1a00e0dd3dae33735b548f774328d3de1` |
| 7 | `theorem` | [card_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant0d965a3db1e57107bef999485d64fb0802b8098d6ef01f1d898f4c5f6a8fd062.lean/declarations/card-ioo--b9c2c93fb03d5e6d2663be94.md) | 79 | `result-track:b9c2c93fb03d5e6d2663be94ba1f7ee3c6ab24d430967ececabc92a8193972ee` |
| 8 | `theorem` | [card_uIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant0d965a3db1e57107bef999485d64fb0802b8098d6ef01f1d898f4c5f6a8fd062.lean/declarations/card-uicc--ccfa0df988f2d2d639cd59d5.md) | 83 | `result-track:ccfa0df988f2d2d639cd59d594024752e1536d4bb82bdcd45f3941cb224095f7` |
| 9 | `theorem` | [card_Iic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant0d965a3db1e57107bef999485d64fb0802b8098d6ef01f1d898f4c5f6a8fd062.lean/declarations/card-iic--3945ba95bd50a1a75abac150.md) | 88 | `result-track:3945ba95bd50a1a75abac150d46fb471e529cc8905ecd9a180cf50373135e81b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
