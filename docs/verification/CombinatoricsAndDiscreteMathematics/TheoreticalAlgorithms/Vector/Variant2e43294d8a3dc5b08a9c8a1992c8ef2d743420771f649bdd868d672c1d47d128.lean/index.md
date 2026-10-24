# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Vector.Variant2e43294d8a3dc5b08a9c8a1992c8ef2d743420771f649bdd868d672c1d47d128

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aec91021245773352acabdec5a7672178456b904",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant2e43294d8a3dc5b08a9c8a1992c8ef2d743420771f649bdd868d672c1d47d128.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant2e43294d8a3dc5b08a9c8a1992c8ef2d743420771f649bdd868d672c1d47d128.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant2e43294d8a3dc5b08a9c8a1992c8ef2d743420771f649bdd868d672c1d47d128.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aec91021245773352acabdec5a7672178456b904`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant2e43294d8a3dc5b08a9c8a1992c8ef2d743420771f649bdd868d672c1d47d128.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant2e43294d8a3dc5b08a9c8a1992c8ef2d743420771f649bdd868d672c1d47d128.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Nat.TakeDrop` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Vector.Lemmas` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Vector.iterM_eq_iterFromIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant2e43294d8a3dc5b08a9c8a1992c8ef2d743420771f649bdd868d672c1d47d128.lean/declarations/vector-iterm-eq-iterfromidxm--ca218b81f28a5d61842bf770.md) | 35 | `result-track:ca218b81f28a5d61842bf770b7d64c9c30214f3284eb4a08f0d43f391ec8a668` |
| 2 | `theorem` | [Std.Iterators.Vector.isPlausibleStep_iterFromIdxM_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant2e43294d8a3dc5b08a9c8a1992c8ef2d743420771f649bdd868d672c1d47d128.lean/declarations/std-iterators-vector-isplausiblestep-iterfromidxm-of-lt--1c71e8c770567d7973cfcbfd.md) | 39 | `result-track:1c71e8c770567d7973cfcbfda51ebb579b2c44560d36438697b75b32efc2d3ea` |
| 3 | `theorem` | [Std.Iterators.Vector.isPlausibleStep_iterFromIdxM_of_not_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant2e43294d8a3dc5b08a9c8a1992c8ef2d743420771f649bdd868d672c1d47d128.lean/declarations/std-iterators-vector-isplausiblestep-iterfromidxm-of-not-lt--ca8006c889000ff219f6a9d4.md) | 46 | `result-track:ca8006c889000ff219f6a9d4c94da640a1ebaf628ea677f85166654f65b6186f` |
| 4 | `theorem` | [Std.Iterators.Vector.isPlausibleStep_iterM_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant2e43294d8a3dc5b08a9c8a1992c8ef2d743420771f649bdd868d672c1d47d128.lean/declarations/std-iterators-vector-isplausiblestep-iterm-of-pos--e76aedfa7cf86a50b9991fdb.md) | 52 | `result-track:e76aedfa7cf86a50b9991fdbc16f4b32c018dcff6bb251e9b25094ab2547ca1e` |
| 5 | `theorem` | [Std.Iterators.Vector.isPlausibleStep_iterM_of_not_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant2e43294d8a3dc5b08a9c8a1992c8ef2d743420771f649bdd868d672c1d47d128.lean/declarations/std-iterators-vector-isplausiblestep-iterm-of-not-pos--99043cb764e3f7bb3f2ff690.md) | 58 | `result-track:99043cb764e3f7bb3f2ff690b0846301a72ea22e723182a920fe6a7a7c8197e6` |
| 6 | `theorem` | [Vector.iterFromIdxM_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant2e43294d8a3dc5b08a9c8a1992c8ef2d743420771f649bdd868d672c1d47d128.lean/declarations/vector-iterfromidxm-toarray--12e9f05012bbef12c4793714.md) | 65 | `result-track:12e9f05012bbef12c4793714c5b56d1b84501c5ae46dcdaf368faa3644027144` |
| 7 | `theorem` | [Vector.iterM_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant2e43294d8a3dc5b08a9c8a1992c8ef2d743420771f649bdd868d672c1d47d128.lean/declarations/vector-iterm-toarray--8b144d46f342fa717639cee0.md) | 70 | `result-track:8b144d46f342fa717639cee0626d0ae6e1d4fd228816772482e89653daa9d7cd` |
| 8 | `theorem` | [Vector.step_iterFromIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant2e43294d8a3dc5b08a9c8a1992c8ef2d743420771f649bdd868d672c1d47d128.lean/declarations/vector-step-iterfromidxm--a36c2e793e29a597b1207612.md) | 74 | `result-track:a36c2e793e29a597b1207612afa3647c2261079e3531e661c7c58acb65fb865d` |
| 9 | `theorem` | [Vector.step_iterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant2e43294d8a3dc5b08a9c8a1992c8ef2d743420771f649bdd868d672c1d47d128.lean/declarations/vector-step-iterm--8805f5bf9d825537c19b8baa.md) | 84 | `result-track:8805f5bf9d825537c19b8baa38cb4e766326597c45d2ce84f050181413d003d0` |
| 10 | `theorem` | [Vector.iterFromIdxM_equiv_iterM_drop_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant2e43294d8a3dc5b08a9c8a1992c8ef2d743420771f649bdd868d672c1d47d128.lean/declarations/vector-iterfromidxm-equiv-iterm-drop-tolist--7a8fdd34bb495569822eb041.md) | 96 | `result-track:7a8fdd34bb495569822eb04139b69c40f88367c0165763bdd4ea274b53b88fd7` |
| 11 | `theorem` | [Vector.iterM_equiv_iterM_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant2e43294d8a3dc5b08a9c8a1992c8ef2d743420771f649bdd868d672c1d47d128.lean/declarations/vector-iterm-equiv-iterm-tolist--465479e537a7ab878ad5944d.md) | 102 | `result-track:465479e537a7ab878ad5944df5983947fdecfb1c6c952af04319a6182b287de2` |
| 12 | `theorem` | [Vector.toList_iterFromIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant2e43294d8a3dc5b08a9c8a1992c8ef2d743420771f649bdd868d672c1d47d128.lean/declarations/vector-tolist-iterfromidxm--2b6b2a65ad7787e2f33f64e5.md) | 111 | `result-track:2b6b2a65ad7787e2f33f64e58e8eb6bdb0b777b3418e3385da66d088641dc55a` |
| 13 | `theorem` | [Vector.toList_iterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant2e43294d8a3dc5b08a9c8a1992c8ef2d743420771f649bdd868d672c1d47d128.lean/declarations/vector-tolist-iterm--e30b660c2c04c011c7bbc987.md) | 116 | `result-track:e30b660c2c04c011c7bbc98700e2403328af7f2274eab0aa20aa58761127bdf5` |
| 14 | `theorem` | [Vector.toArray_iterFromIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant2e43294d8a3dc5b08a9c8a1992c8ef2d743420771f649bdd868d672c1d47d128.lean/declarations/vector-toarray-iterfromidxm--1ef2484c347bd363b17b504a.md) | 121 | `result-track:1ef2484c347bd363b17b504afd3eb27a2a27e59e081fac849bc4d020b80dd69d` |
| 15 | `theorem` | [Vector.toArray_iterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant2e43294d8a3dc5b08a9c8a1992c8ef2d743420771f649bdd868d672c1d47d128.lean/declarations/vector-toarray-iterm--7d4c7fa8eb6163f840f886f9.md) | 126 | `result-track:7d4c7fa8eb6163f840f886f95eb6974bd9813e6847a74a9b46a751285d77c7df` |
| 16 | `theorem` | [Vector.toListRev_iterFromIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant2e43294d8a3dc5b08a9c8a1992c8ef2d743420771f649bdd868d672c1d47d128.lean/declarations/vector-tolistrev-iterfromidxm--0055d2f4edd0806552169e59.md) | 131 | `result-track:0055d2f4edd0806552169e59a28c91436a79f7ac1f781d1f3a7294dba5ed2fb7` |
| 17 | `theorem` | [Vector.toListRev_iterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant2e43294d8a3dc5b08a9c8a1992c8ef2d743420771f649bdd868d672c1d47d128.lean/declarations/vector-tolistrev-iterm--f2d0c60bb47d3c60bcb0896e.md) | 136 | `result-track:f2d0c60bb47d3c60bcb0896e69e72ffd81b566294b031127a9da891067f57876` |
| 18 | `theorem` | [Vector.length_iterFromIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant2e43294d8a3dc5b08a9c8a1992c8ef2d743420771f649bdd868d672c1d47d128.lean/declarations/vector-length-iterfromidxm--cddfbbef2858b16a5a3a2a2f.md) | 141 | `result-track:cddfbbef2858b16a5a3a2a2ff7fa325d1ab5aab04a1c7cc861b6f4f2e6744dd6` |
| 19 | `theorem` | [Vector.length_iterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant2e43294d8a3dc5b08a9c8a1992c8ef2d743420771f649bdd868d672c1d47d128.lean/declarations/vector-length-iterm--2433624609237999750eb5ec.md) | 146 | `result-track:2433624609237999750eb5ec9751d8ab5f38d171f5ca3c0acb4371eec5ac970e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
