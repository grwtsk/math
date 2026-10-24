# Verification target: GRWTSK.Algebra.LinearAlgebra.Trace.Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95fc2cff42ba059c3818fb3a4aba5da9382fbf71",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95fc2cff42ba059c3818fb3a4aba5da9382fbf71`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.GeneralLinearGroup.AlgEquiv` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleRing.Matrix` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [traceAux](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/traceaux--52e36e6d2f229441209e9dc4.md) | 56 | `declaration-track:52e36e6d2f229441209e9dc4eec08f9d3c803d877b7ebaacf193d2462f416481` |
| 2 | `theorem` | [traceAux_def](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/traceaux-def--9f48e6347b2c229d0f3a4858.md) | 60 | `result-track:9f48e6347b2c229d0f3a4858409c90fc12c680b838a0a9c344c5a4a015afe82c` |
| 3 | `theorem` | [traceAux_eq](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/traceaux-eq--deb0f8f7ff4bef9f552e2ffd.md) | 64 | `result-track:deb0f8f7ff4bef9f552e2ffdf71663f0b56fdd59519b1313009f8db533cdd792` |
| 4 | `def` | [trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/trace--47361c36b10fe5a148df0add.md) | 83 | `declaration-track:47361c36b10fe5a148df0addecb209a55d1cdc416cf16a856f5275051e767e99` |
| 5 | `theorem` | [trace_eq_matrix_trace_of_finset](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/trace-eq-matrix-trace-of-finset--846d8bc431be706a5bad5ffa.md) | 88 | `result-track:846d8bc431be706a5bad5ffaf3371240a5e37e59d53e8dd24bf6092db2399822` |
| 6 | `theorem` | [trace_eq_matrix_trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/trace-eq-matrix-trace--824323b54292ef81e3b6f6cb.md) | 95 | `result-track:824323b54292ef81e3b6f6cb8e39d5e9a941de37a8d1d122ab32f85b9bab84b7` |
| 7 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.TraceAux.Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.Matrix.trace_toLin_eq](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/root-grwtsk-algebra-linearalgebra-traceaux-variant826685b1dd321fa7b3cfa5--ab51ede664ef903858c8bcb6.md) | 102 | `result-track:ab51ede664ef903858c8bcb6ed4d240f2b146711ded9a1978389e076eab31f7c` |
| 8 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.TraceAux.Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.Matrix.trace_toLin'_eq](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/root-grwtsk-algebra-linearalgebra-traceaux-variant826685b1dd321fa7b3cfa5--0a7c1749b115004816b61684.md) | 107 | `result-track:0a7c1749b115004816b6168408d675db910ff7cb67874f5c51339563b25cfe1a` |
| 9 | `theorem` | [trace_mul_comm](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/trace-mul-comm--c6b68452f5b59bae55cabb34.md) | 111 | `result-track:c6b68452f5b59bae55cabb34d058da7fae4b274d7df6a13555b2fcf92fbc9fbc` |
| 10 | `lemma` | [trace_mul_cycle](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/trace-mul-cycle--f8b77b0810f9ab62bfa08826.md) | 119 | `result-track:f8b77b0810f9ab62bfa08826aea2d432bcae60071eb5f9cc69f2de6edcc5ba19` |
| 11 | `lemma` | [trace_mul_cycle'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/trace-mul-cycle--50e53d747212a670244d984d.md) | 123 | `result-track:50e53d747212a670244d984d802dc186e842eea3ef0445a24ce4381769fb269e` |
| 12 | `lemma` | [trace_lie_mul_eq](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/trace-lie-mul-eq--dcc1e8495a383eec97b49846.md) | 127 | `result-track:dcc1e8495a383eec97b49846996a514157e2ccc764327361d8285e6ea572f1c8` |
| 13 | `theorem` | [trace_conj](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/trace-conj--637e089211d47dab14b2d260.md) | 134 | `result-track:637e089211d47dab14b2d2606f95357a5e27d1c88bdb1655500fa6daae613013` |
| 14 | `lemma` | [trace_lie](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/trace-lie--2620b6813bbb0116f0ff420b.md) | 140 | `result-track:2620b6813bbb0116f0ff420bca9d08478b5e12828ce66c012586a57cfec6b355` |
| 15 | `theorem` | [trace_eq_contract_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/trace-eq-contract-of-basis--4db7539ebba9c669187196bb.md) | 155 | `result-track:4db7539ebba9c669187196bb91efa17a5f90275a80e2c02ae6089f42e682fb4f` |
| 16 | `theorem` | [trace_eq_contract_of_basis'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/trace-eq-contract-of-basis--1add669b8efc14d88c73e186.md) | 170 | `result-track:1add669b8efc14d88c73e18618dc16362e68f8380ec714d296337b6116fb2a6f` |
| 17 | `theorem` | [trace_eq_contract](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/trace-eq-contract--22db185bba1b1ec99b6365f7.md) | 181 | `result-track:22db185bba1b1ec99b6365f7b82ad4a8f67a3bc5e01d7c9886a5c0ae94821613` |
| 18 | `theorem` | [trace_eq_contract_apply](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/trace-eq-contract-apply--117e49cc6e1a941321d7c4c5.md) | 185 | `result-track:117e49cc6e1a941321d7c4c59337c0483420ac38a9d02198d49a87d72ee3a446` |
| 19 | `theorem` | [trace_eq_contract'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/trace-eq-contract--e69a03835888d4842f466356.md) | 191 | `result-track:e69a03835888d4842f4663569bfb61cbb8fd0aad4ee314b13697b0d1480f0e7a` |
| 20 | `theorem` | [trace_one](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/trace-one--e9de5094b4dade864c8cc9bd.md) | 198 | `result-track:e9de5094b4dade864c8cc9bd440990985e7fddb5b8dd7e53a3f2c0ffedbfbfd1` |
| 21 | `theorem` | [trace_id](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/trace-id--5b7627a10e244289cc3d9ad6.md) | 207 | `result-track:5b7627a10e244289cc3d9ad6019861b3c058e724b450c0bfef22280ffda12261` |
| 22 | `theorem` | [trace_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/trace-transpose--4fb1b3ca5c17881232a2d682.md) | 210 | `result-track:4fb1b3ca5c17881232a2d6827138e93081377234c973ca3746b3bf880033c978` |
| 23 | `theorem` | [trace_prodMap](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/trace-prodmap--4dba5b98e1bbb7ba1ef86c87.md) | 216 | `result-track:4dba5b98e1bbb7ba1ef86c87d0dcfc7773cb91f39bc0dfefa5d99a711e49239e` |
| 24 | `theorem` | [trace_prodMap'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/trace-prodmap--6be7b4d303041bbb559b23f8.md) | 226 | `result-track:6be7b4d303041bbb559b23f8c76b869392200ba81003a3df9ed10697e9a07264` |
| 25 | `theorem` | [trace_tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/trace-tensorproduct--4925641588893a34071fd95b.md) | 237 | `result-track:4925641588893a34071fd95bbd89a02b4642d713ac010f641d647df843dc4745` |
| 26 | `theorem` | [trace_comp_comm](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/trace-comp-comm--8edb7fd6a69fba28a62b3eea.md) | 248 | `result-track:8edb7fd6a69fba28a62b3eea0b03b45b7e6870068286c61cfc3b3c276d0e122c` |
| 27 | `theorem` | [trace_transpose'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/trace-transpose--74bc78bc7e66b20a186fd1e5.md) | 262 | `result-track:74bc78bc7e66b20a186fd1e5746b8a5422c416a7df84d3198dc247c4df9a537a` |
| 28 | `theorem` | [trace_tensorProduct'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/trace-tensorproduct--28cf7ca50617ef72d2eae45c.md) | 266 | `result-track:28cf7ca50617ef72d2eae45c98c48b7e386751d49fe20f806dfb61a2403388a3` |
| 29 | `theorem` | [trace_comp_comm'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/trace-comp-comm--99a379ef910e8ef22b4d4c55.md) | 273 | `result-track:99a379ef910e8ef22b4d4c5528b3b0e99d6590247916411e245b296e842e8063` |
| 30 | `lemma` | [trace_smulRight](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/trace-smulright--47aa162f8f04691c35e10f14.md) | 280 | `result-track:47aa162f8f04691c35e10f1444f0947c3a62d7f2c79a1808e557ef1c3157f644` |
| 31 | `lemma` | [trace_comp_cycle](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/trace-comp-cycle--fbae4ea4c6ce69b955d0cf1b.md) | 290 | `result-track:fbae4ea4c6ce69b955d0cf1b4f545e4c558f1e4a670ec01f71e31d18d4c65de1` |
| 32 | `lemma` | [trace_comp_cycle'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/trace-comp-cycle--fb429178922a0c46d4e835e8.md) | 295 | `result-track:fb429178922a0c46d4e835e8df1f25dcfd009282ac26b34a238efe4752f91d7e` |
| 33 | `theorem` | [trace_conj'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/trace-conj--256edb628cf383bfaf9514f1.md) | 300 | `result-track:256edb628cf383bfaf9514f10475d2e35cc89a3ecb718be2c0480ec09fb378ed` |
| 34 | `theorem` | [trace_map](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/trace-map--5f57e4a3c24b7d4e857887fc.md) | 315 | `result-track:5f57e4a3c24b7d4e857887fcb1f509819c38d09825304a2b5ffb5d8db7187d8e` |
| 35 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.TraceAux.Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.Matrix.trace_map](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/root-grwtsk-algebra-linearalgebra-traceaux-variant826685b1dd321fa7b3cfa5--93461ac22eaf43ee44a82ce9.md) | 321 | `result-track:93461ac22eaf43ee44a82ce9886ea90cc0f5258511ce453b3133e217a85337e1` |
| 36 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.TraceAux.Variant826685b1dd321fa7b3cfa5ea0fb6eaa2349f87560ec351853b21bacbc96a1638.Matrix.trace_map'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/root-grwtsk-algebra-linearalgebra-traceaux-variant826685b1dd321fa7b3cfa5--3f98dd4f3efff9087a3ea0ad.md) | 328 | `result-track:3f98dd4f3efff9087a3ea0adac10a84bf4f748541d7183c781dcaa99c0482e84` |
| 37 | `theorem` | [IsProj.trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/isproj-trace--1f7b8aa1947667b0482c3006.md) | 335 | `result-track:1f7b8aa1947667b0482c3006201890bb49f697e0ea9700ece2c460973b23843e` |
| 38 | `theorem` | [IsIdempotentElem.trace_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/isidempotentelem-trace-eq-zero-iff--7ea9a7b8074842e3d529f0c2.md) | 348 | `result-track:7ea9a7b8074842e3d529f0c29cf45d64567d650936116cbd76bbc9e527ad520b` |
| 39 | `lemma` | [isNilpotent_trace_of_isNilpotent](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/isnilpotent-trace-of-isnilpotent--3043fc4c2ca45d2681741cc9.md) | 359 | `result-track:3043fc4c2ca45d2681741cc94f535129daf259c22ee29123f773e9ca5ce31baa` |
| 40 | `lemma` | [trace_comp_eq_mul_of_commute_of_isNilpotent](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/trace-comp-eq-mul-of-commute-of-isnilpotent--d6f46cd43020c663c95e33bf.md) | 371 | `result-track:d6f46cd43020c663c95e33bfe5dd88f05f128081315dc196a79a9ff85f3e2c11` |
| 41 | `lemma` | [trace_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/trace-basechange--05cd574a04aca60e58ca7450.md) | 386 | `result-track:05cd574a04aca60e58ca74501de98a3e9a6971fda6fa1c609cba3fd79fc8f183` |
| 42 | `lemma` | [Module.Free.bijective_algebraMap_of_finrank_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant38b1c4d776443b583b3ee1da4927f5b82fcbfcff4fcca86cb14aa66d85da3e3c.lean/declarations/module-free-bijective-algebramap-of-finrank-eq-one--2d3db62b1086a1e961b4b265.md) | 400 | `result-track:2d3db62b1086a1e961b4b2651ad4b27123d84d64a7304fb2795a1e78e87ba814` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
