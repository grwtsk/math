# Verification target: GRWTSK.Algebra.Maps.Variant304be3486ff0708a62bce0b310309e8f5be5545e9b90b1649e651c14b61ec919

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96b66dc0857d1e1ba3e6fd6f22e8b99530a28bc3",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Maps/Variant304be3486ff0708a62bce0b310309e8f5be5545e9b90b1649e651c14b61ec919.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Maps/Variant304be3486ff0708a62bce0b310309e8f5be5545e9b90b1649e651c14b61ec919.lean/index.md) · [Full source](../../../../mathematics/Algebra/Maps/Variant304be3486ff0708a62bce0b310309e8f5be5545e9b90b1649e651c14b61ec919.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96b66dc0857d1e1ba3e6fd6f22e8b99530a28bc3`.

Source path: `GRWTSK/Algebra/Maps/Variant304be3486ff0708a62bce0b310309e8f5be5545e9b90b1649e651c14b61ec919.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Maps/Variant304be3486ff0708a62bce0b310309e8f5be5545e9b90b1649e651c14b61ec919.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [map](../../../../mathematics/Algebra/Maps/Variant304be3486ff0708a62bce0b310309e8f5be5545e9b90b1649e651c14b61ec919.lean/declarations/map--7380eb837fb408785f48bb50.md) | 34 | `declaration-track:7380eb837fb408785f48bb50624a28671293f33d5858111c15b2e2bb92e3d7a2` |
| 2 | `def` | [comap](../../../../mathematics/Algebra/Maps/Variant304be3486ff0708a62bce0b310309e8f5be5545e9b90b1649e651c14b61ec919.lean/declarations/comap--221114b131864b8dd5201ebf.md) | 52 | `declaration-track:221114b131864b8dd5201ebf19c99088f4b35fffc576e5e564f392b5c8ac1dbb` |
| 3 | `lemma` | [map_le_iff_le_comap](../../../../mathematics/Algebra/Maps/Variant304be3486ff0708a62bce0b310309e8f5be5545e9b90b1649e651c14b61ec919.lean/declarations/map-le-iff-le-comap--eb7fe3aa4861654cd09ab90c.md) | 61 | `result-track:eb7fe3aa4861654cd09ab90c4268b967eb55aa2ff2f75cf38e816ccbcf6e6700` |
| 4 | `theorem` | [gc_map_comap](../../../../mathematics/Algebra/Maps/Variant304be3486ff0708a62bce0b310309e8f5be5545e9b90b1649e651c14b61ec919.lean/declarations/gc-map-comap--5d624ced1310bbef569c2c75.md) | 65 | `result-track:5d624ced1310bbef569c2c75ec8dd07e0d179adf84ddd720136190a816d36078` |
| 5 | `lemma` | [map_mono](../../../../mathematics/Algebra/Maps/Variant304be3486ff0708a62bce0b310309e8f5be5545e9b90b1649e651c14b61ec919.lean/declarations/map-mono--cbfcdacd9e2e71530556488d.md) | 68 | `result-track:cbfcdacd9e2e71530556488d53529ac61417771b8bc1dec2f4d49b263329b7c2` |
| 6 | `lemma` | [comap_mono](../../../../mathematics/Algebra/Maps/Variant304be3486ff0708a62bce0b310309e8f5be5545e9b90b1649e651c14b61ec919.lean/declarations/comap-mono--5f929c004e6d274687ce2c08.md) | 70 | `result-track:5f929c004e6d274687ce2c088a412804c3e910cacefa9c58663a589ca4f359b3` |
| 7 | `lemma` | [toIdeal_comap](../../../../mathematics/Algebra/Maps/Variant304be3486ff0708a62bce0b310309e8f5be5545e9b90b1649e651c14b61ec919.lean/declarations/toideal-comap--b010dc5b6e2d87c67d1f9c07.md) | 72 | `result-track:b010dc5b6e2d87c67d1f9c071aa59ce3b762fba6e4e66f37963f264c7ccb0f2b` |
| 8 | `lemma` | [coe_comap](../../../../mathematics/Algebra/Maps/Variant304be3486ff0708a62bce0b310309e8f5be5545e9b90b1649e651c14b61ec919.lean/declarations/coe-comap--e98324e96c58cefe52ae6196.md) | 74 | `result-track:e98324e96c58cefe52ae619698ef02e5b10b0df4431591b238ef379f8d744f00` |
| 9 | `lemma` | [toIdeal_map](../../../../mathematics/Algebra/Maps/Variant304be3486ff0708a62bce0b310309e8f5be5545e9b90b1649e651c14b61ec919.lean/declarations/toideal-map--9c695afdfe05c6fa323cb6e4.md) | 76 | `result-track:9c695afdfe05c6fa323cb6e4400106e1a5cc99e1ba9d2d3fd6eb11e7e70dd7ba` |
| 10 | `instance` | [isPrime_comap](../../../../mathematics/Algebra/Maps/Variant304be3486ff0708a62bce0b310309e8f5be5545e9b90b1649e651c14b61ec919.lean/declarations/isprime-comap--aab66eee873b79d41a16364c.md) | 78 | `declaration-track:aab66eee873b79d41a16364c10127d93e9dce9d53d18546e8bc998d04558c3d3` |
| 11 | `lemma` | [map_id](../../../../mathematics/Algebra/Maps/Variant304be3486ff0708a62bce0b310309e8f5be5545e9b90b1649e651c14b61ec919.lean/declarations/map-id--9468751d1476bf76630d15a0.md) | 81 | `result-track:9468751d1476bf76630d15a082599a2b6c9f11f64fca3a7ad4e13ee42bccfd4f` |
| 12 | `lemma` | [map_map](../../../../mathematics/Algebra/Maps/Variant304be3486ff0708a62bce0b310309e8f5be5545e9b90b1649e651c14b61ec919.lean/declarations/map-map--5491f41c9b93c3970221e11e.md) | 83 | `result-track:5491f41c9b93c3970221e11e1cf94dbe590b18530c18be42ff9da6e2e5803407` |
| 13 | `lemma` | [map_comp](../../../../mathematics/Algebra/Maps/Variant304be3486ff0708a62bce0b310309e8f5be5545e9b90b1649e651c14b61ec919.lean/declarations/map-comp--b793ed8a9b29af1bffaf22a4.md) | 85 | `result-track:b793ed8a9b29af1bffaf22a466f4fbc7eea7cc7d9c28c1ac82662094ae57ed0c` |
| 14 | `lemma` | [comap_id](../../../../mathematics/Algebra/Maps/Variant304be3486ff0708a62bce0b310309e8f5be5545e9b90b1649e651c14b61ec919.lean/declarations/comap-id--95b846756b03a9e9c8afcbd8.md) | 87 | `result-track:95b846756b03a9e9c8afcbd800cc0e58cebd420cbbec9c483ad3a912760e3c1b` |
| 15 | `lemma` | [comap_comap](../../../../mathematics/Algebra/Maps/Variant304be3486ff0708a62bce0b310309e8f5be5545e9b90b1649e651c14b61ec919.lean/declarations/comap-comap--2a2e967c6ded6a2cb8c0c2ec.md) | 89 | `result-track:2a2e967c6ded6a2cb8c0c2ec491e133d664bd5017aa4d47d25fae7ab0229b800` |
| 16 | `theorem` | [irrelevant_le_map_comp](../../../../mathematics/Algebra/Maps/Variant304be3486ff0708a62bce0b310309e8f5be5545e9b90b1649e651c14b61ec919.lean/declarations/irrelevant-le-map-comp--242ab514f346ab199cade885.md) | 104 | `result-track:242ab514f346ab199cade885f5c95400fe512e14641af65aab63e186aa4249ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
