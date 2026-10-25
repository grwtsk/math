# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.LintSimpNF.Variant685cbd709ce6754daff9460a0635ef94a6f84563b2ff5d5d5622cf967690cb74

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7659e3ef3c19a7ba02147628a80c0fd30da3c675",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant685cbd709ce6754daff9460a0635ef94a6f84563b2ff5d5d5622cf967690cb74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant685cbd709ce6754daff9460a0635ef94a6f84563b2ff5d5d5622cf967690cb74.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant685cbd709ce6754daff9460a0635ef94a6f84563b2ff5d5d5622cf967690cb74.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7659e3ef3c19a7ba02147628a80c0fd30da3c675`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant685cbd709ce6754daff9460a0635ef94a6f84563b2ff5d5d5622cf967690cb74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant685cbd709ce6754daff9460a0635ef94a6f84563b2ff5d5d5622cf967690cb74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Lint` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant685cbd709ce6754daff9460a0635ef94a6f84563b2ff5d5d5622cf967690cb74.lean/declarations/equiv--9268cb03999a63e0a3b9466c.md) | 5 | `declaration-track:9268cb03999a63e0a3b9466c4427613c57ed92aeffc0873d4d66d8ff7d147f90` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant685cbd709ce6754daff9460a0635ef94a6f84563b2ff5d5d5622cf967690cb74.lean/declarations/instance--4eb44c22d22453e8b980c0b3.md) | 13 | `declaration-track:4eb44c22d22453e8b980c0b316dc3f18f5c3016c562c7456c56f0005ad4d161d` |
| 3 | `def` | [symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant685cbd709ce6754daff9460a0635ef94a6f84563b2ff5d5d5622cf967690cb74.lean/declarations/symm--003f1dec5bcc0a1a87367479.md) | 15 | `declaration-track:003f1dec5bcc0a1a87367479165c72bde4e6e9baf44bb1f4c60c40943fec6099` |
| 4 | `def` | [sumCompl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant685cbd709ce6754daff9460a0635ef94a6f84563b2ff5d5d5622cf967690cb74.lean/declarations/sumcompl--328d25d439b4184b881c9dd2.md) | 17 | `declaration-track:328d25d439b4184b881c9dd2278237c9f59edf86c7d67d167d7b2502ec4bb796` |
| 5 | `theorem` | [sumCompl_apply_symm_of_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant685cbd709ce6754daff9460a0635ef94a6f84563b2ff5d5d5622cf967690cb74.lean/declarations/sumcompl-apply-symm-of-pos--3068001acbd0f820adb7ac95.md) | 23 | `result-track:3068001acbd0f820adb7ac95d8ab0249eb0f163790870cf02bd92227a429b065` |
| 6 | `def` | [foo](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant685cbd709ce6754daff9460a0635ef94a6f84563b2ff5d5d5622cf967690cb74.lean/declarations/foo--02c28e5993a68d44a45b6244.md) | 27 | `declaration-track:02c28e5993a68d44a45b6244a59a1e14018b19e6032b5d8ac891f31a3fab3ea1` |
| 7 | `theorem` | [foo_eq_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant685cbd709ce6754daff9460a0635ef94a6f84563b2ff5d5d5622cf967690cb74.lean/declarations/foo-eq-id--4644557517114ed000feccb3.md) | 30 | `result-track:4644557517114ed000feccb3d7ad87fc2a690881727853e7b1224d82eeb9f2b3` |
| 8 | `theorem` | [foo_eq_ite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant685cbd709ce6754daff9460a0635ef94a6f84563b2ff5d5d5622cf967690cb74.lean/declarations/foo-eq-ite--e7a274642d7f390c424255e4.md) | 36 | `result-track:e7a274642d7f390c424255e4889bf98d3166a1d1f3a8be96f27726ecc72b0eb3` |
| 9 | `axiom` | [test_sorry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant685cbd709ce6754daff9460a0635ef94a6f84563b2ff5d5d5622cf967690cb74.lean/declarations/test-sorry--45066c743ea48eb46a91a6fc.md) | 43 | `declaration-track:45066c743ea48eb46a91a6fc0da988f6ae1b015f05be78923a4322b04ff8edd8` |
| 10 | `theorem` | [ofFn_getElem_eq_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant685cbd709ce6754daff9460a0635ef94a6f84563b2ff5d5d5622cf967690cb74.lean/declarations/offn-getelem-eq-map--507f7b49c2cbb3c75c184dcc.md) | 46 | `result-track:507f7b49c2cbb3c75c184dcce2aff5b31e8b16c5300e9b7f2cc0b2051e981789` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant685cbd709ce6754daff9460a0635ef94a6f84563b2ff5d5d5622cf967690cb74.lean/declarations/example--ec403a97e6126b2914459ab7.md) | 49 | `declaration-track:ec403a97e6126b2914459ab790d3f2c655d16f0e76e14e903ab2d3c8780d281c` |
| 12 | `def` | [eqToFun](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant685cbd709ce6754daff9460a0635ef94a6f84563b2ff5d5d5622cf967690cb74.lean/declarations/eqtofun--91389ca6dbf21224b086a9ca.md) | 56 | `declaration-track:91389ca6dbf21224b086a9ca5176fed6f9c78ab8fa5d03fe78769903700df469` |
| 13 | `theorem` | [eqToFun_comp_eq_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant685cbd709ce6754daff9460a0635ef94a6f84563b2ff5d5d5622cf967690cb74.lean/declarations/eqtofun-comp-eq-self--0a51d977ffda750d0dde0c18.md) | 59 | `result-track:0a51d977ffda750d0dde0c181df17bcaf3d9d79abcc0302292b4bbc2e220e1fb` |
| 14 | `theorem` | [eqToFun_comp_iso_hom_eq_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant685cbd709ce6754daff9460a0635ef94a6f84563b2ff5d5d5622cf967690cb74.lean/declarations/eqtofun-comp-iso-hom-eq-self--014e9d663280635ec922c7f1.md) | 65 | `result-track:014e9d663280635ec922c7f139a9e6232f937d1920bb7da4c098cc1a39479d5c` |
| 15 | `class` | [MyClass](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant685cbd709ce6754daff9460a0635ef94a6f84563b2ff5d5d5622cf967690cb74.lean/declarations/myclass--e34f0d20670d9654f74959ed.md) | 75 | `declaration-track:e34f0d20670d9654f74959edd32baa620740e91a9aeb6ba6507a0ca045079911` |
| 16 | `structure` | [Bundle](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant685cbd709ce6754daff9460a0635ef94a6f84563b2ff5d5d5622cf967690cb74.lean/declarations/bundle--e6255d722a8a17d4f557be21.md) | 78 | `declaration-track:e6255d722a8a17d4f557be21df4dd51ea98a767cda330b7ec673a0229c72507e` |
| 17 | `def` | [Bundle.of](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant685cbd709ce6754daff9460a0635ef94a6f84563b2ff5d5d5622cf967690cb74.lean/declarations/bundle-of--6617141e752fefbb2b3aa185.md) | 84 | `declaration-track:6617141e752fefbb2b3aa185f5cd8ccf0cc40759ba66461cba022b0c437e6a0d` |
| 18 | `theorem` | [Bundle.of_carrier](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant685cbd709ce6754daff9460a0635ef94a6f84563b2ff5d5d5622cf967690cb74.lean/declarations/bundle-of-carrier--257bcc561cfecd53ee4e6ec1.md) | 88 | `result-track:257bcc561cfecd53ee4e6ec11fa6435500d98ad6e82ac8218fd84f3d982d3ecb` |
| 19 | `theorem` | [Bundle.of_op](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LintSimpNF/Variant685cbd709ce6754daff9460a0635ef94a6f84563b2ff5d5d5622cf967690cb74.lean/declarations/bundle-of-op--97de56a3a1d9881c0abc7e5e.md) | 95 | `result-track:97de56a3a1d9881c0abc7e5ee0cbd87fd257cc2828ae2c090a44ec1e0b692d80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
