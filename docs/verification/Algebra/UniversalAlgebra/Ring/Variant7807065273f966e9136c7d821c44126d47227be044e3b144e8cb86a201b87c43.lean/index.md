# Verification target: GRWTSK.Algebra.UniversalAlgebra.Ring.Variant7807065273f966e9136c7d821c44126d47227be044e3b144e8cb86a201b87c43

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02979e68bba168e7c996f0a2c069d472301120b9",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Ring/Variant7807065273f966e9136c7d821c44126d47227be044e3b144e8cb86a201b87c43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant7807065273f966e9136c7d821c44126d47227be044e3b144e8cb86a201b87c43.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant7807065273f966e9136c7d821c44126d47227be044e3b144e8cb86a201b87c43.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02979e68bba168e7c996f0a2c069d472301120b9`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Ring/Variant7807065273f966e9136c7d821c44126d47227be044e3b144e8cb86a201b87c43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Ring/Variant7807065273f966e9136c7d821c44126d47227be044e3b144e8cb86a201b87c43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Unbundled.Abs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Nat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cast_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant7807065273f966e9136c7d821c44126d47227be044e3b144e8cb86a201b87c43.lean/declarations/cast-nonneg--fe2d89735a5837446c1400c2.md) | 38 | `result-track:fe2d89735a5837446c1400c27614123bd41702666ad2136dab7d2dac8394bcf9` |
| 2 | `theorem` | [ofNat_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant7807065273f966e9136c7d821c44126d47227be044e3b144e8cb86a201b87c43.lean/declarations/ofnat-nonneg--105337f1d0e39f60e60280e1.md) | 43 | `result-track:105337f1d0e39f60e60280e12af3842dea45fbf9d52f8ff6de14130316bf1fd9` |
| 3 | `theorem` | [cast_min](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant7807065273f966e9136c7d821c44126d47227be044e3b144e8cb86a201b87c43.lean/declarations/cast-min--0255a7c46c472be21ed79c8c.md) | 48 | `result-track:0255a7c46c472be21ed79c8c4e83a1ae38eda824e1af10535c7af07218efffde` |
| 4 | `theorem` | [cast_max](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant7807065273f966e9136c7d821c44126d47227be044e3b144e8cb86a201b87c43.lean/declarations/cast-max--ef18842ca50bf3eb79b7d32b.md) | 53 | `result-track:ef18842ca50bf3eb79b7d32bfead1df46b7468f77d02e0740a5db315f8bacae9` |
| 5 | `theorem` | [cast_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant7807065273f966e9136c7d821c44126d47227be044e3b144e8cb86a201b87c43.lean/declarations/cast-pos--e64cc09c5aa814b050147918.md) | 63 | `result-track:e64cc09c5aa814b05014791834ebcb32757f164f88d3c53161ae068d47a5ada6` |
| 6 | `theorem` | [ofNat_pos'](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant7807065273f966e9136c7d821c44126d47227be044e3b144e8cb86a201b87c43.lean/declarations/ofnat-pos--6d93a4113204b2001b275e1a.md) | 68 | `result-track:6d93a4113204b2001b275e1a8f645b21d468f5338d22d13494a769b7be819aad` |
| 7 | `theorem` | [ofNat_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant7807065273f966e9136c7d821c44126d47227be044e3b144e8cb86a201b87c43.lean/declarations/ofnat-pos--1d438e5471bcf4fe57124e1b.md) | 73 | `result-track:1d438e5471bcf4fe57124e1b1a35a8255cb3bff7b57ca9006ffff56dd716d85d` |
| 8 | `theorem` | [cast_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant7807065273f966e9136c7d821c44126d47227be044e3b144e8cb86a201b87c43.lean/declarations/cast-tsub--90588e659192fd31faf14c37.md) | 85 | `result-track:90588e659192fd31faf14c375dab67b65c3f65ce915f7e97f8989226ad3d0dce` |
| 9 | `theorem` | [abs_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant7807065273f966e9136c7d821c44126d47227be044e3b144e8cb86a201b87c43.lean/declarations/abs-cast--50255f67c8081fed86d7e73c.md) | 97 | `result-track:50255f67c8081fed86d7e73cebbf203c1a533412784352a58e98c1c3363301ee` |
| 10 | `theorem` | [abs_ofNat](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant7807065273f966e9136c7d821c44126d47227be044e3b144e8cb86a201b87c43.lean/declarations/abs-ofnat--9663e7fb4eaf75a7f33c9f05.md) | 100 | `result-track:9663e7fb4eaf75a7f33c9f05e00480138702bcb4baf7c4897d4115f134f3353c` |
| 11 | `lemma` | [neg_cast_eq_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant7807065273f966e9136c7d821c44126d47227be044e3b144e8cb86a201b87c43.lean/declarations/neg-cast-eq-cast--33287b6c8cffb6e1f3206ca3.md) | 102 | `result-track:33287b6c8cffb6e1f3206ca3cd6ae37e9b84c2d66dbc0433b99bb136731568f0` |
| 12 | `lemma` | [cast_eq_neg_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant7807065273f966e9136c7d821c44126d47227be044e3b144e8cb86a201b87c43.lean/declarations/cast-eq-neg-cast--3d24d518e205a57d9b346121.md) | 105 | `result-track:3d24d518e205a57d9b3461214d767fa552abd5df9fc13936833d14822f52c950` |
| 13 | `lemma` | [mul_le_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant7807065273f966e9136c7d821c44126d47227be044e3b144e8cb86a201b87c43.lean/declarations/mul-le-pow--7848f3f6019de14fd1fdbda5.md) | 110 | `result-track:7848f3f6019de14fd1fdbda5c619edd18877ec06ab3916e2e5bca532da2c4ae6` |
| 14 | `lemma` | [two_mul_sq_add_one_le_two_pow_two_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant7807065273f966e9136c7d821c44126d47227be044e3b144e8cb86a201b87c43.lean/declarations/two-mul-sq-add-one-le-two-pow-two-mul--365ab5b8705dbdaf95ac5a28.md) | 127 | `result-track:365ab5b8705dbdaf95ac5a2896787f167f51c68b295dbbe943afa953cdd57de0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
