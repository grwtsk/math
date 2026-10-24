# Verification target: GRWTSK.Algebra.UniversalAlgebra.TerminatesIffRat.Variant9a88fd4546926bf1f98fcbc405c06c98a8abf46d1dbc7d7d5e2df500aa234c53

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79ca4b66fb5dc3d384e9f9eec96d0f4bfafa1047",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/TerminatesIffRat/Variant9a88fd4546926bf1f98fcbc405c06c98a8abf46d1dbc7d7d5e2df500aa234c53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant9a88fd4546926bf1f98fcbc405c06c98a8abf46d1dbc7d7d5e2df500aa234c53.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant9a88fd4546926bf1f98fcbc405c06c98a8abf46d1dbc7d7d5e2df500aa234c53.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79ca4b66fb5dc3d384e9f9eec96d0f4bfafa1047`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/TerminatesIffRat/Variant9a88fd4546926bf1f98fcbc405c06c98a8abf46d1dbc7d7d5e2df500aa234c53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/TerminatesIffRat/Variant9a88fd4546926bf1f98fcbc405c06c98a8abf46d1dbc7d7d5e2df500aa234c53.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.Computation.Approximations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.ContinuedFractions.Computation.CorrectnessTerminating` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Floor` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_gcf_pair_rat_eq_of_nth_contsAux](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant9a88fd4546926bf1f98fcbc405c06c98a8abf46d1dbc7d7d5e2df500aa234c53.lean/declarations/exists-gcf-pair-rat-eq-of-nth-contsaux--2142ba0f66ed8f444641a51b.md) | 59 | `result-track:2142ba0f66ed8f444641a51bc9e9dcdee1c407013c1feb9e4fbac7d34a126759` |
| 2 | `theorem` | [exists_gcf_pair_rat_eq_nth_conts](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant9a88fd4546926bf1f98fcbc405c06c98a8abf46d1dbc7d7d5e2df500aa234c53.lean/declarations/exists-gcf-pair-rat-eq-nth-conts--a7d35b5b8c4a055a94344adf.md) | 97 | `result-track:a7d35b5b8c4a055a94344adfb22e461b3297d56e7b3db3c66d5ca82b37a66f73` |
| 3 | `theorem` | [exists_rat_eq_nth_num](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant9a88fd4546926bf1f98fcbc405c06c98a8abf46d1dbc7d7d5e2df500aa234c53.lean/declarations/exists-rat-eq-nth-num--7d50895a467635522a76736e.md) | 101 | `result-track:7d50895a467635522a76736e336608fc167d07448533b5c4ba0aab9f1375b5d9` |
| 4 | `theorem` | [exists_rat_eq_nth_den](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant9a88fd4546926bf1f98fcbc405c06c98a8abf46d1dbc7d7d5e2df500aa234c53.lean/declarations/exists-rat-eq-nth-den--f50c68d96ddcf06e04b04687.md) | 106 | `result-track:f50c68d96ddcf06e04b046870332c773ad7fda675668e907d382ae9a9dc6e3ad` |
| 5 | `theorem` | [exists_rat_eq_nth_conv](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant9a88fd4546926bf1f98fcbc405c06c98a8abf46d1dbc7d7d5e2df500aa234c53.lean/declarations/exists-rat-eq-nth-conv--c1463362820ed810a32cd756.md) | 112 | `result-track:c1463362820ed810a32cd756d3ae80117928c2c3f950a66df7cb23b28e89e35f` |
| 6 | `theorem` | [exists_rat_eq_of_terminates](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant9a88fd4546926bf1f98fcbc405c06c98a8abf46d1dbc7d7d5e2df500aa234c53.lean/declarations/exists-rat-eq-of-terminates--65cc2f8aa5c0260d7ec918a0.md) | 121 | `result-track:65cc2f8aa5c0260d7ec918a032fb8d1e0cdb3c043b92c12b6b846519c71f7295` |
| 7 | `theorem` | [coe_of_rat_eq](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant9a88fd4546926bf1f98fcbc405c06c98a8abf46d1dbc7d7d5e2df500aa234c53.lean/declarations/coe-of-rat-eq--d8f1064bdd182769de4b9413.md) | 157 | `result-track:d8f1064bdd182769de4b941363a76d6ef2f0f6a699b2d2a78f732163bfd5086e` |
| 8 | `theorem` | [coe_stream_nth_rat_eq](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant9a88fd4546926bf1f98fcbc405c06c98a8abf46d1dbc7d7d5e2df500aa234c53.lean/declarations/coe-stream-nth-rat-eq--6ca65f8736561f0ed4253807.md) | 161 | `result-track:6ca65f8736561f0ed42538073e9673496a1062d17c7efddfd2b6fa0403c5fb6e` |
| 9 | `theorem` | [coe_stream'_rat_eq](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant9a88fd4546926bf1f98fcbc405c06c98a8abf46d1dbc7d7d5e2df500aa234c53.lean/declarations/coe-stream-rat-eq--57e091d49251e4d4d08ca75c.md) | 181 | `result-track:57e091d49251e4d4d08ca75cfeaca4c41451500a199ae793206e4c742f504e70` |
| 10 | `theorem` | [coe_of_h_rat_eq](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant9a88fd4546926bf1f98fcbc405c06c98a8abf46d1dbc7d7d5e2df500aa234c53.lean/declarations/coe-of-h-rat-eq--4c6805adc309775c717e14ba.md) | 191 | `result-track:4c6805adc309775c717e14ba00446a33814229d0ac6036a3721eda019fc546b6` |
| 11 | `theorem` | [coe_of_s_get?_rat_eq](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant9a88fd4546926bf1f98fcbc405c06c98a8abf46d1dbc7d7d5e2df500aa234c53.lean/declarations/coe-of-s-get-rat-eq--4ba43610dd1d4922459d0786.md) | 196 | `result-track:4ba43610dd1d4922459d078658b6af793870b7d15c367954d2b13583d3fc072d` |
| 12 | `theorem` | [coe_of_s_rat_eq](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant9a88fd4546926bf1f98fcbc405c06c98a8abf46d1dbc7d7d5e2df500aa234c53.lean/declarations/coe-of-s-rat-eq--31a4eac14d061f0846e6943c.md) | 204 | `result-track:31a4eac14d061f0846e6943c77c0a095738f3f16bc1edb02e9c3cc2a13f5d42d` |
| 13 | `theorem` | [coe_of_rat_eq](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant9a88fd4546926bf1f98fcbc405c06c98a8abf46d1dbc7d7d5e2df500aa234c53.lean/declarations/coe-of-rat-eq--46980ed37af9ca1036a4e3f7.md) | 209 | `result-track:46980ed37af9ca1036a4e3f7eb8e24300a174aafeda70feb60267715a7344764` |
| 14 | `theorem` | [of_terminates_iff_of_rat_terminates](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant9a88fd4546926bf1f98fcbc405c06c98a8abf46d1dbc7d7d5e2df500aa234c53.lean/declarations/of-terminates-iff-of-rat-terminates--2ae431946fc4c8c9b75be358.md) | 215 | `result-track:2ae431946fc4c8c9b75be358272cf8e207b34d16a4378fcb36df19eb6c416a17` |
| 15 | `theorem` | [of_inv_fr_num_lt_num_of_pos](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant9a88fd4546926bf1f98fcbc405c06c98a8abf46d1dbc7d7d5e2df500aa234c53.lean/declarations/of-inv-fr-num-lt-num-of-pos--dcdb59358de88b1c48aff719.md) | 247 | `result-track:dcdb59358de88b1c48aff7193a3b378774170bb8bbbba959f7e5986ee60c19c1` |
| 16 | `theorem` | [stream_succ_nth_fr_num_lt_nth_fr_num_rat](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant9a88fd4546926bf1f98fcbc405c06c98a8abf46d1dbc7d7d5e2df500aa234c53.lean/declarations/stream-succ-nth-fr-num-lt-nth-fr-num-rat--d6885c3810831597de035260.md) | 252 | `result-track:d6885c3810831597de03526028154c00789e5dfd30256cc417c01f44f6c1cc60` |
| 17 | `theorem` | [stream_nth_fr_num_le_fr_num_sub_n_rat](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant9a88fd4546926bf1f98fcbc405c06c98a8abf46d1dbc7d7d5e2df500aa234c53.lean/declarations/stream-nth-fr-num-le-fr-num-sub-n-rat--55e6660d32d30e8655bb0d63.md) | 268 | `result-track:55e6660d32d30e8655bb0d63320919ae54d6d78813a596be077825f6ca7d9b4f` |
| 18 | `theorem` | [exists_nth_stream_eq_none_of_rat](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant9a88fd4546926bf1f98fcbc405c06c98a8abf46d1dbc7d7d5e2df500aa234c53.lean/declarations/exists-nth-stream-eq-none-of-rat--a27c7b994182e76debe0f5b8.md) | 287 | `result-track:a27c7b994182e76debe0f5b881b301d20558a200e7ae230da3694074a4941c6f` |
| 19 | `theorem` | [terminates_of_rat](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant9a88fd4546926bf1f98fcbc405c06c98a8abf46d1dbc7d7d5e2df500aa234c53.lean/declarations/terminates-of-rat--2e91318414a724f63eb67033.md) | 306 | `result-track:2e91318414a724f63eb67033a91a58e4346a7dc2fbfdd7f3e2916060a9ca6456` |
| 20 | `theorem` | [terminates_iff_rat](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant9a88fd4546926bf1f98fcbc405c06c98a8abf46d1dbc7d7d5e2df500aa234c53.lean/declarations/terminates-iff-rat--26d8300b9a0a59bc5ed4d444.md) | 315 | `result-track:26d8300b9a0a59bc5ed4d444284a4656503680c09cb71cfd85f7c50986d0a056` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
