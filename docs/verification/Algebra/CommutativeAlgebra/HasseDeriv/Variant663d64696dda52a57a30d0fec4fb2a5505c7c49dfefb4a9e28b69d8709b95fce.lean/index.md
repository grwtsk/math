# Verification target: GRWTSK.Algebra.CommutativeAlgebra.HasseDeriv.Variant663d64696dda52a57a30d0fec4fb2a5505c7c49dfefb4a9e28b69d8709b95fce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "588405804dd0d56c5a7cbd6067271b6dbeb1bc00",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/HasseDeriv/Variant663d64696dda52a57a30d0fec4fb2a5505c7c49dfefb4a9e28b69d8709b95fce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant663d64696dda52a57a30d0fec4fb2a5505c7c49dfefb4a9e28b69d8709b95fce.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant663d64696dda52a57a30d0fec4fb2a5505c7c49dfefb4a9e28b69d8709b95fce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `588405804dd0d56c5a7cbd6067271b6dbeb1bc00`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/HasseDeriv/Variant663d64696dda52a57a30d0fec4fb2a5505c7c49dfefb4a9e28b69d8709b95fce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/HasseDeriv/Variant663d64696dda52a57a30d0fec4fb2a5505c7c49dfefb4a9e28b69d8709b95fce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.BigOperators` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Derivative` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Cast` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Vandermonde` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hasseDeriv](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant663d64696dda52a57a30d0fec4fb2a5505c7c49dfefb4a9e28b69d8709b95fce.lean/declarations/hassederiv--27b98932f6f41699d50ad6ed.md) | 63 | `declaration-track:27b98932f6f41699d50ad6ed049e6db692d2c92f69f8caa2b155d18d44267efd` |
| 2 | `theorem` | [hasseDeriv_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant663d64696dda52a57a30d0fec4fb2a5505c7c49dfefb4a9e28b69d8709b95fce.lean/declarations/hassederiv-apply--7a0002422c4410915165e906.md) | 66 | `result-track:7a0002422c4410915165e9061c56f0888b7f05751ff88a311d50bde8be26e7d3` |
| 3 | `theorem` | [hasseDeriv_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant663d64696dda52a57a30d0fec4fb2a5505c7c49dfefb4a9e28b69d8709b95fce.lean/declarations/hassederiv-coeff--c999f85dee8e309e9278cac6.md) | 72 | `result-track:c999f85dee8e309e9278cac6df286194971e7cc4b11e12e0fcd528b40eca546d` |
| 4 | `theorem` | [hasseDeriv_zero'](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant663d64696dda52a57a30d0fec4fb2a5505c7c49dfefb4a9e28b69d8709b95fce.lean/declarations/hassederiv-zero--e63d6121e821fb3aaf40fde5.md) | 87 | `result-track:e63d6121e821fb3aaf40fde516ee178e8ca4ec2f644c2271e07c5c54d11b8949` |
| 5 | `theorem` | [hasseDeriv_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant663d64696dda52a57a30d0fec4fb2a5505c7c49dfefb4a9e28b69d8709b95fce.lean/declarations/hassederiv-zero--b87c871cf46a5891f984e346.md) | 92 | `result-track:b87c871cf46a5891f984e34675720a1ef9d2351674d6f61135441670132e272d` |
| 6 | `theorem` | [hasseDeriv_eq_zero_of_lt_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant663d64696dda52a57a30d0fec4fb2a5505c7c49dfefb4a9e28b69d8709b95fce.lean/declarations/hassederiv-eq-zero-of-lt-natdegree--fc52f3c36a9325a64672deb6.md) | 95 | `result-track:fc52f3c36a9325a64672deb646c85a4b5e9757ac974934d468fb793128bb387c` |
| 7 | `theorem` | [hasseDeriv_one'](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant663d64696dda52a57a30d0fec4fb2a5505c7c49dfefb4a9e28b69d8709b95fce.lean/declarations/hassederiv-one--bdff436ffb97bb055045bc7f.md) | 101 | `result-track:bdff436ffb97bb055045bc7fec1722fc1ffdaffa206a37af22e96498f6ac0e9d` |
| 8 | `theorem` | [hasseDeriv_one](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant663d64696dda52a57a30d0fec4fb2a5505c7c49dfefb4a9e28b69d8709b95fce.lean/declarations/hassederiv-one--b4a48ab848af3e1b0756e856.md) | 106 | `result-track:b4a48ab848af3e1b0756e856f0454013e2e226cf5476c958d4984b2faef88aee` |
| 9 | `theorem` | [hasseDeriv_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant663d64696dda52a57a30d0fec4fb2a5505c7c49dfefb4a9e28b69d8709b95fce.lean/declarations/hassederiv-monomial--b0d5c9b106e516ef854c2e04.md) | 110 | `result-track:b0d5c9b106e516ef854c2e045d73afbdd366b389d306bb6f8dccd969e3ded750` |
| 10 | `theorem` | [hasseDeriv_C](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant663d64696dda52a57a30d0fec4fb2a5505c7c49dfefb4a9e28b69d8709b95fce.lean/declarations/hassederiv-c--e51791272c018ddcad99d7ed.md) | 125 | `result-track:e51791272c018ddcad99d7ed4e691e66534a7f3707e1a1d8638fae63b1278fc0` |
| 11 | `theorem` | [hasseDeriv_apply_one](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant663d64696dda52a57a30d0fec4fb2a5505c7c49dfefb4a9e28b69d8709b95fce.lean/declarations/hassederiv-apply-one--5bc7446852a09465de9ea05e.md) | 129 | `result-track:5bc7446852a09465de9ea05e2acf62756f4a05addc14f2b477dcd7bc11b3e459` |
| 12 | `theorem` | [hasseDeriv_X](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant663d64696dda52a57a30d0fec4fb2a5505c7c49dfefb4a9e28b69d8709b95fce.lean/declarations/hassederiv-x--be854801a383d931afa2c278.md) | 132 | `result-track:be854801a383d931afa2c278b5d92bd6f2433dac81876f067a88f5299faeb3b7` |
| 13 | `theorem` | [factorial_smul_hasseDeriv](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant663d64696dda52a57a30d0fec4fb2a5505c7c49dfefb4a9e28b69d8709b95fce.lean/declarations/factorial-smul-hassederiv--0d3062b67790ac6f05709325.md) | 136 | `result-track:0d3062b67790ac6f05709325821869079c541551469368d5c276834fcd3dc114` |
| 14 | `theorem` | [hasseDeriv_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant663d64696dda52a57a30d0fec4fb2a5505c7c49dfefb4a9e28b69d8709b95fce.lean/declarations/hassederiv-comp--416459ce1f7893e39cdf665e.md) | 156 | `result-track:416459ce1f7893e39cdf665e05b253b4041f064c053d3f5c37e2ed85b20c5123` |
| 15 | `theorem` | [natDegree_hasseDeriv_le](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant663d64696dda52a57a30d0fec4fb2a5505c7c49dfefb4a9e28b69d8709b95fce.lean/declarations/natdegree-hassederiv-le--32f1de0103bcdf6f0e4c10cf.md) | 183 | `result-track:32f1de0103bcdf6f0e4c10cfee0092bc625f4bef9f369155e78afa1cbc1f94d9` |
| 16 | `theorem` | [natDegree_hasseDeriv](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant663d64696dda52a57a30d0fec4fb2a5505c7c49dfefb4a9e28b69d8709b95fce.lean/declarations/natdegree-hassederiv--329c771decbf8dc5817bc796.md) | 200 | `result-track:329c771decbf8dc5817bc7966abb53b694c3f75eefa879dd41b541c282c92016` |
| 17 | `theorem` | [hasseDeriv_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/HasseDeriv/Variant663d64696dda52a57a30d0fec4fb2a5505c7c49dfefb4a9e28b69d8709b95fce.lean/declarations/hassederiv-mul--9a61a760642308d270ed77e1.md) | 219 | `result-track:9a61a760642308d270ed77e17d25873df4d7d48392a9e650f328a5510cf4375b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
