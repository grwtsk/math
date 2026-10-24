# Verification target: GRWTSK.Algebra.GaloisClosure.Variantd86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a27d207a90d0c438577b8e74fdb24e8d68bf2ff0",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GaloisClosure/Variantd86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GaloisClosure/Variantd86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581.lean/index.md) · [Full source](../../../../mathematics/Algebra/GaloisClosure/Variantd86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a27d207a90d0c438577b8e74fdb24e8d68bf2ff0`.

Source path: `GRWTSK/Algebra/GaloisClosure/Variantd86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GaloisClosure/Variantd86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Normal.Closure` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.SeparableClosure` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteGaloisIntermediateField](../../../../mathematics/Algebra/GaloisClosure/Variantd86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581.lean/declarations/finitegaloisintermediatefield--3724f251383eb9822974f7a4.md) | 33 | `declaration-track:3724f251383eb9822974f7a411bb2329a391b19a89273a9ff5a6fa09735a47ca` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisClosure/Variantd86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581.lean/declarations/instance--83d68acea602789e4b78e996.md) | 39 | `declaration-track:83d68acea602789e4b78e996fd55b6c0da57ebddef387bd7d0d80f447af78a02` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisClosure/Variantd86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581.lean/declarations/instance--22ba0ce5a2e284eec639a201.md) | 42 | `declaration-track:22ba0ce5a2e284eec639a2019f2eaeab6fd419a00e2a06724dc0a44d4268dec9` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisClosure/Variantd86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581.lean/declarations/instance--80de9c1e3537653300a392c5.md) | 45 | `declaration-track:80de9c1e3537653300a392c5d8b9e418929d1f76cbe374643e2628a245c56e24` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisClosure/Variantd86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581.lean/declarations/instance--f3d45fb0dcb4cf6a62a27aba.md) | 48 | `declaration-track:f3d45fb0dcb4cf6a62a27abadced7ea379b86e7d7446cfb65a627063d511f962` |
| 6 | `lemma` | [val_injective](../../../../mathematics/Algebra/GaloisClosure/Variantd86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581.lean/declarations/val-injective--ded3db863b606f59c8a78672.md) | 52 | `result-track:ded3db863b606f59c8a786727546543be49a6c4c5049729750dca61d01daf84f` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisClosure/Variantd86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581.lean/declarations/instance--4851a03d56cd4bc6dd0de81d.md) | 58 | `declaration-track:4851a03d56cd4bc6dd0de81d587a75c82afbdcc42338f5fcf5eac7e1725ea150` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisClosure/Variantd86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581.lean/declarations/instance--ea9bd5112eed1881a579fd8c.md) | 61 | `declaration-track:ea9bd5112eed1881a579fd8c0ee636af785c7cf1bff303513859367cdf9014f2` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisClosure/Variantd86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581.lean/declarations/instance--0b6a2110cc5296caaeb0d03e.md) | 66 | `declaration-track:0b6a2110cc5296caaeb0d03e38711a93e5ea448d74d600807ab92517f6d61c51` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisClosure/Variantd86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581.lean/declarations/instance--67865b3d6f72523d3e86facc.md) | 71 | `declaration-track:67865b3d6f72523d3e86facc78e196e1e81bfaf32efe2eedb2ea120b43ab6eb8` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisClosure/Variantd86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581.lean/declarations/instance--057ca958ae9044f8fa45a62b.md) | 75 | `declaration-track:057ca958ae9044f8fa45a62b974618019aa221918bc4abd497a7307488bae28c` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisClosure/Variantd86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581.lean/declarations/instance--fe56f93fa19e467433176d39.md) | 79 | `declaration-track:fe56f93fa19e467433176d39b08bb64ffbc866a6fe14eba209d06abef217da4c` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisClosure/Variantd86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581.lean/declarations/instance--a827d3f17c42a1dfcaed9bc4.md) | 82 | `declaration-track:a827d3f17c42a1dfcaed9bc411242f760ee5b7c93b1e57abb08563e200df1070` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisClosure/Variantd86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581.lean/declarations/instance--5c7a6d98923fdb728093d529.md) | 85 | `declaration-track:5c7a6d98923fdb728093d529da6ea6c49e5a937c947971abacda3c7e6a26678e` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisClosure/Variantd86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581.lean/declarations/instance--18a325d8b8e7fa49c7aaac3c.md) | 88 | `declaration-track:18a325d8b8e7fa49c7aaac3cce8241670cd9d217285580797a9f1a9ed109cf56` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GaloisClosure/Variantd86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581.lean/declarations/instance--d86c8871f2cb7b307d9c8f25.md) | 91 | `declaration-track:d86c8871f2cb7b307d9c8f2574e72bfdb698cb165faef3c614b1bb188c8dfbcd` |
| 17 | `lemma` | [le_iff](../../../../mathematics/Algebra/GaloisClosure/Variantd86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581.lean/declarations/le-iff--bf39e721617de1e2950d86c6.md) | 96 | `result-track:bf39e721617de1e2950d86c63096fbc0a6ee7d707771e58dd8199ccf6768e924` |
| 18 | `def` | [adjoin](../../../../mathematics/Algebra/GaloisClosure/Variantd86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581.lean/declarations/adjoin--bdb1802ef1a1951435b6be89.md) | 104 | `declaration-track:bdb1802ef1a1951435b6be8956745f3ea15eaf5e77df9dd9ee641a13165d8a4a` |
| 19 | `lemma` | [adjoin_val](../../../../mathematics/Algebra/GaloisClosure/Variantd86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581.lean/declarations/adjoin-val--b04609738c0edeca1f1086b2.md) | 115 | `result-track:b04609738c0edeca1f1086b2e02d7ff1cfd6b74144cb9fadb7474042c75aa8bf` |
| 20 | `lemma` | [subset_adjoin](../../../../mathematics/Algebra/GaloisClosure/Variantd86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581.lean/declarations/subset-adjoin--c6c7622bba0dc73fbe52601d.md) | 121 | `result-track:c6c7622bba0dc73fbe52601de3455b7bd453bf89bdb4f66784299a78d2070104` |
| 21 | `theorem` | [adjoin_simple_le_iff](../../../../mathematics/Algebra/GaloisClosure/Variantd86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581.lean/declarations/adjoin-simple-le-iff--b1a03bccd328cbc820a0d7c1.md) | 125 | `result-track:b1a03bccd328cbc820a0d7c1fcb5c4bd477ab3cd0b403f0037a1dd3ebe9cfb5a` |
| 22 | `theorem` | [adjoin_map](../../../../mathematics/Algebra/GaloisClosure/Variantd86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581.lean/declarations/adjoin-map--320019b35a8d850963ed1e30.md) | 131 | `result-track:320019b35a8d850963ed1e30f8cde4bd7ba2987feb31ea7ea76adf3e19d8c212` |
| 23 | `theorem` | [adjoin_simple_map_algHom](../../../../mathematics/Algebra/GaloisClosure/Variantd86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581.lean/declarations/adjoin-simple-map-alghom--7793c16a9bcdfd7ef8acef19.md) | 137 | `result-track:7793c16a9bcdfd7ef8acef19b61b159de8b98887eefaeb6b40ce53f989e29502` |
| 24 | `theorem` | [adjoin_simple_map_algEquiv](../../../../mathematics/Algebra/GaloisClosure/Variantd86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581.lean/declarations/adjoin-simple-map-algequiv--75233e3b1c4777b9b14e0a98.md) | 142 | `result-track:75233e3b1c4777b9b14e0a98c4614f328775e5d67a1d2fbfc35e42455667c88f` |
| 25 | `lemma` | [mem_fixingSubgroup_iff](../../../../mathematics/Algebra/GaloisClosure/Variantd86ea6e3171deebf1d80db5e40ce1fc85e437fc2eb8d2fc372416fc95476f581.lean/declarations/mem-fixingsubgroup-iff--4bb24d77e611e4f1d4790092.md) | 146 | `result-track:4bb24d77e611e4f1d4790092c6e3721e02853e0e8102fc8241f1a60895e4a2bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
