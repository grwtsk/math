# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant9c8cf2bcd9fc33d80539e5490e94db93d79e46dd93e46136f1ea2738d0d5b503

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9acf3e37ece39089dfff68b2ba42146e7927c87",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9c8cf2bcd9fc33d80539e5490e94db93d79e46dd93e46136f1ea2738d0d5b503.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9c8cf2bcd9fc33d80539e5490e94db93d79e46dd93e46136f1ea2738d0d5b503.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9c8cf2bcd9fc33d80539e5490e94db93d79e46dd93e46136f1ea2738d0d5b503.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9acf3e37ece39089dfff68b2ba42146e7927c87`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9c8cf2bcd9fc33d80539e5490e94db93d79e46dd93e46136f1ea2738d0d5b503.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9c8cf2bcd9fc33d80539e5490e94db93d79e46dd93e46136f1ea2738d0d5b503.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Semisimple.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.BooleanGenerators` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [LieModule.nontrivial_of_isIrreducible](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9c8cf2bcd9fc33d80539e5490e94db93d79e46dd93e46136f1ea2738d0d5b503.lean/declarations/liemodule-nontrivial-of-isirreducible--0467e42b98aaa21168cd29e4.md) | 44 | `result-track:0467e42b98aaa21168cd29e465d96831b44b147b761274b9643a67e9ec092d92` |
| 2 | `theorem` | [HasTrivialRadical.eq_bot_of_isSolvable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9c8cf2bcd9fc33d80539e5490e94db93d79e46dd93e46136f1ea2738d0d5b503.lean/declarations/hastrivialradical-eq-bot-of-issolvable--77a5b975ab3c4c610b779b9a.md) | 58 | `result-track:77a5b975ab3c4c610b779b9aa551fe3a601bf59ba0527edf05929fa542ebbc2d` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9c8cf2bcd9fc33d80539e5490e94db93d79e46dd93e46136f1ea2738d0d5b503.lean/declarations/instance--1ab8979b6e17a0d5c855cd4c.md) | 62 | `declaration-track:1ab8979b6e17a0d5c855cd4c067ba507e697af2deb2b2a3d42a22dbab481edee` |
| 4 | `theorem` | [hasTrivialRadical_of_no_solvable_ideals](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9c8cf2bcd9fc33d80539e5490e94db93d79e46dd93e46136f1ea2738d0d5b503.lean/declarations/hastrivialradical-of-no-solvable-ideals--7e10fac84c67d9865f54a88c.md) | 67 | `result-track:7e10fac84c67d9865f54a88c6e6d9478b4a8e31c53c8ebb02a10b6c3241c1b6a` |
| 5 | `theorem` | [hasTrivialRadical_iff_no_solvable_ideals](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9c8cf2bcd9fc33d80539e5490e94db93d79e46dd93e46136f1ea2738d0d5b503.lean/declarations/hastrivialradical-iff-no-solvable-ideals--dd7efcf4146df6b355941136.md) | 71 | `result-track:dd7efcf4146df6b355941136200e9319f51daf2e9a1f0721dac92bc6d6ba2a26` |
| 6 | `theorem` | [hasTrivialRadical_iff_no_abelian_ideals](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9c8cf2bcd9fc33d80539e5490e94db93d79e46dd93e46136f1ea2738d0d5b503.lean/declarations/hastrivialradical-iff-no-abelian-ideals--9ea12402e21dc5ce2f598ade.md) | 75 | `result-track:9ea12402e21dc5ce2f598aded4a114aa082bd0415be323b7bd4ab2cb4a15afe4` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9c8cf2bcd9fc33d80539e5490e94db93d79e46dd93e46136f1ea2738d0d5b503.lean/declarations/instance--82a1f89b55874a0c7e5d1f18.md) | 87 | `declaration-track:82a1f89b55874a0c7e5d1f18c20c035284e210dfbe9e6f46e519d3cbbfb53d5e` |
| 8 | `lemma` | [isAtom_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9c8cf2bcd9fc33d80539e5490e94db93d79e46dd93e46136f1ea2738d0d5b503.lean/declarations/isatom-top--d1ea77fb1a866e1cd7e863e0.md) | 94 | `result-track:d1ea77fb1a866e1cd7e863e0597c8e93df3e4de56eba9137b8542a488c6aa65a` |
| 9 | `lemma` | [isAtom_iff_eq_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9c8cf2bcd9fc33d80539e5490e94db93d79e46dd93e46136f1ea2738d0d5b503.lean/declarations/isatom-iff-eq-top--228217fd0bd5ad3c4b7ad451.md) | 97 | `result-track:228217fd0bd5ad3c4b7ad45100e00ec27bacd0990cb9bf465a398eaac6bbde40` |
| 10 | `lemma` | [eq_top_of_isAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9c8cf2bcd9fc33d80539e5490e94db93d79e46dd93e46136f1ea2738d0d5b503.lean/declarations/eq-top-of-isatom--891bec6cea77f0f8bb468ad0.md) | 100 | `result-track:891bec6cea77f0f8bb468ad0a0c458fa3c287a5ab03142ea4a7a53b7c06f57cc` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9c8cf2bcd9fc33d80539e5490e94db93d79e46dd93e46136f1ea2738d0d5b503.lean/declarations/instance--5be4287a2be948c86a7c5b71.md) | 102 | `declaration-track:5be4287a2be948c86a7c5b719f465bfadf706bdf7634e185e5cfed0347857e97` |
| 12 | `lemma` | [isSimple_of_isAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9c8cf2bcd9fc33d80539e5490e94db93d79e46dd93e46136f1ea2738d0d5b503.lean/declarations/issimple-of-isatom--73607386b0830a0f06b9a024.md) | 119 | `result-track:73607386b0830a0f06b9a024301b59904c92c765bbec50abdc0c04e2dbf2d59b` |
| 13 | `lemma` | [finitelyAtomistic](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9c8cf2bcd9fc33d80539e5490e94db93d79e46dd93e46136f1ea2738d0d5b503.lean/declarations/finitelyatomistic--a7eb9d208adbb227d90da456.md) | 198 | `result-track:a7eb9d208adbb227d90da45601c16d8aa5690b455a270789a29ba7356cefb94f` |
| 14 | `lemma` | [booleanGenerators](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9c8cf2bcd9fc33d80539e5490e94db93d79e46dd93e46136f1ea2738d0d5b503.lean/declarations/booleangenerators--c4b1b1424a3b652a916beca0.md) | 268 | `result-track:c4b1b1424a3b652a916beca04aff33bf63e0d24fc5d2f02e45c245518f68ba19` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9c8cf2bcd9fc33d80539e5490e94db93d79e46dd93e46136f1ea2738d0d5b503.lean/declarations/instance--335a6b8ee0a37666af8587b4.md) | 272 | `declaration-track:335a6b8ee0a37666af8587b44fde2a02995604d3e7efedab10700461ff970d1c` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9c8cf2bcd9fc33d80539e5490e94db93d79e46dd93e46136f1ea2738d0d5b503.lean/declarations/instance--031ca45a31fc47e55bdd8ebc.md) | 276 | `declaration-track:031ca45a31fc47e55bdd8ebca39d25d396a719c1b1337ac460a0fcf4d6a7cae4` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9c8cf2bcd9fc33d80539e5490e94db93d79e46dd93e46136f1ea2738d0d5b503.lean/declarations/instance--7b523e62de59e41210e0dfcc.md) | 280 | `declaration-track:7b523e62de59e41210e0dfcca225b803b1fd33d5c9f5461be21d0dc0aa93b1a5` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9c8cf2bcd9fc33d80539e5490e94db93d79e46dd93e46136f1ea2738d0d5b503.lean/declarations/instance--ff140a06e4737b6830ad7fe2.md) | 297 | `declaration-track:ff140a06e4737b6830ad7fe214ed6d4e7650d67dfac50931e90b28bd21a7a702` |
| 19 | `theorem` | [subsingleton_of_hasTrivialRadical_lie_abelian](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9c8cf2bcd9fc33d80539e5490e94db93d79e46dd93e46136f1ea2738d0d5b503.lean/declarations/subsingleton-of-hastrivialradical-lie-abelian--66173e252443da906de9b86c.md) | 308 | `result-track:66173e252443da906de9b86c34be30088567985b330cb7f36503eea26bd87639` |
| 20 | `theorem` | [abelian_radical_of_hasTrivialRadical](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9c8cf2bcd9fc33d80539e5490e94db93d79e46dd93e46136f1ea2738d0d5b503.lean/declarations/abelian-radical-of-hastrivialradical--bbb5d58ed7015ac7d8932040.md) | 313 | `result-track:bbb5d58ed7015ac7d8932040841551fc061a294bed59781d7c3d303233272c22` |
| 21 | `theorem` | [abelian_radical_iff_solvable_is_abelian](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9c8cf2bcd9fc33d80539e5490e94db93d79e46dd93e46136f1ea2738d0d5b503.lean/declarations/abelian-radical-iff-solvable-is-abelian--a170d647cced94a22267bc2d.md) | 317 | `result-track:a170d647cced94a22267bc2da03db8b4b7a53e41c2d3f0e3c8345f700e1b1ef4` |
| 22 | `theorem` | [ad_ker_eq_bot_of_hasTrivialRadical](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9c8cf2bcd9fc33d80539e5490e94db93d79e46dd93e46136f1ea2738d0d5b503.lean/declarations/ad-ker-eq-bot-of-hastrivialradical--9f56c2743e1b6703be534970.md) | 325 | `result-track:9f56c2743e1b6703be5349701a51169589eaadcef9cfc224c851f65156e36e56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
