# Verification target: GRWTSK.Algebra.CommutativeAlgebra.HilbertPoly.Variant00ac0bd527d317f589f534fc2b96ea1d860a2b67b6cdad2f2353fa6cfd5fef10

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5bc3eb6bf4c4060ed3363a8d79b6ad86ba3daeea",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/HilbertPoly/Variant00ac0bd527d317f589f534fc2b96ea1d860a2b67b6cdad2f2353fa6cfd5fef10.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant00ac0bd527d317f589f534fc2b96ea1d860a2b67b6cdad2f2353fa6cfd5fef10.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant00ac0bd527d317f589f534fc2b96ea1d860a2b67b6cdad2f2353fa6cfd5fef10.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5bc3eb6bf4c4060ed3363a8d79b6ad86ba3daeea`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/HilbertPoly/Variant00ac0bd527d317f589f534fc2b96ea1d860a2b67b6cdad2f2353fa6cfd5fef10.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/HilbertPoly/Variant00ac0bd527d317f589f534fc2b96ea1d860a2b67b6cdad2f2353fa6cfd5fef10.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.SMul` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Roots` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Infinite` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Pochhammer` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.WellKnown` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [preHilbertPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant00ac0bd527d317f589f534fc2b96ea1d860a2b67b6cdad2f2353fa6cfd5fef10.lean/declarations/prehilbertpoly--007671ccd4890501fb43cd7c.md) | 66 | `declaration-track:007671ccd4890501fb43cd7c03281ceafcd6e537c68979705fe6e6926232a822` |
| 2 | `lemma` | [natDegree_preHilbertPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant00ac0bd527d317f589f534fc2b96ea1d860a2b67b6cdad2f2353fa6cfd5fef10.lean/declarations/natdegree-prehilbertpoly--d0227cd72307845cc46efb91.md) | 69 | `result-track:d0227cd72307845cc46efb916d5ce3b204f435c9c23da1ac96f87625f4e914f3` |
| 3 | `lemma` | [coeff_preHilbertPoly_self](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant00ac0bd527d317f589f534fc2b96ea1d860a2b67b6cdad2f2353fa6cfd5fef10.lean/declarations/coeff-prehilbertpoly-self--8f3caae11176d98cf7dfe06d.md) | 75 | `result-track:8f3caae11176d98cf7dfe06df933ab700a80396e7694e55d542b1b0a26a8c91e` |
| 4 | `lemma` | [leadingCoeff_preHilbertPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant00ac0bd527d317f589f534fc2b96ea1d860a2b67b6cdad2f2353fa6cfd5fef10.lean/declarations/leadingcoeff-prehilbertpoly--0b43134a5c3bd3324016397d.md) | 89 | `result-track:0b43134a5c3bd3324016397d34bdeddb72a86ffafe96594e1f087fbcc7131330` |
| 5 | `lemma` | [preHilbertPoly_eq_choose_sub_add](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant00ac0bd527d317f589f534fc2b96ea1d860a2b67b6cdad2f2353fa6cfd5fef10.lean/declarations/prehilbertpoly-eq-choose-sub-add--0143fe276b2d1b1259753aa7.md) | 93 | `result-track:0143fe276b2d1b1259753aa7fb65bd4da9138f60d92768d700c1b8f1553f28aa` |
| 6 | `def` | [hilbertPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant00ac0bd527d317f589f534fc2b96ea1d860a2b67b6cdad2f2353fa6cfd5fef10.lean/declarations/hilbertpoly--4fb15e94351de62bf63ced3e.md) | 113 | `declaration-track:4fb15e94351de62bf63ced3e6eb5d97d9915db00f86d2b6c71fea3bb7514b428` |
| 7 | `lemma` | [hilbertPoly_zero_left](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant00ac0bd527d317f589f534fc2b96ea1d860a2b67b6cdad2f2353fa6cfd5fef10.lean/declarations/hilbertpoly-zero-left--51c5adf27c3cd127770f1f97.md) | 117 | `result-track:51c5adf27c3cd127770f1f974e5bd742d9788486de3a99fbb4d41a537c065aaa` |
| 8 | `lemma` | [hilbertPoly_zero_right](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant00ac0bd527d317f589f534fc2b96ea1d860a2b67b6cdad2f2353fa6cfd5fef10.lean/declarations/hilbertpoly-zero-right--cf6589c353ba53879ef126dc.md) | 122 | `result-track:cf6589c353ba53879ef126dc0deff032c1366c80df53555e907a5c80b5be7585` |
| 9 | `lemma` | [hilbertPoly_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant00ac0bd527d317f589f534fc2b96ea1d860a2b67b6cdad2f2353fa6cfd5fef10.lean/declarations/hilbertpoly-succ--06271e838a7f7943534d2dfa.md) | 124 | `result-track:06271e838a7f7943534d2dfaf270268d1fc28607b22088516c86ccefee8fc3dd` |
| 10 | `lemma` | [hilbertPoly_X_pow_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant00ac0bd527d317f589f534fc2b96ea1d860a2b67b6cdad2f2353fa6cfd5fef10.lean/declarations/hilbertpoly-x-pow-succ--e2fc67c523d3581c0d5fc957.md) | 127 | `result-track:e2fc67c523d3581c0d5fc9571888119f46f6b213828d887b5f406e36db673077` |
| 11 | `lemma` | [hilbertPoly_add_left](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant00ac0bd527d317f589f534fc2b96ea1d860a2b67b6cdad2f2353fa6cfd5fef10.lean/declarations/hilbertpoly-add-left--98e0a0ce6ab96ee7efe017ff.md) | 131 | `result-track:98e0a0ce6ab96ee7efe017ffa9fab6cd8012fb69890d4bd483aa84bd97627b84` |
| 12 | `lemma` | [hilbertPoly_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant00ac0bd527d317f589f534fc2b96ea1d860a2b67b6cdad2f2353fa6cfd5fef10.lean/declarations/hilbertpoly-smul--386024993ac0a1e8bb48cf53.md) | 141 | `result-track:386024993ac0a1e8bb48cf5371dcdc817b524282d9a13ee8839725de57e65fa6` |
| 13 | `def` | [hilbertPoly_linearMap](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant00ac0bd527d317f589f534fc2b96ea1d860a2b67b6cdad2f2353fa6cfd5fef10.lean/declarations/hilbertpoly-linearmap--ab5a9e76781805349561a925.md) | 157 | `declaration-track:ab5a9e76781805349561a9258eba923be5898502c441d0a5a851df9100dd9fce` |
| 14 | `theorem` | [coeff_mul_invOneSubPow_eq_hilbertPoly_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant00ac0bd527d317f589f534fc2b96ea1d860a2b67b6cdad2f2353fa6cfd5fef10.lean/declarations/coeff-mul-invonesubpow-eq-hilbertpoly-eval--51f6044abfdf38e17a2d5fcc.md) | 169 | `result-track:51f6044abfdf38e17a2d5fcc63eac67d77c55a258f87bd3325aa89132dbebb34` |
| 15 | `theorem` | [existsUnique_hilbertPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant00ac0bd527d317f589f534fc2b96ea1d860a2b67b6cdad2f2353fa6cfd5fef10.lean/declarations/existsunique-hilbertpoly--b718b8707d6f8e3a9a746df8.md) | 198 | `result-track:b718b8707d6f8e3a9a746df8d488f46be785e576fe71bc4d54eff2041517ff0a` |
| 16 | `theorem` | [eq_hilbertPoly_of_forall_coeff_eq_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant00ac0bd527d317f589f534fc2b96ea1d860a2b67b6cdad2f2353fa6cfd5fef10.lean/declarations/eq-hilbertpoly-of-forall-coeff-eq-eval--4841e0b5c597f6bff2e9c561.md) | 218 | `result-track:4841e0b5c597f6bff2e9c561c631052c4dc85991a79ccc37f46331b0e4609de5` |
| 17 | `lemma` | [hilbertPoly_mul_one_sub_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant00ac0bd527d317f589f534fc2b96ea1d860a2b67b6cdad2f2353fa6cfd5fef10.lean/declarations/hilbertpoly-mul-one-sub-succ--09107918b3c74e939d618402.md) | 225 | `result-track:09107918b3c74e939d6184028221773133a8bf13005d9470b3d5144fccfaac59` |
| 18 | `lemma` | [hilbertPoly_mul_one_sub_pow_add](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant00ac0bd527d317f589f534fc2b96ea1d860a2b67b6cdad2f2353fa6cfd5fef10.lean/declarations/hilbertpoly-mul-one-sub-pow-add--2de1e972fa16c7f70cbe6d31.md) | 233 | `result-track:2de1e972fa16c7f70cbe6d31fbd9d12692b2d46c6fa29b96393279f187115db3` |
| 19 | `lemma` | [hilbertPoly_eq_zero_of_le_rootMultiplicity_one](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant00ac0bd527d317f589f534fc2b96ea1d860a2b67b6cdad2f2353fa6cfd5fef10.lean/declarations/hilbertpoly-eq-zero-of-le-rootmultiplicity-one--124e9a627a0c0ab46a8cdea0.md) | 239 | `result-track:124e9a627a0c0ab46a8cdea011e7cb5fcd0379c74aa3630770cbbcaa2ff302f5` |
| 20 | `theorem` | [natDegree_hilbertPoly_of_ne_zero_of_rootMultiplicity_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant00ac0bd527d317f589f534fc2b96ea1d860a2b67b6cdad2f2353fa6cfd5fef10.lean/declarations/natdegree-hilbertpoly-of-ne-zero-of-rootmultiplicity-lt--76fd9393e696626046914908.md) | 251 | `result-track:76fd9393e696626046914908684f47c2e230d407abb54976b664fc460e81c93e` |
| 21 | `theorem` | [natDegree_hilbertPoly_of_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/HilbertPoly/Variant00ac0bd527d317f589f534fc2b96ea1d860a2b67b6cdad2f2353fa6cfd5fef10.lean/declarations/natdegree-hilbertpoly-of-ne-zero--f95956a3e4ef947fd2240caa.md) | 272 | `result-track:f95956a3e4ef947fd2240caad60a967340f36d3cdd7f7ac66c4c78f184838fcd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
