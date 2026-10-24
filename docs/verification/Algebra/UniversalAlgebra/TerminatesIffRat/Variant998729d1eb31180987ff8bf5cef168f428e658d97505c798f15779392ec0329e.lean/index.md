# Verification target: GRWTSK.Algebra.UniversalAlgebra.TerminatesIffRat.Variant998729d1eb31180987ff8bf5cef168f428e658d97505c798f15779392ec0329e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27f5cbb5311c7f47c0f7ffce8c5458d3ad1fee57",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/TerminatesIffRat/Variant998729d1eb31180987ff8bf5cef168f428e658d97505c798f15779392ec0329e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant998729d1eb31180987ff8bf5cef168f428e658d97505c798f15779392ec0329e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant998729d1eb31180987ff8bf5cef168f428e658d97505c798f15779392ec0329e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27f5cbb5311c7f47c0f7ffce8c5458d3ad1fee57`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/TerminatesIffRat/Variant998729d1eb31180987ff8bf5cef168f428e658d97505c798f15779392ec0329e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/TerminatesIffRat/Variant998729d1eb31180987ff8bf5cef168f428e658d97505c798f15779392ec0329e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.Computation.Approximations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.ContinuedFractions.Computation.CorrectnessTerminating` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Floor` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_gcf_pair_rat_eq_of_nth_contsAux](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant998729d1eb31180987ff8bf5cef168f428e658d97505c798f15779392ec0329e.lean/declarations/exists-gcf-pair-rat-eq-of-nth-contsaux--229adef9fb4a090058be2129.md) | 67 | `result-track:229adef9fb4a090058be21292a126bad2739196f55a1f11d38a59e2eb7447e14` |
| 2 | `theorem` | [exists_gcf_pair_rat_eq_nth_conts](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant998729d1eb31180987ff8bf5cef168f428e658d97505c798f15779392ec0329e.lean/declarations/exists-gcf-pair-rat-eq-nth-conts--6c8e67bd03dd6dfbe7e73e71.md) | 105 | `result-track:6c8e67bd03dd6dfbe7e73e71ff6b932760bf7ef8d039b4402ac501ace76b5cbf` |
| 3 | `theorem` | [exists_rat_eq_nth_num](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant998729d1eb31180987ff8bf5cef168f428e658d97505c798f15779392ec0329e.lean/declarations/exists-rat-eq-nth-num--ea0e86454e7db0f38390dcd0.md) | 109 | `result-track:ea0e86454e7db0f38390dcd06db6762c5e5229e4c04875a4759a1f166f40e102` |
| 4 | `theorem` | [exists_rat_eq_nth_den](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant998729d1eb31180987ff8bf5cef168f428e658d97505c798f15779392ec0329e.lean/declarations/exists-rat-eq-nth-den--330976b419d9a95344a0cd5a.md) | 114 | `result-track:330976b419d9a95344a0cd5a33651a1260a13e055f9af142029a9d2a9ca784ab` |
| 5 | `theorem` | [exists_rat_eq_nth_conv](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant998729d1eb31180987ff8bf5cef168f428e658d97505c798f15779392ec0329e.lean/declarations/exists-rat-eq-nth-conv--a40163306b0a8eae6613f9b6.md) | 120 | `result-track:a40163306b0a8eae6613f9b67b2cfca23a5d79bc6230ffc5fbcd400ac0178a8f` |
| 6 | `theorem` | [exists_rat_eq_of_terminates](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant998729d1eb31180987ff8bf5cef168f428e658d97505c798f15779392ec0329e.lean/declarations/exists-rat-eq-of-terminates--5245a1786591ab368f9d778e.md) | 129 | `result-track:5245a1786591ab368f9d778e787ad0b2e7a418caaf8be77c93636a0696354258` |
| 7 | `theorem` | [coe_of_rat_eq](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant998729d1eb31180987ff8bf5cef168f428e658d97505c798f15779392ec0329e.lean/declarations/coe-of-rat-eq--3534f8546e05aa097b38db79.md) | 165 | `result-track:3534f8546e05aa097b38db794d14399b7b181966233c57323eb2f83596263957` |
| 8 | `theorem` | [coe_stream_nth_rat_eq](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant998729d1eb31180987ff8bf5cef168f428e658d97505c798f15779392ec0329e.lean/declarations/coe-stream-nth-rat-eq--678a369ece35c861872a68af.md) | 169 | `result-track:678a369ece35c861872a68afb51c1b85263395f6ab029dbc7f0399671076b41d` |
| 9 | `theorem` | [coe_stream'_rat_eq](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant998729d1eb31180987ff8bf5cef168f428e658d97505c798f15779392ec0329e.lean/declarations/coe-stream-rat-eq--128fa9c51a5d625ae3f93af1.md) | 189 | `result-track:128fa9c51a5d625ae3f93af1b6456d737f547587759f4967c4a98c214ac64b39` |
| 10 | `theorem` | [coe_of_h_rat_eq](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant998729d1eb31180987ff8bf5cef168f428e658d97505c798f15779392ec0329e.lean/declarations/coe-of-h-rat-eq--f615a018a86189f341b41da0.md) | 199 | `result-track:f615a018a86189f341b41da033b8c0a5f6e0c4197f63ffb4f49e3a2804afe651` |
| 11 | `theorem` | [coe_of_s_get?_rat_eq](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant998729d1eb31180987ff8bf5cef168f428e658d97505c798f15779392ec0329e.lean/declarations/coe-of-s-get-rat-eq--0205a0e536651729de17a639.md) | 204 | `result-track:0205a0e536651729de17a639d629d01d90fb69a7f83ae27238fdc1e8d12b32fc` |
| 12 | `theorem` | [coe_of_s_rat_eq](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant998729d1eb31180987ff8bf5cef168f428e658d97505c798f15779392ec0329e.lean/declarations/coe-of-s-rat-eq--905e189a01be5e8e7f2cabaa.md) | 212 | `result-track:905e189a01be5e8e7f2cabaaf41b61ab0aa1ba71208f65c6b0d28daf977ac62c` |
| 13 | `theorem` | [coe_of_rat_eq](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant998729d1eb31180987ff8bf5cef168f428e658d97505c798f15779392ec0329e.lean/declarations/coe-of-rat-eq--d26c86ae08d69189e6de2351.md) | 217 | `result-track:d26c86ae08d69189e6de23515e9f421b98bddb20f70cd1da8fc0c3f1c874021a` |
| 14 | `theorem` | [of_terminates_iff_of_rat_terminates](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant998729d1eb31180987ff8bf5cef168f428e658d97505c798f15779392ec0329e.lean/declarations/of-terminates-iff-of-rat-terminates--430f5dd3e2b13cecd57a2c75.md) | 223 | `result-track:430f5dd3e2b13cecd57a2c75221d4fac7a90aac1424a3248bc1150b971199ec3` |
| 15 | `theorem` | [of_inv_fr_num_lt_num_of_pos](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant998729d1eb31180987ff8bf5cef168f428e658d97505c798f15779392ec0329e.lean/declarations/of-inv-fr-num-lt-num-of-pos--9d51087db80ccd2eefe0785f.md) | 255 | `result-track:9d51087db80ccd2eefe0785f3da880d464605d54dd7ba842c1dd9c945e49d2da` |
| 16 | `theorem` | [stream_succ_nth_fr_num_lt_nth_fr_num_rat](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant998729d1eb31180987ff8bf5cef168f428e658d97505c798f15779392ec0329e.lean/declarations/stream-succ-nth-fr-num-lt-nth-fr-num-rat--b6fc927ef7f73bf708044d0b.md) | 260 | `result-track:b6fc927ef7f73bf708044d0ba01ccead34b87c590c16a56d43e23f6632781e82` |
| 17 | `theorem` | [stream_nth_fr_num_le_fr_num_sub_n_rat](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant998729d1eb31180987ff8bf5cef168f428e658d97505c798f15779392ec0329e.lean/declarations/stream-nth-fr-num-le-fr-num-sub-n-rat--9808b479ca445232768688a4.md) | 276 | `result-track:9808b479ca445232768688a476cf66a0936fbb63ae37c0643e4d3ff6d76b1aef` |
| 18 | `theorem` | [exists_nth_stream_eq_none_of_rat](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant998729d1eb31180987ff8bf5cef168f428e658d97505c798f15779392ec0329e.lean/declarations/exists-nth-stream-eq-none-of-rat--acf47db9284e3e837e6924da.md) | 295 | `result-track:acf47db9284e3e837e6924dacb42cf997510856984a7e5d01a763c41173aa4de` |
| 19 | `theorem` | [terminates_of_rat](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant998729d1eb31180987ff8bf5cef168f428e658d97505c798f15779392ec0329e.lean/declarations/terminates-of-rat--2c08bb1d91cc73b4bd2ad91f.md) | 314 | `result-track:2c08bb1d91cc73b4bd2ad91f2c993ac462a66c3008001cebd210e0bbd4e84cf4` |
| 20 | `theorem` | [terminates_iff_rat](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant998729d1eb31180987ff8bf5cef168f428e658d97505c798f15779392ec0329e.lean/declarations/terminates-iff-rat--457f56ad17b987051b7ad548.md) | 323 | `result-track:457f56ad17b987051b7ad5487f59fc25165ff10dd10ae0bf90cf82695ac75326` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
