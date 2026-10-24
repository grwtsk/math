# Verification target: GRWTSK.Algebra.CanonicallyOrderedCommSemiringTwoMul.Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e151aa7aa22c5371a76d48edc6e8171b1b9e621",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/index.md) · [Full source](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e151aa7aa22c5371a76d48edc6e8171b1b9e621`.

Source path: `GRWTSK/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Subsemiring.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [K](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/declarations/k--97875dc028acfde14f8e2fc9.md) | 39 | `declaration-track:97875dc028acfde14f8e2fc9ded715e0dc1acb24175732ba85f882d3c1926228` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/declarations/instance--2f9dc725b0d5cb5848d03e84.md) | 44 | `declaration-track:2f9dc725b0d5cb5848d03e844295159aca512db068e2d93b1ccdf5d6f53dcbb8` |
| 3 | `instance` | [inhabitedK](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/declarations/inhabitedk--c891909be6fa01b444a70c81.md) | 47 | `declaration-track:c891909be6fa01b444a70c81df0a3a18a390b8738cdc8195c6e0517c18579933` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/declarations/instance--931db6a2e4d6349d2d9fcd8f.md) | 51 | `declaration-track:931db6a2e4d6349d2d9fcd8f7d93e63184d2bc3a13685881d90f26d63aeebef2` |
| 5 | `theorem` | [mem_zmod_2](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/declarations/mem-zmod-2--b97d46dcfc40047dd869d3a5.md) | 62 | `result-track:b97d46dcfc40047dd869d3a56562f572232b1548de1eb60d2f6f462d9d07c758` |
| 6 | `theorem` | [add_self_zmod_2](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/declarations/add-self-zmod-2--29456969f76e98f037296d17.md) | 68 | `result-track:29456969f76e98f037296d17f8d0f63507d3e8c2da3884dc2220eb0ec05f6132` |
| 7 | `instance` | [preN2](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/declarations/pren2--0f1df68907554b2d25246d28.md) | 79 | `declaration-track:0f1df68907554b2d25246d28e72200f764fae27e95f82aea4d922ec63d087568` |
| 8 | `instance` | [csrN2](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/declarations/csrn2--0c20fbda592623892a475844.md) | 97 | `declaration-track:0c20fbda592623892a47584480746945a192f082bcd7d849bab8f51838a9dc55` |
| 9 | `instance` | [csrN21](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/declarations/csrn21--601955b524809200f24de5d8.md) | 100 | `declaration-track:601955b524809200f24de5d840ac6e5036ff494a564bfe406630bab456217c43` |
| 10 | `theorem` | [lt_def](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/declarations/lt-def--a5a422960924ef68f6c747ce.md) | 106 | `result-track:a5a422960924ef68f6c747ce0ea1365b025e6b6a5cd2c834d58ee802139a58ed` |
| 11 | `theorem` | [add_left_cancel](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/declarations/add-left-cancel--4c49655ac8ec99422c1278b2.md) | 116 | `result-track:4c49655ac8ec99422c1278b258bdf73925efb772701432a8a950725d112891f6` |
| 12 | `theorem` | [add_le_add_left](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/declarations/add-le-add-left--808d70672ff8db8a96872f20.md) | 120 | `result-track:808d70672ff8db8a96872f20b63d6cd42a14a9ade2dbfad19207becc38e9f5b0` |
| 13 | `theorem` | [le_of_add_le_add_left](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/declarations/le-of-add-le-add-left--a205004df774482aa380f508.md) | 126 | `result-track:a205004df774482aa380f50828688086a550aa93b10462090aa100038f07ccf0` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/declarations/instance--c17081257d647469d30f279a.md) | 132 | `declaration-track:c17081257d647469d30f279ae15fd0cc335820a4df16ccaabf4c6e7c774f690c` |
| 15 | `theorem` | [mul_lt_mul_of_pos_left](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/declarations/mul-lt-mul-of-pos-left--04023910c9ddce90606496bf.md) | 135 | `result-track:04023910c9ddce90606496bf6dfc0ace70f1880d89920ea83cffd54d395cee5c` |
| 16 | `theorem` | [mul_lt_mul_of_pos_right](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/declarations/mul-lt-mul-of-pos-right--5bdfecf5ecbc6e22fcd32dc0.md) | 139 | `result-track:5bdfecf5ecbc6e22fcd32dc038a7264c38bc237e4cbec9642a416f4a930f3c75` |
| 17 | `instance` | [socsN2](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/declarations/socsn2--45633eeb1a7b02d7cdeac601.md) | 143 | `declaration-track:45633eeb1a7b02d7cdeac6011424112b2891d5138868e1270ad641ade6d4e5c6` |
| 18 | `def` | [L](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/declarations/l--2a1a8d5a5580b7c9423a3e20.md) | 162 | `declaration-track:2a1a8d5a5580b7c9423a3e20f19708f5987c68ad0bdef146acb1d5b1848e076f` |
| 19 | `theorem` | [add_L](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/declarations/add-l--68db8fb56e8ca77f6cf80601.md) | 166 | `result-track:68db8fb56e8ca77f6cf80601d754c488eeaf86d0275c37310636c5c28b2419d9` |
| 20 | `theorem` | [mul_L](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/declarations/mul-l--f5470ddabf81309591064c61.md) | 178 | `result-track:f5470ddabf81309591064c619d18db573aac3ca1ee216ea59c24e6715999ff36` |
| 21 | `def` | [lSubsemiring](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/declarations/lsubsemiring--696071cdb70854ac066c6d18.md) | 195 | `declaration-track:696071cdb70854ac066c6d1810687757b989e65bcb82e95ef29dbf7e8a04da7c` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/declarations/instance--77cc190447759d1118f775d5.md) | 203 | `declaration-track:77cc190447759d1118f775d57110a24512dac213565b5bfee666e741c628d87f` |
| 23 | `instance` | [inhabited](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/declarations/inhabited--6addd3f75bbf846871bc0723.md) | 206 | `declaration-track:6addd3f75bbf846871bc07235de70fd8842464a488f3353282e6e0985614440f` |
| 24 | `theorem` | [bot_le](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/declarations/bot-le--d2ff5b58500775d9a048e958.md) | 210 | `result-track:d2ff5b58500775d9a048e95810376afcd962e53aa2bb111cfffd6e00ad51310b` |
| 25 | `instance` | [orderBot](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/declarations/orderbot--edf36ee505957715dbd53930.md) | 220 | `declaration-track:edf36ee505957715dbd5393064d9d01abc61c6d5b1f869b3b91bbd13fb2ac0f6` |
| 26 | `theorem` | [exists_add_of_le](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/declarations/exists-add-of-le--5d73470117b4f7a5a7c662d3.md) | 225 | `result-track:5d73470117b4f7a5a7c662d3636f6a2a1500ad2173abb7e2c2435ccedea4706b` |
| 27 | `theorem` | [le_self_add](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/declarations/le-self-add--8d4a33f14f08cdf479c9c9e8.md) | 233 | `result-track:8d4a33f14f08cdf479c9c9e88d45cf09c0c054d9a369934bf68ecfc5a97d2436` |
| 28 | `theorem` | [eq_zero_or_eq_zero_of_mul_eq_zero](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/declarations/eq-zero-or-eq-zero-of-mul-eq-zero--75978f7d4671c1bf329f5ba6.md) | 242 | `result-track:75978f7d4671c1bf329f5ba689b7e8e83b02760ee23287f89c243940b0997799` |
| 29 | `instance` | [can](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/declarations/can--ccfca0a47a2a6ffbf7c32d5a.md) | 258 | `declaration-track:ccfca0a47a2a6ffbf7c32d5ac39b48625b1541c04985c837c95092023df2c470` |
| 30 | `example` | [(anonymous)](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/declarations/example--bc2195c1296cb8964a1c8448.md) | 269 | `declaration-track:bc2195c1296cb8964a1c8448d0177be737a730ff2f8d323085094f4e8b19dc8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
