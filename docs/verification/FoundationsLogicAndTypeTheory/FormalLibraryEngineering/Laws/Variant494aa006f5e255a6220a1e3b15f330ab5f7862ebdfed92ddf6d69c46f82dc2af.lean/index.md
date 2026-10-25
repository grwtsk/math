# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Laws.Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0eb6313f22bca3b905c16320c71fe2f668d96be",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0eb6313f22bca3b905c16320c71fe2f668d96be`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Formula.Semantics` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [equivalent_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/declarations/equivalent-refl--d9ab4fbddea30815a5f2a8bd.md) | 11 | `result-track:d9ab4fbddea30815a5f2a8bde5fe2bdf91a3e133fe34d346c31f2455e821907a` |
| 2 | `theorem` | [equivalent_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/declarations/equivalent-symm--86e3cff1f449875990a73dec.md) | 16 | `result-track:86e3cff1f449875990a73decc56f3ea6a52aeeda5636ef2f2bc2183d7d509fec` |
| 3 | `theorem` | [equivalent_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/declarations/equivalent-trans--5cec3e8024c7a8703440ff9e.md) | 21 | `result-track:5cec3e8024c7a8703440ff9e430d341e7ffcfbb8a92b705ffd05e7b53eeede8c` |
| 4 | `theorem` | [entails_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/declarations/entails-refl--0004629f26a90adae017796a.md) | 27 | `result-track:0004629f26a90adae017796adf10910f6d6172072ccd301a1ff548d3352425f6` |
| 5 | `theorem` | [entails_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/declarations/entails-trans--e6198b04bd1470c4ca9df829.md) | 32 | `result-track:e6198b04bd1470c4ca9df829f91fb993c2e2b051684ff7888cf47a95134c438d` |
| 6 | `theorem` | [entails_of_equivalent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/declarations/entails-of-equivalent--b293501f59249b5bc41b768a.md) | 38 | `result-track:b293501f59249b5bc41b768af7df7e7aea9a7170d63ca9e2bdcb0d9ae45b733b` |
| 7 | `theorem` | [valid_of_equivalent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/declarations/valid-of-equivalent--a78eae79c2a32a162eacad28.md) | 44 | `result-track:a78eae79c2a32a162eacad2845c7b4474fece1aa96e1f3239dc251aeaf041aa2` |
| 8 | `theorem` | [satisfiable_of_equivalent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/declarations/satisfiable-of-equivalent--54fdf4135376a5d972fcc5bd.md) | 50 | `result-track:54fdf4135376a5d972fcc5bd3ec086d20403e0c311792b2e93ba927496aa2e4c` |
| 9 | `theorem` | [unsatisfiable_of_equivalent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/declarations/unsatisfiable-of-equivalent--a26bdffd69e7b5497c8d966f.md) | 58 | `result-track:a26bdffd69e7b5497c8d966fda9b060ce0eccc45cea2b384ccfa779112a5e35c` |
| 10 | `theorem` | [equivalent_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/declarations/equivalent-neg--ccd6d87cc603951ff73c0674.md) | 64 | `result-track:ccd6d87cc603951ff73c06746e0d6370ed9b3c539f26c5f7967c2ee88e79ea2e` |
| 11 | `theorem` | [equivalent_conj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/declarations/equivalent-conj--74da4692ed593a0119cb5b48.md) | 69 | `result-track:74da4692ed593a0119cb5b489e8677f23e5e661734c6ee2cdb8a1bb0526db34e` |
| 12 | `theorem` | [equivalent_disj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/declarations/equivalent-disj--c9f468bb9b6ce3b8151c7ac3.md) | 75 | `result-track:c9f468bb9b6ce3b8151c7ac36d2efd4838d2c785cd711e84fa6e0d1e45b6d71c` |
| 13 | `theorem` | [equivalent_impl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/declarations/equivalent-impl--589b69e6ca62cfff4130aa3d.md) | 81 | `result-track:589b69e6ca62cfff4130aa3d728468e12f37570aabe26617f077f08a1194d56e` |
| 14 | `theorem` | [equivalent_eqv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/declarations/equivalent-eqv--8609d4afe10cd1612369e4f0.md) | 87 | `result-track:8609d4afe10cd1612369e4f065c4cd63d7066fd6479d3d69d0dcd840388e767b` |
| 15 | `theorem` | [valid_truth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/declarations/valid-truth--ecac00bccfd7e29bd933e058.md) | 93 | `result-track:ecac00bccfd7e29bd933e058102ae31b7891b7ccc9fac288ea8229e3e5a804f9` |
| 16 | `theorem` | [unsatisfiable_falsum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/declarations/unsatisfiable-falsum--70b958511c35b3a39bd4ba8e.md) | 98 | `result-track:70b958511c35b3a39bd4ba8efba598225c6653fa5acca1c2a88cc78a1b6f5ffb` |
| 17 | `theorem` | [satisfiable_truth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/declarations/satisfiable-truth--28e2ca2c00dc8861fcd5cd28.md) | 103 | `result-track:28e2ca2c00dc8861fcd5cd284322ecffbb6d6d7ccb4ba49cefa9f74f900dc158` |
| 18 | `theorem` | [not_satisfiable_falsum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/declarations/not-satisfiable-falsum--7543c010960b9e0193ed1414.md) | 107 | `result-track:7543c010960b9e0193ed1414bed84b1332a14a79c63119da1fd76fd3f089510c` |
| 19 | `theorem` | [satisfiable_of_valid](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/declarations/satisfiable-of-valid--ffb25b7405a7174308d2e066.md) | 113 | `result-track:ffb25b7405a7174308d2e066180f9541fa71ee9bf1d93a8e46a9349327f31f3d` |
| 20 | `theorem` | [valid_neg_of_unsatisfiable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/declarations/valid-neg-of-unsatisfiable--108d59ee0ed284887afc5125.md) | 117 | `result-track:108d59ee0ed284887afc512598748a1401490093af2d8cadc74abe83d8aa8a05` |
| 21 | `theorem` | [unsatisfiable_of_valid_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/declarations/unsatisfiable-of-valid-neg--e8d2e0b1b194c035dc2f2262.md) | 122 | `result-track:e8d2e0b1b194c035dc2f2262033693cae1dac83e11b795070193538cd4f7c2a4` |
| 22 | `theorem` | [valid_neg_iff_unsatisfiable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/declarations/valid-neg-iff-unsatisfiable--4000be743d07486113c61b98.md) | 132 | `result-track:4000be743d07486113c61b98722fa94ae1f6420089522364f1b1002f497e4e93` |
| 23 | `theorem` | [unsatisfiable_iff_not_satisfiable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/declarations/unsatisfiable-iff-not-satisfiable--1e6fba8658e0b5cec591ab74.md) | 140 | `result-track:1e6fba8658e0b5cec591ab7415498cca3059879898e299527186757d87054093` |
| 24 | `theorem` | [valid_iff_not_satisfiable_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/declarations/valid-iff-not-satisfiable-neg--5ba13bd90787a9730f63354b.md) | 154 | `result-track:5ba13bd90787a9730f63354bb0ea5181b2e0ff943abe57bc0f9651b2de624348` |
| 25 | `theorem` | [equivalent_double_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/declarations/equivalent-double-neg--5b80aa40d2c49406cdc44d55.md) | 169 | `result-track:5b80aa40d2c49406cdc44d55ad3a7195db94c6d074d0262b7a63b088cd526c14` |
| 26 | `theorem` | [equivalent_conj_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/declarations/equivalent-conj-comm--989b2eb40adeb4002fa921a9.md) | 174 | `result-track:989b2eb40adeb4002fa921a9109d21aa939270f646da31213d14580f122882b7` |
| 27 | `theorem` | [equivalent_disj_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/declarations/equivalent-disj-comm--8badf139e64a941543208884.md) | 179 | `result-track:8badf139e64a941543208884da0dca913253dbaced4fa33a10a6b12e1ed60ae5` |
| 28 | `theorem` | [equivalent_conj_assoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/declarations/equivalent-conj-assoc--86a10f35fa210cd8eb689014.md) | 184 | `result-track:86a10f35fa210cd8eb689014e9e1f263f57ec314a939bda996c07fd11210a443` |
| 29 | `theorem` | [equivalent_disj_assoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/declarations/equivalent-disj-assoc--577e1a6b1037c1a5333fda53.md) | 192 | `result-track:577e1a6b1037c1a5333fda5392816f855d8dc5c2d02ef75343ac55127b53c81d` |
| 30 | `theorem` | [equivalent_impl_disj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/declarations/equivalent-impl-disj--630af4b7a8780207102d559e.md) | 200 | `result-track:630af4b7a8780207102d559e0673314aed25eeb014c076258d5a4b0b7cbc6fed` |
| 31 | `theorem` | [equivalent_deMorgan_conj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/declarations/equivalent-demorgan-conj--302220272b58faed1b021056.md) | 205 | `result-track:302220272b58faed1b021056d542437d81ea6920257ea5cb229d8768e05dc876` |
| 32 | `theorem` | [equivalent_deMorgan_disj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/declarations/equivalent-demorgan-disj--fb30733efe2be5f4ac0e2c24.md) | 210 | `result-track:fb30733efe2be5f4ac0e2c241744e86bd1ea0b529699c628b66bb7496915e20a` |
| 33 | `theorem` | [valid_impl_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/declarations/valid-impl-refl--a600845abf102dc548524658.md) | 215 | `result-track:a600845abf102dc548524658754dad167d38170a37dce341b5fc6f79d4ec7af2` |
| 34 | `theorem` | [valid_eqv_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant494aa006f5e255a6220a1e3b15f330ab5f7862ebdfed92ddf6d69c46f82dc2af.lean/declarations/valid-eqv-refl--4e3f02ccd243ada420351249.md) | 220 | `result-track:4e3f02ccd243ada420351249b20cce332bd4c7ab1b88403c4715f30d6aa0d49d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
