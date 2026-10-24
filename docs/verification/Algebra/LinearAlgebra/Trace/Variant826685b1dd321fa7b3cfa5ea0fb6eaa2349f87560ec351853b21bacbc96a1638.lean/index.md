# Verification target: GRWTSK.Algebra.LinearAlgebra.Trace.Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aead033d4d6f66f283cd51f072c24a2f5b16a97e",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aead033d4d6f66f283cd51f072c24a2f5b16a97e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.GeneralLinearGroup.AlgEquiv` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleRing.Matrix` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [traceAux](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/traceaux--677a2a222e5b0fc2062e2c27.md) | 48 | `declaration-track:677a2a222e5b0fc2062e2c27bbacac423cbeeecff8c17a5600c47f294b448822` |
| 2 | `theorem` | [traceAux_def](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/traceaux-def--cabad6f89a35772974aa4c5a.md) | 52 | `result-track:cabad6f89a35772974aa4c5aff019310979fc03c66e531e561a853a3771cf2e9` |
| 3 | `theorem` | [traceAux_eq](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/traceaux-eq--2e7fb692a90f417a6cf4529f.md) | 56 | `result-track:2e7fb692a90f417a6cf4529fd4d8e57e8f77fa5a177e34c92e09eaf5eafe9b21` |
| 4 | `def` | [trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/trace--91c5b71583555ad15c71b4d7.md) | 75 | `declaration-track:91c5b71583555ad15c71b4d792c8e2c3bf92aaad08ab53ce40b9074d12a997f1` |
| 5 | `theorem` | [trace_eq_matrix_trace_of_finset](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/trace-eq-matrix-trace-of-finset--d41feaa55201f5fe22401a66.md) | 80 | `result-track:d41feaa55201f5fe22401a66dc7e35d29455a26ba855ab8c2d3e8aed5b935090` |
| 6 | `theorem` | [trace_eq_matrix_trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/trace-eq-matrix-trace--ee66590c8f16109ab17a81fb.md) | 87 | `result-track:ee66590c8f16109ab17a81fb086519f1798a425c39aea1602599c31add0fa5e9` |
| 7 | `theorem` | [_root_.Matrix.trace_toLin_eq](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/root-matrix-trace-tolin-eq--667efe3e522a97753a52079c.md) | 94 | `result-track:667efe3e522a97753a52079c77206d2ace2dff0108d1928f7c7eaf0e6ee7450d` |
| 8 | `theorem` | [_root_.Matrix.trace_toLin'_eq](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/root-matrix-trace-tolin-eq--8713cf2a0362cae1bd96a87c.md) | 99 | `result-track:8713cf2a0362cae1bd96a87c56969e8872942fbdaa98ef91c01983b6ffc0b718` |
| 9 | `theorem` | [trace_mul_comm](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/trace-mul-comm--f6e4956d5616754f95c39184.md) | 103 | `result-track:f6e4956d5616754f95c39184e3fd8cbccefee2929cbf06d8bab3d175404c5403` |
| 10 | `lemma` | [trace_mul_cycle](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/trace-mul-cycle--a4f9633016f446497f57b101.md) | 111 | `result-track:a4f9633016f446497f57b1015260d9f55efbb3f93baad90c62125aaf6845e534` |
| 11 | `lemma` | [trace_mul_cycle'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/trace-mul-cycle--e666bacd6418bbf5ba2c3527.md) | 115 | `result-track:e666bacd6418bbf5ba2c35273ab2f0ef24fb22d54a59553d57132f6935bec554` |
| 12 | `lemma` | [trace_lie_mul_eq](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/trace-lie-mul-eq--58e60ec95e6f3dd766ed82fd.md) | 119 | `result-track:58e60ec95e6f3dd766ed82fd287ede4414d6c73802587cc3d801d6cd44c274e3` |
| 13 | `theorem` | [trace_conj](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/trace-conj--38119961acbd0e2fca1bf587.md) | 126 | `result-track:38119961acbd0e2fca1bf587261d72b2b47b91588880618340eb31775483d6ba` |
| 14 | `lemma` | [trace_lie](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/trace-lie--1004bb8ee5ccbe7cf73bfee9.md) | 132 | `result-track:1004bb8ee5ccbe7cf73bfee988f568584085ff6067e031c43e0c6b5eec28d563` |
| 15 | `theorem` | [trace_eq_contract_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/trace-eq-contract-of-basis--ba2edfb53c5d63aba562a169.md) | 147 | `result-track:ba2edfb53c5d63aba562a169a0b2a1e8a825dc1f63fe9da4edde01dacdde0190` |
| 16 | `theorem` | [trace_eq_contract_of_basis'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/trace-eq-contract-of-basis--1a071a4c585f23437a459aa0.md) | 162 | `result-track:1a071a4c585f23437a459aa0caa9208b352158a211c03c1cab2aacdeefe6f829` |
| 17 | `theorem` | [trace_eq_contract](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/trace-eq-contract--e7f14f15e26098c964e12d22.md) | 173 | `result-track:e7f14f15e26098c964e12d229711123c198f1e8e7d295ee916d47e515dcbc046` |
| 18 | `theorem` | [trace_eq_contract_apply](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/trace-eq-contract-apply--199c3b6407b00d10a254b534.md) | 177 | `result-track:199c3b6407b00d10a254b53460838ed29b9d8efc3d95e0aaeb121dc73b90ceac` |
| 19 | `theorem` | [trace_eq_contract'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/trace-eq-contract--7db0d6f3916428389b1d4660.md) | 183 | `result-track:7db0d6f3916428389b1d46603a49c29fcbcce370e2449a5c601cd48b3a10ea31` |
| 20 | `theorem` | [trace_one](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/trace-one--16f2dcf9e22c399e32aa46ab.md) | 190 | `result-track:16f2dcf9e22c399e32aa46ab69fb91246b33937c8cac65f54c3f42d01233fefc` |
| 21 | `theorem` | [trace_id](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/trace-id--645a56372a7ab5225e19f260.md) | 199 | `result-track:645a56372a7ab5225e19f260210cb1038286c4e70bfb56933406dbc76a21bd3e` |
| 22 | `theorem` | [trace_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/trace-transpose--6fb61c34c4654295d0c6e70e.md) | 202 | `result-track:6fb61c34c4654295d0c6e70ef2b4e2692eca29f19bda425c70cf11a9d59d67f7` |
| 23 | `theorem` | [trace_prodMap](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/trace-prodmap--4202ff5ab6d453d51904cd39.md) | 208 | `result-track:4202ff5ab6d453d51904cd39f7e62516ddd84cd9f11996e9d6e68adb056c0d03` |
| 24 | `theorem` | [trace_prodMap'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/trace-prodmap--82214fa69768aa2cfcb90dd4.md) | 218 | `result-track:82214fa69768aa2cfcb90dd41546262afc5ea9038c13e7b1e85cca1898c5e301` |
| 25 | `theorem` | [trace_tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/trace-tensorproduct--da80089320202547b406fa1d.md) | 229 | `result-track:da80089320202547b406fa1db7a95c1db42bcbb3c62afc7ad0c0b6d81409d488` |
| 26 | `theorem` | [trace_comp_comm](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/trace-comp-comm--61bbf3bb9058bbfaedfedfed.md) | 240 | `result-track:61bbf3bb9058bbfaedfedfed7d225dc553ca09bcf3891fc337056ce9ab499b5f` |
| 27 | `theorem` | [trace_transpose'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/trace-transpose--97c44d302a948085a12b1e14.md) | 254 | `result-track:97c44d302a948085a12b1e14c80566a4f1be7bcebe5f93fef523c10f727b52b5` |
| 28 | `theorem` | [trace_tensorProduct'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/trace-tensorproduct--dc3f9edd2c2507b166409f6d.md) | 258 | `result-track:dc3f9edd2c2507b166409f6d3f2db2121edc54462d1fb67b56745ff26d10084c` |
| 29 | `theorem` | [trace_comp_comm'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/trace-comp-comm--e9f09ad34ab4176a9810ade8.md) | 265 | `result-track:e9f09ad34ab4176a9810ade8abe51dfb9b0f961a0dc58b9676bdf25c0ae3f7cc` |
| 30 | `lemma` | [trace_smulRight](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/trace-smulright--84f3086cffde2e0497abe113.md) | 272 | `result-track:84f3086cffde2e0497abe113613a816bccd7beb9b6cab614a7a72e8cdf81dca2` |
| 31 | `lemma` | [trace_comp_cycle](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/trace-comp-cycle--d287f9162d9e1cc8d3f12f8e.md) | 282 | `result-track:d287f9162d9e1cc8d3f12f8e582aaa740635a198af7609f14d7a76d427bdb4b6` |
| 32 | `lemma` | [trace_comp_cycle'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/trace-comp-cycle--456a3b2eb423b19150f57fa2.md) | 287 | `result-track:456a3b2eb423b19150f57fa26ab4faf39a210f1d9596eb09ece5cf96df2a33b4` |
| 33 | `theorem` | [trace_conj'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/trace-conj--10332aff770c569b8fbe757a.md) | 292 | `result-track:10332aff770c569b8fbe757a344b25e3efd01762b4778cbf1c0beea4d4291d8d` |
| 34 | `theorem` | [trace_map](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/trace-map--c6ef7e0e81f529e31047ffff.md) | 307 | `result-track:c6ef7e0e81f529e31047ffff5144439b84833e9b9a5e4d8a7b72039b47f645ee` |
| 35 | `theorem` | [_root_.Matrix.trace_map](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/root-matrix-trace-map--29cdf57c078bc69a5e7750ed.md) | 313 | `result-track:29cdf57c078bc69a5e7750ed11615d76adccc44f38a5be14ece9c17c538b5c0f` |
| 36 | `theorem` | [_root_.Matrix.trace_map'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/root-matrix-trace-map--1bf456b0b469b0451b837f4b.md) | 320 | `result-track:1bf456b0b469b0451b837f4b2995ec152f9a47808e5ebb9cfbb4e596939ce3b3` |
| 37 | `theorem` | [IsProj.trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/isproj-trace--58aec058886ef48a7f1f2aca.md) | 327 | `result-track:58aec058886ef48a7f1f2aca6f445367fbe7a4c99722cebad4a4becdc8078f81` |
| 38 | `theorem` | [IsIdempotentElem.trace_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/isidempotentelem-trace-eq-zero-iff--98e7cecfe7e430bf90887290.md) | 340 | `result-track:98e7cecfe7e430bf908872907675b9123aa214bdabe9d25304e33be0c93372e4` |
| 39 | `lemma` | [isNilpotent_trace_of_isNilpotent](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/isnilpotent-trace-of-isnilpotent--0c040521ed027e6781042507.md) | 351 | `result-track:0c040521ed027e6781042507028272336f9d659b0317dc4626a772aca7488fe2` |
| 40 | `lemma` | [trace_comp_eq_mul_of_commute_of_isNilpotent](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/trace-comp-eq-mul-of-commute-of-isnilpotent--7f2d47a3f4af47362ad62726.md) | 363 | `result-track:7f2d47a3f4af47362ad62726ba39b77c3a49452a81912175850082e3642a3552` |
| 41 | `lemma` | [trace_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/trace-basechange--78e07e05cbe4556640deb462.md) | 378 | `result-track:78e07e05cbe4556640deb462aeb0ac62a2fb4386cd5464fbcfc10def2c5a1023` |
| 42 | `lemma` | [Module.Free.bijective_algebraMap_of_finrank_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.lean/declarations/module-free-bijective-algebramap-of-finrank-eq-one--8ee7b8763fb1b50c2cadcc43.md) | 392 | `result-track:8ee7b8763fb1b50c2cadcc437da9003165d42632018f7221ae45dba4a0d46573` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
