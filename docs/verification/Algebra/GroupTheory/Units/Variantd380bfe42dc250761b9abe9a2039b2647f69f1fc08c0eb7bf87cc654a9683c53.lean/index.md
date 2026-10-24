# Verification target: GRWTSK.Algebra.GroupTheory.Units.Variantd380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe376cfcfa91b9a0bb2ba99b816c211082cb6566",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Units/Variantd380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Units/Variantd380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Units/Variantd380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe376cfcfa91b9a0bb2ba99b816c211082cb6566`.

Source path: `GRWTSK/Algebra/GroupTheory/Units/Variantd380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Units/Variantd380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Commute.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Semiconj.Units` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [units_inv_right](../../../../../mathematics/Algebra/GroupTheory/Units/Variantd380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53.lean/declarations/units-inv-right--7c2d34f597753b43a97d5e49.md) | 24 | `result-track:7c2d34f597753b43a97d5e498f199f1c4b4d849503df0e3705b5de111913ab58` |
| 2 | `theorem` | [units_inv_right_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variantd380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53.lean/declarations/units-inv-right-iff--26ee7f1912497bd96c73c3c0.md) | 28 | `result-track:26ee7f1912497bd96c73c3c0cdcc700081e6bbe6cc8b036dc9db2d78b0133943` |
| 3 | `theorem` | [units_inv_left](../../../../../mathematics/Algebra/GroupTheory/Units/Variantd380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53.lean/declarations/units-inv-left--b2adce854c51a1450d166ab8.md) | 32 | `result-track:b2adce854c51a1450d166ab8a60b81f495ba1d6cbcd0ff13e20697fbd11f0abf` |
| 4 | `theorem` | [units_inv_left_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variantd380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53.lean/declarations/units-inv-left-iff--97f25c58b4499fa18d425956.md) | 36 | `result-track:97f25c58b4499fa18d4259568d2a97e204480093a2be561f25c519ab3e1f9009` |
| 5 | `theorem` | [units_val](../../../../../mathematics/Algebra/GroupTheory/Units/Variantd380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53.lean/declarations/units-val--4ba90387bbdcb43bf2eef788.md) | 40 | `result-track:4ba90387bbdcb43bf2eef788db25d60a7190a07ade0341b640b7bfdcb3840912` |
| 6 | `theorem` | [units_of_val](../../../../../mathematics/Algebra/GroupTheory/Units/Variantd380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53.lean/declarations/units-of-val--ba2534d6807b087d2ebbe0a8.md) | 44 | `result-track:ba2534d6807b087d2ebbe0a83197a699a2eba7fc4760cf9eed86851f3ad01f65` |
| 7 | `theorem` | [units_val_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variantd380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53.lean/declarations/units-val-iff--46010a453196c51602123535.md) | 48 | `result-track:46010a453196c5160212353552f68e659e17ec803051c6d3b68ea5c69902b197` |
| 8 | `def` | [Units.leftOfMul](../../../../../mathematics/Algebra/GroupTheory/Units/Variantd380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53.lean/declarations/units-leftofmul--1d4a0405c850bb2a5fb6bfe4.md) | 56 | `declaration-track:1d4a0405c850bb2a5fb6bfe4908cd0991099b9e831cceccc5626984cc9721823` |
| 9 | `def` | [Units.rightOfMul](../../../../../mathematics/Algebra/GroupTheory/Units/Variantd380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53.lean/declarations/units-rightofmul--29862825c7e8ea9c0080542f.md) | 67 | `declaration-track:29862825c7e8ea9c0080542f412ec864cb09f2b31c0a0406299afdf572d1427b` |
| 10 | `theorem` | [Commute.isUnit_mul_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variantd380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53.lean/declarations/commute-isunit-mul-iff--3fe995856f82ea63d2617260.md) | 71 | `result-track:3fe995856f82ea63d2617260c2d8f27e1a0d9b3711bec02426bf979a326e43fe` |
| 11 | `theorem` | [isUnit_mul_self_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variantd380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53.lean/declarations/isunit-mul-self-iff--41e8fc0df8b9b00c3cbb1a11.md) | 76 | `result-track:41e8fc0df8b9b00c3cbb1a1105b0e9fc16364db8d46ea6b840c8546952ecf602` |
| 12 | `lemma` | [Commute.units_zpow_right](../../../../../mathematics/Algebra/GroupTheory/Units/Variantd380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53.lean/declarations/commute-units-zpow-right--5a0b110fc24259c5378884a5.md) | 80 | `result-track:5a0b110fc24259c5378884a52bc39a76287cc7977342d4c09e371881a24394eb` |
| 13 | `lemma` | [Commute.units_zpow_left](../../../../../mathematics/Algebra/GroupTheory/Units/Variantd380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53.lean/declarations/commute-units-zpow-left--52438e9f8f930110b16e7dcf.md) | 84 | `result-track:52438e9f8f930110b16e7dcf9449721daa616bbe342c83c152c29c056a8e9eca` |
| 14 | `def` | [Units.ofPow](../../../../../mathematics/Algebra/GroupTheory/Units/Variantd380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53.lean/declarations/units-ofpow--4125a6742c38de16cf50a26a.md) | 89 | `declaration-track:4125a6742c38de16cf50a26a8dc50a821f12c9f2c59379c492728d13dbfbbe45` |
| 15 | `lemma` | [isUnit_pow_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variantd380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53.lean/declarations/isunit-pow-iff--6b9d6dd630de3e0914677198.md) | 94 | `result-track:6b9d6dd630de3e0914677198e2e59caed236926c13a2ae8e5a1db1708ec1b60e` |
| 16 | `lemma` | [isUnit_pow_succ_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variantd380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53.lean/declarations/isunit-pow-succ-iff--16d1d0ef114e25c06548a57f.md) | 98 | `result-track:16d1d0ef114e25c06548a57f576e402e7a3d600f3b6040d0aa15bf7af88a9953` |
| 17 | `lemma` | [isUnit_pow_iff_of_not_isUnit](../../../../../mathematics/Algebra/GroupTheory/Units/Variantd380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53.lean/declarations/isunit-pow-iff-of-not-isunit--687b5b7ac86c70c782611880.md) | 100 | `result-track:687b5b7ac86c70c78261188074dbc333fba18b4d52cc9f22476ddaee61a0eabe` |
| 18 | `def` | [Units.ofPowEqOne](../../../../../mathematics/Algebra/GroupTheory/Units/Variantd380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53.lean/declarations/units-ofpoweqone--2ded24e4ffb639837a242db9.md) | 107 | `declaration-track:2ded24e4ffb639837a242db9a241c20bb1a9604abf2aa59515c8697658acc3e9` |
| 19 | `lemma` | [Units.pow_ofPowEqOne](../../../../../mathematics/Algebra/GroupTheory/Units/Variantd380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53.lean/declarations/units-pow-ofpoweqone--5c86b56844002cbebad17752.md) | 110 | `result-track:5c86b56844002cbebad177528608b977ffadfc345160fea5e0d16d2e73db05a0` |
| 20 | `lemma` | [IsUnit.of_pow_eq_one](../../../../../mathematics/Algebra/GroupTheory/Units/Variantd380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53.lean/declarations/isunit-of-pow-eq-one--f7558557047b62bc883eb7ad.md) | 114 | `result-track:f7558557047b62bc883eb7ad5107c25bff4bcff144f2a37b9f5acaa5c91c0a3c` |
| 21 | `lemma` | [Commute.div_eq_div_iff_of_isUnit](../../../../../mathematics/Algebra/GroupTheory/Units/Variantd380bfe42dc250761b9abe9a2039b2647f69f1fc08c0eb7bf87cc654a9683c53.lean/declarations/commute-div-eq-div-iff-of-isunit--941f058d81ec272ecbd6671f.md) | 126 | `result-track:941f058d81ec272ecbd6671ff10f157114d1ec6c68e6f3a0d58deeb005e8efd6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
