# Verification target: GRWTSK.Algebra.LinearAlgebra.TraceForm.Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f408170123f729a4db1da8f1a17c727899bf781e",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f408170123f729a4db1da8f1a17c727899bf781e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.LinearMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.InvariantForm` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Weights.Cartan` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Weights.Linear` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.AlgebraicClosure` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.PID` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [traceForm](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/traceform--1423513ae7500342995b2d5e.md) | 47 | `declaration-track:1423513ae7500342995b2d5e8b1c20d3c6ee9f723a9e876fd28c21137eba4b32` |
| 2 | `lemma` | [traceForm_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/traceform-apply-apply--3cdc8c0e6b109375e72c6660.md) | 50 | `result-track:3cdc8c0e6b109375e72c666081c7948138e483156b8985b3a20501108a7baba0` |
| 3 | `lemma` | [traceForm_comm](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/traceform-comm--09f8768f40cb59fa3e7f4e42.md) | 54 | `result-track:09f8768f40cb59fa3e7f4e42d95f85a2329ed692c9dc174188d0c4f90552ef26` |
| 4 | `lemma` | [traceForm_isSymm](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/traceform-issymm--7ac71ed1af37a82fea126b73.md) | 57 | `result-track:7ac71ed1af37a82fea126b73acf0d29f9b3a8bedf383a8f52ccc881553544e44` |
| 5 | `lemma` | [traceForm_flip](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/traceform-flip--abe5fbea85c09b323fbd5c1a.md) | 59 | `result-track:abe5fbea85c09b323fbd5c1ade1b6ab93c7f2fa31e16e673fe5d0c339b06149d` |
| 6 | `lemma` | [traceForm_apply_lie_apply](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/traceform-apply-lie-apply--fd7cdbda5ba4dffadc47f6fb.md) | 65 | `result-track:fd7cdbda5ba4dffadc47f6fbc27ef74f2a90c6621c933b83c0acd61893b8f4d2` |
| 7 | `lemma` | [traceForm_apply_lie_apply'](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/traceform-apply-lie-apply--cc5d3dffa1fed102f45ac8c6.md) | 81 | `result-track:cc5d3dffa1fed102f45ac8c6d5ac32df483b87f411a906fdf2e17749a031fe5d` |
| 8 | `lemma` | [traceForm_lieInvariant](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/traceform-lieinvariant--29525057b25278a90284d823.md) | 87 | `result-track:29525057b25278a90284d82331c24a40745b4d213604937e0f2a16493433eb97` |
| 9 | `lemma` | [lie_traceForm_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/lie-traceform-eq-zero--fb5c7810c52596d65e6e5e53.md) | 92 | `result-track:fb5c7810c52596d65e6e5e532abc7d02813ad9c84acfe865307e13bdb3f6762f` |
| 10 | `lemma` | [traceForm_eq_zero_of_isNilpotent](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/traceform-eq-zero-of-isnilpotent--84c6f0d6af6536fd1f3ebbc3.md) | 97 | `result-track:84c6f0d6af6536fd1f3ebbc34cac07edf292dedbe6c1cdbe68425d9f4d574cf0` |
| 11 | `lemma` | [traceForm_genWeightSpace_eq](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/traceform-genweightspace-eq--1be40695ad9f6703497285da.md) | 105 | `result-track:1be40695ad9f6703497285da3d04ac29267dd35770a7a851a71a97855dd0c8ab` |
| 12 | `lemma` | [traceForm_eq_zero_if_mem_lcs_of_mem_ucs](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/traceform-eq-zero-if-mem-lcs-of-mem-ucs--91b458b71186f6427a876130.md) | 126 | `result-track:91b458b71186f6427a87613054ce6ea6f3392ae5315c131a148c7b1d111a32d7` |
| 13 | `lemma` | [traceForm_apply_eq_zero_of_mem_lcs_of_mem_center](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/traceform-apply-eq-zero-of-mem-lcs-of-mem-center--b3460dbd10f6640131698249.md) | 145 | `result-track:b3460dbd10f6640131698249b3a481ac1f89b262442f3e7a91534e88e376513b` |
| 14 | `lemma` | [traceForm_eq_zero_of_isTrivial](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/traceform-eq-zero-of-istrivial--6d7fda3829e32b1b108204db.md) | 153 | `result-track:6d7fda3829e32b1b108204db91c5a23c04d5d57d49b0d214ce0330bfda9976a5` |
| 15 | `lemma` | [eq_zero_of_mem_genWeightSpace_mem_posFitting](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/eq-zero-of-mem-genweightspace-mem-posfitting--4cbd62d2fb4ba8adfb3f64f7.md) | 163 | `result-track:4cbd62d2fb4ba8adfb3f64f7e9f2f025efc5d8ea63541bafa4fc11f62e7015f7` |
| 16 | `lemma` | [trace_toEnd_eq_zero_of_mem_lcs](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/trace-toend-eq-zero-of-mem-lcs--0d52ee3e79c1d43e2e121988.md) | 186 | `result-track:0d52ee3e79c1d43e2e12198802c220293450781ead648a3af41918ccac9a05c4` |
| 17 | `lemma` | [traceForm_lieSubalgebra_mk_left](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/traceform-liesubalgebra-mk-left--01276cd04854d561f79db504.md) | 203 | `result-track:01276cd04854d561f79db5042249409e032ae3574692cc33474ed76422eafef5` |
| 18 | `lemma` | [traceForm_lieSubalgebra_mk_right](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/traceform-liesubalgebra-mk-right--df76cc02a292a95d8275ace0.md) | 208 | `result-track:df76cc02a292a95d8275ace0669248cee3604039e4d507a0466a1432bd1969cd` |
| 19 | `lemma` | [traceForm_eq_sum_genWeightSpaceOf](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/traceform-eq-sum-genweightspaceof--5798fd4a8330a77566b38bd7.md) | 216 | `result-track:5798fd4a8330a77566b38bd780559e0c06cbcea21b851e6154fa6ed1565e597f` |
| 20 | `lemma` | [lowerCentralSeries_one_inf_center_le_ker_traceForm](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/lowercentralseries-one-inf-center-le-ker-traceform--f65369f2dcbbf343752bce81.md) | 238 | `result-track:f65369f2dcbbf343752bce81266bbf84e29f689b89d99ad7a3fa8201e24e8637` |
| 21 | `lemma` | [isLieAbelian_of_ker_traceForm_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/islieabelian-of-ker-traceform-eq-bot--4ea0b0c1ee6cd6ba46efb840.md) | 286 | `result-track:4ea0b0c1ee6cd6ba46efb84022b81cd2f7d6c08aa38b82b8306dd0a7f11fc12e` |
| 22 | `lemma` | [trace_eq_trace_restrict_of_le_idealizer](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/trace-eq-trace-restrict-of-le-idealizer--2e33aabd6e9ae9a662b90430.md) | 303 | `result-track:2e33aabd6e9ae9a662b90430ccdbc83748b6ce57dc240e1c0037fc9eb1d0dcc4` |
| 23 | `lemma` | [traceForm_eq_of_le_idealizer](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/traceform-eq-of-le-idealizer--494d617e45d1d915731e423b.md) | 313 | `result-track:494d617e45d1d915731e423bc6d0ce277cbf05592b89799dda54cca5079ac3b1` |
| 24 | `lemma` | [traceForm_eq_zero_of_isTrivial](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/traceform-eq-zero-of-istrivial--1395fcf7c9f43fd9e71077ef.md) | 324 | `result-track:1395fcf7c9f43fd9e71077ef924889d3ce7daf979d58d2c6388ae1878143ad28` |
| 25 | `abbrev` | [killingForm](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/killingform--8b172257518d8a1e437b977e.md) | 340 | `declaration-track:8b172257518d8a1e437b977e3f9ef280564d03f4487c9f90a829a218273c2d93` |
| 26 | `lemma` | [killingForm_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/killingform-apply-apply--28df49dc6367142db9c101a0.md) | 343 | `result-track:28df49dc6367142db9c101a0ea8237e36064a17a929aeb16fb0233dbd804ade0` |
| 27 | `lemma` | [killingForm_eq_zero_of_mem_zeroRoot_mem_posFitting](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/killingform-eq-zero-of-mem-zeroroot-mem-posfitting--eedc38d8535532706e143a72.md) | 346 | `result-track:eedc38d8535532706e143a7299f4a47ea6e03c267b478f5e1a89f88f0f1ed77b` |
| 28 | `def` | [killingCompl](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/killingcompl--7de1a1c972e1080592d46639.md) | 360 | `declaration-track:7de1a1c972e1080592d466392ffa3a58f6827a1d4922c842c3d98f24bd10123c` |
| 29 | `lemma` | [toSubmodule_killingCompl](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/tosubmodule-killingcompl--3a40d3d096397d064c213cf5.md) | 363 | `result-track:3a40d3d096397d064c213cf5915e1010e873fc74714a991002dc309eb9152805` |
| 30 | `lemma` | [mem_killingCompl](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/mem-killingcompl--ac9b7768dd118b0f82c2d747.md) | 367 | `result-track:ac9b7768dd118b0f82c2d7475d8eb79edabdc9a88cb87b9b7033e73fa9dda189` |
| 31 | `lemma` | [coe_killingCompl_top](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/coe-killingcompl-top--7f05460bd400ad00b1e93fa7.md) | 371 | `result-track:7f05460bd400ad00b1e93fa7014d1e536bd47b028dc052a989b74655958770c5` |
| 32 | `lemma` | [restrict_killingForm](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/restrict-killingform--8346bbf610b1b82e9923b143.md) | 376 | `result-track:8346bbf610b1b82e9923b14350df200776f02600a912d6842d0df6cf774a6776` |
| 33 | `lemma` | [killingForm_eq](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/killingform-eq--3b06d49c1b1b38a08f14280f.md) | 382 | `result-track:3b06d49c1b1b38a08f14280f9491bd8141958951eec260633b0306e958d5cc29` |
| 34 | `lemma` | [le_killingCompl_top_of_isLieAbelian](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/le-killingcompl-top-of-islieabelian--1dba8ddbdc165a29f4a1e865.md) | 386 | `result-track:1dba8ddbdc165a29f4a1e86591330799860fe8c182b29cd07fbb2016a8874f2e` |
| 35 | `lemma` | [traceForm_eq_sum_finrank_nsmul_mul](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/traceform-eq-sum-finrank-nsmul-mul--aead88a9a69f062f8db3ba6a.md) | 404 | `result-track:aead88a9a69f062f8db3ba6a68611110a350fa1b3710927750679b3d8dee31f8` |
| 36 | `lemma` | [traceForm_eq_sum_finrank_nsmul](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/traceform-eq-sum-finrank-nsmul--b40b609a3d8978897f03dca5.md) | 419 | `result-track:b40b609a3d8978897f03dca512bf23e19922982e6cc34aceaffe22e27644d004` |
| 37 | `lemma` | [traceForm_eq_sum_finrank_nsmul'](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/traceform-eq-sum-finrank-nsmul--004f72f6fd208dc0f14c8424.md) | 428 | `result-track:004f72f6fd208dc0f14c8424a91f6653778e2a8ca9c3c5ecd1127d780a2bbc99` |
| 38 | `lemma` | [range_traceForm_le_span_weight](../../../../../mathematics/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/declarations/range-traceform-le-span-weight--57dd4c71f73c93a99f8e3735.md) | 442 | `result-track:57dd4c71f73c93a99f8e3735be98e26a997b79a61839e9628d1f74486bd95810` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
