# Verification target: GRWTSK.Topology.GeneralTopology.EffectiveEpi.Variant94cbd5a5eaa032a0c10b8c8179553e067430f43ab987d6889588c655dd41266b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41c3b0ac7417612a2c302f773c4053ea7b95fd44",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/EffectiveEpi/Variant94cbd5a5eaa032a0c10b8c8179553e067430f43ab987d6889588c655dd41266b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant94cbd5a5eaa032a0c10b8c8179553e067430f43ab987d6889588c655dd41266b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant94cbd5a5eaa032a0c10b8c8179553e067430f43ab987d6889588c655dd41266b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41c3b0ac7417612a2c302f773c4053ea7b95fd44`.

Source path: `GRWTSK/Topology/GeneralTopology/EffectiveEpi/Variant94cbd5a5eaa032a0c10b8c8179553e067430f43ab987d6889588c655dd41266b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/EffectiveEpi/Variant94cbd5a5eaa032a0c10b8c8179553e067430f43ab987d6889588c655dd41266b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Coherent` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.Limits` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [relation](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant94cbd5a5eaa032a0c10b8c8179553e067430f43ab987d6889588c655dd41266b.lean/declarations/relation--5f9cd29aab06d94765e658ee.md) | 52 | `declaration-track:5f9cd29aab06d94765e658ee2b588f62de0966a41ef033d38d588e951dcc124a` |
| 2 | `def` | [ιFun](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant94cbd5a5eaa032a0c10b8c8179553e067430f43ab987d6889588c655dd41266b.lean/declarations/fun--587511babe999a4adf89b4f0.md) | 76 | `declaration-track:587511babe999a4adf89b4f0f797afa628ba45461ce1a10deb94efd825bc4d32` |
| 3 | `lemma` | [ιFun_continuous](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant94cbd5a5eaa032a0c10b8c8179553e067430f43ab987d6889588c655dd41266b.lean/declarations/fun-continuous--c8bab072ca41a6a0632cc079.md) | 85 | `result-track:c8bab072ca41a6a0632cc07904ccc0e9c5ab92c0c01ec918dd2bad5ddc0f6be1` |
| 4 | `lemma` | [ιFun_injective](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant94cbd5a5eaa032a0c10b8c8179553e067430f43ab987d6889588c655dd41266b.lean/declarations/fun-injective--b79dd8ebb64328502805db42.md) | 92 | `result-track:b79dd8ebb64328502805db42e8a6385621a44f46b1c0d9121ce9a240eeab96e5` |
| 5 | `def` | [QB'](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant94cbd5a5eaa032a0c10b8c8179553e067430f43ab987d6889588c655dd41266b.lean/declarations/qb--28638390fe4e3c58fc1404b0.md) | 100 | `declaration-track:28638390fe4e3c58fc1404b060ba9056421c8741d0e04453ac486a33e940d30b` |
| 6 | `def` | [ιHom'](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant94cbd5a5eaa032a0c10b8c8179553e067430f43ab987d6889588c655dd41266b.lean/declarations/hom--840a8853ff08daf9cd98143f.md) | 106 | `declaration-track:840a8853ff08daf9cd98143fb1ec12a4ca1ce7e26205a6f18fdd1d148a07c05c` |
| 7 | `def` | [ιIso'](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant94cbd5a5eaa032a0c10b8c8179553e067430f43ab987d6889588c655dd41266b.lean/declarations/iso--9cba42d35e319f99a04d5e1d.md) | 110 | `declaration-track:9cba42d35e319f99a04d5e1da24c1df269647f04803c9f1e1aafd9e1ba875187` |
| 8 | `def` | [QB](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant94cbd5a5eaa032a0c10b8c8179553e067430f43ab987d6889588c655dd41266b.lean/declarations/qb--e9bf45e076ee6f9c06780e02.md) | 120 | `declaration-track:e9bf45e076ee6f9c06780e022304bad0063a3fb3c2ab7cedb0635dd3a0ae92bb` |
| 9 | `def` | [ιHom](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant94cbd5a5eaa032a0c10b8c8179553e067430f43ab987d6889588c655dd41266b.lean/declarations/hom--1be3dec7836b5c43290c58a1.md) | 126 | `declaration-track:1be3dec7836b5c43290c58a13239450d581cc32310a1db24244ccde7e3fce868` |
| 10 | `def` | [ιIso](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant94cbd5a5eaa032a0c10b8c8179553e067430f43ab987d6889588c655dd41266b.lean/declarations/iso--260c99273ca00281680c6022.md) | 130 | `declaration-track:260c99273ca00281680c6022d84f4e68fb0bb7166b87105ff53cd809ae7cd779` |
| 11 | `def` | [π'](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant94cbd5a5eaa032a0c10b8c8179553e067430f43ab987d6889588c655dd41266b.lean/declarations/anonymous--1b3439bfab38d7520fc92d91.md) | 140 | `declaration-track:1b3439bfab38d7520fc92d91558f4cb1e9e30a16a7240eb5ba8522e1ec2dab2b` |
| 12 | `def` | [structAux](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant94cbd5a5eaa032a0c10b8c8179553e067430f43ab987d6889588c655dd41266b.lean/declarations/structaux--0cf0869ca569b63b55a59635.md) | 148 | `declaration-track:0cf0869ca569b63b55a596353a02f97393df1497eb27dd5249e2b81ea2d558cd` |
| 13 | `lemma` | [π'_comp_ι_hom](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant94cbd5a5eaa032a0c10b8c8179553e067430f43ab987d6889588c655dd41266b.lean/declarations/comp-hom--0aac699a1ca94c6318f974f7.md) | 179 | `result-track:0aac699a1ca94c6318f974f743188f6d9cddb4f6e7a50ebde3fc3624a5d8b3d0` |
| 14 | `lemma` | [π_comp_ι_inv](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant94cbd5a5eaa032a0c10b8c8179553e067430f43ab987d6889588c655dd41266b.lean/declarations/comp-inv--4dd8b807993b819ab3ca99ce.md) | 185 | `result-track:4dd8b807993b819ab3ca99ce8123c6f307a6fc26c950e7ca97a7c70953653a3e` |
| 15 | `def` | [struct](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant94cbd5a5eaa032a0c10b8c8179553e067430f43ab987d6889588c655dd41266b.lean/declarations/struct--b00ebc6b5856dc06efb14add.md) | 194 | `declaration-track:b00ebc6b5856dc06efb14add397a49def755e8705ff711e8d9b7c9d885c2786e` |
| 16 | `theorem` | [effectiveEpiFamily_of_jointly_surjective](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant94cbd5a5eaa032a0c10b8c8179553e067430f43ab987d6889588c655dd41266b.lean/declarations/effectiveepifamily-of-jointly-surjective--9b29cebc44c24d6fdaad70f9.md) | 215 | `result-track:9b29cebc44c24d6fdaad70f961058cfe471d98a5d0f0d968136dfb7cd4d59fb9` |
| 17 | `theorem` | [effectiveEpiFamily_tfae](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant94cbd5a5eaa032a0c10b8c8179553e067430f43ab987d6889588c655dd41266b.lean/declarations/effectiveepifamily-tfae--d3d751cf100f6a59d009ef29.md) | 229 | `result-track:d3d751cf100f6a59d009ef29b2e827018da33eddb854052d136b50c4a20b708c` |
| 18 | `instance` | [instPrecoherent](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant94cbd5a5eaa032a0c10b8c8179553e067430f43ab987d6889588c655dd41266b.lean/declarations/instprecoherent--e9b3bf466991467a146982c5.md) | 272 | `declaration-track:e9b3bf466991467a146982c5febf50b213123149ed127141999f4152c10aabb1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
