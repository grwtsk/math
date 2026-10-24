# Verification target: GRWTSK.Algebra.GroupTheory.Center.Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1952aed17251e651e455940adf8c046ddf5c3c88",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1952aed17251e651e455940adf8c046ddf5c3c88`.

Source path: `GRWTSK/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Commute.Units` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Invertible.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsAddCentral](../../../../../mathematics/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean/declarations/isaddcentral--31143903a754d6aa7d8eb0bc.md) | 53 | `declaration-track:31143903a754d6aa7d8eb0bc13ebb64c0da61f82e456bcc7f9da631fc4cdb1bf` |
| 2 | `structure` | [IsMulCentral](../../../../../mathematics/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean/declarations/ismulcentral--d43c044da2d742f660d33ba6.md) | 65 | `declaration-track:d43c044da2d742f660d33ba66f2394571a07f2c4d9658a343fce35136c7b480c` |
| 3 | `theorem` | [left_comm](../../../../../mathematics/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean/declarations/left-comm--4d97141f0606a9eff8428ae7.md) | 84 | `result-track:4d97141f0606a9eff8428ae7acd3f3c5b3bed38406a5552c7357a23e812644a6` |
| 4 | `theorem` | [right_comm](../../../../../mathematics/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean/declarations/right-comm--3bfbf067650a1d8cc45132a5.md) | 89 | `result-track:3bfbf067650a1d8cc45132a5b3424b3d6d8412b003bfca3f7db2c42acf92edaf` |
| 5 | `def` | [center](../../../../../mathematics/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean/declarations/center--fa31b4b535fd0c005fc961aa.md) | 104 | `declaration-track:fa31b4b535fd0c005fc961aac88fa677238d4c56ebd0fb4d03852989e494cdbc` |
| 6 | `def` | [centralizer](../../../../../mathematics/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean/declarations/centralizer--3b85b5d1c3ce1460896eae52.md) | 110 | `declaration-track:3b85b5d1c3ce1460896eae520385a0af84be4dbbc4ae63415982610bc382e9ec` |
| 7 | `theorem` | [mem_center_iff](../../../../../mathematics/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean/declarations/mem-center-iff--98a2e586085f5f5ca9cc6424.md) | 113 | `result-track:98a2e586085f5f5ca9cc6424da3addadd43c3e55ff8c2e4e3ae360964680798b` |
| 8 | `lemma` | [mem_centralizer_iff](../../../../../mathematics/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean/declarations/mem-centralizer-iff--4809d8e96d20aa36bb07f0f8.md) | 117 | `result-track:4809d8e96d20aa36bb07f0f831e83974e4513aa94705e3388a8582203ab3360d` |
| 9 | `theorem` | [mul_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean/declarations/mul-mem-center--e2a04f39be2c88933409b633.md) | 120 | `result-track:e2a04f39be2c88933409b6339949d23a5869e1799ac6ecf2e746603feeb276d3` |
| 10 | `lemma` | [center_subset_centralizer](../../../../../mathematics/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean/declarations/center-subset-centralizer--3f32d9d8116bae636ca2b34c.md) | 144 | `result-track:3f32d9d8116bae636ca2b34ce252d75371fb5cc26de135c97e31e0517aad7cad` |
| 11 | `lemma` | [centralizer_union](../../../../../mathematics/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean/declarations/centralizer-union--a0d04b8f4abe2d2f67e1b4ed.md) | 148 | `result-track:a0d04b8f4abe2d2f67e1b4edbab0ddafe99efb3c044600398bbb142ea6c1189f` |
| 12 | `lemma` | [centralizer_subset](../../../../../mathematics/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean/declarations/centralizer-subset--aa42bf57df5f3ce4e9cfc15d.md) | 152 | `result-track:aa42bf57df5f3ce4e9cfc15dbb4cf2f45521d96c12cdc00cf4b204a6ac08c6bc` |
| 13 | `lemma` | [subset_centralizer_centralizer](../../../../../mathematics/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean/declarations/subset-centralizer-centralizer--2b3f1fd9f78f91f9dcb6185c.md) | 155 | `result-track:2b3f1fd9f78f91f9dcb6185cb31d3ffe16ad77dfefa3810cec5e1ddf77b0bd29` |
| 14 | `lemma` | [centralizer_centralizer_centralizer](../../../../../mathematics/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean/declarations/centralizer-centralizer-centralizer--eb4d7a86ec3c4f8b1b888949.md) | 161 | `result-track:eb4d7a86ec3c4f8b1b888949bb2d421be586d068e3aa090cf4dba6b1046b610a` |
| 15 | `instance` | [decidableMemCentralizer](../../../../../mathematics/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean/declarations/decidablememcentralizer--cf6032e73f8df65b9eaec80f.md) | 171 | `declaration-track:cf6032e73f8df65b9eaec80f32e50749ddcee3463579bd312e74385561c12ca9` |
| 16 | `lemma` | [centralizer_centralizer_comm_of_comm](../../../../../mathematics/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean/declarations/centralizer-centralizer-comm-of-comm--303eb0b0738db510dd1a4dfd.md) | 175 | `result-track:303eb0b0738db510dd1a4dfdd0aa3351fee14ac5d6ff6286eac900a898a63b9c` |
| 17 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.IsAddCentral.Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.Semigroup.mem_center_iff](../../../../../mathematics/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean/declarations/root-grwtsk-algebra-grouptheory-isaddcentral-variantc54d6171e6981a05cdf6--3589c6f11d3747897c0cc21c.md) | 185 | `result-track:3589c6f11d3747897c0cc21c1d6edf25f266b3ef23e665cc5bedc262429115ad` |
| 18 | `lemma` | [mul_mem_centralizer](../../../../../mathematics/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean/declarations/mul-mem-centralizer--d807f247083293d3c1157c3f.md) | 191 | `result-track:d807f247083293d3c1157c3fed555cfaee519ff4615b69d20a470ea08a3d2630` |
| 19 | `theorem` | [centralizer_eq_top_iff_subset](../../../../../mathematics/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean/declarations/centralizer-eq-top-iff-subset--1811126df80bc6447df2964a.md) | 196 | `result-track:1811126df80bc6447df2964a6744badff7ea86a903155d30e3e15cd77424a99c` |
| 20 | `lemma` | [centralizer_univ](../../../../../mathematics/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean/declarations/centralizer-univ--d17d3306bd3237239ca47f9c.md) | 203 | `result-track:d17d3306bd3237239ca47f9cf268a9025f0a79b1246e00601e5892cdf3c7e193` |
| 21 | `instance` | [decidableMemCenter](../../../../../mathematics/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean/declarations/decidablememcenter--f20a4ccb04401d74e1fc34a5.md) | 209 | `declaration-track:f20a4ccb04401d74e1fc34a59011e70025d1e2de21a9904afa17a4db85bcbfc5` |
| 22 | `theorem` | [center_eq_univ](../../../../../mathematics/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean/declarations/center-eq-univ--3c645fa4cc2169e739f53a65.md) | 220 | `result-track:3c645fa4cc2169e739f53a651aacb2c19aa80e5db059b3c46a0bd5fcc64c53c2` |
| 23 | `lemma` | [centralizer_eq_univ](../../../../../mathematics/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean/declarations/centralizer-eq-univ--f0fea435d4688b6ae24305a6.md) | 224 | `result-track:f0fea435d4688b6ae24305a61497f9e23c1af9e2b71cb8eae3698184799be7fb` |
| 24 | `theorem` | [one_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean/declarations/one-mem-center--3abeab48b9e601d3e106d470.md) | 233 | `result-track:3abeab48b9e601d3e106d470d63c508f9026e4a8b97398bbe63c9a423dff379d` |
| 25 | `lemma` | [one_mem_centralizer](../../../../../mathematics/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean/declarations/one-mem-centralizer--0d880e76dd6c4ff32ee22bdb.md) | 240 | `result-track:0d880e76dd6c4ff32ee22bdb7f52710d03bf65588a94840e90b755506d645880` |
| 26 | `theorem` | [subset_center_units](../../../../../mathematics/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean/declarations/subset-center-units--d7eaddc60ce9fa29ef28d27f.md) | 248 | `result-track:d7eaddc60ce9fa29ef28d27fa9f05d6f7a3d97ed4a3766ffe0e6defcea897284` |
| 27 | `theorem` | [units_inv_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean/declarations/units-inv-mem-center--bc467e39fc3c8f5380db95c7.md) | 255 | `result-track:bc467e39fc3c8f5380db95c701fec44b6b441c302b88d73f060d6172db1c8430` |
| 28 | `theorem` | [invOf_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean/declarations/invof-mem-center--9678c346b7c43394976fe0d5.md) | 260 | `result-track:9678c346b7c43394976fe0d5fa84130983b9bbe831de95199cd9be1ae0c43c93` |
| 29 | `theorem` | [inv_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean/declarations/inv-mem-center--11cc7955138176ee1a2fc750.md) | 270 | `result-track:11cc7955138176ee1a2fc75008c02c068f4288bcf689c5a05bbc3ef851956a91` |
| 30 | `theorem` | [div_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean/declarations/div-mem-center--88a23801c8da8910f67426a0.md) | 276 | `result-track:88a23801c8da8910f67426a0538e8b6f735e0e58523d6e7606adab32e636e5ce` |
| 31 | `lemma` | [inv_mem_centralizer](../../../../../mathematics/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean/declarations/inv-mem-centralizer--b118d9b273bbf894f105e953.md) | 286 | `result-track:b118d9b273bbf894f105e953f9db96a6e201a4511a886a83c8ebccb02ad3476f` |
| 32 | `lemma` | [div_mem_centralizer](../../../../../mathematics/Algebra/GroupTheory/Center/Variantefe1414307049d1c488c214c83af0b61d4e0b6394568d470f9f8a559964be790.lean/declarations/div-mem-centralizer--edee93541d098abd8896410c.md) | 290 | `result-track:edee93541d098abd8896410c6ceb5e01a771aa9f6307829b5b771cc53e4c2bc1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
