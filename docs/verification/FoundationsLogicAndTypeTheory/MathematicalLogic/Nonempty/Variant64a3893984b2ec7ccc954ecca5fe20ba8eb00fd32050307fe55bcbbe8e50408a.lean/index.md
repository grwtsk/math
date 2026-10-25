# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Nonempty.Variant64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88e6dbbeb6c33ed1f2efd3db4887198ceb2017a3",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88e6dbbeb6c33ed1f2efd3db4887198ceb2017a3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Nonempty.forall](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a.lean/declarations/nonempty-forall--8e62c003d98d971193483aef.md) | 24 | `result-track:8e62c003d98d971193483aefe974b491eb4d98070752dc629013f73fec7c5db1` |
| 2 | `theorem` | [Nonempty.exists](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a.lean/declarations/nonempty-exists--25058359d575183d0f4c3ac8.md) | 28 | `result-track:25058359d575183d0f4c3ac8386a5f66c9f55a059a398a8b4dfc4179c50f4977` |
| 3 | `theorem` | [exists_const_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a.lean/declarations/exists-const-iff--dd9b86dde2950d766e838b40.md) | 34 | `result-track:dd9b86dde2950d766e838b40deed1837df4dd5db7bce7ec34964ebc2222dfb8b` |
| 4 | `theorem` | [exists_true_iff_nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a.lean/declarations/exists-true-iff-nonempty--2855ab3ebe2a88ae80a2a9d5.md) | 37 | `result-track:2855ab3ebe2a88ae80a2a9d548c131380d760a3de06b87e99d1e8520c90cfd5f` |
| 5 | `theorem` | [Nonempty.imp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a.lean/declarations/nonempty-imp--08480e5b7e6acf71af9b1566.md) | 40 | `result-track:08480e5b7e6acf71af9b156655aa820805607efeb197ebd61e6d7d2b893fd7a9` |
| 6 | `theorem` | [not_nonempty_iff_imp_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a.lean/declarations/not-nonempty-iff-imp-false--36ec5568bcc60af86beca966.md) | 43 | `result-track:36ec5568bcc60af86beca96694910076775f4ec8cc8518d20e16543d36c5f689` |
| 7 | `theorem` | [nonempty_psigma](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a.lean/declarations/nonempty-psigma--a20f52da4063b4b4c3e70193.md) | 47 | `result-track:a20f52da4063b4b4c3e70193c01496ad0d4368cf88c5521ee4a875f367c56626` |
| 8 | `theorem` | [nonempty_subtype](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a.lean/declarations/nonempty-subtype--7ca0542da3bcd41037ccc24e.md) | 51 | `result-track:7ca0542da3bcd41037ccc24efc7c489eceaadf9198869545d6de6acee4e56f15` |
| 9 | `theorem` | [nonempty_pprod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a.lean/declarations/nonempty-pprod--8f430e7cbc6d0e8bccd1d86d.md) | 55 | `result-track:8f430e7cbc6d0e8bccd1d86d47071a290aeb69c46586eeedcc832ecfd0b3e1ab` |
| 10 | `theorem` | [nonempty_psum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a.lean/declarations/nonempty-psum--586f24698ca9a1efba61fda8.md) | 59 | `result-track:586f24698ca9a1efba61fda8cbdc8a0f7ac0804d41f22cbe14452f20473ac2a4` |
| 11 | `theorem` | [nonempty_plift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a.lean/declarations/nonempty-plift--00b1ea4b06050c7ac4ccd294.md) | 71 | `result-track:00b1ea4b06050c7ac4ccd294c99cd8c639919350866f125d44936ff99b2d557f` |
| 12 | `def` | [Classical.inhabited_of_nonempty'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a.lean/declarations/classical-inhabited-of-nonempty--5c7bbf3898dfa312c26ae165.md) | 77 | `declaration-track:5c7bbf3898dfa312c26ae165596ad0b0c6055f62dc4b1d42e21f141f5e3fa649` |
| 13 | `abbrev` | [Nonempty.some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a.lean/declarations/nonempty-some--855aeaf6a7d3f0e241d313e2.md) | 81 | `declaration-track:855aeaf6a7d3f0e241d313e2f7175077123239c8976100eb509bf05df83e529f` |
| 14 | `abbrev` | [Classical.arbitrary](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a.lean/declarations/classical-arbitrary--9902a42021f3cb74046e0d5f.md) | 85 | `declaration-track:9902a42021f3cb74046e0d5f46cbec7a08fca8bc73aed893fdfcbc8666a6ae18` |
| 15 | `theorem` | [Nonempty.map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a.lean/declarations/nonempty-map--33c817cac1b68f5e2a274836.md) | 90 | `result-track:33c817cac1b68f5e2a27483654ca642696a3524c06f098c19b6b3a03e6dee84e` |
| 16 | `theorem` | [Nonempty.map2](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a.lean/declarations/nonempty-map2--82756259110c31323a94fdfd.md) | 93 | `result-track:82756259110c31323a94fdfd2afbdc09dd1d2d91bf30eb8e6c0a750e4e7f6229` |
| 17 | `theorem` | [Nonempty.congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a.lean/declarations/nonempty-congr--cba46fb64bddbba18a0961f1.md) | 97 | `result-track:cba46fb64bddbba18a0961f163189a8ce1f599b38fcd7dfe8aa23fdab24ccb38` |
| 18 | `theorem` | [Nonempty.elim_to_inhabited](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a.lean/declarations/nonempty-elim-to-inhabited--8fdca2a33cb9eca204b501f0.md) | 100 | `result-track:8fdca2a33cb9eca204b501f003584dcc70188cd8af76bf466d7783a10c439c65` |
| 19 | `theorem` | [Classical.nonempty_pi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a.lean/declarations/classical-nonempty-pi--7d3cb36db0bf321c75f06360.md) | 104 | `result-track:7d3cb36db0bf321c75f0636006734facde91bfe6ad164a8c6a4dce25bb4844de` |
| 20 | `theorem` | [subsingleton_of_not_nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a.lean/declarations/subsingleton-of-not-nonempty--20aafc306667481d24e529cf.md) | 107 | `result-track:20aafc306667481d24e529cfb48e89787b7e69f8bc253b6be026a21fbf198bf8` |
| 21 | `theorem` | [Function.Surjective.nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a.lean/declarations/function-surjective-nonempty--f55800154ae1a4259cade6a7.md) | 110 | `result-track:f55800154ae1a4259cade6a7bb3cbb7a5b13481a8e650ce93031e0f2775b0208` |
| 22 | `theorem` | [nonempty_sigma](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a.lean/declarations/nonempty-sigma--d037425c32f037d78ff5b61c.md) | 122 | `result-track:d037425c32f037d78ff5b61c09f34912b7cf3c3a760a1ed17d063d69c7521eac` |
| 23 | `theorem` | [nonempty_sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a.lean/declarations/nonempty-sum--abe24a818344953eb7eee572.md) | 126 | `result-track:abe24a818344953eb7eee572f43ffec9aba710d449f9fab94a49c46c4b4c9cfc` |
| 24 | `theorem` | [nonempty_prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a.lean/declarations/nonempty-prod--ed07373fb38deb9d51fbccf6.md) | 138 | `result-track:ed07373fb38deb9d51fbccf6dbf2d534f52daa86bcd1fc44b071071901308804` |
| 25 | `theorem` | [nonempty_ulift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant64a3893984b2ec7ccc954ecca5fe20ba8eb00fd32050307fe55bcbbe8e50408a.lean/declarations/nonempty-ulift--482f1f06cd2f67bec6bdb0f3.md) | 142 | `result-track:482f1f06cd2f67bec6bdb0f343fd015c72f10314ae98ca701a8a868136825a20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
