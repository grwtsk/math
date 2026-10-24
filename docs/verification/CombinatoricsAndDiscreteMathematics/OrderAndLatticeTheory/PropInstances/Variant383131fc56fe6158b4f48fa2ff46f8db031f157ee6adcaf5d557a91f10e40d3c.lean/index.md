# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.PropInstances.Variant383131fc56fe6158b4f48fa2ff46f8db031f157ee6adcaf5d557a91f10e40d3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1f25091cc9cad2b2f1cf8744b65632a8470a0e7",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PropInstances/Variant383131fc56fe6158b4f48fa2ff46f8db031f157ee6adcaf5d557a91f10e40d3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PropInstances/Variant383131fc56fe6158b4f48fa2ff46f8db031f157ee6adcaf5d557a91f10e40d3c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PropInstances/Variant383131fc56fe6158b4f48fa2ff46f8db031f157ee6adcaf5d557a91f10e40d3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1f25091cc9cad2b2f1cf8744b65632a8470a0e7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PropInstances/Variant383131fc56fe6158b4f48fa2ff46f8db031f157ee6adcaf5d557a91f10e40d3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PropInstances/Variant383131fc56fe6158b4f48fa2ff46f8db031f157ee6adcaf5d557a91f10e40d3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Disjoint` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Prop.instDistribLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PropInstances/Variant383131fc56fe6158b4f48fa2ff46f8db031f157ee6adcaf5d557a91f10e40d3c.lean/declarations/prop-instdistriblattice--277b70cc26c842d63d8b090a.md) | 25 | `declaration-track:277b70cc26c842d63d8b090ad5e0c994919925a73c52718950ea90388703c841` |
| 2 | `instance` | [Prop.instBoundedOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PropInstances/Variant383131fc56fe6158b4f48fa2ff46f8db031f157ee6adcaf5d557a91f10e40d3c.lean/declarations/prop-instboundedorder--4a426b5dd0cee72f944fdff7.md) | 37 | `declaration-track:4a426b5dd0cee72f944fdff7cb2e2333912b6a927a5d5c58e0b7f36e2861c25c` |
| 3 | `theorem` | [Prop.bot_eq_false](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PropInstances/Variant383131fc56fe6158b4f48fa2ff46f8db031f157ee6adcaf5d557a91f10e40d3c.lean/declarations/prop-bot-eq-false--27f8763fed43849043873116.md) | 44 | `result-track:27f8763fed438490438731160a0fb9dd4cef6f0f6427529541968bcea3c04f4b` |
| 4 | `theorem` | [Prop.top_eq_true](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PropInstances/Variant383131fc56fe6158b4f48fa2ff46f8db031f157ee6adcaf5d557a91f10e40d3c.lean/declarations/prop-top-eq-true--d512080f018d8a45cf01b50f.md) | 48 | `result-track:d512080f018d8a45cf01b50f85dd44f1fcf17d1b97c7b1dee865ef31068f6d95` |
| 5 | `instance` | [Prop.le_isTotal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PropInstances/Variant383131fc56fe6158b4f48fa2ff46f8db031f157ee6adcaf5d557a91f10e40d3c.lean/declarations/prop-le-istotal--698e7ab848d717bdeb4ae062.md) | 51 | `declaration-track:698e7ab848d717bdeb4ae0620f643ef3714a3d6428cd31d7879cecf9ac1a85ac` |
| 6 | `instance` | [Prop.linearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PropInstances/Variant383131fc56fe6158b4f48fa2ff46f8db031f157ee6adcaf5d557a91f10e40d3c.lean/declarations/prop-linearorder--970ec3a549a04b908f0f76be.md) | 54 | `declaration-track:970ec3a549a04b908f0f76bebf5a92b3ee55d10faa057897c540d7b037c1a7a4` |
| 7 | `theorem` | [sup_Prop_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PropInstances/Variant383131fc56fe6158b4f48fa2ff46f8db031f157ee6adcaf5d557a91f10e40d3c.lean/declarations/sup-prop-eq--b24439f666cd721ffd9e5d85.md) | 59 | `result-track:b24439f666cd721ffd9e5d85e09305176cea733dd214e580231ae76acf8dec84` |
| 8 | `theorem` | [inf_Prop_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PropInstances/Variant383131fc56fe6158b4f48fa2ff46f8db031f157ee6adcaf5d557a91f10e40d3c.lean/declarations/inf-prop-eq--478a31844277256260010ca2.md) | 63 | `result-track:478a31844277256260010ca29da4d8828ae4a2197735f466c34d388ea7b9e07d` |
| 9 | `theorem` | [disjoint_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PropInstances/Variant383131fc56fe6158b4f48fa2ff46f8db031f157ee6adcaf5d557a91f10e40d3c.lean/declarations/disjoint-iff--65f816c860ceb5cccb7b9ce4.md) | 70 | `result-track:65f816c860ceb5cccb7b9ce4780a8aca2041c49f84f0bde7849e6fcc35f65eb1` |
| 10 | `theorem` | [codisjoint_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PropInstances/Variant383131fc56fe6158b4f48fa2ff46f8db031f157ee6adcaf5d557a91f10e40d3c.lean/declarations/codisjoint-iff--1154526aee42cb0c79f20ea1.md) | 80 | `result-track:1154526aee42cb0c79f20ea1b353f62324a81b02051137908888de999e642e23` |
| 11 | `theorem` | [isCompl_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PropInstances/Variant383131fc56fe6158b4f48fa2ff46f8db031f157ee6adcaf5d557a91f10e40d3c.lean/declarations/iscompl-iff--507f08f4039495c0c9d27b2a.md) | 84 | `result-track:507f08f4039495c0c9d27b2a6f2f1b618f67bf55e815256dbd61e17c3e2ca858` |
| 12 | `theorem` | [Prop.disjoint_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PropInstances/Variant383131fc56fe6158b4f48fa2ff46f8db031f157ee6adcaf5d557a91f10e40d3c.lean/declarations/prop-disjoint-iff--5e13fa01b1b6e07bc07f24d3.md) | 91 | `result-track:5e13fa01b1b6e07bc07f24d343672ec0f20f09fb6eb6f8ae53f1ba3f68ea80da` |
| 13 | `theorem` | [Prop.codisjoint_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PropInstances/Variant383131fc56fe6158b4f48fa2ff46f8db031f157ee6adcaf5d557a91f10e40d3c.lean/declarations/prop-codisjoint-iff--f1b7c3ac308e44864bb811c8.md) | 95 | `result-track:f1b7c3ac308e44864bb811c879830f9eb0053cf5be69b35f71a3f2a52e86d7bd` |
| 14 | `theorem` | [Prop.isCompl_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PropInstances/Variant383131fc56fe6158b4f48fa2ff46f8db031f157ee6adcaf5d557a91f10e40d3c.lean/declarations/prop-iscompl-iff--7242bcb1cbfb6e2fbee1eaad.md) | 99 | `result-track:7242bcb1cbfb6e2fbee1eaad7d0154f65a6688c0a50c6241a8d108250f993dfc` |
| 15 | `instance` | [Prop.decidablePredBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PropInstances/Variant383131fc56fe6158b4f48fa2ff46f8db031f157ee6adcaf5d557a91f10e40d3c.lean/declarations/prop-decidablepredbot--13ed36e5eef4dfb17460bd62.md) | 108 | `declaration-track:13ed36e5eef4dfb17460bd628dadc9be90028c9a1477e63773fcda924d6e8298` |
| 16 | `instance` | [Prop.decidablePredTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PropInstances/Variant383131fc56fe6158b4f48fa2ff46f8db031f157ee6adcaf5d557a91f10e40d3c.lean/declarations/prop-decidablepredtop--8dfbf9be74a7842324845126.md) | 110 | `declaration-track:8dfbf9be74a78423248451265d946c728fea18068f9ddc185c3b72279fd74b58` |
| 17 | `instance` | [Prop.decidableRelBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PropInstances/Variant383131fc56fe6158b4f48fa2ff46f8db031f157ee6adcaf5d557a91f10e40d3c.lean/declarations/prop-decidablerelbot--00782e0e8621e19d7b9ee61e.md) | 112 | `declaration-track:00782e0e8621e19d7b9ee61ef83a407bd1530e9e47a0617017b504b30d0f5abb` |
| 18 | `instance` | [Prop.decidableRelTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PropInstances/Variant383131fc56fe6158b4f48fa2ff46f8db031f157ee6adcaf5d557a91f10e40d3c.lean/declarations/prop-decidablereltop--5d9737136ef9661f7a71372c.md) | 114 | `declaration-track:5d9737136ef9661f7a71372ca100bffefd1fa0c6187d4da5e6879ed126f27368` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
