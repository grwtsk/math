# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Computability.TMComputable.Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e8545741cf4e71aff79333f245057a4961f606c",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e8545741cf4e71aff79333f245057a4961f606c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Eval.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Computability.Encoding` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Computability.TuringMachine` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FinTM2](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/fintm2--fb735776d9b1606dc6caa6ce.md) | 49 | `declaration-track:fb735776d9b1606dc6caa6ce10c9b3d20bb3d81ca01343c82b8a80cf4447ae2e` |
| 2 | `instance` | [decidableEqK](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/decidableeqk--e191f5a64e0d1a094848e92a.md) | 83 | `declaration-track:e191f5a64e0d1a094848e92ad8891b0d0dc7a3a3b4065962b09cec2f96b06284` |
| 3 | `instance` | [inhabitedσ](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/inhabited--92fda5174a937d01e3129cd9.md) | 86 | `declaration-track:92fda5174a937d01e3129cd9df58e9499f80fbbdcaa825604a1749605ec04057` |
| 4 | `def` | [Stmt](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/stmt--e6fed99226c122f24ef7da7b.md) | 90 | `declaration-track:e6fed99226c122f24ef7da7b48799f7deff48cf5294dd8de2e5b41094d9fc8de` |
| 5 | `instance` | [inhabitedStmt](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/inhabitedstmt--8032db3bb091dac35debbe8f.md) | 93 | `declaration-track:8032db3bb091dac35debbe8fe39fef4316cc65006e19b95843409ecf0255569e` |
| 6 | `def` | [Cfg](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/cfg--e694331b5bde851d597b91d8.md) | 97 | `declaration-track:e694331b5bde851d597b91d846cb0155c773f6d1fbd807d1b96628bf3b7a5d5b` |
| 7 | `instance` | [inhabitedCfg](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/inhabitedcfg--70e1041789ac66c4a861870d.md) | 100 | `declaration-track:70e1041789ac66c4a861870df0c4e28df33a956c6ecf0eb6388dbe8a9f192f53` |
| 8 | `def` | [step](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/step--a8b6b8a7e28c5997682f7663.md) | 105 | `declaration-track:a8b6b8a7e28c5997682f7663a3f8a977c988a4a7f1574545c8652f88bb1e3111` |
| 9 | `def` | [initList](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/initlist--b5ad09888fda87ff25543164.md) | 113 | `declaration-track:b5ad09888fda87ff25543164239a5ccc74cbbd3094fd4ad276797e6df6b383c9` |
| 10 | `def` | [haltList](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/haltlist--ac9a9356a231481ad0a0150e.md) | 121 | `declaration-track:ac9a9356a231481ad0a0150ea05fd2e2287b2a5c66de5b5f233b28ff74930631` |
| 11 | `structure` | [EvalsTo](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/evalsto--091781c6009d6571f7260055.md) | 130 | `declaration-track:091781c6009d6571f7260055de2d42356a68e06944d6f8d2dd1b44201f14b56c` |
| 12 | `structure` | [EvalsToInTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/evalstointime--19ecdb0552a19cf3cac4937d.md) | 140 | `declaration-track:19ecdb0552a19cf3cac4937d22805304d48f5e56f688f2abf8b8e089231fe2f2` |
| 13 | `def` | [EvalsTo.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/evalsto-refl--62b99efc4e7a0ab84cb8233c.md) | 145 | `declaration-track:62b99efc4e7a0ab84cb8233ca46b98bedadb055d4d38714d6d775a47396a8a26` |
| 14 | `def` | [EvalsTo.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/evalsto-trans--b0d86539f9b06940f5337f44.md) | 150 | `declaration-track:b0d86539f9b06940f5337f442be191f6d2d58ddd27d69cc51366d9bda8814f25` |
| 15 | `def` | [EvalsToInTime.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/evalstointime-refl--4dceefa71dc6554477cc63f7.md) | 155 | `declaration-track:4dceefa71dc6554477cc63f7c0d51d97f3c86c8af23c08ccf5df0d6e38dc1231` |
| 16 | `def` | [EvalsToInTime.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/evalstointime-trans--87c2a310c81bec467dc0ffb1.md) | 160 | `declaration-track:87c2a310c81bec467dc0ffb10faabf7524fe667a56052312a0c1184000ab61d3` |
| 17 | `def` | [TM2Outputs](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/tm2outputs--ba0bec1c3c0408abd8f76726.md) | 166 | `declaration-track:ba0bec1c3c0408abd8f76726d3ea85524d8cf3f48e9769a607ec944b6d57e888` |
| 18 | `def` | [TM2OutputsInTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/tm2outputsintime--a3ef469d436607591743753b.md) | 170 | `declaration-track:a3ef469d436607591743753bc6a3656e8fa2d9179c40c747fe136ba16fafbd0a` |
| 19 | `def` | [TM2OutputsInTime.toTM2Outputs](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/tm2outputsintime-totm2outputs--51b947d7534d928c8de29f4e.md) | 175 | `declaration-track:51b947d7534d928c8de29f4e1671f7e6809b739d2a26e11f8baf5f3d4fd88362` |
| 20 | `structure` | [TM2ComputableAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/tm2computableaux--995d83d67c5a135821553ba9.md) | 182 | `declaration-track:995d83d67c5a135821553ba98804eb643b499a9c2d06e76c8b68ff4d091d1a92` |
| 21 | `structure` | [TM2Computable](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/tm2computable--3d7290d2466bb2731b180857.md) | 191 | `declaration-track:3d7290d2466bb2731b18085795d3252e46202fca70689076be772ba65ede1be4` |
| 22 | `structure` | [TM2ComputableInTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/tm2computableintime--a5030979059ee2f68261f12b.md) | 201 | `declaration-track:a5030979059ee2f68261f12b6a62f9ab2856106bb4b86947108e721c9cc6ed66` |
| 23 | `structure` | [TM2ComputableInPolyTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/tm2computableinpolytime--c26b26947feef65543461816.md) | 214 | `declaration-track:c26b26947feef65543461816ef6f398ea01fbe3d330aa48a13e3820d6d0bbf73` |
| 24 | `def` | [TM2ComputableInTime.toTM2Computable](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/tm2computableintime-totm2computable--6f20541d35268b92324a6070.md) | 226 | `declaration-track:6f20541d35268b92324a6070b165092feb4784249eeac50ee190bc416b24bff9` |
| 25 | `def` | [TM2ComputableInPolyTime.toTM2ComputableInTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/tm2computableinpolytime-totm2computableintime--c5e558d051a6146315cef591.md) | 231 | `declaration-track:c5e558d051a6146315cef591e57367d92b8d5af24c30ce7dd514d92e651f049d` |
| 26 | `def` | [idComputer](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/idcomputer--0d94bf36ec0212fc280e7a1e.md) | 239 | `declaration-track:0d94bf36ec0212fc280e7a1e81a648682e0c6863dbfed9965b9cf51bb4dd3123` |
| 27 | `instance` | [inhabitedFinTM2](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/inhabitedfintm2--94f088e57fc62afc272322ed.md) | 251 | `declaration-track:94f088e57fc62afc272322eddf7332706cca7d4817a494b77694ea693ec9415c` |
| 28 | `def` | [idComputableInPolyTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/idcomputableinpolytime--e9f5c99d0c1aaa74e6676a76.md) | 257 | `declaration-track:e9f5c99d0c1aaa74e6676a7687e291f829486188249a5cb98ea804a78d6f8673` |
| 29 | `instance` | [inhabitedTM2ComputableInPolyTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/inhabitedtm2computableinpolytime--ef4d050387cead3041f9cfbd.md) | 268 | `declaration-track:ef4d050387cead3041f9cfbd28d1328847da19b4f6874c301e0c82896a45c205` |
| 30 | `instance` | [inhabitedTM2OutputsInTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/inhabitedtm2outputsintime--17ae93f56550049378a659d5.md) | 272 | `declaration-track:17ae93f56550049378a659d51db6cbd3a7b9ee8dcd6b4e1a5be82e8b9fbb5ada` |
| 31 | `instance` | [inhabitedTM2Outputs](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/inhabitedtm2outputs--ff5ed9e13f4f5be2e8de5325.md) | 278 | `declaration-track:ff5ed9e13f4f5be2e8de53254080f387a2cecf05152681e3772f47268ddb7800` |
| 32 | `instance` | [inhabitedEvalsToInTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/inhabitedevalstointime--a132f32a2f50fc6fe83888e4.md) | 284 | `declaration-track:a132f32a2f50fc6fe83888e499c718c9299c8e1dfa70f095b7cb2a22daffa71e` |
| 33 | `instance` | [inhabitedTM2EvalsTo](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/inhabitedtm2evalsto--27c7994c6f1811c2f5850738.md) | 288 | `declaration-track:27c7994c6f1811c2f585073894479e63befaf9e0e3e5295d1401ce29dbb15982` |
| 34 | `def` | [idComputableInTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/idcomputableintime--5ee7e69d798b1df4d2a77de2.md) | 292 | `declaration-track:5ee7e69d798b1df4d2a77de2587ba4770ad6291f0f2b945393415987affab196` |
| 35 | `instance` | [inhabitedTM2ComputableInTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/inhabitedtm2computableintime--9a4303218798d8596b0b2fd9.md) | 295 | `declaration-track:9a4303218798d8596b0b2fd92713b7ff00fc65d04149de88687c04fa6705adb1` |
| 36 | `def` | [idComputable](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/idcomputable--af65015a6ebfbfda0bdfd55b.md) | 300 | `declaration-track:af65015a6ebfbfda0bdfd55b2eb91ca49759f0a25bd5d6c5d237b95f5a57463c` |
| 37 | `instance` | [inhabitedTM2Computable](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/inhabitedtm2computable--1384d75436efd1e357aebcce.md) | 303 | `declaration-track:1384d75436efd1e357aebcceba42606de1a0eddbfb244178591a466fb732b1cf` |
| 38 | `instance` | [inhabitedTM2ComputableAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/declarations/inhabitedtm2computableaux--d69bcda56cba1427990d734b.md) | 307 | `declaration-track:d69bcda56cba1427990d734b91d948cdcfcbba5e2049b9dfbc5f95a7d4035495` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
