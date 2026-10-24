# Verification target: GRWTSK.Analysis.SpecialFunctions.ExponentialFloorGap

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85008d082fb3322f496501cefaad022547c7c71e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/ExponentialFloorGap.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/SpecialFunctions/ExponentialFloorGap.lean/index.md) · [Full source](../../../../mathematics/Analysis/SpecialFunctions/ExponentialFloorGap.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85008d082fb3322f496501cefaad022547c7c71e`.

Source path: `GRWTSK/Analysis/SpecialFunctions/ExponentialFloorGap.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/ExponentialFloorGap.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Archimedean.Real.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Floor.Semiring` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [one_le_natFloor_exp](../../../../mathematics/Analysis/SpecialFunctions/ExponentialFloorGap.lean/declarations/one-le-natfloor-exp--1b14c2fa1fb5b8f5b1e1b213.md) | 29 | `result-track:1b14c2fa1fb5b8f5b1e1b21382ef64b9948ca2a8bdf21da67c8dbec121de7c6d` |
| 2 | `theorem` | [natFloor_exp_pos](../../../../mathematics/Analysis/SpecialFunctions/ExponentialFloorGap.lean/declarations/natfloor-exp-pos--da9e5475fbef34a220549d99.md) | 33 | `result-track:da9e5475fbef34a220549d99139ca20c1dd1eb13da943d30797fe14c1a1b410c` |
| 3 | `theorem` | [natFloor_exp_cast_pos](../../../../mathematics/Analysis/SpecialFunctions/ExponentialFloorGap.lean/declarations/natfloor-exp-cast-pos--3c0efd4ae9f1ed6e539b998e.md) | 37 | `result-track:3c0efd4ae9f1ed6e539b998ee952624fd169b56e3012ce50095bba4f67087558` |
| 4 | `theorem` | [natFloor_exp_le](../../../../mathematics/Analysis/SpecialFunctions/ExponentialFloorGap.lean/declarations/natfloor-exp-le--532825537131592facb7a0ea.md) | 42 | `result-track:532825537131592facb7a0eac86600ed1111b35b93bdcad48a262e062cb3cc41` |
| 5 | `theorem` | [exp_lt_natFloor_add_one](../../../../mathematics/Analysis/SpecialFunctions/ExponentialFloorGap.lean/declarations/exp-lt-natfloor-add-one--1feb0d7037f6a7979e5efe3b.md) | 47 | `result-track:1feb0d7037f6a7979e5efe3bad185b57b64c36917792c81f8d6ca856a0116add` |
| 6 | `theorem` | [gap_nonneg](../../../../mathematics/Analysis/SpecialFunctions/ExponentialFloorGap.lean/declarations/gap-nonneg--afadef798c8150677f0ad3f1.md) | 52 | `result-track:afadef798c8150677f0ad3f147aba27407a12c042b8de4ebd88a9976a76f1300` |
| 7 | `theorem` | [gap_lt_inv_natFloor](../../../../mathematics/Analysis/SpecialFunctions/ExponentialFloorGap.lean/declarations/gap-lt-inv-natfloor--f7520c6c33d1be5f045e5f01.md) | 59 | `result-track:f7520c6c33d1be5f045e5f012c5d6f7a6b3da7d839df5ba81eb84440cee5ee6b` |
| 8 | `theorem` | [exp_lt_two_mul_natFloor](../../../../mathematics/Analysis/SpecialFunctions/ExponentialFloorGap.lean/declarations/exp-lt-two-mul-natfloor--30ff472823c7d06d45d1b00a.md) | 81 | `result-track:30ff472823c7d06d45d1b00a6a2361f49a57abd7f7f1f2e3b2eddad342fe9656` |
| 9 | `theorem` | [exp_two_mul_div_four_lt_natFloor_sq](../../../../mathematics/Analysis/SpecialFunctions/ExponentialFloorGap.lean/declarations/exp-two-mul-div-four-lt-natfloor-sq--12c24c7dbff9d4bb72e930e2.md) | 89 | `result-track:12c24c7dbff9d4bb72e930e27a1df391b6084bac0ce03e95b05cdecc2e628aeb` |
| 10 | `theorem` | [cubicAllowance_le_inv_natFloor_pow_four](../../../../mathematics/Analysis/SpecialFunctions/ExponentialFloorGap.lean/declarations/cubicallowance-le-inv-natfloor-pow-four--3aa893cc51a30aaac1666c45.md) | 100 | `result-track:3aa893cc51a30aaac1666c45cd54f18824e68018965defb5bc8507147a57c3ac` |
| 11 | `theorem` | [natFloor_sq_le_of_cost](../../../../mathematics/Analysis/SpecialFunctions/ExponentialFloorGap.lean/declarations/natfloor-sq-le-of-cost--52b4d8bdf927c0a87404e88f.md) | 120 | `result-track:52b4d8bdf927c0a87404e88f7bb6f9b6393438faa1b869df5d40a843eedfefc8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
