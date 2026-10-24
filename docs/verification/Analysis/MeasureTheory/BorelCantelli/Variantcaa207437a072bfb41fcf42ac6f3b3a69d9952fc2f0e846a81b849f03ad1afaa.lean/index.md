# Verification target: GRWTSK.Analysis.MeasureTheory.BorelCantelli.Variantcaa207437a072bfb41fcf42ac6f3b3a69d9952fc2f0e846a81b849f03ad1afaa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc98ab1ba7490e5190cb81a39d601285b1ab12f0",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/BorelCantelli/Variantcaa207437a072bfb41fcf42ac6f3b3a69d9952fc2f0e846a81b849f03ad1afaa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/BorelCantelli/Variantcaa207437a072bfb41fcf42ac6f3b3a69d9952fc2f0e846a81b849f03ad1afaa.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/BorelCantelli/Variantcaa207437a072bfb41fcf42ac6f3b3a69d9952fc2f0e846a81b849f03ad1afaa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc98ab1ba7490e5190cb81a39d601285b1ab12f0`.

Source path: `GRWTSK/Analysis/MeasureTheory/BorelCantelli/Variantcaa207437a072bfb41fcf42ac6f3b3a69d9952fc2f0e846a81b849f03ad1afaa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/BorelCantelli/Variantcaa207437a072bfb41fcf42ac6f3b3a69d9952fc2f0e846a81b849f03ad1afaa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.OuterMeasure.AE` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measure_limsup_cofinite_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/BorelCantelli/Variantcaa207437a072bfb41fcf42ac6f3b3a69d9952fc2f0e846a81b849f03ad1afaa.lean/declarations/measure-limsup-cofinite-eq-zero--713274e1929196a8ff6e2a3e.md) | 49 | `result-track:713274e1929196a8ff6e2a3e368b0426d68467fa27aac811549f05ccb95bef1b` |
| 2 | `theorem` | [measure_limsup_atTop_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/BorelCantelli/Variantcaa207437a072bfb41fcf42ac6f3b3a69d9952fc2f0e846a81b849f03ad1afaa.lean/declarations/measure-limsup-attop-eq-zero--b1237c3b56f2846b3016b12e.md) | 66 | `result-track:b1237c3b56f2846b3016b12ea76938b51210bacb3c6ccc38a865b9b3dde12657` |
| 3 | `theorem` | [ae_finite_setOf_mem](../../../../../mathematics/Analysis/MeasureTheory/BorelCantelli/Variantcaa207437a072bfb41fcf42ac6f3b3a69d9952fc2f0e846a81b849f03ad1afaa.lean/declarations/ae-finite-setof-mem--c6f28e99a63206d1559e4f1b.md) | 74 | `result-track:c6f28e99a63206d1559e4f1b00de7deeeedb06803de8f2081314df91f245bb24` |
| 4 | `theorem` | [measure_setOf_frequently_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/BorelCantelli/Variantcaa207437a072bfb41fcf42ac6f3b3a69d9952fc2f0e846a81b849f03ad1afaa.lean/declarations/measure-setof-frequently-eq-zero--cb2838ba073167b5f422de71.md) | 83 | `result-track:cb2838ba073167b5f422de7125d20769222ca99f40b716a577897923395db92e` |
| 5 | `theorem` | [ae_eventually_notMem](../../../../../mathematics/Analysis/MeasureTheory/BorelCantelli/Variantcaa207437a072bfb41fcf42ac6f3b3a69d9952fc2f0e846a81b849f03ad1afaa.lean/declarations/ae-eventually-notmem--d7f5335d38834240e5b0f1d6.md) | 90 | `result-track:d7f5335d38834240e5b0f1d656673a1952a21b43370620aea7029141152065c2` |
| 6 | `theorem` | [measure_liminf_cofinite_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/BorelCantelli/Variantcaa207437a072bfb41fcf42ac6f3b3a69d9952fc2f0e846a81b849f03ad1afaa.lean/declarations/measure-liminf-cofinite-eq-zero--4139f568d580b333d9e075a8.md) | 96 | `result-track:4139f568d580b333d9e075a8ddc4a57d09091b979db31d848682b75405bf3d9c` |
| 7 | `theorem` | [measure_liminf_atTop_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/BorelCantelli/Variantcaa207437a072bfb41fcf42ac6f3b3a69d9952fc2f0e846a81b849f03ad1afaa.lean/declarations/measure-liminf-attop-eq-zero--ea88952268e4b057d05995d9.md) | 101 | `result-track:ea88952268e4b057d05995d9175f07ce3982ed5cf48518351ee7947870c38974` |
| 8 | `theorem` | [limsup_ae_eq_of_forall_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/BorelCantelli/Variantcaa207437a072bfb41fcf42ac6f3b3a69d9952fc2f0e846a81b849f03ad1afaa.lean/declarations/limsup-ae-eq-of-forall-ae-eq--f2c252006b9fc0c245f0576b.md) | 107 | `result-track:f2c252006b9fc0c245f0576bd449fed9554e7a970b7d638e1179c8c42a177a0f` |
| 9 | `theorem` | [liminf_ae_eq_of_forall_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/BorelCantelli/Variantcaa207437a072bfb41fcf42ac6f3b3a69d9952fc2f0e846a81b849f03ad1afaa.lean/declarations/liminf-ae-eq-of-forall-ae-eq--b6c8ccacd1d29fb9d6a40873.md) | 114 | `result-track:b6c8ccacd1d29fb9d6a40873a86eadd571972094a97b2240b5dd8cdb7d40a121` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
