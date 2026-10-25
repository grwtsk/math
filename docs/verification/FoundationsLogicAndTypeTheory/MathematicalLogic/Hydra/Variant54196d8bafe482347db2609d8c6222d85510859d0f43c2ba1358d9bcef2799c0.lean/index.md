# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Hydra.Variant54196d8bafe482347db2609d8c6222d85510859d0f43c2ba1358d9bcef2799c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0cb9ad258153123782c61fc703ac48dd44f64e8",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant54196d8bafe482347db2609d8c6222d85510859d0f43c2ba1358d9bcef2799c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant54196d8bafe482347db2609d8c6222d85510859d0f43c2ba1358d9bcef2799c0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant54196d8bafe482347db2609d8c6222d85510859d0f43c2ba1358d9bcef2799c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0cb9ad258153123782c61fc703ac48dd44f64e8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant54196d8bafe482347db2609d8c6222d85510859d0f43c2ba1358d9bcef2799c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant54196d8bafe482347db2609d8c6222d85510859d0f43c2ba1358d9bcef2799c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Lex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Multiset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.GameAdd` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CutExpand](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant54196d8bafe482347db2609d8c6222d85510859d0f43c2ba1358d9bcef2799c0.lean/declarations/cutexpand--f31835795daceb12ccf1d71e.md) | 56 | `declaration-track:f31835795daceb12ccf1d71eb151cacbb91ab3660c80c00d61e39ce058d2791d` |
| 2 | `theorem` | [cutExpand_le_invImage_lex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant54196d8bafe482347db2609d8c6222d85510859d0f43c2ba1358d9bcef2799c0.lean/declarations/cutexpand-le-invimage-lex--1d765755389a9a04d74bee8b.md) | 62 | `result-track:1d765755389a9a04d74bee8b15bd73515d0150ae55e88c8e69d75e5ae75e9314` |
| 3 | `theorem` | [cutExpand_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant54196d8bafe482347db2609d8c6222d85510859d0f43c2ba1358d9bcef2799c0.lean/declarations/cutexpand-singleton--607ad5e2175e582f76c262b9.md) | 77 | `result-track:607ad5e2175e582f76c262b9d602be57a1b049499d63e536b88b03b780926f38` |
| 4 | `theorem` | [cutExpand_singleton_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant54196d8bafe482347db2609d8c6222d85510859d0f43c2ba1358d9bcef2799c0.lean/declarations/cutexpand-singleton-singleton--795f73f7038ebba1516a4f28.md) | 81 | `result-track:795f73f7038ebba1516a4f2817c43a3128c9b63d09ad88743fd6205d93be0e39` |
| 5 | `theorem` | [cutExpand_add_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant54196d8bafe482347db2609d8c6222d85510859d0f43c2ba1358d9bcef2799c0.lean/declarations/cutexpand-add-left--3e3c98f16fb978dd34c1ffa8.md) | 85 | `result-track:3e3c98f16fb978dd34c1ffa899dc120046e4506738ef59df6475d790781ef553` |
| 6 | `theorem` | [cutExpand_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant54196d8bafe482347db2609d8c6222d85510859d0f43c2ba1358d9bcef2799c0.lean/declarations/cutexpand-iff--241c730384ed249a29f0bdfe.md) | 89 | `result-track:241c730384ed249a29f0bdfed28c8a708ad518bd775c71ba731884c0ebe88f98` |
| 7 | `theorem` | [not_cutExpand_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant54196d8bafe482347db2609d8c6222d85510859d0f43c2ba1358d9bcef2799c0.lean/declarations/not-cutexpand-zero--f090316193def75bf0e867da.md) | 101 | `result-track:f090316193def75bf0e867da9ec73774977463dc5cc335983a94be06fd187219` |
| 8 | `theorem` | [cutExpand_fibration](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant54196d8bafe482347db2609d8c6222d85510859d0f43c2ba1358d9bcef2799c0.lean/declarations/cutexpand-fibration--a48d3a53499b4ec1bef80a97.md) | 109 | `result-track:a48d3a53499b4ec1bef80a97416adf6c6ab54a57e0481b11f79c99b68f7d2d92` |
| 9 | `theorem` | [acc_of_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant54196d8bafe482347db2609d8c6222d85510859d0f43c2ba1358d9bcef2799c0.lean/declarations/acc-of-singleton--abcaec782c42a65fd880c254.md) | 129 | `result-track:abcaec782c42a65fd880c254e7bb8381926f9bddc9e81e76d107efe954b625d8` |
| 10 | `theorem` | [_root_.Acc.cutExpand](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant54196d8bafe482347db2609d8c6222d85510859d0f43c2ba1358d9bcef2799c0.lean/declarations/root-acc-cutexpand--f5fa4a6bcac7a2f1a559efa5.md) | 141 | `result-track:f5fa4a6bcac7a2f1a559efa5f7154b5c8cd21706a405872d7b94b3f12e3bb8a6` |
| 11 | `theorem` | [_root_.WellFounded.cutExpand](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant54196d8bafe482347db2609d8c6222d85510859d0f43c2ba1358d9bcef2799c0.lean/declarations/root-wellfounded-cutexpand--61a0c71fb749effd74dd1055.md) | 153 | `result-track:61a0c71fb749effd74dd105589eaef7c904a7017179bcce1cdf22f195f522e04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
