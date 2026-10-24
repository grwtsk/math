# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ULift.Variant1642adc0423d05a629c24addc7b3cb995ae34f9a3c90c19ae596c4beda7c62d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b726855be0958321e9f6d0612626fe20698e00b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant1642adc0423d05a629c24addc7b3cb995ae34f9a3c90c19ae596c4beda7c62d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant1642adc0423d05a629c24addc7b3cb995ae34f9a3c90c19ae596c4beda7c62d9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant1642adc0423d05a629c24addc7b3cb995ae34f9a3c90c19ae596c4beda7c62d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b726855be0958321e9f6d0612626fe20698e00b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant1642adc0423d05a629c24addc7b3cb995ae34f9a3c90c19ae596c4beda7c62d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant1642adc0423d05a629c24addc7b3cb995ae34f9a3c90c19ae596c4beda7c62d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Lemmas` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Monadic.Collect` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Monadic.Loop` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Monadic.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IterM.step_uLift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant1642adc0423d05a629c24addc7b3cb995ae34f9a3c90c19ae596c4beda7c62d9.lean/declarations/iterm-step-ulift--3fb5514fff5ab73aa39cd049.md) | 23 | `result-track:3fb5514fff5ab73aa39cd0495aca72e9bcf81e8f150cc2be3985e477861de94a` |
| 2 | `theorem` | [IterM.toList_uLift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant1642adc0423d05a629c24addc7b3cb995ae34f9a3c90c19ae596c4beda7c62d9.lean/declarations/iterm-tolist-ulift--c2e4b7f0aa687e83dff461c8.md) | 35 | `result-track:c2e4b7f0aa687e83dff461c85e4494c5fd557b511f456f29ce7418ca8ed848ad` |
| 3 | `theorem` | [IterM.toListRev_uLift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant1642adc0423d05a629c24addc7b3cb995ae34f9a3c90c19ae596c4beda7c62d9.lean/declarations/iterm-tolistrev-ulift--96f3a7e3dfdf1ae7a9a3ee35.md) | 51 | `result-track:96f3a7e3dfdf1ae7a9a3ee35e94f8727d27fc19e6e189f5b11c5d141e1d1a2e3` |
| 4 | `theorem` | [IterM.toArray_uLift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant1642adc0423d05a629c24addc7b3cb995ae34f9a3c90c19ae596c4beda7c62d9.lean/declarations/iterm-toarray-ulift--7016666752a320a18c957e98.md) | 61 | `result-track:7016666752a320a18c957e98168b8735b979846904889e65528aee3500b2c6a4` |
| 5 | `theorem` | [IterM.length_uLift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant1642adc0423d05a629c24addc7b3cb995ae34f9a3c90c19ae596c4beda7c62d9.lean/declarations/iterm-length-ulift--e40c9ddd70b3f8ffbbf54857.md) | 71 | `result-track:e40c9ddd70b3f8ffbbf548570d9f1718aec058ac36007a2aedae9baeda1bf294` |
| 6 | `def` | [IterM.count_uLift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variant1642adc0423d05a629c24addc7b3cb995ae34f9a3c90c19ae596c4beda7c62d9.lean/declarations/iterm-count-ulift--353dbfef748efc054f65146e.md) | 88 | `declaration-track:353dbfef748efc054f65146e96817991f6571c63f44866fcf7c6a3f053cccd2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
