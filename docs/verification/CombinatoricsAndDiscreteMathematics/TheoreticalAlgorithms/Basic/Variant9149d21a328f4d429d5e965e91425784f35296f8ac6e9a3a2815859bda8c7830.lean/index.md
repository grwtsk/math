# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variant9149d21a328f4d429d5e965e91425784f35296f8ac6e9a3a2815859bda8c7830

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f8c3af1b1a05275760a30ffe6194394d52542a4",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9149d21a328f4d429d5e965e91425784f35296f8ac6e9a3a2815859bda8c7830.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9149d21a328f4d429d5e965e91425784f35296f8ac6e9a3a2815859bda8c7830.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9149d21a328f4d429d5e965e91425784f35296f8ac6e9a3a2815859bda8c7830.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f8c3af1b1a05275760a30ffe6194394d52542a4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9149d21a328f4d429d5e965e91425784f35296f8ac6e9a3a2815859bda8c7830.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9149d21a328f4d429d5e965e91425784f35296f8ac6e9a3a2815859bda8c7830.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Combinators` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CasesM` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Attr.Core` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zipWithM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9149d21a328f4d429d5e965e91425784f35296f8ac6e9a3a2815859bda8c7830.lean/declarations/zipwithm--032fa2d72eaee5d27f462143.md) | 38 | `declaration-track:032fa2d72eaee5d27f46214351b80081eb24b24555ebd320faaea8b4c1c24242` |
| 2 | `def` | [zipWithM'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9149d21a328f4d429d5e965e91425784f35296f8ac6e9a3a2815859bda8c7830.lean/declarations/zipwithm--d13524fade38bd924310e208.md) | 43 | `declaration-track:d13524fade38bd924310e208c50e925cbe37a953f0060b764de201546164ec3e` |
| 3 | `theorem` | [pure_id'_seq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9149d21a328f4d429d5e965e91425784f35296f8ac6e9a3a2815859bda8c7830.lean/declarations/pure-id-seq--22ccefcfb802e11602213a44.md) | 51 | `result-track:22ccefcfb802e11602213a449f066f96679c763107495015e8158eeab8e2c269` |
| 4 | `theorem` | [seq_map_assoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9149d21a328f4d429d5e965e91425784f35296f8ac6e9a3a2815859bda8c7830.lean/declarations/seq-map-assoc--0604bc6ade626345c922cd0e.md) | 55 | `result-track:0604bc6ade626345c922cd0e4b67e70b0f7ad6b460237f085b8d6d3bc40a71e4` |
| 5 | `theorem` | [map_seq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9149d21a328f4d429d5e965e91425784f35296f8ac6e9a3a2815859bda8c7830.lean/declarations/map-seq--dbaff90048ea202937cb1888.md) | 63 | `result-track:dbaff90048ea202937cb18884c144f5f8d0ca689c66e41f744c5a6662fb19680` |
| 6 | `theorem` | [seq_bind_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9149d21a328f4d429d5e965e91425784f35296f8ac6e9a3a2815859bda8c7830.lean/declarations/seq-bind-eq--b1cf266f1b371038290bf1a9.md) | 73 | `result-track:b1cf266f1b371038290bf1a9d7f26d65e9fadd521ed2a07f38e56351e25615cf` |
| 7 | `theorem` | [fish_pure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9149d21a328f4d429d5e965e91425784f35296f8ac6e9a3a2815859bda8c7830.lean/declarations/fish-pure--8730249b3f0de380e19f55bb.md) | 81 | `result-track:8730249b3f0de380e19f55bb6d94f8b665fdcdebb07aa8061217fd885eb63b59` |
| 8 | `theorem` | [fish_pipe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9149d21a328f4d429d5e965e91425784f35296f8ac6e9a3a2815859bda8c7830.lean/declarations/fish-pipe--370ab2137b6bef34483d106d.md) | 85 | `result-track:370ab2137b6bef34483d106df3e384b562ad6dbd1da7f085099c25f7292d03eb` |
| 9 | `theorem` | [fish_assoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9149d21a328f4d429d5e965e91425784f35296f8ac6e9a3a2815859bda8c7830.lean/declarations/fish-assoc--009eef75d1e771732e2ebf46.md) | 90 | `result-track:009eef75d1e771732e2ebf46775fd211edc13f34c8091bd9eb6cac42133ad0e7` |
| 10 | `def` | [List.mapAccumRM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9149d21a328f4d429d5e965e91425784f35296f8ac6e9a3a2815859bda8c7830.lean/declarations/list-mapaccumrm--7bdc5286a5cb59852f30555e.md) | 99 | `declaration-track:7bdc5286a5cb59852f30555e42e3b934ba666191f1662370484a9ecd76665411` |
| 11 | `def` | [List.mapAccumLM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9149d21a328f4d429d5e965e91425784f35296f8ac6e9a3a2815859bda8c7830.lean/declarations/list-mapaccumlm--efa0410a2a363794eefb921f.md) | 108 | `declaration-track:efa0410a2a363794eefb921f933318fae6c705a88ce105a895037bef5fbda6fc` |
| 12 | `theorem` | [joinM_map_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9149d21a328f4d429d5e965e91425784f35296f8ac6e9a3a2815859bda8c7830.lean/declarations/joinm-map-map--6c8594f72f1a5d0f29a0e581.md) | 121 | `result-track:6c8594f72f1a5d0f29a0e5819492ed8472f974cd9fb4570704e71c6c0c336052` |
| 13 | `theorem` | [joinM_map_joinM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9149d21a328f4d429d5e965e91425784f35296f8ac6e9a3a2815859bda8c7830.lean/declarations/joinm-map-joinm--c32e48c944302a1dc7377816.md) | 125 | `result-track:c32e48c944302a1dc737781616df95ece937d61b470a76179eab123e04a72a3d` |
| 14 | `theorem` | [joinM_map_pure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9149d21a328f4d429d5e965e91425784f35296f8ac6e9a3a2815859bda8c7830.lean/declarations/joinm-map-pure--85de8f240c5b9d22b015b6de.md) | 129 | `result-track:85de8f240c5b9d22b015b6de47ca3eec25ae999e0a7422d8ea83e70611df5750` |
| 15 | `theorem` | [joinM_pure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9149d21a328f4d429d5e965e91425784f35296f8ac6e9a3a2815859bda8c7830.lean/declarations/joinm-pure--4d037d7e594817318ef5ee00.md) | 133 | `result-track:4d037d7e594817318ef5ee006e3ab9dc48e0c40f13a662fb525e116f3e714f87` |
| 16 | `def` | [succeeds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9149d21a328f4d429d5e965e91425784f35296f8ac6e9a3a2815859bda8c7830.lean/declarations/succeeds--eae85bbd93e3192de292e80d.md) | 144 | `declaration-track:eae85bbd93e3192de292e80d9b42b0ea4005a6d8fc92067ab041cfe59e48c8c5` |
| 17 | `def` | [tryM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9149d21a328f4d429d5e965e91425784f35296f8ac6e9a3a2815859bda8c7830.lean/declarations/trym--d5ef1c7c15b248d21fc173e9.md) | 148 | `declaration-track:d5ef1c7c15b248d21fc173e9a45233463922aafd39cd6ee6c37ec35cc14c2f22` |
| 18 | `def` | [try?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9149d21a328f4d429d5e965e91425784f35296f8ac6e9a3a2815859bda8c7830.lean/declarations/try--98b66a8e6d59ff728077b417.md) | 152 | `declaration-track:98b66a8e6d59ff728077b417a8d44fd7dca5a3416b5ff9f42a7b12e9d5731d49` |
| 19 | `theorem` | [guard_true](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9149d21a328f4d429d5e965e91425784f35296f8ac6e9a3a2815859bda8c7830.lean/declarations/guard-true--342033c003f6c2ea66ce33d7.md) | 156 | `result-track:342033c003f6c2ea66ce33d7029627c137b9f9cb1613e9e722fee95489df9f7a` |
| 20 | `theorem` | [guard_false](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9149d21a328f4d429d5e965e91425784f35296f8ac6e9a3a2815859bda8c7830.lean/declarations/guard-false--a3229f6778271a90812fa198.md) | 159 | `result-track:a3229f6778271a90812fa1986c9f9f2f54cd5807978f00360730440ca2f7a0c7` |
| 21 | `def` | [bind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9149d21a328f4d429d5e965e91425784f35296f8ac6e9a3a2815859bda8c7830.lean/declarations/bind--cf4441a25a0a4d1e094282a4.md) | 169 | `declaration-track:cf4441a25a0a4d1e094282a441102a4f6a941043f62dd7c17a537048e6b5c0dc` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9149d21a328f4d429d5e965e91425784f35296f8ac6e9a3a2815859bda8c7830.lean/declarations/instance--708df02e1642c7946b8b84fe.md) | 174 | `declaration-track:708df02e1642c7946b8b84fe4d565af73cf267eb008ddaef7b7f35e1d462943b` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9149d21a328f4d429d5e965e91425784f35296f8ac6e9a3a2815859bda8c7830.lean/declarations/instance--14bcf0d3d530743e741e8c87.md) | 178 | `declaration-track:14bcf0d3d530743e741e8c872f7790bee7a6f497768b6d7a4e60623e9340722d` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9149d21a328f4d429d5e965e91425784f35296f8ac6e9a3a2815859bda8c7830.lean/declarations/instance--906122d63fc180b5d5756183.md) | 181 | `declaration-track:906122d63fc180b5d5756183a51ee7ffaf6f7201f606b8fe4238c4fba24b8860` |
| 25 | `class` | [CommApplicative](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9149d21a328f4d429d5e965e91425784f35296f8ac6e9a3a2815859bda8c7830.lean/declarations/commapplicative--728b5ac51f60ef04b19fb19e.md) | 208 | `declaration-track:728b5ac51f60ef04b19fb19ec0d6241b697a7bd08b92f20dacd6df366426cafc` |
| 26 | `theorem` | [CommApplicative.commutative_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9149d21a328f4d429d5e965e91425784f35296f8ac6e9a3a2815859bda8c7830.lean/declarations/commapplicative-commutative-map--005f6de542a5ebf49a2cafbd.md) | 216 | `result-track:005f6de542a5ebf49a2cafbd36b5ea59d5250b77e4f92ca2bbc52df5e4bacf31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
