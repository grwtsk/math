# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.SigmaTau.Variant3ebe831b5af49a964edf18133c0df3560dcc653e7962d99a7dc52141b9aa09bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a823e8b3ec483b0a394f02a6e0e1fcf8813d7bb1",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SigmaTau/Variant3ebe831b5af49a964edf18133c0df3560dcc653e7962d99a7dc52141b9aa09bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SigmaTau/Variant3ebe831b5af49a964edf18133c0df3560dcc653e7962d99a7dc52141b9aa09bf.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SigmaTau/Variant3ebe831b5af49a964edf18133c0df3560dcc653e7962d99a7dc52141b9aa09bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a823e8b3ec483b0a394f02a6e0e1fcf8813d7bb1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SigmaTau/Variant3ebe831b5af49a964edf18133c0df3560dcc653e7962d99a7dc52141b9aa09bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SigmaTau/Variant3ebe831b5af49a964edf18133c0df3560dcc653e7962d99a7dc52141b9aa09bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.NumberTheory.DivisorSum` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Divisors` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tau](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SigmaTau/Variant3ebe831b5af49a964edf18133c0df3560dcc653e7962d99a7dc52141b9aa09bf.lean/declarations/tau--eea8f4cb8b03f0bf3e345a39.md) | 16 | `declaration-track:eea8f4cb8b03f0bf3e345a39364358bf89951fd02cc575a058e989d344d96d43` |
| 2 | `def` | [sigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SigmaTau/Variant3ebe831b5af49a964edf18133c0df3560dcc653e7962d99a7dc52141b9aa09bf.lean/declarations/sigma--8db9460541445f39f77d0854.md) | 19 | `declaration-track:8db9460541445f39f77d085422ef3696cbd1c6d5bbe280f0cf483573a3686066` |
| 3 | `theorem` | [tau_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SigmaTau/Variant3ebe831b5af49a964edf18133c0df3560dcc653e7962d99a7dc52141b9aa09bf.lean/declarations/tau-one--52142a6e982676b8f1184365.md) | 22 | `result-track:52142a6e982676b8f11843652ff8002ee75c6a4ada09ee76718db48bce699601` |
| 4 | `theorem` | [sigma_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SigmaTau/Variant3ebe831b5af49a964edf18133c0df3560dcc653e7962d99a7dc52141b9aa09bf.lean/declarations/sigma-one--5883eb1e9b5ae41d212dce62.md) | 25 | `result-track:5883eb1e9b5ae41d212dce6290d6cd75d61124aa8670d8779a329e73c2b084ee` |
| 5 | `theorem` | [tau_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SigmaTau/Variant3ebe831b5af49a964edf18133c0df3560dcc653e7962d99a7dc52141b9aa09bf.lean/declarations/tau-prime--dda9308dabd4067dd726f958.md) | 28 | `result-track:dda9308dabd4067dd726f9588635a8d24da5614cdbed04596fbed1226544800a` |
| 6 | `theorem` | [sigma_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SigmaTau/Variant3ebe831b5af49a964edf18133c0df3560dcc653e7962d99a7dc52141b9aa09bf.lean/declarations/sigma-prime--a3b7c59701ad419913a6d908.md) | 35 | `result-track:a3b7c59701ad419913a6d9084a0b9ac12632d5283d56d0d30d07f4dab23a9a24` |
| 7 | `theorem` | [tau_prime_power](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SigmaTau/Variant3ebe831b5af49a964edf18133c0df3560dcc653e7962d99a7dc52141b9aa09bf.lean/declarations/tau-prime-power--21674b63a04155e2d0c4ae57.md) | 42 | `result-track:21674b63a04155e2d0c4ae5716fb6033324caf81dca9870cfa6a6505a6770818` |
| 8 | `theorem` | [sigma_prime_power](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SigmaTau/Variant3ebe831b5af49a964edf18133c0df3560dcc653e7962d99a7dc52141b9aa09bf.lean/declarations/sigma-prime-power--1fd55c54fb94f7ad19968856.md) | 48 | `result-track:1fd55c54fb94f7ad199688562933e8c1aa58d5ffa8c9745246e79e350b28de9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
