# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphCriterion.Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a3f88c40aabd2a78eb5cff68d155bf1d6fe3648",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a3f88c40aabd2a78eb5cff68d155bf1d6fe3648`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.FiniteLatticeArithmetic.Congruence` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.EquivFin` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pi` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Prod` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Admissible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean/declarations/admissible--33d6527dc687651621d50316.md) | 35 | `declaration-track:33d6527dc687651621d50316d805b481e026696202de1e13c447775b91d12395` |
| 2 | `def` | [Marked](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean/declarations/marked--1b1cf810badb1c9ce030c2f6.md) | 40 | `declaration-track:1b1cf810badb1c9ce030c2f6171a3599478bff374cb87aab58a05b65766fbf1c` |
| 3 | `def` | [Connected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean/declarations/connected--a19061d17f51952f525ccd42.md) | 46 | `declaration-track:a19061d17f51952f525ccd42083f5690ac66841f3c5c9c6e3b3f3453126c3fa3` |
| 4 | `def` | [IsGraphWitness](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean/declarations/isgraphwitness--97a64c7e977d2bbbb9ebf772.md) | 52 | `declaration-track:97a64c7e977d2bbbb9ebf772aa4f9db4e36861b0c2f416e40cdbff1e41cf5630` |
| 5 | `def` | [HasGraphWitness](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean/declarations/hasgraphwitness--2eadb3370f4db19c6ef085a3.md) | 64 | `declaration-track:2eadb3370f4db19c6ef085a3f1e870682eeb4c4d06ea1ef5d30419335dafe961` |
| 6 | `def` | [principalColor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean/declarations/principalcolor--f5c17af367cd95fb188f2b36.md) | 72 | `declaration-track:f5c17af367cd95fb188f2b365b524e962512dada183463f4669d4d00565ecbc9` |
| 7 | `theorem` | [principalColor_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean/declarations/principalcolor-le--4c4d47fce230eed0c338035c.md) | 76 | `result-track:4c4d47fce230eed0c338035cb5a66bc7fc8311ff83a78ec2a2c681b9baeab6fe` |
| 8 | `theorem` | [map_bot_equality](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean/declarations/map-bot-equality--31eddca177b772bf5002e0b7.md) | 82 | `result-track:31eddca177b772bf5002e0b78f7ba0e172b0cb993d24b488e71962559d2e7890` |
| 9 | `theorem` | [principalColor_eq_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean/declarations/principalcolor-eq-bot--522798cd1ee2bac26390db4a.md) | 89 | `result-track:522798cd1ee2bac26390db4aa579db567b783685980720ab1bfe2111dc85f139` |
| 10 | `theorem` | [principalColor_triangle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean/declarations/principalcolor-triangle--76032274048f8eab21560ef9.md) | 94 | `result-track:76032274048f8eab21560ef93003345bd1a523d42b2ea82b781754e1a5de8cea` |
| 11 | `theorem` | [principalColor_reflect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean/declarations/principalcolor-reflect--f2d29267f70280168059d1bd.md) | 103 | `result-track:f2d29267f70280168059d1bdf57b16d17b585dd8dc3e5682c86f357bae0328b6` |
| 12 | `theorem` | [admissible_id](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean/declarations/admissible-id--92ce65435d9c3c1f0792fe3b.md) | 118 | `result-track:92ce65435d9c3c1f0792fe3ba80ef0663d9549297def5123c302132fc81d0129` |
| 13 | `theorem` | [Admissible.comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean/declarations/admissible-comp--d9ef676de27cd962fe2d853b.md) | 121 | `result-track:d9ef676de27cd962fe2d853be500c484699f0b814262c159e09a505df85e15f2` |
| 14 | `theorem` | [marked_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean/declarations/marked-map--177336080bdfea2542949410.md) | 127 | `result-track:177336080bdfea2542949410c595c8b0306b5a6cc999387503c2db5245646067` |
| 15 | `theorem` | [connected_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean/declarations/connected-map--5b76592bcb6199efd2678a6e.md) | 135 | `result-track:5b76592bcb6199efd2678a6eda2ef6208202ffd960ab38865946188e21fd42d2` |
| 16 | `theorem` | [translation_admissible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean/declarations/translation-admissible--a29c80e1ce1c3fa5fde72749.md) | 151 | `result-track:a29c80e1ce1c3fa5fde727493d1f3fa80383678dea5ae423a474659f3d0a13ea` |
| 17 | `def` | [pathCongruence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean/declarations/pathcongruence--a0b348fe4733d2c900e0e462.md) | 161 | `declaration-track:a0b348fe4733d2c900e0e462ab9e177ebef5d9f344a9ee8479aee7a40f6fdcc8` |
| 18 | `theorem` | [principalColor_connected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean/declarations/principalcolor-connected--d0c00cda46440370533b3d0f.md) | 168 | `result-track:d0c00cda46440370533b3d0fcea7e2f78f4ffd1ccc7a8581a9a46ead4f30b94d` |
| 19 | `theorem` | [principalColor_isGraphWitness](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean/declarations/principalcolor-isgraphwitness--682b89d0f65a911c7219d4d4.md) | 186 | `result-track:682b89d0f65a911c7219d4d4d51f150316f71207287a564ce123c7aeb64e7952` |
| 20 | `def` | [graphAlgebra](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean/declarations/graphalgebra--aec560f6e18dcc4cacb50656.md) | 202 | `declaration-track:aec560f6e18dcc4cacb506568e66fd40f99925d2bbd5ce1dc9dc2e242f60d8bc` |
| 21 | `theorem` | [graphAlgebra_preserves](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean/declarations/graphalgebra-preserves--b6650b8ad8de3dc6d7f659fe.md) | 213 | `result-track:b6650b8ad8de3dc6d7f659fe5cd9235a28cf4f3a00b744d2dfcd32310aece526` |
| 22 | `def` | [labelCongruence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean/declarations/labelcongruence--f81562b9392f4e71ee6be3c4.md) | 224 | `declaration-track:f81562b9392f4e71ee6be3c466ced9a60329aa6a2ce022b233d70f88a718749a` |
| 23 | `theorem` | [labelCongruence_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean/declarations/labelcongruence-apply--825acea419468d5670906fa8.md) | 240 | `result-track:825acea419468d5670906fa83ac1dcc6af0e0eb6cbca0b7619e686222cc414dc` |
| 24 | `theorem` | [labelCongruence_le_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean/declarations/labelcongruence-le-iff--0f376c37491bd2744acbe89e.md) | 244 | `result-track:0f376c37491bd2744acbe89e6b924e1a535c6556298e245301b73366b77e0480` |
| 25 | `theorem` | [connected_below_congruence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean/declarations/connected-below-congruence--c7be837d21a139a9d13ee80a.md) | 257 | `result-track:c7be837d21a139a9d13ee80aecfcfb8db1ddff29e53b0c9b6c50c1301b92c1b6` |
| 26 | `theorem` | [labelCongruence_surjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean/declarations/labelcongruence-surjective--f397d65722f78bf74f76182d.md) | 270 | `result-track:f397d65722f78bf74f76182d38c0ced2c659c10dcfbef06235f11119b49868cd` |
| 27 | `def` | [graphOrderIso](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean/declarations/graphorderiso--61bef0f25f3630becfc8ccce.md) | 293 | `declaration-track:61bef0f25f3630becfc8ccce23ca44db8ae4a0f1f568b89a7f6f3a87573db680` |
| 28 | `theorem` | [graph_criterion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant32e0fd996c32a104361a8f7f8598eaec2651634eb956f201d8bf61afc17abfca.lean/declarations/graph-criterion--fb0e8e8f82def51c45b14eb2.md) | 308 | `result-track:fb0e8e8f82def51c45b14eb2039dc3dc436fd40e9e9bf181dc16296f82e6557e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
