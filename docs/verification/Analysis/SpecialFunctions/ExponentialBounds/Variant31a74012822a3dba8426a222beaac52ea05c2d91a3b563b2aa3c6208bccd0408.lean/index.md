# Verification target: GRWTSK.Analysis.SpecialFunctions.ExponentialBounds.Variant31a74012822a3dba8426a222beaac52ea05c2d91a3b563b2aa3c6208bccd0408

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4800b9bf954dc197ec767459bedc51fcd5e9c58",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/ExponentialBounds/Variant31a74012822a3dba8426a222beaac52ea05c2d91a3b563b2aa3c6208bccd0408.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/ExponentialBounds/Variant31a74012822a3dba8426a222beaac52ea05c2d91a3b563b2aa3c6208bccd0408.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/ExponentialBounds/Variant31a74012822a3dba8426a222beaac52ea05c2d91a3b563b2aa3c6208bccd0408.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4800b9bf954dc197ec767459bedc51fcd5e9c58`.

Source path: `GRWTSK/Analysis/SpecialFunctions/ExponentialBounds/Variant31a74012822a3dba8426a222beaac52ea05c2d91a3b563b2aa3c6208bccd0408.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/ExponentialBounds/Variant31a74012822a3dba8426a222beaac52ea05c2d91a3b563b2aa3c6208bccd0408.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Complex.Exponential` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exp_one_near_10](../../../../../mathematics/Analysis/SpecialFunctions/ExponentialBounds/Variant31a74012822a3dba8426a222beaac52ea05c2d91a3b563b2aa3c6208bccd0408.lean/declarations/exp-one-near-10--bc6550b47c0ec335c87253ea.md) | 26 | `result-track:bc6550b47c0ec335c87253ea4d77a85023a32f24fb6e5f97ae63848bff9ce822` |
| 2 | `theorem` | [exp_one_near_20](../../../../../mathematics/Analysis/SpecialFunctions/ExponentialBounds/Variant31a74012822a3dba8426a222beaac52ea05c2d91a3b563b2aa3c6208bccd0408.lean/declarations/exp-one-near-20--768960560065001e200d50a6.md) | 33 | `result-track:768960560065001e200d50a644dd4ef39b55d25c8b448a8d34f99faec799241c` |
| 3 | `theorem` | [exp_one_gt_d9](../../../../../mathematics/Analysis/SpecialFunctions/ExponentialBounds/Variant31a74012822a3dba8426a222beaac52ea05c2d91a3b563b2aa3c6208bccd0408.lean/declarations/exp-one-gt-d9--d7fabf18e53e500405c0e138.md) | 40 | `result-track:d7fabf18e53e500405c0e1388e9f5de378c381f456596b94f79408e04e6bca6c` |
| 4 | `theorem` | [exp_one_lt_d9](../../../../../mathematics/Analysis/SpecialFunctions/ExponentialBounds/Variant31a74012822a3dba8426a222beaac52ea05c2d91a3b563b2aa3c6208bccd0408.lean/declarations/exp-one-lt-d9--11e385919fa681b3b9bba988.md) | 43 | `result-track:11e385919fa681b3b9bba9886ba6d32285f597c57f57908c768369c550e3d668` |
| 5 | `theorem` | [exp_neg_one_gt_d9](../../../../../mathematics/Analysis/SpecialFunctions/ExponentialBounds/Variant31a74012822a3dba8426a222beaac52ea05c2d91a3b563b2aa3c6208bccd0408.lean/declarations/exp-neg-one-gt-d9--ec00664ba84cee1089964916.md) | 46 | `result-track:ec00664ba84cee10899649166678a4bbc903c607bedccd35016d1b6ff594e941` |
| 6 | `theorem` | [exp_neg_one_lt_d9](../../../../../mathematics/Analysis/SpecialFunctions/ExponentialBounds/Variant31a74012822a3dba8426a222beaac52ea05c2d91a3b563b2aa3c6208bccd0408.lean/declarations/exp-neg-one-lt-d9--005587000dc6830bc6712b5f.md) | 52 | `result-track:005587000dc6830bc6712b5fbd12a60e0985bc2889e4b324f11e993c4bd13c83` |
| 7 | `theorem` | [log_two_near_10](../../../../../mathematics/Analysis/SpecialFunctions/ExponentialBounds/Variant31a74012822a3dba8426a222beaac52ea05c2d91a3b563b2aa3c6208bccd0408.lean/declarations/log-two-near-10--670e031846580a563c495396.md) | 56 | `result-track:670e031846580a563c495396d7990597a098ee71b30857d8d2ff3410a270cfb3` |
| 8 | `theorem` | [log_two_gt_d9](../../../../../mathematics/Analysis/SpecialFunctions/ExponentialBounds/Variant31a74012822a3dba8426a222beaac52ea05c2d91a3b563b2aa3c6208bccd0408.lean/declarations/log-two-gt-d9--406ed144f93838e04c897294.md) | 70 | `result-track:406ed144f93838e04c8972947351396144f0a388b021ffcabf0f204ce1d6d165` |
| 9 | `theorem` | [log_two_lt_d9](../../../../../mathematics/Analysis/SpecialFunctions/ExponentialBounds/Variant31a74012822a3dba8426a222beaac52ea05c2d91a3b563b2aa3c6208bccd0408.lean/declarations/log-two-lt-d9--03769b97011981b338202329.md) | 73 | `result-track:03769b97011981b3382023290c8df23446e804fa6686d4cc08dc3a8b9d16e859` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
