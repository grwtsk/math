# Verification target: GRWTSK.NumberTheory.ContinuedFractions.SqrtTwoLogDigest

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b290af8fb37a5d76ce532c3567f7621d9c4527a5",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ContinuedFractions/SqrtTwoLogDigest.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/SqrtTwoLogDigest.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/SqrtTwoLogDigest.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b290af8fb37a5d76ce532c3567f7621d9c4527a5`.

Source path: `GRWTSK/NumberTheory/ContinuedFractions/SqrtTwoLogDigest.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ContinuedFractions/SqrtTwoLogDigest.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ContinuedFractions.ScheduledDenominators`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/index.md) — import line 10; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sqrtTwoPartialQuotient](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/SqrtTwoLogDigest.lean/declarations/sqrttwopartialquotient--4aebbac6704e4584c94a9247.md) | 36 | `declaration-track:4aebbac6704e4584c94a92472de7efd63d85cfd005f33e3ab979fe09dc7df692` |
| 2 | `def` | [sqrtTwoDenominator](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/SqrtTwoLogDigest.lean/declarations/sqrttwodenominator--81c08fe6658bfba0f4a029a8.md) | 39 | `declaration-track:81c08fe6658bfba0f4a029a8ec55748c23adac804cb3183384277bf825c1405d` |
| 3 | `theorem` | [sqrtTwoDenominator_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/SqrtTwoLogDigest.lean/declarations/sqrttwodenominator-zero--48d6d21438bedcc4241d36b7.md) | 42 | `result-track:48d6d21438bedcc4241d36b7f65b178a9c03f95ced42abc2afc1960464e7f965` |
| 4 | `theorem` | [sqrtTwoDenominator_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/SqrtTwoLogDigest.lean/declarations/sqrttwodenominator-one--2a82847151c01f790bae5fd3.md) | 43 | `result-track:2a82847151c01f790bae5fd378f49989b79573e4c76765bd70607880fb4c873c` |
| 5 | `theorem` | [sqrtTwoDenominator_recurrence](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/SqrtTwoLogDigest.lean/declarations/sqrttwodenominator-recurrence--27ef8f678ba8d893c2fc1f38.md) | 46 | `result-track:27ef8f678ba8d893c2fc1f385e1bebfa29f5a5c51741475f154213b6a13f64ca` |
| 6 | `theorem` | [sqrtTwoDenominator_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/SqrtTwoLogDigest.lean/declarations/sqrttwodenominator-pos--0701f7a731f18f8691a82833.md) | 51 | `result-track:0701f7a731f18f8691a8283367d0c640f302992180409a9c774750fcf9b3d92e` |
| 7 | `theorem` | [sqrtTwoDenominator_tendsto](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/SqrtTwoLogDigest.lean/declarations/sqrttwodenominator-tendsto--b5dfbd85065df14db84bf22c.md) | 55 | `result-track:b5dfbd85065df14db84bf22c2c6c9b63520d4b46042505a3ab6a3512392b8fe4` |
| 8 | `theorem` | [sqrtTwoDenominator_arithmeticExponent_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/SqrtTwoLogDigest.lean/declarations/sqrttwodenominator-arithmeticexponent-zero--55f74ea6abbb123a858367cc.md) | 61 | `result-track:55f74ea6abbb123a858367ccd08c414a6a611b7d2b70cd4987ade931fd876471` |
| 9 | `def` | [reciprocalStageWeight](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/SqrtTwoLogDigest.lean/declarations/reciprocalstageweight--48e17883d6971f4904d85156.md) | 81 | `declaration-track:48e17883d6971f4904d85156030ee917c4715741a04049a4bc152782a2759704` |
| 10 | `def` | [finiteLogDigest](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/SqrtTwoLogDigest.lean/declarations/finitelogdigest--6761216fa85199ebd8b5e3c5.md) | 86 | `declaration-track:6761216fa85199ebd8b5e3c5344cb4d686a3fd7554375c43696962862edb424c` |
| 11 | `theorem` | [finiteLogDigest_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/SqrtTwoLogDigest.lean/declarations/finitelogdigest-zero--9211d36b99d20d60278eda21.md) | 90 | `result-track:9211d36b99d20d60278eda215541f35e1eda1fa806c6836d6198c1275f48c7a6` |
| 12 | `theorem` | [finiteLogDigest_add](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/SqrtTwoLogDigest.lean/declarations/finitelogdigest-add--59d8141f102e81296c6a65da.md) | 95 | `result-track:59d8141f102e81296c6a65daafdc1b84b3237b217fc97e30eeaa14d0d409cc1e` |
| 13 | `def` | [finiteLogCorrelation](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/SqrtTwoLogDigest.lean/declarations/finitelogcorrelation--05e858b08f803761d622c20a.md) | 102 | `declaration-track:05e858b08f803761d622c20a1174b5b7580fc188e72d60a050934f5dd0a841d1` |
| 14 | `theorem` | [finiteLogCorrelation_zero_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/SqrtTwoLogDigest.lean/declarations/finitelogcorrelation-zero-right--7dba32e4af48d9384d1770d5.md) | 108 | `result-track:7dba32e4af48d9384d1770d5e0daa269ccaf084132622a96337664a140eb13a4` |
| 15 | `theorem` | [finiteLogCorrelation_add_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/SqrtTwoLogDigest.lean/declarations/finitelogcorrelation-add-right--080faff3d19df182f8a93138.md) | 114 | `result-track:080faff3d19df182f8a93138290ae8474f80f8390bcb3d3c7eeb09c7899beff9` |
| 16 | `def` | [harmonicNormalizer](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/SqrtTwoLogDigest.lean/declarations/harmonicnormalizer--b77457fd345f632c9c7c43a0.md) | 122 | `declaration-track:b77457fd345f632c9c7c43a098841b39cd760d0ce1b48c9349be71c188d5f57f` |
| 17 | `def` | [normalizedLogCorrelation](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/SqrtTwoLogDigest.lean/declarations/normalizedlogcorrelation--bd992a9e87eae0b9a9085e2d.md) | 127 | `declaration-track:bd992a9e87eae0b9a9085e2d271bf84e87740565e807f4e03362977f537e02fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
