# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Trunc.Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73daacee0a619409cdde8471ab98f56b20f81e9a",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73daacee0a619409cdde8471ab98f56b20f81e9a`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [truncAux](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/declarations/truncaux--3e4200d139ceeb91b871db8b.md) | 41 | `declaration-track:3e4200d139ceeb91b871db8be762a7510127bd32572f4d440a280b1281d4dec6` |
| 2 | `theorem` | [coeff_truncAux](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/declarations/coeff-truncaux--82d04a660e6054ed34be00d4.md) | 44 | `result-track:82d04a660e6054ed34be00d4fdb4f14dcfdeb90c9191356613131f3a10aab788` |
| 3 | `def` | [trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/declarations/trunc--615794b0a98a6333ede64fdf.md) | 51 | `declaration-track:615794b0a98a6333ede64fdf0110f51c46fd7a0f664f270ebd290397ebb77863` |
| 4 | `lemma` | [trunc_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/declarations/trunc-apply--cf9fac14fbfe6062284b7e00.md) | 60 | `result-track:cf9fac14fbfe6062284b7e00f054b177c2523d4d2c87b367710cad77d8b2c655` |
| 5 | `theorem` | [coeff_trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/declarations/coeff-trunc--44f6d1262cf3cd33da4a13e2.md) | 63 | `result-track:44f6d1262cf3cd33da4a13e207ef9d1140f3d1c39198920fa5ba2937327e1fb1` |
| 6 | `theorem` | [trunc_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/declarations/trunc-one--773801831496163b994eb00b.md) | 68 | `result-track:773801831496163b994eb00b5e8c5f221ab400b82e1d88e4998e97de88f44b1d` |
| 7 | `theorem` | [trunc_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/declarations/trunc-c--10e5cf1364271f275aa28375.md) | 73 | `result-track:10e5cf1364271f275aa283755faaf70580d8b2c25c76fab890cfcef46e52ea01` |
| 8 | `theorem` | [trunc_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/declarations/trunc-succ--b1682026b487247f0bc270ce.md) | 78 | `result-track:b1682026b487247f0bc270ce0812edc9132ccc0bcef1c837186618588e45423f` |
| 9 | `theorem` | [natDegree_trunc_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/declarations/natdegree-trunc-lt--532d8412f152162a8b7e968e.md) | 82 | `result-track:532d8412f152162a8b7e968e576dfe1b5e5367b69921729edfbc3144edaee151` |
| 10 | `lemma` | [trunc_zero'](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/declarations/trunc-zero--8ca8071f42a2ac97d28d1dbe.md) | 85 | `result-track:8ca8071f42a2ac97d28d1dbed65faf8bbdc18182a80077910ec1ce2ba24aa40d` |
| 11 | `theorem` | [degree_trunc_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/declarations/degree-trunc-lt--bf23b6cdddb46ce3cc0cf05d.md) | 87 | `result-track:bf23b6cdddb46ce3cc0cf05d2d7baf24631ad57453423fd58cb1a17d995b8c46` |
| 12 | `theorem` | [eval₂_trunc_eq_sum_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/declarations/eval-trunc-eq-sum-range--89ec6a5588c0f55bb5e9ca7c.md) | 90 | `result-track:89ec6a5588c0f55bb5e9ca7c340f28f3ff22c93823d57c7a186b95090f74046d` |
| 13 | `theorem` | [trunc_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/declarations/trunc-x--3ceabebf6d96c17d00592b88.md) | 104 | `result-track:3ceabebf6d96c17d00592b886ab5c8f2bb25741aa191ce3ba66ee9d8ace7035b` |
| 14 | `lemma` | [trunc_X_of](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/declarations/trunc-x-of--765c1590d3dc0ff151df2a01.md) | 116 | `result-track:765c1590d3dc0ff151df2a014e617a199c60b540f3552143e3d1cc3d332f4dfc` |
| 15 | `lemma` | [trunc_one_left](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/declarations/trunc-one-left--83dde298040645b0d28239f8.md) | 121 | `result-track:83dde298040645b0d28239f89bde3c701cab9bfee5f2bddbe429a698b95b16d0` |
| 16 | `lemma` | [trunc_one_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/declarations/trunc-one-x--e90e40508284ec698e385219.md) | 124 | `result-track:e90e40508284ec698e385219334fc9cb7902957f8d8d3033fdaa31eed1cd2eae` |
| 17 | `lemma` | [trunc_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/declarations/trunc-c-mul--c80ba5c3e6aa38007b1cd6a3.md) | 127 | `result-track:c80ba5c3e6aa38007b1cd6a3c81032decfa30a567178ae1e6a85288ffa5d9e26` |
| 18 | `lemma` | [trunc_mul_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/declarations/trunc-mul-c--279c3b1ac101d33b6d23ddb5.md) | 131 | `result-track:279c3b1ac101d33b6d23ddb59592f973a50c040bdd9325f1ad1edb277931216f` |
| 19 | `lemma` | [eq_shift_mul_X_pow_add_trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/declarations/eq-shift-mul-x-pow-add-trunc--41a15c8db8bb650f8e86f2ed.md) | 135 | `result-track:41a15c8db8bb650f8e86f2edb766b7e31ed75e1beded8c7513d3f11651122781` |
| 20 | `lemma` | [eq_X_pow_mul_shift_add_trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/declarations/eq-x-pow-mul-shift-add-trunc--386e560be9a12022df2eb016.md) | 143 | `result-track:386e560be9a12022df2eb016559e7712f7333b4e063e1a43f8894b0c57a3610d` |
| 21 | `lemma` | [monomial_eq_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/declarations/monomial-eq-c-mul-x-pow--c09ee157bd9267b88a3f1bc3.md) | 147 | `result-track:c09ee157bd9267b88a3f1bc3505528f985c2f8afdcbf73aacbfe1be643d1710a` |
| 22 | `lemma` | [trunc_X_pow_self_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/declarations/trunc-x-pow-self-mul--d346e07a03be732d8fdd9a6b.md) | 151 | `result-track:d346e07a03be732d8fdd9a6bd41c3e8741907405050f84b7dadad7795dd16976` |
| 23 | `theorem` | [trunc_trunc_of_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/declarations/trunc-trunc-of-le--da799c3badfee276e3513614.md) | 166 | `result-track:da799c3badfee276e3513614216ec9b47c9266521f46520152521e632b8efacb` |
| 24 | `theorem` | [trunc_trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/declarations/trunc-trunc--6b69304d3d263c5e1fada514.md) | 174 | `result-track:6b69304d3d263c5e1fada5143b5ff09e1fc18fa5111a8efd7c8eb1f05abdc9db` |
| 25 | `theorem` | [trunc_trunc_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/declarations/trunc-trunc-mul--69c57427e320d2e73b37eda8.md) | 177 | `result-track:69c57427e320d2e73b37eda840e56696be629168fde2bb78e7b3065ebc57b026` |
| 26 | `theorem` | [trunc_mul_trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/declarations/trunc-mul-trunc--d226855e3e9cb9d4b5155870.md) | 188 | `result-track:d226855e3e9cb9d4b515587004bffa1611b32b202f8444047aa7b00ad6adb477` |
| 27 | `theorem` | [trunc_trunc_mul_trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/declarations/trunc-trunc-mul-trunc--c767e0a574a501be18cfd1f7.md) | 192 | `result-track:c767e0a574a501be18cfd1f7fa5bd2e599b610bf1675dbb5061e71058e928989` |
| 28 | `theorem` | [trunc_trunc_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/declarations/trunc-trunc-pow--c7b7000eab3952ea2c44b3f6.md) | 196 | `result-track:c7b7000eab3952ea2c44b3f6769004a847c9a2dc117cac577bac237f1838ef4d` |
| 29 | `theorem` | [trunc_coe_eq_self](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/declarations/trunc-coe-eq-self--155d34ad4e2ddccebbdb35ac.md) | 205 | `result-track:155d34ad4e2ddccebbdb35ac8d96ff921bb3972c59c726b29adee0cd45309955` |
| 30 | `theorem` | [coeff_coe_trunc_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/declarations/coeff-coe-trunc-of-lt--b1a65492b53725d60f0230ce.md) | 218 | `result-track:b1a65492b53725d60f0230ceb6ab984108fa8de72896523fb84b0cbcccdfd2b1` |
| 31 | `theorem` | [coeff_mul_eq_coeff_trunc_mul_trunc₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/declarations/coeff-mul-eq-coeff-trunc-mul-trunc--7fae370a5a8bc21c774c265d.md) | 224 | `result-track:7fae370a5a8bc21c774c265d5a4e23764a396a8d59a72a7949f8f20757b78d6e` |
| 32 | `theorem` | [coeff_mul_eq_coeff_trunc_mul_trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/declarations/coeff-mul-eq-coeff-trunc-mul-trunc--120ed18bf5ce82a461613902.md) | 230 | `result-track:120ed18bf5ce82a4616139020aec1a290fda086327bb7982d39ea3a62ed668db` |
| 33 | `lemma` | [trunc_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/declarations/trunc-sub--f0c6e4272a2f744bc61a8a98.md) | 241 | `result-track:f0c6e4272a2f744bc61a8a983f25671cfe1a7d85e001ffdff039497f54ba94b3` |
| 34 | `lemma` | [trunc_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean/declarations/trunc-map--0a39afe2d321ff9646d764b0.md) | 250 | `result-track:0a39afe2d321ff9646d764b0d5cf2acdeb838ed598f71ae0570681dbd22d3a81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
