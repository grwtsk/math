# Verification target: GRWTSK.Algebra.LinearAlgebra.SlashActions.Variant70e20bbb094d3cfe6e68c3c3985c830ea1c1aa4967d9ca639dbafbd48bf520a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "276651da8d25e814bbeeac6e7882437b64f00aac",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SlashActions/Variant70e20bbb094d3cfe6e68c3c3985c830ea1c1aa4967d9ca639dbafbd48bf520a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant70e20bbb094d3cfe6e68c3c3985c830ea1c1aa4967d9ca639dbafbd48bf520a8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant70e20bbb094d3cfe6e68c3c3985c830ea1c1aa4967d9ca639dbafbd48bf520a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `276651da8d25e814bbeeac6e7882437b64f00aac`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SlashActions/Variant70e20bbb094d3cfe6e68c3c3985c830ea1c1aa4967d9ca639dbafbd48bf520a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SlashActions/Variant70e20bbb094d3cfe6e68c3c3985c830ea1c1aa4967d9ca639dbafbd48bf520a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.UpperHalfPlane.MoebiusAction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.AdaptationNote` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SlashAction](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant70e20bbb094d3cfe6e68c3c3985c830ea1c1aa4967d9ca639dbafbd48bf520a8.lean/declarations/slashaction--fa26feea080da8e6fd755cc5.md) | 40 | `declaration-track:fa26feea080da8e6fd755cc5c16556c9cd3c09120648f57576d4cda58358409e` |
| 2 | `theorem` | [SlashAction.neg_slash](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant70e20bbb094d3cfe6e68c3c3985c830ea1c1aa4967d9ca639dbafbd48bf520a8.lean/declarations/slashaction-neg-slash--59ab9fe2fe7c78a44123b925.md) | 54 | `result-track:59ab9fe2fe7c78a44123b9251dc40d0507c2d365b503485fd193f98635ac292a` |
| 3 | `def` | [monoidHomSlashAction](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant70e20bbb094d3cfe6e68c3c3985c830ea1c1aa4967d9ca639dbafbd48bf520a8.lean/declarations/monoidhomslashaction--8736c33e49d0ae484b846e14.md) | 62 | `declaration-track:8736c33e49d0ae484b846e143adefa87320f191913eb18cbdfc4d05e4708b2a6` |
| 4 | `def` | [slash](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant70e20bbb094d3cfe6e68c3c3985c830ea1c1aa4967d9ca639dbafbd48bf520a8.lean/declarations/slash--02ebffdeb10efffd55f33c32.md) | 75 | `declaration-track:02ebffdeb10efffd55f33c326a64e56868b43bb3b7d623192b040c37bc732352` |
| 5 | `theorem` | [slash_mul](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant70e20bbb094d3cfe6e68c3c3985c830ea1c1aa4967d9ca639dbafbd48bf520a8.lean/declarations/slash-mul--17f8f5229851d32fadb5dd8e.md) | 85 | `result-track:17f8f5229851d32fadb5dd8e237636ee57d4ca04c9942ad3dcfe4813f4487612` |
| 6 | `theorem` | [add_slash](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant70e20bbb094d3cfe6e68c3c3985c830ea1c1aa4967d9ca639dbafbd48bf520a8.lean/declarations/add-slash--8dd7722b0187b270c890768b.md) | 99 | `result-track:8dd7722b0187b270c890768b66c1338b690c82d65993a5cf541fde70e2c51651` |
| 7 | `theorem` | [slash_one](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant70e20bbb094d3cfe6e68c3c3985c830ea1c1aa4967d9ca639dbafbd48bf520a8.lean/declarations/slash-one--c86e486be216ff339c2eb021.md) | 104 | `result-track:c86e486be216ff339c2eb021446941d4548a681a63dce94b753de7e6d1d22228` |
| 8 | `theorem` | [zero_slash](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant70e20bbb094d3cfe6e68c3c3985c830ea1c1aa4967d9ca639dbafbd48bf520a8.lean/declarations/zero-slash--42c69540fb763f1675e8cc6d.md) | 107 | `result-track:42c69540fb763f1675e8cc6db15ad244cbe9fc1bfb04f9e0f0f132ded141d4e5` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant70e20bbb094d3cfe6e68c3c3985c830ea1c1aa4967d9ca639dbafbd48bf520a8.lean/declarations/instance--3b5caa7e6c56e80c90f4ba27.md) | 110 | `declaration-track:3b5caa7e6c56e80c90f4ba27cc5008ab44bf0412f3cc997476d030255771fb85` |
| 10 | `theorem` | [slash_def](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant70e20bbb094d3cfe6e68c3c3985c830ea1c1aa4967d9ca639dbafbd48bf520a8.lean/declarations/slash-def--1f84599fa7309c210ff272d0.md) | 119 | `result-track:1f84599fa7309c210ff272d05e2189f9706dae8c143e480761cdee851b883f3e` |
| 11 | `theorem` | [slash_apply](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant70e20bbb094d3cfe6e68c3c3985c830ea1c1aa4967d9ca639dbafbd48bf520a8.lean/declarations/slash-apply--c3cee40352de7335f2b6c61d.md) | 123 | `result-track:c3cee40352de7335f2b6c61d844d62dc794f77393961c80b5f1c4c7cf134af98` |
| 12 | `theorem` | [smul_slash](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant70e20bbb094d3cfe6e68c3c3985c830ea1c1aa4967d9ca639dbafbd48bf520a8.lean/declarations/smul-slash--564c557890d1113455f78028.md) | 127 | `result-track:564c557890d1113455f78028f7539d5a3a311da29621b21455db49bb8806395c` |
| 13 | `instance` | [SLAction](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant70e20bbb094d3cfe6e68c3c3985c830ea1c1aa4967d9ca639dbafbd48bf520a8.lean/declarations/slaction--13dc4345bd5f11786de6d0f8.md) | 132 | `declaration-track:13dc4345bd5f11786de6d0f87db3ce26d4395795062651c474ab463d6ca6ad17` |
| 14 | `theorem` | [SL_slash](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant70e20bbb094d3cfe6e68c3c3985c830ea1c1aa4967d9ca639dbafbd48bf520a8.lean/declarations/sl-slash--75a03ffc7d59a78ebfbbedbf.md) | 136 | `result-track:75a03ffc7d59a78ebfbbedbfbe0f841e874d3fb0f92bfd95a2d345efab07f3c2` |
| 15 | `theorem` | [SL_slash_def](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant70e20bbb094d3cfe6e68c3c3985c830ea1c1aa4967d9ca639dbafbd48bf520a8.lean/declarations/sl-slash-def--56dd4d0a3aa259a194687ad4.md) | 139 | `result-track:56dd4d0a3aa259a194687ad45f3525fcbe6b3c215d7697021cbb53cb04e9d8b0` |
| 16 | `theorem` | [SL_slash_apply](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant70e20bbb094d3cfe6e68c3c3985c830ea1c1aa4967d9ca639dbafbd48bf520a8.lean/declarations/sl-slash-apply--6b8fc1bde4c4bc3da2347ff4.md) | 144 | `result-track:6b8fc1bde4c4bc3da2347ff415dd4a777c10a87a634c0f156443d4d24201e5b8` |
| 17 | `theorem` | [SL_smul_slash](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant70e20bbb094d3cfe6e68c3c3985c830ea1c1aa4967d9ca639dbafbd48bf520a8.lean/declarations/sl-smul-slash--f954302223cb17375bdcec91.md) | 149 | `result-track:f954302223cb17375bdcec91a76d6b7e5db1572b87d73a48696cfa96c6fea31e` |
| 18 | `theorem` | [is_invariant_const](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant70e20bbb094d3cfe6e68c3c3985c830ea1c1aa4967d9ca639dbafbd48bf520a8.lean/declarations/is-invariant-const--2fbc915f11ea905e893b873c.md) | 155 | `result-track:2fbc915f11ea905e893b873cf9cc6377fd646c32978e79aa5c15c50f0b2af138` |
| 19 | `theorem` | [is_invariant_one](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant70e20bbb094d3cfe6e68c3c3985c830ea1c1aa4967d9ca639dbafbd48bf520a8.lean/declarations/is-invariant-one--c981b8ec85846b5b387e609a.md) | 161 | `result-track:c981b8ec85846b5b387e609aa26a1c82809afd4f2524650df67e5c0a7dd23318` |
| 20 | `theorem` | [is_invariant_one'](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant70e20bbb094d3cfe6e68c3c3985c830ea1c1aa4967d9ca639dbafbd48bf520a8.lean/declarations/is-invariant-one--2b54ae3f0492fceec14cb724.md) | 166 | `result-track:2b54ae3f0492fceec14cb7242c13ad548b3de2955779157f45696cc5c7be83f5` |
| 21 | `theorem` | [slash_action_eq'_iff](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant70e20bbb094d3cfe6e68c3c3985c830ea1c1aa4967d9ca639dbafbd48bf520a8.lean/declarations/slash-action-eq-iff--b94455a7d204fbc1ae45c7c7.md) | 172 | `result-track:b94455a7d204fbc1ae45c7c7371dbf9b7b4e15e395f292a8ab35495c4f71d829` |
| 22 | `theorem` | [mul_slash](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant70e20bbb094d3cfe6e68c3c3985c830ea1c1aa4967d9ca639dbafbd48bf520a8.lean/declarations/mul-slash--e21c4b079a2a55c8dfc7fd66.md) | 180 | `result-track:e21c4b079a2a55c8dfc7fd66b46fc59b2633b14793d0ad1ce7fa6c7dfb6d80c8` |
| 23 | `theorem` | [mul_slash_SL2](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant70e20bbb094d3cfe6e68c3c3985c830ea1c1aa4967d9ca639dbafbd48bf520a8.lean/declarations/mul-slash-sl2--1641b5f636a56659150383e0.md) | 193 | `result-track:1641b5f636a56659150383e03b8bf66d1e96cb0ab1e32d6c9d05b5cc67f8a7dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
