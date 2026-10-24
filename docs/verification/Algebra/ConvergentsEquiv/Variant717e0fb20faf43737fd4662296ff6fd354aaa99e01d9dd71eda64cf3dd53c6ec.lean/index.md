# Verification target: GRWTSK.Algebra.ConvergentsEquiv.Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71bb0e6982734d471b0d8b2170fa29c4831a1de6",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ConvergentsEquiv/Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ConvergentsEquiv/Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec.lean/index.md) · [Full source](../../../../mathematics/Algebra/ConvergentsEquiv/Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71bb0e6982734d471b0d8b2170fa29c4831a1de6`.

Source path: `GRWTSK/Algebra/ConvergentsEquiv/Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ConvergentsEquiv/Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.ContinuantsRecurrence` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.ContinuedFractions.TerminatedStable` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squashSeq](../../../../mathematics/Algebra/ConvergentsEquiv/Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec.lean/declarations/squashseq--a2bc48cdb230f517e71c3a61.md) | 99 | `declaration-track:a2bc48cdb230f517e71c3a61fb3501dc9ed73112874f0d3b74698029e6b476e7` |
| 2 | `theorem` | [squashSeq_eq_self_of_terminated](../../../../mathematics/Algebra/ConvergentsEquiv/Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec.lean/declarations/squashseq-eq-self-of-terminated--f712073d1480c84b6d81f826.md) | 111 | `result-track:f712073d1480c84b6d81f826a792b3a84bb4fd33272f3b33093cd399964bbad2` |
| 3 | `theorem` | [squashSeq_nth_of_not_terminated](../../../../mathematics/Algebra/ConvergentsEquiv/Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec.lean/declarations/squashseq-nth-of-not-terminated--e8f44848b9c01ecc49b9f033.md) | 118 | `result-track:e8f44848b9c01ecc49b9f033c168941f4153f77eaccc8886c054ffb4baf71828` |
| 4 | `theorem` | [squashSeq_nth_of_lt](../../../../mathematics/Algebra/ConvergentsEquiv/Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec.lean/declarations/squashseq-nth-of-lt--a0f34794414f6546f06ca75a.md) | 124 | `result-track:a0f34794414f6546f06ca75ad1e72265f71428cc0217e1024d3d2918e9a5d430` |
| 5 | `theorem` | [squashSeq_succ_n_tail_eq_squashSeq_tail_n](../../../../mathematics/Algebra/ConvergentsEquiv/Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec.lean/declarations/squashseq-succ-n-tail-eq-squashseq-tail-n--9106c97dcef8dd7debefa5d3.md) | 136 | `result-track:9106c97dcef8dd7debefa5d37547489542c0c08fea4d607d9e9da9b6a6147f07` |
| 6 | `theorem` | [succ_succ_nth_conv'Aux_eq_succ_nth_conv'Aux_squashSeq](../../../../mathematics/Algebra/ConvergentsEquiv/Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec.lean/declarations/succ-succ-nth-conv-aux-eq-succ-nth-conv-aux-squashseq--4bb9d43c590c947e18150c16.md) | 156 | `result-track:4bb9d43c590c947e18150c168600801a3bd6ca334e2bd220e2a3c4dc81f981aa` |
| 7 | `def` | [squashGCF](../../../../mathematics/Algebra/ConvergentsEquiv/Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec.lean/declarations/squashgcf--8da47c8ba9a3cc64b2496794.md) | 188 | `declaration-track:8da47c8ba9a3cc64b24967947736b4ddd42159b9b1bc7e59ef7bfcf107abbdcf` |
| 8 | `theorem` | [squashGCF_eq_self_of_terminated](../../../../mathematics/Algebra/ConvergentsEquiv/Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec.lean/declarations/squashgcf-eq-self-of-terminated--f2100ed15bb133872eca7be3.md) | 200 | `result-track:f2100ed15bb133872eca7be31284cdee94b6afa1f14268fd7f8ac29d82241beb` |
| 9 | `theorem` | [squashGCF_nth_of_lt](../../../../mathematics/Algebra/ConvergentsEquiv/Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec.lean/declarations/squashgcf-nth-of-lt--c0d7bcc56d5d3095575ed55d.md) | 212 | `result-track:c0d7bcc56d5d3095575ed55de50b16911e7bf962d6bec0f39d3db1d7bace915a` |
| 10 | `theorem` | [succ_nth_conv'_eq_squashGCF_nth_conv'](../../../../mathematics/Algebra/ConvergentsEquiv/Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec.lean/declarations/succ-nth-conv-eq-squashgcf-nth-conv--e2d32e8d8e2b6bc806b6e78c.md) | 218 | `result-track:e2d32e8d8e2b6bc806b6e78cef6230766c36966cc7b19a096f027db6994e0802` |
| 11 | `theorem` | [contsAux_eq_contsAux_squashGCF_of_le](../../../../mathematics/Algebra/ConvergentsEquiv/Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec.lean/declarations/contsaux-eq-contsaux-squashgcf-of-le--443f8fc740eed34d9d4c310a.md) | 229 | `result-track:443f8fc740eed34d9d4c310afbce5880d5863e4b32d3117da8510679a626b321` |
| 12 | `theorem` | [succ_nth_conv_eq_squashGCF_nth_conv](../../../../mathematics/Algebra/ConvergentsEquiv/Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec.lean/declarations/succ-nth-conv-eq-squashgcf-nth-conv--d1f394c61c9850d2b009e465.md) | 255 | `result-track:d1f394c61c9850d2b009e46562b72f37e936e0c697fa3c1b48d9399900457ab1` |
| 13 | `theorem` | [convs_eq_convs'](../../../../mathematics/Algebra/ConvergentsEquiv/Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec.lean/declarations/convs-eq-convs--8819bdb1467518fcf4f2ed10.md) | 333 | `result-track:8819bdb1467518fcf4f2ed1006bc05963d3ec18fd657054f78448a9c2292ec62` |
| 14 | `theorem` | [convs_eq_convs'](../../../../mathematics/Algebra/ConvergentsEquiv/Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec.lean/declarations/convs-eq-convs--31ca7c5367bc4074a86a13c9.md) | 392 | `result-track:31ca7c5367bc4074a86a13c9e064a0821e78e8d458adcc4def4ef375d9d832b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
