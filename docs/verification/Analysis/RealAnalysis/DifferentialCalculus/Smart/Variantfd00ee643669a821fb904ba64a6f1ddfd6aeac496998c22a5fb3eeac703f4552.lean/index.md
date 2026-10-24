# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Smart.Variantfd00ee643669a821fb904ba64a6f1ddfd6aeac496998c22a5fb3eeac703f4552

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b90eb9080a8009f35dc347d504f36f46b6c4cdfd",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Smart/Variantfd00ee643669a821fb904ba64a6f1ddfd6aeac496998c22a5fb3eeac703f4552.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Smart/Variantfd00ee643669a821fb904ba64a6f1ddfd6aeac496998c22a5fb3eeac703f4552.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Smart/Variantfd00ee643669a821fb904ba64a6f1ddfd6aeac496998c22a5fb3eeac703f4552.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b90eb9080a8009f35dc347d504f36f46b6c4cdfd`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Smart/Variantfd00ee643669a821fb904ba64a6f1ddfd6aeac496998c22a5fb3eeac703f4552.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Smart/Variantfd00ee643669a821fb904ba64a6f1ddfd6aeac496998c22a5fb3eeac703f4552.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Validity.Bounds.Core` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.AD` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [checkLowerBoundSmart](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Smart/Variantfd00ee643669a821fb904ba64a6f1ddfd6aeac496998c22a5fb3eeac703f4552.lean/declarations/checklowerboundsmart--72966f5f11278771847aacf2.md) | 51 | `declaration-track:72966f5f11278771847aacf200dc4c6b14a8e31a6609514f2a66e8325bec83fd` |
| 2 | `def` | [checkUpperBoundSmart](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Smart/Variantfd00ee643669a821fb904ba64a6f1ddfd6aeac496998c22a5fb3eeac703f4552.lean/declarations/checkupperboundsmart--a80fbccf7fb12aea3b527a3c.md) | 74 | `declaration-track:a80fbccf7fb12aea3b527a3cfd15f3ee577f13c3f045d29cb35c447bb824df74` |
| 3 | `theorem` | [increasing_min_at_left_core](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Smart/Variantfd00ee643669a821fb904ba64a6f1ddfd6aeac496998c22a5fb3eeac703f4552.lean/declarations/increasing-min-at-left-core--49647e9317163703414c64dd.md) | 92 | `result-track:49647e9317163703414c64dd2d99f4b65b7402fdc486714631394cde76021810` |
| 4 | `theorem` | [decreasing_min_at_right_core](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Smart/Variantfd00ee643669a821fb904ba64a6f1ddfd6aeac496998c22a5fb3eeac703f4552.lean/declarations/decreasing-min-at-right-core--24338ef520c566141d0cd61b.md) | 135 | `result-track:24338ef520c566141d0cd61bbd3c89c08be8fd5a7351dfe60b35fd14a411257d` |
| 5 | `theorem` | [verify_lower_bound_smart](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Smart/Variantfd00ee643669a821fb904ba64a6f1ddfd6aeac496998c22a5fb3eeac703f4552.lean/declarations/verify-lower-bound-smart--bf3cc342ce365d33fe1b95aa.md) | 171 | `result-track:bf3cc342ce365d33fe1b95aa0e3aba53f91be129af123847ef99d3107f7479fe` |
| 6 | `theorem` | [increasing_max_at_right_core](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Smart/Variantfd00ee643669a821fb904ba64a6f1ddfd6aeac496998c22a5fb3eeac703f4552.lean/declarations/increasing-max-at-right-core--91bcfba3b821ea2405ee9e99.md) | 220 | `result-track:91bcfba3b821ea2405ee9e99f7bb83761133e4ed7f5a7ce7d1d4f6b9fe94d951` |
| 7 | `theorem` | [decreasing_max_at_left_core](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Smart/Variantfd00ee643669a821fb904ba64a6f1ddfd6aeac496998c22a5fb3eeac703f4552.lean/declarations/decreasing-max-at-left-core--e535e58e322148d0f40fd07f.md) | 256 | `result-track:e535e58e322148d0f40fd07fb8e7255746f75ab064b465b265a72f1c2db850e7` |
| 8 | `theorem` | [verify_upper_bound_smart](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Smart/Variantfd00ee643669a821fb904ba64a6f1ddfd6aeac496998c22a5fb3eeac703f4552.lean/declarations/verify-upper-bound-smart--0fa73633e9b06e4e66878fd6.md) | 292 | `result-track:0fa73633e9b06e4e66878fd65f6f560f62310e773b86298ce4cfef3e759ac8d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
