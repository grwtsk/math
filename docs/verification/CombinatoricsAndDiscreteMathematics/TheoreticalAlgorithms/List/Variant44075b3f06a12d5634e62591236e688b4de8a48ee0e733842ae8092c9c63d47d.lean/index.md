# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Variant44075b3f06a12d5634e62591236e688b4de8a48ee0e733842ae8092c9c63d47d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6842a3ce9380bb30d3b2838114ba1fc4dc5baa56",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44075b3f06a12d5634e62591236e688b4de8a48ee0e733842ae8092c9c63d47d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44075b3f06a12d5634e62591236e688b4de8a48ee0e733842ae8092c9c63d47d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44075b3f06a12d5634e62591236e688b4de8a48ee0e733842ae8092c9c63d47d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6842a3ce9380bb30d3b2838114ba1fc4dc5baa56`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44075b3f06a12d5634e62591236e688b4de8a48ee0e733842ae8092c9c63d47d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44075b3f06a12d5634e62591236e688b4de8a48ee0e733842ae8092c9c63d47d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.OrderDual` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.List.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Forall₂.prod_le_prod'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44075b3f06a12d5634e62591236e688b4de8a48ee0e733842ae8092c9c63d47d.lean/declarations/forall-prod-le-prod--827a6053b0b1e073a004f9ee.md) | 24 | `result-track:827a6053b0b1e073a004f9ee6402fc9615f4045109cbe9748b6ab4223a4b9c8c` |
| 2 | `lemma` | [Sublist.prod_le_prod'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44075b3f06a12d5634e62591236e688b4de8a48ee0e733842ae8092c9c63d47d.lean/declarations/sublist-prod-le-prod--f5a506c23e02e685fb9b40ae.md) | 38 | `result-track:f5a506c23e02e685fb9b40aee239773647b685229d6110f1ab42c7d41c583b2f` |
| 3 | `lemma` | [SublistForall₂.prod_le_prod'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44075b3f06a12d5634e62591236e688b4de8a48ee0e733842ae8092c9c63d47d.lean/declarations/sublistforall-prod-le-prod--859f656bb8088a6fac0e50b1.md) | 51 | `result-track:859f656bb8088a6fac0e50b190d853908464d23dc0848f5a8536de51d6b93fd3` |
| 4 | `lemma` | [prod_le_prod'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44075b3f06a12d5634e62591236e688b4de8a48ee0e733842ae8092c9c63d47d.lean/declarations/prod-le-prod--d7375c766d5128adcdc1ece6.md) | 59 | `result-track:d7375c766d5128adcdc1ece63feb6ce55c9e5f196cb31644b83b2196756aff4f` |
| 5 | `lemma` | [prod_lt_prod'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44075b3f06a12d5634e62591236e688b4de8a48ee0e733842ae8092c9c63d47d.lean/declarations/prod-lt-prod--f62522e1f4f8ff985d5c856e.md) | 65 | `result-track:f62522e1f4f8ff985d5c856e7e64887e6418243e8d659eb6b774670029039c21` |
| 6 | `lemma` | [prod_lt_prod_of_ne_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44075b3f06a12d5634e62591236e688b4de8a48ee0e733842ae8092c9c63d47d.lean/declarations/prod-lt-prod-of-ne-nil--3d659f49d67d26c4e0d0fbc8.md) | 78 | `result-track:3d659f49d67d26c4e0d0fbc8f81eeba57550451d00600da4d1996f7503b4d88c` |
| 7 | `lemma` | [prod_le_pow_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44075b3f06a12d5634e62591236e688b4de8a48ee0e733842ae8092c9c63d47d.lean/declarations/prod-le-pow-card--bf7cc0b926d1b1a8276f50b6.md) | 86 | `result-track:bf7cc0b926d1b1a8276f50b64cc1db5b6652be27aa2227c1e5fc6ffeccf9be5f` |
| 8 | `lemma` | [pow_card_le_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44075b3f06a12d5634e62591236e688b4de8a48ee0e733842ae8092c9c63d47d.lean/declarations/pow-card-le-prod--8c866b71955e02e3b0513406.md) | 92 | `result-track:8c866b71955e02e3b0513406dce7e09efb501b1bf07e270c610778633db3d8e2` |
| 9 | `lemma` | [exists_lt_of_prod_lt'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44075b3f06a12d5634e62591236e688b4de8a48ee0e733842ae8092c9c63d47d.lean/declarations/exists-lt-of-prod-lt--7ef9a0d59e620774118471e6.md) | 98 | `result-track:7ef9a0d59e620774118471e66ac256b4f0905966ce0d1a1b195ff46b0068280e` |
| 10 | `lemma` | [exists_le_of_prod_le'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44075b3f06a12d5634e62591236e688b4de8a48ee0e733842ae8092c9c63d47d.lean/declarations/exists-le-of-prod-le--b274954d7c11b9504343e5bc.md) | 105 | `result-track:b274954d7c11b9504343e5bc62f6ab47358cdb219e8709c45321050ad1dedd8c` |
| 11 | `lemma` | [one_le_prod_of_one_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44075b3f06a12d5634e62591236e688b4de8a48ee0e733842ae8092c9c63d47d.lean/declarations/one-le-prod-of-one-le--0bf91379ca56efa4f2d2ac0d.md) | 113 | `result-track:0bf91379ca56efa4f2d2ac0dca4cd3c97609e9c59b13cdfb47e182631e58048f` |
| 12 | `lemma` | [max_prod_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44075b3f06a12d5634e62591236e688b4de8a48ee0e733842ae8092c9c63d47d.lean/declarations/max-prod-le--9e968d6e37246c9b769a6bf3.md) | 123 | `result-track:9e968d6e37246c9b769a6bf31ead96b4a59d08240aa5100976d2540fb442eedd` |
| 13 | `lemma` | [prod_min_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44075b3f06a12d5634e62591236e688b4de8a48ee0e733842ae8092c9c63d47d.lean/declarations/prod-min-le--2bfceb6d971726f34f3c92e7.md) | 132 | `result-track:2bfceb6d971726f34f3c92e76c6ae4967cc87f4c32da4e0cb93daf7eac880f7f` |
| 14 | `lemma` | [sum_le_foldr_max](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44075b3f06a12d5634e62591236e688b4de8a48ee0e733842ae8092c9c63d47d.lean/declarations/sum-le-foldr-max--a563165b5bef328385c11c73.md) | 143 | `result-track:a563165b5bef328385c11c734831a02c0298bc9aea084e32370bd5d0b1ea065e` |
| 15 | `lemma` | [one_lt_prod_of_one_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44075b3f06a12d5634e62591236e688b4de8a48ee0e733842ae8092c9c63d47d.lean/declarations/one-lt-prod-of-one-lt--e01ede31bc82f3fcbf50881c.md) | 151 | `result-track:e01ede31bc82f3fcbf50881c1168fe48e983ea1dc5f7cde9fc09973a84c905b7` |
| 16 | `lemma` | [single_le_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44075b3f06a12d5634e62591236e688b4de8a48ee0e733842ae8092c9c63d47d.lean/declarations/single-le-prod--805e8f90ee77ab1a63746195.md) | 166 | `result-track:805e8f90ee77ab1a63746195447f818547696c779f96a686c1c0ee079a268e5a` |
| 17 | `lemma` | [all_one_of_le_one_le_of_prod_eq_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44075b3f06a12d5634e62591236e688b4de8a48ee0e733842ae8092c9c63d47d.lean/declarations/all-one-of-le-one-le-of-prod-eq-one--525894e144a00ff0902b4c7b.md) | 177 | `result-track:525894e144a00ff0902b4c7b8d68f67dce62db0a5c8d81b586f5e29ecabc1acd` |
| 18 | `lemma` | [prod_eq_one_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44075b3f06a12d5634e62591236e688b4de8a48ee0e733842ae8092c9c63d47d.lean/declarations/prod-eq-one-iff--c2a31ad12775c70b5a081559.md) | 184 | `result-track:c2a31ad12775c70b5a081559dc2fb2cf897568d5b604a6191827842fd2084765` |
| 19 | `lemma` | [monotone_prod_take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44075b3f06a12d5634e62591236e688b4de8a48ee0e733842ae8092c9c63d47d.lean/declarations/monotone-prod-take--72fbe1bde9be81369f0d024e.md) | 190 | `result-track:72fbe1bde9be81369f0d024e3546a5e82b1fc6ed776a993bdee45e8127a1f56d` |
| 20 | `theorem` | [le_prod_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44075b3f06a12d5634e62591236e688b4de8a48ee0e733842ae8092c9c63d47d.lean/declarations/le-prod-of-mem--114e7375cb91c70df141648d.md) | 199 | `result-track:114e7375cb91c70df141648d171da4809dc1c865cc23ae2a0c0b021edcdbb1c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
