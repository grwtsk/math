# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Pairwise.Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6db58b2fe17f4a157012623829d6a62cae88a9d9",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6db58b2fe17f4a157012623829d6a62cae88a9d9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.List.Count` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Data.Fin.Lemmas` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rel_of_pairwise_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/rel-of-pairwise-cons--e54b97585341b63c624407ca.md) | 33 | `result-track:e54b97585341b63c624407ca9c5c794765b760dbcf88dcf9bc3e1c99f9b7e73f` |
| 2 | `theorem` | [Pairwise.of_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pairwise-of-cons--40025e349ddd443557f77bd7.md) | 36 | `result-track:40025e349ddd443557f77bd76e1981911dec314ebab6e16cfb95e86f178f5d6d` |
| 3 | `theorem` | [Pairwise.tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pairwise-tail--ce945076032766dd13e2a44b.md) | 39 | `result-track:ce945076032766dd13e2a44b5ebdd612c2cac4dedb8fdcb5bb899d6daba61dbc` |
| 4 | `theorem` | [Pairwise.drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pairwise-drop--d481c9b7de820f6d7421a127.md) | 43 | `result-track:d481c9b7de820f6d7421a127dfec49fa056b64c20c27649e4732ae028ea029f8` |
| 5 | `theorem` | [Pairwise.imp_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pairwise-imp-of-mem--30c8e7296aaf37bf477207a9.md) | 48 | `result-track:30c8e7296aaf37bf477207a9d5fb73bfc84d58a8a6a2dd46c9750bea8c0d9885` |
| 6 | `theorem` | [Pairwise.and](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pairwise-and--b1f756c2e3166cb2250732fc.md) | 57 | `result-track:b1f756c2e3166cb2250732fc8404ae57a7dae6222fe8f63765ee6c0ba518974f` |
| 7 | `theorem` | [pairwise_and_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pairwise-and-iff--e613f9d9344f59a4c9f5ae33.md) | 65 | `result-track:e613f9d9344f59a4c9f5ae33caef33e947f1b37ba623f401efb8c18cdeab6ad3` |
| 8 | `theorem` | [Pairwise.imp₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pairwise-imp--fd5fd3b82a6f392be0afcfe2.md) | 68 | `result-track:fd5fd3b82a6f392be0afcfe276b7a0aeea9130151edd814943f99b703a013125` |
| 9 | `theorem` | [Pairwise.iff_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pairwise-iff-of-mem--bab12978e5e9395407595a94.md) | 72 | `result-track:bab12978e5e9395407595a949ae73cb8e3355b255db1e116f043615cad8fdb78` |
| 10 | `theorem` | [Pairwise.iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pairwise-iff--10f099f99a85e4ba38986f3f.md) | 76 | `result-track:10f099f99a85e4ba38986f3f53395ee76da45909d45f77098f74a2994cf9bde1` |
| 11 | `theorem` | [pairwise_of_forall](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pairwise-of-forall--ecad7252874e57922fbb2f6c.md) | 80 | `result-track:ecad7252874e57922fbb2f6c607c2034f02ef584a6c7bd3d892c9d485185d6ee` |
| 12 | `theorem` | [Pairwise.and_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pairwise-and-mem--db077e5de4004a01da07a248.md) | 83 | `result-track:db077e5de4004a01da07a248aefd3a675cea204c6d05aa8e3e14c13dd745cef2` |
| 13 | `theorem` | [Pairwise.imp_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pairwise-imp-mem--034ee1eb400170202091806b.md) | 87 | `result-track:034ee1eb400170202091806be93ba91508770b5550917288d05c018880d84a8f` |
| 14 | `theorem` | [Pairwise.forall_of_forall_of_flip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pairwise-forall-of-forall-of-flip--f5a8883f92db351471b6cc85.md) | 91 | `result-track:f5a8883f92db351471b6cc85a4ee342e26dc201f77de05e0e1f029cbc256d284` |
| 15 | `theorem` | [pairwise_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pairwise-singleton--16f7c6fbb1c5c8cf7a0d900c.md) | 104 | `result-track:16f7c6fbb1c5c8cf7a0d900c181b67e98a860d91293ef5492d26c113b0fc210c` |
| 16 | `theorem` | [pairwise_pair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pairwise-pair--0f18a35390e2d4c6a61d086e.md) | 106 | `result-track:0f18a35390e2d4c6a61d086e4f7b2963ef4bd42f1f3d1597d29bcd14f1456964` |
| 17 | `theorem` | [pairwise_append_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pairwise-append-comm--88cd7c13061c82605d7c987c.md) | 108 | `result-track:88cd7c13061c82605d7c987ccd3534709f8799961a28ba7436c3b381855a18b1` |
| 18 | `theorem` | [pairwise_middle](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pairwise-middle--f9e67ba3fdd8172001fc13bc.md) | 114 | `result-track:f9e67ba3fdd8172001fc13bc53e40c4f74a0054fad665bd9eb65fb8d9d890247` |
| 19 | `theorem` | [Pairwise.of_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pairwise-of-map--9ab270225891a4ecfba102de.md) | 120 | `result-track:9ab270225891a4ecfba102de29fa61b27152031080fc5a51412b0d907ed2e138` |
| 20 | `theorem` | [Pairwise.map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pairwise-map--cbcdcc1c57d2bd64b7e49572.md) | 124 | `result-track:cbcdcc1c57d2bd64b7e495729c4f53937eefd51c94fd265dc1a636b2531ee634` |
| 21 | `theorem` | [pairwise_filterMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pairwise-filtermap--564037cf61e7b75b7d00fff8.md) | 128 | `result-track:564037cf61e7b75b7d00fff80b91b09b499251baf9ac8c2ad3d68f46108136a2` |
| 22 | `theorem` | [Pairwise.filter_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pairwise-filter-map--01540baee8242f151ba75d90.md) | 144 | `result-track:01540baee8242f151ba75d90749f876ed7cc797b29644d1f646609983d811b87` |
| 23 | `theorem` | [pairwise_filter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pairwise-filter--e165b5c1378b6b0405f4b6d5.md) | 149 | `result-track:e165b5c1378b6b0405f4b6d5a8243b0aafe02afbeb186f0fed02450523d5a468` |
| 24 | `theorem` | [Pairwise.filter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pairwise-filter--864938aed4a8fe169ab3168e.md) | 153 | `result-track:864938aed4a8fe169ab3168ebf118047ff83533492ec1c09bf68945cabc08bbe` |
| 25 | `theorem` | [pairwise_join](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pairwise-join--d3a56061643828313c12b8fe.md) | 156 | `result-track:d3a56061643828313c12b8fe7122bbb95c7d301f60f923d56cb1c54b1897b484` |
| 26 | `theorem` | [pairwise_bind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pairwise-bind--6a8574b571ad0bf802c775f8.md) | 167 | `result-track:6a8574b571ad0bf802c775f8b03ecd315a6acf3e77a5995aab03e050a01fc054` |
| 27 | `theorem` | [pairwise_iff_forall_sublist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pairwise-iff-forall-sublist--ab407a57d343d5078692cf70.md) | 172 | `result-track:ab407a57d343d5078692cf70e49182cf8a6e18bbd252ad4cc8e982ec582bc099` |
| 28 | `theorem` | [pairwise_of_reflexive_on_dupl_of_forall_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pairwise-of-reflexive-on-dupl-of-forall-ne--989a2e534d19778370637380.md) | 191 | `result-track:989a2e534d19778370637380d2096a399a42331a120ad0f3c46e06bfd9ce077b` |
| 29 | `theorem` | [map_get_sublist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/map-get-sublist--849cb06a6dacc165b0bfc375.md) | 204 | `result-track:849cb06a6dacc165b0bfc375d0a9e325bf3246c61a4cd6505be6024791c29837` |
| 30 | `theorem` | [sublist_eq_map_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/sublist-eq-map-get--a419020cd62b06ecfb2c9809.md) | 222 | `result-track:a419020cd62b06ecfb2c98093ac6f54e788c4a6a1ee6c69d2bd7dda7626e5a62` |
| 31 | `theorem` | [pairwise_iff_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pairwise-iff-get--afc6ade75f0116428ee796d0.md) | 236 | `result-track:afc6ade75f0116428ee796d0d57cab890f3b124e7fbcd00357bbdd1f7cf4a930` |
| 32 | `theorem` | [pairwise_replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pairwise-replicate--e8b4fb1e67ae89c336a99a8b.md) | 249 | `result-track:e8b4fb1e67ae89c336a99a8bc1e4f37ddf29649a4914b16203de3ab238a14907` |
| 33 | `theorem` | [pwFilter_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pwfilter-nil--12abe2f3665217da368133dd.md) | 256 | `result-track:12abe2f3665217da368133dda0eccbe3ead2d1abb847e85f7b2213770dc920ab` |
| 34 | `theorem` | [pwFilter_cons_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pwfilter-cons-of-pos--f5b599a1146fce41435a1b3d.md) | 258 | `result-track:f5b599a1146fce41435a1b3d698f41e3a0fd693031fd75d13bb41600429a1f5d` |
| 35 | `theorem` | [pwFilter_cons_of_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pwfilter-cons-of-neg--882ec87fcf8e2e59aad23526.md) | 261 | `result-track:882ec87fcf8e2e59aad23526c99bebb73bb060b72a94b3e66fbbb15429f592c1` |
| 36 | `theorem` | [pwFilter_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pwfilter-map--8b8db3b2ba10cfc8c4d8f83a.md) | 264 | `result-track:8b8db3b2ba10cfc8c4d8f83a8df85f8c9ff60abd61b5a6d1b16b299c052a2028` |
| 37 | `theorem` | [pwFilter_sublist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pwfilter-sublist--0799c5eba6636451f0ee6b21.md) | 278 | `result-track:0799c5eba6636451f0ee6b214aecda7ef610634bc2ed7c6e90e458f65faeaece` |
| 38 | `theorem` | [pwFilter_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pwfilter-subset--983e4f26ea360bf31ef3b7b8.md) | 286 | `result-track:983e4f26ea360bf31ef3b7b8e612e69e05405b8fd0fa5c920bde0de493e054ac` |
| 39 | `theorem` | [pairwise_pwFilter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pairwise-pwfilter--4902f90a87939b00b532e788.md) | 289 | `result-track:4902f90a87939b00b532e78814560a154b0ad76a2fda552a54472f89bf130474` |
| 40 | `theorem` | [pwFilter_eq_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pwfilter-eq-self--1f3537a56136346dabb521b1.md) | 297 | `result-track:1f3537a56136346dabb521b147d882bd1ef68c71bede0468070b37eb7e52fdc3` |
| 41 | `theorem` | [pwFilter_idem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/pwfilter-idem--2cef9cb68dcf7f6521affec2.md) | 308 | `result-track:2cef9cb68dcf7f6521affec20a5c36cf069806c738aec96556907e8e03abec78` |
| 42 | `theorem` | [forall_mem_pwFilter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant0fdee2a4dddf80dbcfeb94864daba24610764ee6d2893eb22329db5bef731dea.lean/declarations/forall-mem-pwfilter--e0ee542baa5e011b61c0c155.md) | 311 | `result-track:e0ee542baa5e011b61c0c1554b4cf4c4e4b38e06786026c1e669a9ecfe2e47ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
