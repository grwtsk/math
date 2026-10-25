# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5df48ce4e8d1634aa9e20cb757321dfcfcc05642",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5df48ce4e8d1634aa9e20cb757321dfcfcc05642`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Combinators` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Option.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.IsEmpty` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Relator` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Util.CompileInductive` — import line 15; external provider; requires a separately pinned dependency.
- `Aesop` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coe_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/coe-def--4c4f453048ed4f04d1680695.md) | 48 | `result-track:4c4f453048ed4f04d1680695c0af66aae22e1f8f1b0204615d743a0e9a1fb99d` |
| 2 | `theorem` | [mem_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/mem-map--26a1b944db1a9175a786e7a6.md) | 51 | `result-track:26a1b944db1a9175a786e7a665e6003de261cd7fd9027e65d7e1a3533579e7c8` |
| 3 | `theorem` | [mem_map_of_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/mem-map-of-injective--5843e14c36f2c9f7607c39fa.md) | 58 | `result-track:5843e14c36f2c9f7607c39faca2763c9e9c8f4dc4e26d853a4008463bca25561` |
| 4 | `theorem` | [forall_mem_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/forall-mem-map--8c7c09fbab31937f189508f7.md) | 62 | `result-track:8c7c09fbab31937f189508f7ca4953723201bd77184cf689e046940d24d6506a` |
| 5 | `theorem` | [exists_mem_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/exists-mem-map--30b3ed71e6340dcf4edd7646.md) | 65 | `result-track:30b3ed71e6340dcf4edd76465269e93dbb2bd6f43dd2753b143b5ad6e10c96ed` |
| 6 | `theorem` | [coe_get](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/coe-get--c1c35a2de10afd1d8cdbe32f.md) | 68 | `result-track:c1c35a2de10afd1d8cdbe32f6f54ca2c516bd5dbc2c27fb6b4a552246c7ea223` |
| 7 | `theorem` | [eq_of_mem_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/eq-of-mem-of-mem--47232d7a27c32ef5bc421091.md) | 71 | `result-track:47232d7a27c32ef5bc421091c8e3aac7378d512218dc3518aef97545fa0c0fdf` |
| 8 | `theorem` | [Mem.leftUnique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/mem-leftunique--94bc87970dcf69f9c3038dff.md) | 74 | `result-track:94bc87970dcf69f9c3038dff38b2bf0a17c1999ee9e331a2d487058341f8555a` |
| 9 | `theorem` | [some_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/some-injective--8a261f15e85998a5cd3d03b1.md) | 77 | `result-track:8a261f15e85998a5cd3d03b115cc40275f38adfc8ba7b838228e86720df9914f` |
| 10 | `theorem` | [map_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/map-injective--5ea6368b611bae269480f942.md) | 80 | `result-track:5ea6368b611bae269480f94270e006b05d09924f6840f67f6ce1d55114e4c47e` |
| 11 | `theorem` | [map_comp_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/map-comp-some--5bf4a44829a631a8429f9c15.md) | 85 | `result-track:5bf4a44829a631a8429f9c15571fc06295e9d1d7976a3ca90cf53dc9e57bee11` |
| 12 | `theorem` | [none_bind'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/none-bind--04114c2ea8ffeb5abb9dd5c8.md) | 89 | `result-track:04114c2ea8ffeb5abb9dd5c81607b84da3cf1a22508bb2393c62367d2f2e7748` |
| 13 | `theorem` | [some_bind'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/some-bind--9acf49534bd1b3985c62c749.md) | 92 | `result-track:9acf49534bd1b3985c62c74985b1a6b32591c6c3fc9067d84ef74a9fabe915a5` |
| 14 | `theorem` | [bind_eq_some'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/bind-eq-some--23ab38b12c2342a662ed5671.md) | 95 | `result-track:23ab38b12c2342a662ed5671ed82e597c37bf37e8308f78f9d4ada81d9e4d9de` |
| 15 | `theorem` | [bind_congr'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/bind-congr--3d0f7c448545b9b675958eed.md) | 99 | `result-track:3d0f7c448545b9b675958eed10e5cd0754d8f46999f8a21fb1a2d31ac57403d3` |
| 16 | `theorem` | [bind_congr''](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/bind-congr--9f8e0f47b92f33d90dcba6d7.md) | 106 | `result-track:9f8e0f47b92f33d90dcba6d720cd6f95d2043bcc1569cfd195b4f558b7f479d7` |
| 17 | `theorem` | [joinM_eq_join](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/joinm-eq-join--ac84037d677c38b431a4436a.md) | 110 | `result-track:ac84037d677c38b431a4436a627e0abdf5ee3fed5d792e63506c5cb60bb896b6` |
| 18 | `theorem` | [bind_eq_bind'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/bind-eq-bind--1be0cb86d038e77b2f57b7b6.md) | 113 | `result-track:1be0cb86d038e77b2f57b7b66e4843c19248b73f787afc495ee1263dc2aba3f8` |
| 19 | `theorem` | [map_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/map-coe--d87eacba79c5b8fc546ca0f3.md) | 116 | `result-track:d87eacba79c5b8fc546ca0f39da59c95af2570c24a5c9d469e1ab2c8f2871035` |
| 20 | `theorem` | [map_coe'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/map-coe--7f3f37329b068963b9aa3930.md) | 120 | `result-track:7f3f37329b068963b9aa39301f2429d1835088e07c46152834b7350246e95327` |
| 21 | `theorem` | [map_injective'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/map-injective--37aaf01048e2722d71a2da4f.md) | 124 | `result-track:37aaf01048e2722d71a2da4f19fb6aa11ef6bcaedd43cd2e5708a981db39299c` |
| 22 | `theorem` | [map_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/map-inj--c92f473aea2118f9ef955dcf.md) | 128 | `result-track:c92f473aea2118f9ef955dcfcf6bc0c64cd98e4e6f0e961f66dbcb61e71f3740` |
| 23 | `theorem` | [map_eq_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/map-eq-id--ea28bad02d297af4f03ddc96.md) | 134 | `result-track:ea28bad02d297af4f03ddc9600a99867945ea5e6a9121c6c85bf13cb0064716a` |
| 24 | `theorem` | [map_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/map-comm--41ddab20a17d8d0cd473ef36.md) | 137 | `result-track:41ddab20a17d8d0cd473ef36b3963acde2a38c3948670bf44c06ebb80802c7ef` |
| 25 | `theorem` | [map_bind'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/map-bind--ca5ef5525c4cb1fc668979bb.md) | 146 | `result-track:ca5ef5525c4cb1fc668979bb7c8970703afcae53d0de23215982962e5da4c797` |
| 26 | `theorem` | [mem_pmem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/mem-pmem--63b6eb35ba917feaa22c08b1.md) | 149 | `result-track:63b6eb35ba917feaa22c08b1bcc569f22a4ce9f37daaaf3d189de653aa1c90f3` |
| 27 | `theorem` | [pmap_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/pmap-bind--207a412619a1880a1012eb7b.md) | 154 | `result-track:207a412619a1880a1012eb7b3dfedb7c10569f364ae70594c0587cfc08470693` |
| 28 | `theorem` | [bind_pmap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/bind-pmap--bd84cfe2f07cf269198b8599.md) | 159 | `result-track:bd84cfe2f07cf269198b85996066a55d3c203daf0f7a2e012ca9102be65e1dfc` |
| 29 | `theorem` | [pbind_eq_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/pbind-eq-none--87b08f5b8814fffc61cfc270.md) | 165 | `result-track:87b08f5b8814fffc61cfc270baa39c7a3ae9edd514736ba0fad3e0d9d22121d0` |
| 30 | `theorem` | [join_pmap_eq_pmap_join](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/join-pmap-eq-pmap-join--5d2c77e0a7a38e907a6571b0.md) | 173 | `result-track:5d2c77e0a7a38e907a6571b08fbddd1e547d546d21e953a48f9a48aa68e359fe` |
| 31 | `theorem` | [pmap_bind_id_eq_pmap_join](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/pmap-bind-id-eq-pmap-join--e6d4bbe8157f4cad0b9118bd.md) | 177 | `result-track:e6d4bbe8157f4cad0b9118bd1bd3ad5c8b10724eed932c0b49ace75937f7f9f3` |
| 32 | `theorem` | [seq_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/seq-some--1e9e6b77055d9a33132b7e7d.md) | 185 | `result-track:1e9e6b77055d9a33132b7e7d85b9fbfe40850952983bf8f67958e5b52f8c92a3` |
| 33 | `theorem` | [iget_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/iget-mem--5b208bfc03210ea829f5e126.md) | 192 | `result-track:5b208bfc03210ea829f5e1265c064182cecf493055f0bc256afd7e2414f70d9f` |
| 34 | `theorem` | [iget_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/iget-of-mem--9b52e8347e0727066c257c71.md) | 195 | `result-track:9b52e8347e0727066c257c71dd89cf80865c7c47da25748d371e68396639f504` |
| 35 | `theorem` | [getD_default_eq_iget](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/getd-default-eq-iget--ef11748d733cb56375c15505.md) | 198 | `result-track:ef11748d733cb56375c1550538b0cc7151afc17b53ccbf767201d69bec784930` |
| 36 | `theorem` | [guard_eq_some'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/guard-eq-some--89e1ccb15b96154db094d1a0.md) | 202 | `result-track:89e1ccb15b96154db094d1a025aef30811642d1fdae3073bca927497771c4376` |
| 37 | `def` | [casesOn'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/caseson--9128ea5966057c95cdbccdb0.md) | 210 | `declaration-track:9128ea5966057c95cdbccdb0ffdfdc0f9aa9acef98d6a0b5d995104507a479fd` |
| 38 | `theorem` | [casesOn'_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/caseson-none--369980092daaa727d22cb1a1.md) | 215 | `result-track:369980092daaa727d22cb1a1a7f8b0f8f69e4eaf9c335644aa38fc591c86b8a2` |
| 39 | `theorem` | [casesOn'_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/caseson-some--724614868557dcbf1e3e6a9f.md) | 219 | `result-track:724614868557dcbf1e3e6a9f29427b9a51a2474b0f225669bdad138dd6e338da` |
| 40 | `theorem` | [casesOn'_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/caseson-coe--45e614134045a9700eff0072.md) | 223 | `result-track:45e614134045a9700eff00724bab228d5cf24674e02ed5c11a9abf343d5796a0` |
| 41 | `theorem` | [casesOn'_none_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/caseson-none-coe--cf26703e009efbba35982c97.md) | 227 | `result-track:cf26703e009efbba35982c9770f5263b85f9f0c5e8444dc121da5c9c8f54302b` |
| 42 | `lemma` | [casesOn'_eq_elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/caseson-eq-elim--e31afe54926b89bcb55cead6.md) | 230 | `result-track:e31afe54926b89bcb55cead6742c91ac82b216650ddc447649b63f4c5dc56239` |
| 43 | `theorem` | [orElse_eq_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/orelse-eq-some--2593cafbce1d06232e6224bd.md) | 233 | `result-track:2593cafbce1d06232e6224bd0b8b7d0a4a9059eed4ff1eadfb8e2313aa6447b8` |
| 44 | `theorem` | [orElse_eq_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/orelse-eq-none--4f2a0a4ecd6a1361fa3bc1a5.md) | 239 | `result-track:4f2a0a4ecd6a1361fa3bc1a53b122bfcdd78cd609ba4f63f31ce34940c45ccff` |
| 45 | `theorem` | [choice_eq_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/choice-eq-none--9a86e4d7f5c8af628c619a51.md) | 246 | `result-track:9a86e4d7f5c8af628c619a51fb0736525659138be1a4b2cb76c9e79b9268313b` |
| 46 | `theorem` | [elim_none_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/elim-none-some--d8c799a93f7bef9ea6780c36.md) | 252 | `result-track:d8c799a93f7bef9ea6780c3617283046df338671353ef89d7242572693edd3b9` |
| 47 | `theorem` | [elim_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/elim-comp--bed4c8eb82fc5ab451b922ef.md) | 255 | `result-track:bed4c8eb82fc5ab451b922efc80296f7ab88bea6a624e9ed58cf93180e79f969` |
| 48 | `theorem` | [elim_comp₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/elim-comp--f352bd42dcef0414c7e5f6f7.md) | 258 | `result-track:f352bd42dcef0414c7e5f6f7fdb95abe99c285193903d1367415277674aa18d6` |
| 49 | `theorem` | [elim_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/elim-apply--3532f9dddb9b4d4578536232.md) | 262 | `result-track:3532f9dddb9b4d45785362326227f59eb6ef58d8450dbe72b3cfd1a9c0ee075b` |
| 50 | `lemma` | [elim'_update](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant49e08486dcd0b7dce3defd0ad039d5a023d63b2167e282a2a382c7365a79d22e.lean/declarations/elim-update--265c2f6f71860b458312accc.md) | 273 | `result-track:265c2f6f71860b458312accc2aff5cc5575490149207dc49fd0f6e4b3f3133e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
