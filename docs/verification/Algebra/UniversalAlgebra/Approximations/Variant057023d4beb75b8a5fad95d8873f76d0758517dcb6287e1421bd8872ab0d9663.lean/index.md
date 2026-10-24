# Verification target: GRWTSK.Algebra.UniversalAlgebra.Approximations.Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa429d05bf1b905526c9bece910b9fc673a589dc",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa429d05bf1b905526c9bece910b9fc673a589dc`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.Determinant` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.ContinuedFractions.Computation.CorrectnessTerminating` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Fib.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Monotonicity` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nth_stream_fr_nonneg_lt_one](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean/declarations/nth-stream-fr-nonneg-lt-one--8623510c7d411ca9c2c14691.md) | 68 | `result-track:8623510c7d411ca9c2c14691f1a9749c1aaa157c06d321b20e2af28aa7e8a6b9` |
| 2 | `theorem` | [nth_stream_fr_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean/declarations/nth-stream-fr-nonneg--8d64d71235e4eed6239100c9.md) | 81 | `result-track:8d64d71235e4eed6239100c90521fb5c545e60bc03f445cb23525c1f6562d279` |
| 3 | `theorem` | [nth_stream_fr_lt_one](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean/declarations/nth-stream-fr-lt-one--33cc18b75ca63f80a65d204f.md) | 86 | `result-track:33cc18b75ca63f80a65d204f66ccfb11296d1c420b036c78a74b74d1a8b98302` |
| 4 | `theorem` | [one_le_succ_nth_stream_b](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean/declarations/one-le-succ-nth-stream-b--5631d635b7e7da5175830dbc.md) | 91 | `result-track:5631d635b7e7da5175830dbc585c2332e8c54ccd76d469d4be456af55e1a2147` |
| 5 | `theorem` | [succ_nth_stream_b_le_nth_stream_fr_inv](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean/declarations/succ-nth-stream-b-le-nth-stream-fr-inv--769338d717c39329e3864d20.md) | 107 | `result-track:769338d717c39329e3864d2018c5c91a1377c4a86fc25da5a1fb4b4912618eb9` |
| 6 | `theorem` | [of_one_le_get?_partDen](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean/declarations/of-one-le-get-partden--58b4d9df3a9b4f27e8dbb872.md) | 130 | `result-track:58b4d9df3a9b4f27e8dbb872e34a3174584632370adfd460c8a9cf31bfc1e3b5` |
| 7 | `theorem` | [of_partNum_eq_one_and_exists_int_partDen_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean/declarations/of-partnum-eq-one-and-exists-int-partden-eq--178f33b05007beee0c87e0c2.md) | 144 | `result-track:178f33b05007beee0c87e0c2f614e6c2be634a54f297c3dd0ac8d5fb61807038` |
| 8 | `theorem` | [of_partNum_eq_one](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean/declarations/of-partnum-eq-one--3fc076d86e86d65a65275882.md) | 156 | `result-track:3fc076d86e86d65a652758824f96b367da7f1fc839e924a8b38b438978c2cc69` |
| 9 | `theorem` | [exists_int_eq_of_partDen](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean/declarations/exists-int-eq-of-partden--3abb04a26c98957bd941d3dd.md) | 164 | `result-track:3abb04a26c98957bd941d3dd5e2e87daf470e2facb0200ab37701c0b1bf85bdd` |
| 10 | `theorem` | [GenContFract.of_isSimpContFract](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean/declarations/gencontfract-of-issimpcontfract--0eb735c8a5ae922f9a801829.md) | 175 | `result-track:0eb735c8a5ae922f9a80182968ea9d7e9ad59fc7762b4b5711bd46caa473567e` |
| 11 | `def` | [SimpContFract.of](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean/declarations/simpcontfract-of--84311fcecb7d999762612adb.md) | 180 | `declaration-track:84311fcecb7d999762612adbdccdff485e8f99f13c2915f27fe47832f46b434c` |
| 12 | `theorem` | [SimpContFract.of_isContFract](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean/declarations/simpcontfract-of-iscontfract--029081c0035773beb70c362c.md) | 183 | `result-track:029081c0035773beb70c362cf4e2180f790d230e99235239636ac0330c966931` |
| 13 | `def` | [ContFract.of](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean/declarations/contfract-of--d0f0cb4eaffc7dee18618a9f.md) | 188 | `declaration-track:d0f0cb4eaffc7dee18618a9f4d30ae99c74aabce955913a1150b9ab2b33b02da` |
| 14 | `theorem` | [fib_le_of_contsAux_b](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean/declarations/fib-le-of-contsaux-b--985245430a7cf82ae1540496.md) | 205 | `result-track:985245430a7cf82ae1540496f6da42f218e1d2be3c84ef2cc9cb69748e185d3f` |
| 15 | `theorem` | [succ_nth_fib_le_of_nth_den](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean/declarations/succ-nth-fib-le-of-nth-den--b6ea27f095729797d3cc9bcd.md) | 246 | `result-track:b6ea27f095729797d3cc9bcdb3d7d13af9913553d40d3826c91d73268813aa1c` |
| 16 | `theorem` | [zero_le_of_contsAux_b](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean/declarations/zero-le-of-contsaux-b--d6c9ff71800216bea4f38512.md) | 258 | `result-track:d6c9ff71800216bea4f38512f15eaa3cc4117b227226376d7d32d24966bdfd1e` |
| 17 | `theorem` | [zero_le_of_den](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean/declarations/zero-le-of-den--ac8b93c6bae030591887a265.md) | 276 | `result-track:ac8b93c6bae030591887a2659364570209cb8841fad257810cd5e0a228db3318` |
| 18 | `theorem` | [le_of_succ_succ_get?_contsAux_b](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean/declarations/le-of-succ-succ-get-contsaux-b--c81835cd7558c55c8ed69e46.md) | 279 | `result-track:c81835cd7558c55c8ed69e462356d4bdabaaed106646e560158a90ce2781cb94` |
| 19 | `theorem` | [le_of_succ_get?_den](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean/declarations/le-of-succ-get-den--fd28daeaf043e146dbff90e5.md) | 289 | `result-track:fd28daeaf043e146dbff90e594b20a41e2a38d0350f0b4e4ddd2cd66f712f2ae` |
| 20 | `theorem` | [of_den_mono](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean/declarations/of-den-mono--4f99e80595360adb8ff22d54.md) | 296 | `result-track:4f99e80595360adb8ff22d54d541be4d067afbaebf42a0d703e0eed5be8780f3` |
| 21 | `theorem` | [sub_convs_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean/declarations/sub-convs-eq--636d19984671db78ba717893.md) | 325 | `result-track:636d19984671db78ba7178933a06667781c9207310b1c3c755946d6c5a9ad510` |
| 22 | `theorem` | [abs_sub_convs_le](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean/declarations/abs-sub-convs-le--921f465a6153cd663c349573.md) | 398 | `result-track:921f465a6153cd663c34957378bf35c3d30fdc572d2386bcc3a4821fc4b7631d` |
| 23 | `theorem` | [abs_sub_convergents_le'](../../../../../mathematics/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean/declarations/abs-sub-convergents-le--500474164743e6b64d361799.md) | 478 | `result-track:500474164743e6b64d3617997facf188c63f467e80ea2ac8ca436818615c3ee8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
