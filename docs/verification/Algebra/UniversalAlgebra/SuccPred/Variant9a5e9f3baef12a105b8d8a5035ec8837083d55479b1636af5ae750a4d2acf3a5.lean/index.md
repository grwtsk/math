# Verification target: GRWTSK.Algebra.UniversalAlgebra.SuccPred.Variant9a5e9f3baef12a105b8d8a5035ec8837083d55479b1636af5ae750a4d2acf3a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00b11b88270ead80d4d31392e83656b15bc78adf",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/SuccPred/Variant9a5e9f3baef12a105b8d8a5035ec8837083d55479b1636af5ae750a4d2acf3a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant9a5e9f3baef12a105b8d8a5035ec8837083d55479b1636af5ae750a4d2acf3a5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant9a5e9f3baef12a105b8d8a5035ec8837083d55479b1636af5ae750a4d2acf3a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00b11b88270ead80d4d31392e83656b15bc78adf`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/SuccPred/Variant9a5e9f3baef12a105b8d8a5035ec8837083d55479b1636af5ae750a4d2acf3a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/SuccPred/Variant9a5e9f3baef12a105b8d8a5035ec8837083d55479b1636af5ae750a4d2acf3a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Nat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Nat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.WithTop` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.Unbundled.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.SuccPred` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Nat` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.Archimedean` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.WithBot` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [instSuccOrder](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant9a5e9f3baef12a105b8d8a5035ec8837083d55479b1636af5ae750a4d2acf3a5.lean/declarations/instsuccorder--4e028f40e605b09761e6f5a2.md) | 37 | `declaration-track:4e028f40e605b09761e6f5a2cebb0cc3ed2b7da6e8a00a67bc1ff1220cdd55df` |
| 2 | `instance` | [instSuccAddOrder](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant9a5e9f3baef12a105b8d8a5035ec8837083d55479b1636af5ae750a4d2acf3a5.lean/declarations/instsuccaddorder--69ad1bbe5de49192ba67c144.md) | 40 | `declaration-track:69ad1bbe5de49192ba67c1443f8254f0d756b9d036507f6eb7ecea0f5ca000c8` |
| 3 | `abbrev` | [instPredOrder](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant9a5e9f3baef12a105b8d8a5035ec8837083d55479b1636af5ae750a4d2acf3a5.lean/declarations/instpredorder--54b52730caa76a64c7389c52.md) | 43 | `declaration-track:54b52730caa76a64c7389c525d600404c7687309f2cc371d51583f09ccc0509c` |
| 4 | `instance` | [instPredSubOrder](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant9a5e9f3baef12a105b8d8a5035ec8837083d55479b1636af5ae750a4d2acf3a5.lean/declarations/instpredsuborder--c626e2aaa6269a48de988b8d.md) | 55 | `declaration-track:c626e2aaa6269a48de988b8dbbb556630c5a0111f058e2236474ee353c784b1e` |
| 5 | `theorem` | [succ_eq_succ](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant9a5e9f3baef12a105b8d8a5035ec8837083d55479b1636af5ae750a4d2acf3a5.lean/declarations/succ-eq-succ--a815caac485955c77aff4245.md) | 58 | `result-track:a815caac485955c77aff4245deff17938fa8f4b9d41bd019b74558585ecbff02` |
| 6 | `theorem` | [pred_eq_pred](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant9a5e9f3baef12a105b8d8a5035ec8837083d55479b1636af5ae750a4d2acf3a5.lean/declarations/pred-eq-pred--52ad9007a2ab2b187e3813e3.md) | 62 | `result-track:52ad9007a2ab2b187e3813e31de33a3aaea732928073c4080fd4f31fd7fa1e2b` |
| 7 | `theorem` | [succ_iterate](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant9a5e9f3baef12a105b8d8a5035ec8837083d55479b1636af5ae750a4d2acf3a5.lean/declarations/succ-iterate--36254c157ef8d3e870b1210f.md) | 65 | `result-track:36254c157ef8d3e870b1210ff3b85dbda27a95f84aa753bdac36f62450999361` |
| 8 | `theorem` | [pred_iterate](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant9a5e9f3baef12a105b8d8a5035ec8837083d55479b1636af5ae750a4d2acf3a5.lean/declarations/pred-iterate--c97c391886a82bc24efcafe1.md) | 68 | `result-track:c97c391886a82bc24efcafe170138505b8971911b3c73b462883f4f3fcb44596` |
| 9 | `lemma` | [le_succ_iff_eq_or_le](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant9a5e9f3baef12a105b8d8a5035ec8837083d55479b1636af5ae750a4d2acf3a5.lean/declarations/le-succ-iff-eq-or-le--062e61eb458ae9c26d6b4e67.md) | 74 | `result-track:062e61eb458ae9c26d6b4e673ce55932b71de8a69a7dc7299f12c392526ae9a9` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant9a5e9f3baef12a105b8d8a5035ec8837083d55479b1636af5ae750a4d2acf3a5.lean/declarations/instance--5791919ea696c9618acae411.md) | 76 | `declaration-track:5791919ea696c9618acae4114bb202ce122478642af71967fe4ee735e81b3aae` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant9a5e9f3baef12a105b8d8a5035ec8837083d55479b1636af5ae750a4d2acf3a5.lean/declarations/instance--431efa3d4c786864d64df0c7.md) | 79 | `declaration-track:431efa3d4c786864d64df0c7058763b6c9892302b6cd775201535426ba6b9044` |
| 12 | `lemma` | [forall_ne_zero_iff](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant9a5e9f3baef12a105b8d8a5035ec8837083d55479b1636af5ae750a4d2acf3a5.lean/declarations/forall-ne-zero-iff--da76bd55b5af49997a0f0a00.md) | 82 | `result-track:da76bd55b5af49997a0f0a003b52aeccae3c7bc6c3fe4945c213148275b915cb` |
| 13 | `theorem` | [Fin.coe_covBy_iff](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant9a5e9f3baef12a105b8d8a5035ec8837083d55479b1636af5ae750a4d2acf3a5.lean/declarations/fin-coe-covby-iff--410f09bdce3b7cdc76633457.md) | 89 | `result-track:410f09bdce3b7cdc766334575e83074fdbb3c9f8adecbc588a53636373a6cf37` |
| 14 | `theorem` | [withBotSucc_zero](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant9a5e9f3baef12a105b8d8a5035ec8837083d55479b1636af5ae750a4d2acf3a5.lean/declarations/withbotsucc-zero--422a4b8aca52bc6136027eef.md) | 95 | `result-track:422a4b8aca52bc6136027eefe5277525ff1bd7db06260c3e9154059be9d65b4a` |
| 15 | `theorem` | [withBotSucc_one](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant9a5e9f3baef12a105b8d8a5035ec8837083d55479b1636af5ae750a4d2acf3a5.lean/declarations/withbotsucc-one--aa4dd25a84686fa181eb2502.md) | 98 | `result-track:aa4dd25a84686fa181eb2502f9589a0b209dda6d7e00f0121fb166cfcf146b74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
