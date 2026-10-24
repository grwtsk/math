# Verification target: GRWTSK.NumberTheory.ZModChar.Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d40e042617cf74a13ac61dac5a2a05a4e709ce5",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d40e042617cf74a13ac61dac5a2a05a4e709ce5`.

Source path: `GRWTSK/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Range` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LegendreSymbol.MulCharacter` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [χ₄](../../../../mathematics/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean/declarations/anonymous--48fee4586a6710ee8f643e6b.md) | 40 | `declaration-track:48fee4586a6710ee8f643e6b9dce597962b1cabfee81a6b25bc52e67b9ee602c` |
| 2 | `theorem` | [isQuadratic_χ₄](../../../../mathematics/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean/declarations/isquadratic--b05106502812ca37bfd36f84.md) | 48 | `result-track:b05106502812ca37bfd36f848564fb0d0437508f181c1033f2defe14a49827d2` |
| 3 | `theorem` | [χ₄_nat_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean/declarations/nat-mod-four--e2793e744546c1275e82e240.md) | 56 | `result-track:e2793e744546c1275e82e2405a77fe48458fb8faee1388172fe454c7f0e6e8a0` |
| 4 | `theorem` | [χ₄_int_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean/declarations/int-mod-four--57489cbd0a922ab6636f4076.md) | 60 | `result-track:57489cbd0a922ab6636f4076dd5a4c028b3c80521aca5400545d1cada8540fcd` |
| 5 | `theorem` | [χ₄_int_eq_if_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean/declarations/int-eq-if-mod-four--98dcdc3c9735583d4e14167e.md) | 66 | `result-track:98dcdc3c9735583d4e14167ec81d288116237d479ac05c252052b74f6e4723ef` |
| 6 | `theorem` | [χ₄_nat_eq_if_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean/declarations/nat-eq-if-mod-four--71b5814359a85c781de4e876.md) | 74 | `result-track:71b5814359a85c781de4e876f1fc1c41deb6e6753f31ac462ec3a1ad6d186ed4` |
| 7 | `theorem` | [χ₄_eq_neg_one_pow](../../../../mathematics/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean/declarations/eq-neg-one-pow--ada1931b7f4f035745a13977.md) | 80 | `result-track:ada1931b7f4f035745a13977d72b172fcf1fa3dd95074d4aa1c2e31ca1e41426` |
| 8 | `theorem` | [χ₄_nat_one_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean/declarations/nat-one-mod-four--0330d920e43a074c7fd60298.md) | 95 | `result-track:0330d920e43a074c7fd60298d67c68ba6465519a1cba24801e1460d87320df72` |
| 9 | `theorem` | [χ₄_nat_three_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean/declarations/nat-three-mod-four--a071f28d9581ab24ef2bc660.md) | 101 | `result-track:a071f28d9581ab24ef2bc660adb6335b17033aa79e2e17f9ada6e896f7318933` |
| 10 | `theorem` | [χ₄_int_one_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean/declarations/int-one-mod-four--14c38f96bb81dd47e2b4cee5.md) | 107 | `result-track:14c38f96bb81dd47e2b4cee5758c3c6f369d55025b84f64b15664f9b4475b0f6` |
| 11 | `theorem` | [χ₄_int_three_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean/declarations/int-three-mod-four--e7ea2850832d630773148908.md) | 113 | `result-track:e7ea2850832d630773148908c19d9fb212029043d5db819cb06b93d15119253b` |
| 12 | `theorem` | [neg_one_pow_div_two_of_one_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean/declarations/neg-one-pow-div-two-of-one-mod-four--bd0e3ef76b33a5b5025e3014.md) | 119 | `result-track:bd0e3ef76b33a5b5025e30148d1a63d1c0d6664c948f9d1f626cd3c57f834acb` |
| 13 | `theorem` | [neg_one_pow_div_two_of_three_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean/declarations/neg-one-pow-div-two-of-three-mod-four--03d5bde8cc28d8e1d552ff61.md) | 125 | `result-track:03d5bde8cc28d8e1d552ff6147f8cae6a760677c0dcf326fc13c6e5e2d59ca99` |
| 14 | `def` | [χ₈](../../../../mathematics/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean/declarations/anonymous--c812c2d323ea1a5b555b7b2d.md) | 135 | `declaration-track:c812c2d323ea1a5b555b7b2dc8e84f3b9b05f2aac4cdf34917baa4975e0a871a` |
| 15 | `theorem` | [isQuadratic_χ₈](../../../../mathematics/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean/declarations/isquadratic--e27622e1c18d31478cabb382.md) | 143 | `result-track:e27622e1c18d31478cabb382678521bb1929264263e9687cc898f46a985193e6` |
| 16 | `theorem` | [χ₈_nat_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean/declarations/nat-mod-eight--4ff175207a6ab644c1ff8b99.md) | 151 | `result-track:4ff175207a6ab644c1ff8b99a5a1cd41c611c014166590cc867d5678af983613` |
| 17 | `theorem` | [χ₈_int_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean/declarations/int-mod-eight--775643c936df8fd018ec306f.md) | 155 | `result-track:775643c936df8fd018ec306fc31167f9d0bdc26ebef61cd1114d051cbeeca0bd` |
| 18 | `theorem` | [χ₈_int_eq_if_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean/declarations/int-eq-if-mod-eight--ad5072d1ed3d6cde27eb9c3b.md) | 161 | `result-track:ad5072d1ed3d6cde27eb9c3b0fbe84dcf6e59a5ee5c257a9d7e7f214967b98b4` |
| 19 | `theorem` | [χ₈_nat_eq_if_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean/declarations/nat-eq-if-mod-eight--13c220003f05749e20731309.md) | 170 | `result-track:13c220003f05749e20731309da068995ce2d6379e45b6740e32ab61b1b4049ff` |
| 20 | `def` | [χ₈'](../../../../mathematics/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean/declarations/anonymous--e942f1e79ede4e59b05da822.md) | 179 | `declaration-track:e942f1e79ede4e59b05da822dff0066536c31073b77ae7d56fb6c706991aa8ed` |
| 21 | `theorem` | [isQuadratic_χ₈'](../../../../mathematics/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean/declarations/isquadratic--bdc9f3d1b34068f8a8e15fed.md) | 187 | `result-track:bdc9f3d1b34068f8a8e15fed41a3a9083e8600375d96f5fc1d3d6e8948a2d457` |
| 22 | `theorem` | [χ₈'_int_eq_if_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean/declarations/int-eq-if-mod-eight--c5704af2fb6c5f81ee59deed.md) | 195 | `result-track:c5704af2fb6c5f81ee59deed77ae826a5f9133298c3e42df5d5e0d78780a7599` |
| 23 | `theorem` | [χ₈'_nat_eq_if_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean/declarations/nat-eq-if-mod-eight--2e40d92ac81870aab1faca2d.md) | 204 | `result-track:2e40d92ac81870aab1faca2d09bb63c93cb859bac83fe563702e7838d28ec33d` |
| 24 | `theorem` | [χ₈'_eq_χ₄_mul_χ₈](../../../../mathematics/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean/declarations/eq-mul--f966ba8eab1b471938b4e14c.md) | 210 | `result-track:f966ba8eab1b471938b4e14c41465162e201c22ec0631bbc32f483a6198134e8` |
| 25 | `theorem` | [χ₈'_int_eq_χ₄_mul_χ₈](../../../../mathematics/NumberTheory/ZModChar/Variant242c3738b1e12dadd83a905e78899d16ca63fd3a5fcb8816f5a7abe4824e325f.lean/declarations/int-eq-mul--db78bcb5b0015cb1ea0f8a4b.md) | 216 | `result-track:db78bcb5b0015cb1ea0f8a4baf3eacc1ce0cacde98b4477019d5e8c71d66a6ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
