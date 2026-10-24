# Verification target: GRWTSK.Algebra.LinearAlgebra.Trace.Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81b6c3f912adb5cdb2af1073cd45812b4d3754ee",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81b6c3f912adb5cdb2af1073cd45812b4d3754ee`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Contraction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Charpoly.Coeff` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Finite` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Free` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [traceAux](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/declarations/traceaux--d791d5042b370548a46c3efa.md) | 49 | `declaration-track:d791d5042b370548a46c3efadcc3b14dda6ffbcb903f34385a222e73eeded25e` |
| 2 | `theorem` | [traceAux_def](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/declarations/traceaux-def--a004e7a3e652ae50a354f655.md) | 53 | `result-track:a004e7a3e652ae50a354f65509772109c55490b1d208937c9504474b95916528` |
| 3 | `theorem` | [traceAux_eq](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/declarations/traceaux-eq--88aa3e2a0e95dd2a33c4f2b4.md) | 57 | `result-track:88aa3e2a0e95dd2a33c4f2b4d81484d7fa0d6451a408881c32b7e7c2279de1bd` |
| 4 | `def` | [trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/declarations/trace--71e573c3514e3699a4c5dbbb.md) | 76 | `declaration-track:71e573c3514e3699a4c5dbbb5c833855b27e8cc3e12a74b6ec40a3fb81b87348` |
| 5 | `theorem` | [trace_eq_matrix_trace_of_finset](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/declarations/trace-eq-matrix-trace-of-finset--840e019d07a47a126ce4785e.md) | 81 | `result-track:840e019d07a47a126ce4785ee220451fcbd04559e21167b678022923ba6f4f61` |
| 6 | `theorem` | [trace_eq_matrix_trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/declarations/trace-eq-matrix-trace--69b1d03c12798cf35a1c4e8c.md) | 88 | `result-track:69b1d03c12798cf35a1c4e8cb546fd10d3b7215c9aaad1abb8e22d1ecb57bf73` |
| 7 | `theorem` | [trace_mul_comm](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/declarations/trace-mul-comm--3158f47f1cce60b6326a1928.md) | 94 | `result-track:3158f47f1cce60b6326a192820171e2906cf820235d62b408fcb8b30dd4843da` |
| 8 | `lemma` | [trace_mul_cycle](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/declarations/trace-mul-cycle--5b72d743165c142f4610c0ca.md) | 102 | `result-track:5b72d743165c142f4610c0cab50c4a763e3999101014fec08f5d26d17b656de1` |
| 9 | `lemma` | [trace_mul_cycle'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/declarations/trace-mul-cycle--9ac896ca05af05d6d41857f0.md) | 106 | `result-track:9ac896ca05af05d6d41857f0fad51f7928e2b0418b2ab36202085176fa1ae0f4` |
| 10 | `theorem` | [trace_conj](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/declarations/trace-conj--cb99c40309196109ef172420.md) | 112 | `result-track:cb99c40309196109ef172420ecb23bc927e9863cd7ed3c044c32d88b9bc83068` |
| 11 | `lemma` | [trace_lie](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/declarations/trace-lie--bfa19d7deffa13b888911741.md) | 118 | `result-track:bfa19d7deffa13b8889117418d86adf54f0c9c42b6ff357a62753c20208143bb` |
| 12 | `theorem` | [trace_eq_contract_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/declarations/trace-eq-contract-of-basis--dc5b66f1880fc318e29b0376.md) | 133 | `result-track:dc5b66f1880fc318e29b03766de5a111b027ed8309a88c980553f56981ff5bd5` |
| 13 | `theorem` | [trace_eq_contract_of_basis'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/declarations/trace-eq-contract-of-basis--956966ae73b517257ab3cac3.md) | 148 | `result-track:956966ae73b517257ab3cac322bc778d724cc7c94bf3424027a4cb0d8709f8bc` |
| 14 | `theorem` | [trace_eq_contract](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/declarations/trace-eq-contract--90086383b495ff2ed3dff31d.md) | 159 | `result-track:90086383b495ff2ed3dff31d42fe04b3b760b98190033444ba00afee33735409` |
| 15 | `theorem` | [trace_eq_contract_apply](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/declarations/trace-eq-contract-apply--780a8cedabaf51ec19cc674f.md) | 163 | `result-track:780a8cedabaf51ec19cc674feb9f47104bb59cb45751fcdf67e67b66da17cc2c` |
| 16 | `theorem` | [trace_eq_contract'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/declarations/trace-eq-contract--95e6e085b54c19b23341c31b.md) | 169 | `result-track:95e6e085b54c19b23341c31be09e98760db1c177aa806826c238bd34ebc6cb72` |
| 17 | `theorem` | [trace_one](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/declarations/trace-one--3cf798f96908ec4c47afe7d4.md) | 175 | `result-track:3cf798f96908ec4c47afe7d445b2235d093ad849f674190d471f856a31c7dd9d` |
| 18 | `theorem` | [trace_id](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/declarations/trace-id--c9ea403f3e461f56d76a1af4.md) | 184 | `result-track:c9ea403f3e461f56d76a1af46f54e06043c364c6eb58a60e294605eb748e83aa` |
| 19 | `theorem` | [trace_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/declarations/trace-transpose--bbff415a2cfe3b6dfd5b00df.md) | 187 | `result-track:bbff415a2cfe3b6dfd5b00dfc0f0136e3e08281938ab82bdeb7c7e7bc4f5c478` |
| 20 | `theorem` | [trace_prodMap](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/declarations/trace-prodmap--ed90123b8a09a152203b7159.md) | 193 | `result-track:ed90123b8a09a152203b7159b62d84304a70121dd15dda5cf0ec07510d06d92c` |
| 21 | `theorem` | [trace_prodMap'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/declarations/trace-prodmap--70036bb58b0a091b050d4c38.md) | 213 | `result-track:70036bb58b0a091b050d4c3835b7f0e58e7a24145603ba145740ada9d73a0475` |
| 22 | `theorem` | [trace_tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/declarations/trace-tensorproduct--965f2b7e6d104e4cd2e9ac32.md) | 224 | `result-track:965f2b7e6d104e4cd2e9ac32650a5d45b76aff5b14b2afe49ef79693c9235680` |
| 23 | `theorem` | [trace_comp_comm](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/declarations/trace-comp-comm--3c916801a59bc4bcec14b9e6.md) | 235 | `result-track:3c916801a59bc4bcec14b9e6f9cd552e93a4ac99cdd19a89822bc92517a010e2` |
| 24 | `theorem` | [trace_transpose'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/declarations/trace-transpose--30a7477d2ce93445eaeeeb16.md) | 249 | `result-track:30a7477d2ce93445eaeeeb1652f1195ffa7a743fe33b94cf3a60166b09f987f2` |
| 25 | `theorem` | [trace_tensorProduct'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/declarations/trace-tensorproduct--363398141ec3603b8bcffa30.md) | 253 | `result-track:363398141ec3603b8bcffa30b262801965faa078de699d4d18961a2ed2454cd5` |
| 26 | `theorem` | [trace_comp_comm'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/declarations/trace-comp-comm--0002c1cb0a7543994dd1712b.md) | 260 | `result-track:0002c1cb0a7543994dd1712bd695dbd177933f3c6b64b7afcf14d08dfbf4f526` |
| 27 | `lemma` | [trace_comp_cycle](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/declarations/trace-comp-cycle--9f0d25a01ae95c3d8aeaab9e.md) | 271 | `result-track:9f0d25a01ae95c3d8aeaab9e4dc4d29a6e2b35fd99e482e2d7e656d211be494f` |
| 28 | `lemma` | [trace_comp_cycle'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/declarations/trace-comp-cycle--7e937e6fcd7f5434e73231da.md) | 276 | `result-track:7e937e6fcd7f5434e73231dad66869ecf6051f0607193df3d8d67fe9d7900af3` |
| 29 | `theorem` | [trace_conj'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/declarations/trace-conj--ba7d36ae4c7590e57d382a62.md) | 281 | `result-track:ba7d36ae4c7590e57d382a62e18e77fd15cecd5743bc50e083a8440f28557288` |
| 30 | `theorem` | [IsProj.trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/declarations/isproj-trace--b95a9f4291e799bc4ecc2883.md) | 296 | `result-track:b95a9f4291e799bc4ecc28838246b700d62177969a8f642ec7c25ad61e8917ef` |
| 31 | `lemma` | [isNilpotent_trace_of_isNilpotent](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/declarations/isnilpotent-trace-of-isnilpotent--eca2b5c46e7929deeeab886a.md) | 301 | `result-track:eca2b5c46e7929deeeab886afc28b476216a0901863660455e9edbfec3f9d605` |
| 32 | `lemma` | [trace_comp_eq_mul_of_commute_of_isNilpotent](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/declarations/trace-comp-eq-mul-of-commute-of-isnilpotent--3990d4b465e5cb211d9bb48b.md) | 313 | `result-track:3990d4b465e5cb211d9bb48b6cab86ae602634befd628edd44cee62683d8553d` |
| 33 | `lemma` | [trace_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant529fa0eb75d9e3a12e6bbe46a3d523884e590bbce65845cc949cc7de2b6918d4.lean/declarations/trace-basechange--6b8f70347d851431325f8571.md) | 328 | `result-track:6b8f70347d851431325f8571eca6dc8095e54334329662b2b40a2d9773f4a12a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
