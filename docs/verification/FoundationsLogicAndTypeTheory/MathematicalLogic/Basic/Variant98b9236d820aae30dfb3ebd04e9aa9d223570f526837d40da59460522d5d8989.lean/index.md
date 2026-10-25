# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant98b9236d820aae30dfb3ebd04e9aa9d223570f526837d40da59460522d5d8989

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65e6b22362b081c1bf2399c58ac3ce98b1a21277",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant98b9236d820aae30dfb3ebd04e9aa9d223570f526837d40da59460522d5d8989.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant98b9236d820aae30dfb3ebd04e9aa9d223570f526837d40da59460522d5d8989.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant98b9236d820aae30dfb3ebd04e9aa9d223570f526837d40da59460522d5d8989.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65e6b22362b081c1bf2399c58ac3ce98b1a21277`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant98b9236d820aae30dfb3ebd04e9aa9d223570f526837d40da59460522d5d8989.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant98b9236d820aae30dfb3ebd04e9aa9d223570f526837d40da59460522d5d8989.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Util.CompileInductive` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Simps.NotationClass` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [DFunLike](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant98b9236d820aae30dfb3ebd04e9aa9d223570f526837d40da59460522d5d8989.lean/declarations/dfunlike--505125386eac9087f22ec2f7.md) | 146 | `declaration-track:505125386eac9087f22ec2f7cea463a1f19c990429b9968d5befe403dcc3d743` |
| 2 | `abbrev` | [FunLike](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant98b9236d820aae30dfb3ebd04e9aa9d223570f526837d40da59460522d5d8989.lean/declarations/funlike--26e5f1afe5563ad5ceb20339.md) | 161 | `declaration-track:26e5f1afe5563ad5ceb20339242257725ed7e641663b037450718168ab14842e` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant98b9236d820aae30dfb3ebd04e9aa9d223570f526837d40da59460522d5d8989.lean/declarations/instance--d8ac32dbc9f779730a1ae1bb.md) | 173 | `declaration-track:d8ac32dbc9f779730a1ae1bb89def9870b10eb23a03fa1d02f5c34e36e5877d5` |
| 4 | `theorem` | [coe_eq_coe_fn](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant98b9236d820aae30dfb3ebd04e9aa9d223570f526837d40da59460522d5d8989.lean/declarations/coe-eq-coe-fn--9e76a4afbc25f234168faa37.md) | 180 | `result-track:9e76a4afbc25f234168faa3792c135d779db2dee3488d960b17012f66c646620` |
| 5 | `theorem` | [coe_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant98b9236d820aae30dfb3ebd04e9aa9d223570f526837d40da59460522d5d8989.lean/declarations/coe-injective--b158745780cae4ffaa7c8437.md) | 182 | `result-track:b158745780cae4ffaa7c84371096ef285fb4ae5c0240bb9ca1a46af956296044` |
| 6 | `theorem` | [coe_fn_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant98b9236d820aae30dfb3ebd04e9aa9d223570f526837d40da59460522d5d8989.lean/declarations/coe-fn-eq--59a9b20a72876f861ddce5c3.md) | 186 | `result-track:59a9b20a72876f861ddce5c3d739be07b135f9d26d8abe052f4b0f4a91324ec8` |
| 7 | `theorem` | [ext'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant98b9236d820aae30dfb3ebd04e9aa9d223570f526837d40da59460522d5d8989.lean/declarations/ext--e61acb021dda46961b8971f8.md) | 189 | `result-track:e61acb021dda46961b8971f8025f272d6c1374f9ba880e7e462b1540715aa277` |
| 8 | `theorem` | [ext'_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant98b9236d820aae30dfb3ebd04e9aa9d223570f526837d40da59460522d5d8989.lean/declarations/ext-iff--3f69032ff120b087006251d0.md) | 192 | `result-track:3f69032ff120b087006251d0079137b0c074a982851da6c0772087670f57f9db` |
| 9 | `theorem` | [ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant98b9236d820aae30dfb3ebd04e9aa9d223570f526837d40da59460522d5d8989.lean/declarations/ext--48ebf98d3b94c00ecce3bd74.md) | 195 | `result-track:48ebf98d3b94c00ecce3bd746ef02c5bf9b493284a926414519f0abe7804218e` |
| 10 | `theorem` | [ext_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant98b9236d820aae30dfb3ebd04e9aa9d223570f526837d40da59460522d5d8989.lean/declarations/ext-iff--795ac819e051e35b8d81716e.md) | 198 | `result-track:795ac819e051e35b8d81716e1a90e7228e3ccb1adedb828640b3ca15c3bf0179` |
| 11 | `theorem` | [congr_fun](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant98b9236d820aae30dfb3ebd04e9aa9d223570f526837d40da59460522d5d8989.lean/declarations/congr-fun--aeb79879d9b334161a7abd93.md) | 201 | `result-track:aeb79879d9b334161a7abd93e831a28a24ded8fb695325d9bc14ffe386d7eaf4` |
| 12 | `theorem` | [ne_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant98b9236d820aae30dfb3ebd04e9aa9d223570f526837d40da59460522d5d8989.lean/declarations/ne-iff--4aa89e9751fcdf80a8d5515c.md) | 204 | `result-track:4aa89e9751fcdf80a8d5515ca6a8fc6675bef52f346a6bbfc21b462e6d0e0251` |
| 13 | `theorem` | [exists_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant98b9236d820aae30dfb3ebd04e9aa9d223570f526837d40da59460522d5d8989.lean/declarations/exists-ne--719abeb395e4fa800fe64220.md) | 207 | `result-track:719abeb395e4fa800fe642202072653d90b68ee366145c923aab007e1713ea0a` |
| 14 | `lemma` | [subsingleton_cod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant98b9236d820aae30dfb3ebd04e9aa9d223570f526837d40da59460522d5d8989.lean/declarations/subsingleton-cod--50fc1e9bb721932845c4690d.md) | 211 | `result-track:50fc1e9bb721932845c4690d4b756f96afc96da0a124644b6378fe4815698d21` |
| 15 | `theorem` | [congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant98b9236d820aae30dfb3ebd04e9aa9d223570f526837d40da59460522d5d8989.lean/declarations/congr--93321bd8dee18136cd953fec.md) | 226 | `result-track:93321bd8dee18136cd953fec92c2b165c1664f53ac917f65e1e9634454b7fd5e` |
| 16 | `theorem` | [congr_arg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant98b9236d820aae30dfb3ebd04e9aa9d223570f526837d40da59460522d5d8989.lean/declarations/congr-arg--39658682b3bd30077683e83f.md) | 229 | `result-track:39658682b3bd30077683e83fa2efe9df32e795e25323943b74fd6988d71f0a60` |
| 17 | `theorem` | [dite_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant98b9236d820aae30dfb3ebd04e9aa9d223570f526837d40da59460522d5d8989.lean/declarations/dite-apply--e8a568b00c78e1bff78a3a53.md) | 232 | `result-track:e8a568b00c78e1bff78a3a5348ef3ec0d43a294f84c68f7167a1534bee3a17ae` |
| 18 | `theorem` | [ite_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant98b9236d820aae30dfb3ebd04e9aa9d223570f526837d40da59460522d5d8989.lean/declarations/ite-apply--187933d8b48ce2625e8b2d36.md) | 236 | `result-track:187933d8b48ce2625e8b2d36a4bcf7c4221f61486dc863c1d290fd9dd9604cc1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
