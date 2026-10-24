# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.FactorisationProperties.Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21733b171675c515ae4a0e09fe2130639458c809",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21733b171675c515ae4a0e09fe2130639458c809`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GeomSum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Divisors` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Prime` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Abundant](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean/declarations/abundant--1ea2a310d2b4337482053544.md) | 55 | `declaration-track:1ea2a310d2b4337482053544e95e9f57a09983e9a1246818bc84892172f7a950` |
| 2 | `def` | [Deficient](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean/declarations/deficient--45375b60c2a37353d5883db9.md) | 58 | `declaration-track:45375b60c2a37353d5883db94f01e1f1f5dae7c31a9ee53b4bec2c8d2379ace3` |
| 3 | `def` | [Pseudoperfect](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean/declarations/pseudoperfect--abc06cee7c6ed422f66488da.md) | 62 | `declaration-track:abc06cee7c6ed422f66488da0c10caafbf9d490f731e1d863b134e1e44102584` |
| 4 | `def` | [Weird](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean/declarations/weird--6ca6fc39b18cd38ae7b73626.md) | 66 | `declaration-track:6ca6fc39b18cd38ae7b73626b7c910d11ef73d6653c1f1126b0001217b30e6c9` |
| 5 | `theorem` | [not_pseudoperfect_iff_forall](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean/declarations/not-pseudoperfect-iff-forall--24d54f874980f4b0cfaf447e.md) | 68 | `result-track:24d54f874980f4b0cfaf447ed541d7ded3fe6f3e93664b13ce21b34be8e97711` |
| 6 | `theorem` | [deficient_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean/declarations/deficient-one--9761a84e76ed3cedb9154786.md) | 73 | `result-track:9761a84e76ed3cedb9154786578d15163b123d2b42c01f01ba939cd0ed45dede` |
| 7 | `theorem` | [deficient_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean/declarations/deficient-two--883e7f25cc9ebdf4d6c63736.md) | 74 | `result-track:883e7f25cc9ebdf4d6c637365045e3a2be52ddf6d00f63192cef54ebe1fcc769` |
| 8 | `theorem` | [deficient_three](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean/declarations/deficient-three--76bfc24884e983be4067b4ea.md) | 75 | `result-track:76bfc24884e983be4067b4ea1cc26c5d775195c1d867f02501992898cec17e89` |
| 9 | `theorem` | [abundant_twelve](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean/declarations/abundant-twelve--f86293ebdd7ddfc39dcfe2c1.md) | 77 | `result-track:f86293ebdd7ddfc39dcfe2c133a14e74af2b01bece78df7981c176bff7b7485c` |
| 10 | `theorem` | [weird_seventy](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean/declarations/weird-seventy--6a434fce7563758e0893d316.md) | 81 | `result-track:6a434fce7563758e0893d31678335eb39046dd29ec46f43977bf22508e031b60` |
| 11 | `lemma` | [deficient_iff_not_abundant_and_not_perfect](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean/declarations/deficient-iff-not-abundant-and-not-perfect--b3315cbe7e62972d328fab51.md) | 93 | `result-track:b3315cbe7e62972d328fab512e15d99d7f91c7a83e5843b3d3f650ad753cd94d` |
| 12 | `lemma` | [perfect_iff_not_abundant_and_not_deficient](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean/declarations/perfect-iff-not-abundant-and-not-deficient--3cadf723240ae5a3fb5d0eff.md) | 98 | `result-track:3cadf723240ae5a3fb5d0effa69120fa99ea193529b4427872c2473923a0941b` |
| 13 | `lemma` | [abundant_iff_not_perfect_and_not_deficient](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean/declarations/abundant-iff-not-perfect-and-not-deficient--b7a0bd3c087e132809a74f2a.md) | 103 | `result-track:b7a0bd3c087e132809a74f2a3e45b28bc4d8eeb3e167b92cfe996664866994bf` |
| 14 | `theorem` | [deficient_or_perfect_or_abundant](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean/declarations/deficient-or-perfect-or-abundant--4d499c58a1fefa9232a40b74.md) | 109 | `result-track:4d499c58a1fefa9232a40b742ada4260247d91672a81636a4e0984873edab1f3` |
| 15 | `theorem` | [Perfect.pseudoperfect](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean/declarations/perfect-pseudoperfect--9b6329bd1f9bd4dd1f557000.md) | 114 | `result-track:9b6329bd1f9bd4dd1f55700052098124156f1b68db888f03a43f6089c0adb632` |
| 16 | `theorem` | [Prime.not_abundant](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean/declarations/prime-not-abundant--d4ad84a5ae293c41bb76c297.md) | 117 | `result-track:d4ad84a5ae293c41bb76c2971539fd6f1d700293d07e04d908d8b376a96aa4f2` |
| 17 | `theorem` | [Prime.not_weird](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean/declarations/prime-not-weird--557a32a6043beae7877538bb.md) | 120 | `result-track:557a32a6043beae7877538bb317847168c95119f7f88ef2ccf78c91dd000025b` |
| 18 | `theorem` | [Prime.not_pseudoperfect](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean/declarations/prime-not-pseudoperfect--58d2b4468b0e58e5e5b0e0b5.md) | 125 | `result-track:58d2b4468b0e58e5e5b0e0b55d12d6ac2c2dc3f7dcae7390d30606a590b216f5` |
| 19 | `theorem` | [Prime.not_perfect](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean/declarations/prime-not-perfect--2b2cbff18bca639eb0765b01.md) | 133 | `result-track:2b2cbff18bca639eb0765b013a93e74f24a155e830d79156e4c492715323100f` |
| 20 | `theorem` | [Prime.deficient_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean/declarations/prime-deficient-pow--f43af75468b006d8fe1b2236.md) | 139 | `result-track:f43af75468b006d8fe1b2236c07c79c7dd571302792f8068804db1ae74b73d54` |
| 21 | `theorem` | [_root_.IsPrimePow.deficient](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean/declarations/root-isprimepow-deficient--3f45088abe3abf7f153a7939.md) | 165 | `result-track:3f45088abe3abf7f153a79391ca4226b4bae8c78b7d6d2fce96d891489fa5736` |
| 22 | `theorem` | [Prime.deficient](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean/declarations/prime-deficient--93f957d0d6e729593b89ac2b.md) | 169 | `result-track:93f957d0d6e729593b89ac2bb7c10495e4bc1ecfd5b1fc7a69b144e2a3246c20` |
| 23 | `theorem` | [infinite_deficient](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean/declarations/infinite-deficient--3402c89ee6a84a7c3377e895.md) | 174 | `result-track:3402c89ee6a84a7c3377e8953dce35991c44c985aa6a1b7b1b7988bc27a35bb3` |
| 24 | `theorem` | [infinite_even_deficient](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean/declarations/infinite-even-deficient--2c6cc990741afc59c5af7847.md) | 180 | `result-track:2c6cc990741afc59c5af784710a5ca8383b5d23f3d3b36c0875b9939f357ce7b` |
| 25 | `theorem` | [infinite_odd_deficient](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean/declarations/infinite-odd-deficient--f35ea9edac8aa4931c99c538.md) | 190 | `result-track:f35ea9edac8aa4931c99c53845631fdd6f5198eb959475144019b3a9248c283d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
