# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variant3ee4a03da7fac1a53465258173182c076b4db98fd991aba7252cd44bc26d84be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a608d0f1874ea75244c118aa4f782b27e0d40f4",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant3ee4a03da7fac1a53465258173182c076b4db98fd991aba7252cd44bc26d84be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3ee4a03da7fac1a53465258173182c076b4db98fd991aba7252cd44bc26d84be.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3ee4a03da7fac1a53465258173182c076b4db98fd991aba7252cd44bc26d84be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a608d0f1874ea75244c118aa4f782b27e0d40f4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant3ee4a03da7fac1a53465258173182c076b4db98fd991aba7252cd44bc26d84be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variant3ee4a03da7fac1a53465258173182c076b4db98fd991aba7252cd44bc26d84be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Parity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LegendreSymbol.ZModChar` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quadraticCharFun](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3ee4a03da7fac1a53465258173182c076b4db98fd991aba7252cd44bc26d84be.lean/declarations/quadraticcharfun--d638fd46a4e915e7d9d42eb4.md) | 43 | `declaration-track:d638fd46a4e915e7d9d42eb4dacdbebdd4750b3eee07e50957b4bda9b28411fc` |
| 2 | `theorem` | [quadraticCharFun_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3ee4a03da7fac1a53465258173182c076b4db98fd991aba7252cd44bc26d84be.lean/declarations/quadraticcharfun-eq-zero-iff--b0bfb419d11d7b8d684fd831.md) | 66 | `result-track:b0bfb419d11d7b8d684fd83117fa8aec2f79ede38b22824b5c683182142ca372` |
| 3 | `theorem` | [quadraticCharFun_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3ee4a03da7fac1a53465258173182c076b4db98fd991aba7252cd44bc26d84be.lean/declarations/quadraticcharfun-zero--1c38ed8503747efa13a523ff.md) | 75 | `result-track:1c38ed8503747efa13a523ff93ddec1cecfb0d770af37f7671bf7ec3005ff28c` |
| 4 | `theorem` | [quadraticCharFun_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3ee4a03da7fac1a53465258173182c076b4db98fd991aba7252cd44bc26d84be.lean/declarations/quadraticcharfun-one--ea7a5b1f844e1f38e80cbd1b.md) | 80 | `result-track:ea7a5b1f844e1f38e80cbd1bb6fa1e7842378e00e33397960d2db5c251692f33` |
| 5 | `theorem` | [quadraticCharFun_eq_one_of_char_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3ee4a03da7fac1a53465258173182c076b4db98fd991aba7252cd44bc26d84be.lean/declarations/quadraticcharfun-eq-one-of-char-two--c02092aa5b4b1565536bcf6e.md) | 85 | `result-track:c02092aa5b4b1565536bcf6e86e9968af5383b9f9000c326d35dbda8b9d58482` |
| 6 | `theorem` | [quadraticCharFun_eq_pow_of_char_ne_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3ee4a03da7fac1a53465258173182c076b4db98fd991aba7252cd44bc26d84be.lean/declarations/quadraticcharfun-eq-pow-of-char-ne-two--ea74356d9df38e2e98b1b725.md) | 93 | `result-track:ea74356d9df38e2e98b1b72548bacb9c24ed56fb0168e14cdb2e1f971a947ec2` |
| 7 | `theorem` | [quadraticCharFun_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3ee4a03da7fac1a53465258173182c076b4db98fd991aba7252cd44bc26d84be.lean/declarations/quadraticcharfun-mul--5e0f54c24da2f193aa062254.md) | 100 | `result-track:5e0f54c24da2f193aa062254df650683332ddb1d6e3d5860048a3f0144ee319d` |
| 8 | `def` | [quadraticChar](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3ee4a03da7fac1a53465258173182c076b4db98fd991aba7252cd44bc26d84be.lean/declarations/quadraticchar--2d55fde3a9f61999fe6bfef7.md) | 129 | `declaration-track:2d55fde3a9f61999fe6bfef7ce7da59814f359104cb01e931d589cde300d66ac` |
| 9 | `theorem` | [quadraticChar_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3ee4a03da7fac1a53465258173182c076b4db98fd991aba7252cd44bc26d84be.lean/declarations/quadraticchar-eq-zero-iff--0fc80f445b609a87ae62180c.md) | 139 | `result-track:0fc80f445b609a87ae62180c67429df6e0a705f102c742b4fba36f7cb4ce6431` |
| 10 | `theorem` | [quadraticChar_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3ee4a03da7fac1a53465258173182c076b4db98fd991aba7252cd44bc26d84be.lean/declarations/quadraticchar-zero--c0b363aaf368b604e1641eb7.md) | 144 | `result-track:c0b363aaf368b604e1641eb79ed1c838faa55fe9731f50724523a565f0d41bf9` |
| 11 | `theorem` | [quadraticChar_one_iff_isSquare](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3ee4a03da7fac1a53465258173182c076b4db98fd991aba7252cd44bc26d84be.lean/declarations/quadraticchar-one-iff-issquare--df33ff020b58eabf3d8697bd.md) | 149 | `result-track:df33ff020b58eabf3d8697bdeba696ae3e6e27004de87a148f416835c6e88fc6` |
| 12 | `theorem` | [quadraticChar_sq_one'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3ee4a03da7fac1a53465258173182c076b4db98fd991aba7252cd44bc26d84be.lean/declarations/quadraticchar-sq-one--618b8fd8f7b3a1ca748eea52.md) | 156 | `result-track:618b8fd8f7b3a1ca748eea527225ca7ebf092d8a02c612bf714072a6163c9722` |
| 13 | `theorem` | [quadraticChar_sq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3ee4a03da7fac1a53465258173182c076b4db98fd991aba7252cd44bc26d84be.lean/declarations/quadraticchar-sq-one--7e2ada9729454a4e53db25d6.md) | 162 | `result-track:7e2ada9729454a4e53db25d611499cb026f87f35ab2ca9491f3c86a935e584e8` |
| 14 | `theorem` | [quadraticChar_dichotomy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3ee4a03da7fac1a53465258173182c076b4db98fd991aba7252cd44bc26d84be.lean/declarations/quadraticchar-dichotomy--613c7d994da66e558a364383.md) | 170 | `result-track:613c7d994da66e558a3643830cb7ce6b5170d6314ad7a1779dec35395f2acb7f` |
| 15 | `theorem` | [quadraticChar_eq_neg_one_iff_not_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3ee4a03da7fac1a53465258173182c076b4db98fd991aba7252cd44bc26d84be.lean/declarations/quadraticchar-eq-neg-one-iff-not-one--2f0e139d01cf0c167e3e4b39.md) | 176 | `result-track:2f0e139d01cf0c167e3e4b39d48161df571a64624fbf9a212e2db0ac71f04452` |
| 16 | `theorem` | [quadraticChar_neg_one_iff_not_isSquare](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3ee4a03da7fac1a53465258173182c076b4db98fd991aba7252cd44bc26d84be.lean/declarations/quadraticchar-neg-one-iff-not-issquare--3d10acf34edb8856a2f75630.md) | 184 | `result-track:3d10acf34edb8856a2f75630069f1372e2c43a98efc319a0ef2202a9e0cf0637` |
| 17 | `theorem` | [quadraticChar_exists_neg_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3ee4a03da7fac1a53465258173182c076b4db98fd991aba7252cd44bc26d84be.lean/declarations/quadraticchar-exists-neg-one--e510f0aee8268d0173795358.md) | 191 | `result-track:e510f0aee8268d0173795358b9c3ca858ccc7d125b589205b9624b4a05eeec8d` |
| 18 | `theorem` | [quadraticChar_eq_one_of_char_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3ee4a03da7fac1a53465258173182c076b4db98fd991aba7252cd44bc26d84be.lean/declarations/quadraticchar-eq-one-of-char-two--6cd2450e0124f636fcaa5564.md) | 196 | `result-track:6cd2450e0124f636fcaa5564e1c9b2cdf49a089503d2c4c20d203187b803e4bf` |
| 19 | `theorem` | [quadraticChar_eq_pow_of_char_ne_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3ee4a03da7fac1a53465258173182c076b4db98fd991aba7252cd44bc26d84be.lean/declarations/quadraticchar-eq-pow-of-char-ne-two--4b2eba61b0a445bad4f0a0ed.md) | 203 | `result-track:4b2eba61b0a445bad4f0a0edf6bb7a862ab94f76e83ddf7712f40c754c4cc007` |
| 20 | `theorem` | [quadraticChar_eq_pow_of_char_ne_two'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3ee4a03da7fac1a53465258173182c076b4db98fd991aba7252cd44bc26d84be.lean/declarations/quadraticchar-eq-pow-of-char-ne-two--f51853610b589e71e9d73925.md) | 208 | `result-track:f51853610b589e71e9d73925fec08a547f0544ac1cf1ea4c09a90e4387a3457e` |
| 21 | `theorem` | [quadraticChar_isQuadratic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3ee4a03da7fac1a53465258173182c076b4db98fd991aba7252cd44bc26d84be.lean/declarations/quadraticchar-isquadratic--c59796762dae11f17c553f67.md) | 224 | `result-track:c59796762dae11f17c553f672baf6716fd1dba1a36d8657a0b43c165490173a9` |
| 22 | `theorem` | [quadraticChar_isNontrivial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3ee4a03da7fac1a53465258173182c076b4db98fd991aba7252cd44bc26d84be.lean/declarations/quadraticchar-isnontrivial--4ca907a9ccf5a8ebf9531c83.md) | 235 | `result-track:4ca907a9ccf5a8ebf9531c8336264d97f229bc8d14872c907cb349d612146cd6` |
| 23 | `theorem` | [quadraticChar_card_sqrts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3ee4a03da7fac1a53465258173182c076b4db98fd991aba7252cd44bc26d84be.lean/declarations/quadraticchar-card-sqrts--c947a99528fc5f05fc707955.md) | 244 | `result-track:c947a99528fc5f05fc70795589c9a21f38659328c634f1c1ff8199837c2ce9ab` |
| 24 | `theorem` | [quadraticChar_sum_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3ee4a03da7fac1a53465258173182c076b4db98fd991aba7252cd44bc26d84be.lean/declarations/quadraticchar-sum-zero--881b9368ee88178d86aaca04.md) | 283 | `result-track:881b9368ee88178d86aaca04090f5ee731edadf3d35f983ad1e97397dca5c169` |
| 25 | `theorem` | [quadraticChar_neg_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3ee4a03da7fac1a53465258173182c076b4db98fd991aba7252cd44bc26d84be.lean/declarations/quadraticchar-neg-one--e9d45066bb0cb846938b4ef2.md) | 303 | `result-track:e9d45066bb0cb846938b4ef2cded5934540c4f0a13ffc9db522b55fc579ab859` |
| 26 | `theorem` | [FiniteField.isSquare_neg_one_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3ee4a03da7fac1a53465258173182c076b4db98fd991aba7252cd44bc26d84be.lean/declarations/finitefield-issquare-neg-one-iff--89e455722dfb2af1aa2cfc27.md) | 314 | `result-track:89e455722dfb2af1aa2cfc276f516edf74e3ff59456be7f03a7eeec9d89371df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
