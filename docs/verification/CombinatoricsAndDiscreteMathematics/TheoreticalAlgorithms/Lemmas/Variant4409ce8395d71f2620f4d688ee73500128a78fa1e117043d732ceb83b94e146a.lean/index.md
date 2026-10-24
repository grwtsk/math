# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variant4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65452e97e246bee7adb1fa99aeaefa6804e6ba56",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65452e97e246bee7adb1fa99aeaefa6804e6ba56`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.Fin.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Batteries.Data.List.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Batteries.Util.ProofWanted` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coe_clamp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a.lean/declarations/coe-clamp--8ad586c13833697b797c372a.md) | 16 | `result-track:8ad586c13833697b797c372a6dc86e24f51aae7467726254575de69b1c88df02` |
| 2 | `theorem` | [findSome?_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a.lean/declarations/findsome-zero--fa75971417bf34da1d26c3bf.md) | 20 | `result-track:fa75971417bf34da1d26c3bf892544b8b6ca5ed2cc3e6473b594741d2a7cefaf` |
| 3 | `theorem` | [findSome?_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a.lean/declarations/findsome-one--4737a3cededcb4f58a523ced.md) | 22 | `result-track:4737a3cededcb4f58a523ced9a404fd79440bd9d12ddd0c26e7cc3d065201c14` |
| 4 | `theorem` | [findSome?_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a.lean/declarations/findsome-succ--daea3e71f030bd16db3ff565.md) | 24 | `result-track:daea3e71f030bd16db3ff5657ebf9e28dfc9aa8753090da419cd7485644df211` |
| 5 | `theorem` | [findSome?_succ_of_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a.lean/declarations/findsome-succ-of-some--2dd774f78243280a3841d741.md) | 34 | `result-track:2dd774f78243280a3841d7417007c15d2e4fa306c0aa4d421e35fc37a7463f35` |
| 6 | `theorem` | [findSome?_succ_of_isSome](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a.lean/declarations/findsome-succ-of-issome--ac5c2a8f3158201b59e526e7.md) | 37 | `result-track:ac5c2a8f3158201b59e526e74a6f88482815a5f8a005b12b4689eed76513719d` |
| 7 | `theorem` | [findSome?_succ_of_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a.lean/declarations/findsome-succ-of-none--b4db3250aca0084111262a78.md) | 40 | `result-track:b4db3250aca0084111262a78b7fea6b9e94799666527dc3d24fa516c3a9212be` |
| 8 | `theorem` | [findSome?_succ_of_isNone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a.lean/declarations/findsome-succ-of-isnone--f64ec63f8c83f0100f597a01.md) | 43 | `result-track:f64ec63f8c83f0100f597a015b4d31d473f1fcdc12cfa0a9b1cb8dc34e3c382b` |
| 9 | `theorem` | [exists_of_findSome?_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a.lean/declarations/exists-of-findsome-eq-some--14a245451680263046d03853.md) | 46 | `result-track:14a245451680263046d03853a8e5e6053b5c9d092545d9dfea4bd7f80717d39e` |
| 10 | `theorem` | [eq_none_of_findSome?_eq_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a.lean/declarations/eq-none-of-findsome-eq-none--aa2b69e9a88636417414868d.md) | 61 | `result-track:aa2b69e9a88636417414868de01ad9c3a9b7dce1f9ac5ed237a516dddb92f033` |
| 11 | `theorem` | [findSome?_isSome_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a.lean/declarations/findsome-issome-iff--b2eea2ae72a443b2c99885ca.md) | 77 | `result-track:b2eea2ae72a443b2c99885ca26b75fa707a16313b21aba5ea251d1dc5e600fbb` |
| 12 | `theorem` | [findSome?_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a.lean/declarations/findsome-eq-none-iff--c69aa7d537d848fbf2de42b5.md) | 89 | `result-track:c69aa7d537d848fbf2de42b5708819a550e2a29a0a174b5d42993ad7f6dabc08` |
| 13 | `theorem` | [findSome?_isNone_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a.lean/declarations/findsome-isnone-iff--0e17c8b70c80e0f57f5ead0d.md) | 100 | `result-track:0e17c8b70c80e0f57f5ead0d31347957735d337850ba46f4d3ce9f69d1cedf4c` |
| 14 | `theorem` | [map_findSome?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a.lean/declarations/map-findsome--49b4a7e4c8a030d7e56fb8a1.md) | 103 | `result-track:49b4a7e4c8a030d7e56fb8a1255bdf09593b30b026b873906723aa6b894f8ded` |
| 15 | `theorem` | [findSome?_guard](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a.lean/declarations/findsome-guard--03414ba6bc5314c2ead36aa6.md) | 109 | `result-track:03414ba6bc5314c2ead36aa6278bf736064aa159f0cef444572713f37cffe5a0` |
| 16 | `theorem` | [findSome?_eq_findSome?_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a.lean/declarations/findsome-eq-findsome-finrange--6217818e8c19b5f515d12686.md) | 111 | `result-track:6217818e8c19b5f515d12686a28f0b9d2a19bfb7c004c6054d296da9ea2ed851` |
| 17 | `theorem` | [find?_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a.lean/declarations/find-zero--cea20c66d03eb3e24d3969fe.md) | 121 | `result-track:cea20c66d03eb3e24d3969fed0b6c581fe696df44c6cd0e122ce07862d4029e4` |
| 18 | `theorem` | [find?_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a.lean/declarations/find-one--34c4aa91ef9e70038f99305b.md) | 123 | `result-track:34c4aa91ef9e70038f99305bf6bce921a7b7971d5253c444fed672756c294e51` |
| 19 | `theorem` | [find?_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a.lean/declarations/find-succ--532d911e546c6486e33705fd.md) | 125 | `result-track:532d911e546c6486e33705fd90899dccd938c3a118371c7160d313d852a3877e` |
| 20 | `theorem` | [eq_true_of_find?_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a.lean/declarations/eq-true-of-find-eq-some--30c3b1689177f64ce3fab392.md) | 130 | `result-track:30c3b1689177f64ce3fab3929f3e25db633ada9557995395d2b5302fa162d178` |
| 21 | `theorem` | [eq_false_of_find?_eq_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a.lean/declarations/eq-false-of-find-eq-none--b0fff3387714de2e162b13f9.md) | 138 | `result-track:b0fff3387714de2e162b13f91b105c0776d35a40afbee70916fc5578a87580a4` |
| 22 | `theorem` | [find?_isSome_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a.lean/declarations/find-issome-iff--5949597d30d3afa3bbab55fd.md) | 145 | `result-track:5949597d30d3afa3bbab55fd48c115064cb1eda2cd7c0e57f94c01c82ce15335` |
| 23 | `theorem` | [find?_isNone_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a.lean/declarations/find-isnone-iff--bb41ecbd95813db24e43c7a3.md) | 148 | `result-track:bb41ecbd95813db24e43c7a3e1340ccabd25397fa8f0d891fb625317f2638833` |
| 24 | `theorem` | [find?_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a.lean/declarations/find-eq-none-iff--25857d68e67fb5b327f8c8a2.md) | 153 | `result-track:25857d68e67fb5b327f8c8a287927256ff72f18682ba17083010e3266314efb9` |
| 25 | `theorem` | [find?_eq_find?_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a.lean/declarations/find-eq-find-finrange--77ff5042f75a4ff0e45ff927.md) | 156 | `result-track:77ff5042f75a4ff0e45ff9279b73c27dc2ea6fb0f469b787373a71bf311e2048` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
