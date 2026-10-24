# Verification target: GRWTSK.Analysis.BlaschkeFloor.Variant2ae3f902dce346a1fa1ca03b66dd02324f093c7f5234f76f5090a847d7caf79e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc4c93b196aa94d5ebc5a37c8f2d0a8780ea63b0",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/BlaschkeFloor/Variant2ae3f902dce346a1fa1ca03b66dd02324f093c7f5234f76f5090a847d7caf79e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/BlaschkeFloor/Variant2ae3f902dce346a1fa1ca03b66dd02324f093c7f5234f76f5090a847d7caf79e.lean/index.md) · [Full source](../../../../mathematics/Analysis/BlaschkeFloor/Variant2ae3f902dce346a1fa1ca03b66dd02324f093c7f5234f76f5090a847d7caf79e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc4c93b196aa94d5ebc5a37c8f2d0a8780ea63b0`.

Source path: `GRWTSK/Analysis/BlaschkeFloor/Variant2ae3f902dce346a1fa1ca03b66dd02324f093c7f5234f76f5090a847d7caf79e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/BlaschkeFloor/Variant2ae3f902dce346a1fa1ca03b66dd02324f093c7f5234f76f5090a847d7caf79e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Norm` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [blaschkeAtOne](../../../../mathematics/Analysis/BlaschkeFloor/Variant2ae3f902dce346a1fa1ca03b66dd02324f093c7f5234f76f5090a847d7caf79e.lean/declarations/blaschkeatone--925365b0654d6fb2821e20db.md) | 9 | `declaration-track:925365b0654d6fb2821e20db723632454eb2432dd9bce29d81a6e95858280902` |
| 2 | `theorem` | [reference_denominator_ne_zero](../../../../mathematics/Analysis/BlaschkeFloor/Variant2ae3f902dce346a1fa1ca03b66dd02324f093c7f5234f76f5090a847d7caf79e.lean/declarations/reference-denominator-ne-zero--0302c1f1081d7cb2d6e0aff7.md) | 12 | `result-track:0302c1f1081d7cb2d6e0aff7017add7c458881dd4856f8f1ce425e1af928f71e` |
| 3 | `theorem` | [reference_denominator_normSq](../../../../mathematics/Analysis/BlaschkeFloor/Variant2ae3f902dce346a1fa1ca03b66dd02324f093c7f5234f76f5090a847d7caf79e.lean/declarations/reference-denominator-normsq--c00b91e8a72c1a1adc8b4412.md) | 20 | `result-track:c00b91e8a72c1a1adc8b4412b95ab5a960ea41b732714d1212437e5af56c0906` |
| 4 | `theorem` | [blaschke_deficit](../../../../mathematics/Analysis/BlaschkeFloor/Variant2ae3f902dce346a1fa1ca03b66dd02324f093c7f5234f76f5090a847d7caf79e.lean/declarations/blaschke-deficit--f122e666fe271395304ef008.md) | 27 | `result-track:f122e666fe271395304ef008f51122f2164f96694dec4ed498c63998f233000e` |
| 5 | `theorem` | [factor_deficit_lower](../../../../mathematics/Analysis/BlaschkeFloor/Variant2ae3f902dce346a1fa1ca03b66dd02324f093c7f5234f76f5090a847d7caf79e.lean/declarations/factor-deficit-lower--4d7cb1b7ceb13515b06b3b71.md) | 39 | `result-track:4d7cb1b7ceb13515b06b3b7148ceccddb4541a8cfaff8b156b2d10af3e481311` |
| 6 | `theorem` | [blaschke_floor_pos](../../../../mathematics/Analysis/BlaschkeFloor/Variant2ae3f902dce346a1fa1ca03b66dd02324f093c7f5234f76f5090a847d7caf79e.lean/declarations/blaschke-floor-pos--8f15511c72fdbcac9eb00a5c.md) | 47 | `result-track:8f15511c72fdbcac9eb00a5c1eb4d2268d4d6d92100a944cc357cd184b513b46` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
