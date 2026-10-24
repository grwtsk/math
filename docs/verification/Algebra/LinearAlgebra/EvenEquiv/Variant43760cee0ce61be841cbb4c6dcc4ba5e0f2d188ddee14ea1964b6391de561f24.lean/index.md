# Verification target: GRWTSK.Algebra.LinearAlgebra.EvenEquiv.Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "675b900ccac6c0da9635f463e2cc93b8b54e0bbe",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/EvenEquiv/Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `675b900ccac6c0da9635f463e2cc93b8b54e0bbe`.

Source path: `GRWTSK/Algebra/LinearAlgebra/EvenEquiv/Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/EvenEquiv/Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Conjugation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.CliffordAlgebra.Even` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LiftLets` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Q'](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24.lean/declarations/q--b010453b0838892846c3a6f2.md) | 59 | `declaration-track:b010453b0838892846c3a6f20e12e8287c17a6d03012d5edc1b14036ee290625` |
| 2 | `theorem` | [Q'_apply](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24.lean/declarations/q-apply--850dbe34f7e4e2d00a332654.md) | 64 | `result-track:850dbe34f7e4e2d00a3326541a52c49369316b21abc333a18840cd8d7e966c32` |
| 3 | `def` | [e0](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24.lean/declarations/e0--e01657a2a538b4bdfa3ef6c5.md) | 70 | `declaration-track:e01657a2a538b4bdfa3ef6c558a87e327e4b1308ccc5e2c3661a4b306870b5af` |
| 4 | `def` | [v](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24.lean/declarations/v--b1bb5ee3380b2666ee1e76ac.md) | 75 | `declaration-track:b1bb5ee3380b2666ee1e76ac45de11da2001176383dbc7de230d54ac118af950` |
| 5 | `theorem` | [ι_eq_v_add_smul_e0](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24.lean/declarations/eq-v-add-smul-e0--8f375722cf21d2bd6ea3cc9f.md) | 79 | `result-track:8f375722cf21d2bd6ea3cc9f7f0d7dd2f8f2c28b94c5de0c3936be600b7154c2` |
| 6 | `theorem` | [e0_mul_e0](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24.lean/declarations/e0-mul-e0--f534158ff716facce6da886c.md) | 84 | `result-track:f534158ff716facce6da886c751559a3eaa3b777cdbbadf7816ac5a9619029cb` |
| 7 | `theorem` | [v_sq_scalar](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24.lean/declarations/v-sq-scalar--79399288986adddb568ec141.md) | 88 | `result-track:79399288986adddb568ec1414b1e7a9684eac1b5beb3451cd3f8fe8d1e2120fd` |
| 8 | `theorem` | [neg_e0_mul_v](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24.lean/declarations/neg-e0-mul-v--57468badc7f1f7197f9714c6.md) | 92 | `result-track:57468badc7f1f7197f9714c64225a0be6ed3c88e39c60c7193c8c54086e0d01c` |
| 9 | `theorem` | [neg_v_mul_e0](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24.lean/declarations/neg-v-mul-e0--72636b6adbf8562dcd356232.md) | 99 | `result-track:72636b6adbf8562dcd3562323132f21f1e8bfce78eb15251709f77395b410863` |
| 10 | `theorem` | [e0_mul_v_mul_e0](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24.lean/declarations/e0-mul-v-mul-e0--37497e07f0c3a79f6b883583.md) | 105 | `result-track:37497e07f0c3a79f6b8835837c824f78b4b68c6fcb7098491aca31d2188d2839` |
| 11 | `theorem` | [reverse_v](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24.lean/declarations/reverse-v--64a47643d442696d3fff483b.md) | 110 | `result-track:64a47643d442696d3fff483bb5769610dbc5ef978d691465e1c9b15f3e1ce1ed` |
| 12 | `theorem` | [involute_v](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24.lean/declarations/involute-v--9ce089cb71689cb4a6af90ff.md) | 115 | `result-track:9ce089cb71689cb4a6af90ff9576a52d2039d444a06af1e6a055b3ea93b79889` |
| 13 | `theorem` | [reverse_e0](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24.lean/declarations/reverse-e0--dc418df08d4034154497f787.md) | 120 | `result-track:dc418df08d4034154497f78713cb505405b7f96436f4bc3c5dfab7c03c070a87` |
| 14 | `theorem` | [involute_e0](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24.lean/declarations/involute-e0--78f33bf4f5ac7f3565437191.md) | 125 | `result-track:78f33bf4f5ac7f35654371919a5ffe73aa464526df88440d1743b42ff6780797` |
| 15 | `def` | [toEven](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24.lean/declarations/toeven--cae7da9a4ce532192a7f9a78.md) | 134 | `declaration-track:cae7da9a4ce532192a7f9a785a333727f7d01f718e8cbeba8f8bf27a5d380adf` |
| 16 | `theorem` | [toEven_ι](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24.lean/declarations/toeven--2feb93de2773f3dd0a2714f3.md) | 148 | `result-track:2feb93de2773f3dd0a2714f3c55c70f53a4e1f60081b54a38a0a3028f66b16b0` |
| 17 | `def` | [ofEven](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24.lean/declarations/ofeven--40fb2080cbb19d4d17fa3e98.md) | 156 | `declaration-track:40fb2080cbb19d4d17fa3e98f840bd8ea690f2b8765cc40cde5ed0cd1c63b763` |
| 18 | `theorem` | [ofEven_ι](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24.lean/declarations/ofeven--cce5488e53f2f3dacc15a569.md) | 185 | `result-track:cce5488e53f2f3dacc15a5694294becdbf68e9bbf73fac94f335db7e31a392b2` |
| 19 | `theorem` | [toEven_comp_ofEven](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24.lean/declarations/toeven-comp-ofeven--d51d31d686bb2972b169202c.md) | 196 | `result-track:d51d31d686bb2972b169202c6731d4746ccdea97f66280366be7b7a273fb9273` |
| 20 | `theorem` | [ofEven_comp_toEven](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24.lean/declarations/ofeven-comp-toeven--ae278cc828ea90e6edcc589d.md) | 229 | `result-track:ae278cc828ea90e6edcc589d52d618b91845d225a26542e2130122c2ada3b838` |
| 21 | `def` | [equivEven](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24.lean/declarations/equiveven--c023f3e89998c063e067c491.md) | 245 | `declaration-track:c023f3e89998c063e067c491f374bdca661eaa6ad37cb81786a0fc2b294b7c16` |
| 22 | `theorem` | [coe_toEven_reverse_involute](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24.lean/declarations/coe-toeven-reverse-involute--771e38b40334deefc142bd74.md) | 251 | `result-track:771e38b40334deefc142bd74a3f7165f760feb15b2471dc65231599af5f15d7f` |
| 23 | `def` | [evenToNeg](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24.lean/declarations/eventoneg--82900ad8ef06e52cf1857463.md) | 269 | `declaration-track:82900ad8ef06e52cf1857463748803b203cb7f927c261bbf2dc335866caa641b` |
| 24 | `theorem` | [evenToNeg_ι](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24.lean/declarations/eventoneg--f59939815179b50375262bdd.md) | 286 | `result-track:f59939815179b50375262bddd8c0f47c72fd19cf56d2096f7b5c7ad9ecda927e` |
| 25 | `theorem` | [evenToNeg_comp_evenToNeg](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24.lean/declarations/eventoneg-comp-eventoneg--cd6de3e710590f784016ab73.md) | 292 | `result-track:cd6de3e710590f784016ab738d53bcd9c32db9919fa3c84cd74d1d60438a1929` |
| 26 | `def` | [evenEquivEvenNeg](../../../../../mathematics/Algebra/LinearAlgebra/EvenEquiv/Variant43760cee0ce61be841cbb4c6dcc4ba5e0f2d188ddee14ea1964b6391de561f24.lean/declarations/evenequivevenneg--61dd428c955e527b212f8c6c.md) | 304 | `declaration-track:61dd428c955e527b212f8c6c706013b68f9307b28417ce31d89715edc81ef151` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
