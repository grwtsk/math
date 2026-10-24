# Verification target: GRWTSK.Algebra.LinearAlgebra.Submodule.Variant51141d0a475e3005c99e9d482edbe79899cce8e3411c584aba7fc469ba758681

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76df3388f8655f065bd62a5141cce1a4308d08d8",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variant51141d0a475e3005c99e9d482edbe79899cce8e3411c584aba7fc469ba758681.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant51141d0a475e3005c99e9d482edbe79899cce8e3411c584aba7fc469ba758681.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant51141d0a475e3005c99e9d482edbe79899cce8e3411c584aba7fc469ba758681.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76df3388f8655f065bd62a5141cce1a4308d08d8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Submodule/Variant51141d0a475e3005c99e9d482edbe79899cce8e3411c584aba7fc469ba758681.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Submodule/Variant51141d0a475e3005c99e9d482edbe79899cce8e3411c584aba7fc469ba758681.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LocalizedModule.Submodule` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.AtPrime` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Away.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Submodule.mem_of_localization_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant51141d0a475e3005c99e9d482edbe79899cce8e3411c584aba7fc469ba758681.lean/declarations/submodule-mem-of-localization-maximal--5d655bd176df18b4dbd190e9.md) | 49 | `result-track:5d655bd176df18b4dbd190e9588dc90b4dd169d02e2c047bfd34f936f57509ab` |
| 2 | `theorem` | [Submodule.le_of_localization_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant51141d0a475e3005c99e9d482edbe79899cce8e3411c584aba7fc469ba758681.lean/declarations/submodule-le-of-localization-maximal--84762fd34d48c4d8f305b8f3.md) | 63 | `result-track:84762fd34d48c4d8f305b8f3a55ef2511f58ff2c9cb1419f0bd7f4eed01dc6ab` |
| 3 | `theorem` | [Submodule.eq_of_localization₀_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant51141d0a475e3005c99e9d482edbe79899cce8e3411c584aba7fc469ba758681.lean/declarations/submodule-eq-of-localization-maximal--87412e01961fbff1b1a71503.md) | 71 | `result-track:87412e01961fbff1b1a715037d2b56db2be39c406222cb1e0dbcecb800fcc82c` |
| 4 | `theorem` | [Submodule.eq_bot_of_localization₀_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant51141d0a475e3005c99e9d482edbe79899cce8e3411c584aba7fc469ba758681.lean/declarations/submodule-eq-bot-of-localization-maximal--2c37c72a6db1727d2997a434.md) | 79 | `result-track:2c37c72a6db1727d2997a4349d86fd34acc62892f14db8ced68c75ef0ebcc345` |
| 5 | `theorem` | [Submodule.eq_top_of_localization₀_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant51141d0a475e3005c99e9d482edbe79899cce8e3411c584aba7fc469ba758681.lean/declarations/submodule-eq-top-of-localization-maximal--cd48d38f74799442c6c41326.md) | 84 | `result-track:cd48d38f74799442c6c41326093aa4de9e44d8c39b404ffb173a85e71bb1d290` |
| 6 | `theorem` | [Module.eq_of_localization_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant51141d0a475e3005c99e9d482edbe79899cce8e3411c584aba7fc469ba758681.lean/declarations/module-eq-of-localization-maximal--a0948bf41ecef1889d68c486.md) | 89 | `result-track:a0948bf41ecef1889d68c48634d464767781e31561b1207866de3d86a315f7a3` |
| 7 | `theorem` | [Module.eq_zero_of_localization_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant51141d0a475e3005c99e9d482edbe79899cce8e3411c584aba7fc469ba758681.lean/declarations/module-eq-zero-of-localization-maximal--652db62abe1902c52726f5a9.md) | 98 | `result-track:652db62abe1902c52726f5a98ad74aaa44faca6d13da29e1900767f6bedb311e` |
| 8 | `theorem` | [LinearMap.eq_of_localization_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant51141d0a475e3005c99e9d482edbe79899cce8e3411c584aba7fc469ba758681.lean/declarations/linearmap-eq-of-localization-maximal--4e4a7597ae11310e9b58dd05.md) | 103 | `result-track:4e4a7597ae11310e9b58dd05906ed0e0ef84aa35e8e678caec8933cf2a9d9ba2` |
| 9 | `theorem` | [Module.subsingleton_of_localization_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant51141d0a475e3005c99e9d482edbe79899cce8e3411c584aba7fc469ba758681.lean/declarations/module-subsingleton-of-localization-maximal--9d99a203c9ea9ced52f39f5c.md) | 112 | `result-track:9d99a203c9ea9ced52f39f5c95ab86ef9f656e07f8055818da43984a42955066` |
| 10 | `theorem` | [Submodule.eq_of_localization_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant51141d0a475e3005c99e9d482edbe79899cce8e3411c584aba7fc469ba758681.lean/declarations/submodule-eq-of-localization-maximal--98491a2bf522c0a5a5050578.md) | 119 | `result-track:98491a2bf522c0a5a5050578cb4d3a3e9778de3146910a3faa1cf3113a5edb26` |
| 11 | `theorem` | [Submodule.eq_bot_of_localization_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant51141d0a475e3005c99e9d482edbe79899cce8e3411c584aba7fc469ba758681.lean/declarations/submodule-eq-bot-of-localization-maximal--c4fe418a4d897b5ec9367f68.md) | 125 | `result-track:c4fe418a4d897b5ec9367f68273a498f722d2d8fb8e92693a667300d7499578f` |
| 12 | `theorem` | [Submodule.eq_top_of_localization_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant51141d0a475e3005c99e9d482edbe79899cce8e3411c584aba7fc469ba758681.lean/declarations/submodule-eq-top-of-localization-maximal--61b1bed24db766279ef1d379.md) | 130 | `result-track:61b1bed24db766279ef1d379c89d58a8d643d9067f22bd5004ff06d832c9820f` |
| 13 | `theorem` | [Module.eq_of_isLocalized_span](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant51141d0a475e3005c99e9d482edbe79899cce8e3411c584aba7fc469ba758681.lean/declarations/module-eq-of-islocalized-span--cd469c76edb85d1e1dedaacb.md) | 157 | `result-track:cd469c76edb85d1e1dedaacb5080b665d575a12ac598799005685ff0901323ef` |
| 14 | `theorem` | [Module.eq_zero_of_isLocalized_span](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant51141d0a475e3005c99e9d482edbe79899cce8e3411c584aba7fc469ba758681.lean/declarations/module-eq-zero-of-islocalized-span--b7c311033a2abd783cd31a9b.md) | 165 | `result-track:b7c311033a2abd783cd31a9bfe8c67b9f03a01aaaf5715c22b604b13f760824b` |
| 15 | `theorem` | [Submodule.mem_of_isLocalized_span](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant51141d0a475e3005c99e9d482edbe79899cce8e3411c584aba7fc469ba758681.lean/declarations/submodule-mem-of-islocalized-span--9cbc52305352f001b77e257c.md) | 168 | `result-track:9cbc52305352f001b77e257c101936f581a1bc20b0ba01820ecd26dd65f5e49d` |
| 16 | `theorem` | [Submodule.le_of_isLocalized_span](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant51141d0a475e3005c99e9d482edbe79899cce8e3411c584aba7fc469ba758681.lean/declarations/submodule-le-of-islocalized-span--1b46198c2d32457011a6a1d4.md) | 181 | `result-track:1b46198c2d32457011a6a1d45635a19a4f58f795ac4c4296bfadb779fa1f8192` |
| 17 | `theorem` | [Submodule.eq_of_isLocalized₀_span](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant51141d0a475e3005c99e9d482edbe79899cce8e3411c584aba7fc469ba758681.lean/declarations/submodule-eq-of-islocalized-span--8e2132b84220360784cf2420.md) | 185 | `result-track:8e2132b84220360784cf24205b03e252d430e29eb6c96e5d2359582285967454` |
| 18 | `theorem` | [Submodule.eq_bot_of_isLocalized₀_span](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant51141d0a475e3005c99e9d482edbe79899cce8e3411c584aba7fc469ba758681.lean/declarations/submodule-eq-bot-of-islocalized-span--388ac1425ec9e4790558d7f2.md) | 190 | `result-track:388ac1425ec9e4790558d7f2a0b126af359ec6b99ed66de9a93f0a1babbc4981` |
| 19 | `theorem` | [Submodule.eq_top_of_isLocalized₀_span](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant51141d0a475e3005c99e9d482edbe79899cce8e3411c584aba7fc469ba758681.lean/declarations/submodule-eq-top-of-islocalized-span--748fc33a8be8b14c17fa84d3.md) | 194 | `result-track:748fc33a8be8b14c17fa84d3defa8feae423ab10ec1385a4a36ba4964ed5a02a` |
| 20 | `theorem` | [Submodule.eq_of_isLocalized'_span](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant51141d0a475e3005c99e9d482edbe79899cce8e3411c584aba7fc469ba758681.lean/declarations/submodule-eq-of-islocalized-span--187d1260cd477ad88bc58491.md) | 198 | `result-track:187d1260cd477ad88bc58491450803a569eda18795a5212c61f5302ebad84cfd` |
| 21 | `theorem` | [Submodule.eq_bot_of_isLocalized'_span](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant51141d0a475e3005c99e9d482edbe79899cce8e3411c584aba7fc469ba758681.lean/declarations/submodule-eq-bot-of-islocalized-span--66d20b9b0cdd08620aa1f7af.md) | 203 | `result-track:66d20b9b0cdd08620aa1f7afadc39be678a24858d6e62a33c7581f1a7d142807` |
| 22 | `theorem` | [Submodule.eq_top_of_isLocalized'_span](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant51141d0a475e3005c99e9d482edbe79899cce8e3411c584aba7fc469ba758681.lean/declarations/submodule-eq-top-of-islocalized-span--923f62901173d6f4e1f481da.md) | 207 | `result-track:923f62901173d6f4e1f481da26c595dd4e3e4066f7634e6609ac26dd53525c29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
