# Verification target: GRWTSK.Algebra.Basic.Variant1099644c6f6ce8b1cbfaea51fdf56366d2cb50faba0c8ff143df605f62e1966e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1af272349ca41061dd44244a634559afd32b1604",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant1099644c6f6ce8b1cbfaea51fdf56366d2cb50faba0c8ff143df605f62e1966e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant1099644c6f6ce8b1cbfaea51fdf56366d2cb50faba0c8ff143df605f62e1966e.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant1099644c6f6ce8b1cbfaea51fdf56366d2cb50faba0c8ff143df605f62e1966e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1af272349ca41061dd44244a634559afd32b1604`.

Source path: `GRWTSK/Algebra/Basic/Variant1099644c6f6ce8b1cbfaea51fdf56366d2cb50faba0c8ff143df605f62e1966e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant1099644c6f6ce8b1cbfaea51fdf56366d2cb50faba0c8ff143df605f62e1966e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NeZero` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Rev` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [addCommSemigroup](../../../../mathematics/Algebra/Basic/Variant1099644c6f6ce8b1cbfaea51fdf56366d2cb50faba0c8ff143df605f62e1966e.lean/declarations/addcommsemigroup--4a859ea6cdfd726aaa7cd580.md) | 36 | `declaration-track:4a859ea6cdfd726aaa7cd58029701463f83f02778254d0f942e4848fbdfaa001` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant1099644c6f6ce8b1cbfaea51fdf56366d2cb50faba0c8ff143df605f62e1966e.lean/declarations/instance--c26ce7c99a4d3d21bcc86f7b.md) | 40 | `declaration-track:c26ce7c99a4d3d21bcc86f7b3ffae7e8664c1a43b50db937cd40b5ecb0b2f873` |
| 3 | `instance` | [addCommMonoid](../../../../mathematics/Algebra/Basic/Variant1099644c6f6ce8b1cbfaea51fdf56366d2cb50faba0c8ff143df605f62e1966e.lean/declarations/addcommmonoid--85e1db0a2d5513a30adf59ce.md) | 44 | `declaration-track:85e1db0a2d5513a30adf59cec9969a5132876c14855ae1efed7ad611320386c4` |
| 4 | `instance` | [instAddMonoidWithOne](../../../../mathematics/Algebra/Basic/Variant1099644c6f6ce8b1cbfaea51fdf56366d2cb50faba0c8ff143df605f62e1966e.lean/declarations/instaddmonoidwithone--f84a953b08d6518f73ff9e24.md) | 50 | `declaration-track:f84a953b08d6518f73ff9e24e5e3ef50ce5bf1b879d2565cd84cfc421f0ba5c5` |
| 5 | `instance` | [addCommGroup](../../../../mathematics/Algebra/Basic/Variant1099644c6f6ce8b1cbfaea51fdf56366d2cb50faba0c8ff143df605f62e1966e.lean/declarations/addcommgroup--a134e70a3650b29b52b59c0b.md) | 56 | `declaration-track:a134e70a3650b29b52b59c0b161f2b0295fd2237b126c4f4d080c7a610aed354` |
| 6 | `instance` | [instInvolutiveNeg](../../../../mathematics/Algebra/Basic/Variant1099644c6f6ce8b1cbfaea51fdf56366d2cb50faba0c8ff143df605f62e1966e.lean/declarations/instinvolutiveneg--181c1a9e5f95b41acd9cbaac.md) | 69 | `declaration-track:181c1a9e5f95b41acd9cbaac69889339fe89f8e567741058afeb53bb5562a617` |
| 7 | `instance` | [instIsCancelAdd](../../../../mathematics/Algebra/Basic/Variant1099644c6f6ce8b1cbfaea51fdf56366d2cb50faba0c8ff143df605f62e1966e.lean/declarations/instiscanceladd--11638503a8f1e178ab053bfa.md) | 73 | `declaration-track:11638503a8f1e178ab053bfa79f48402b4f5d40d679a4dc7d0e1019b5e89f98e` |
| 8 | `instance` | [instAddLeftCancelSemigroup](../../../../mathematics/Algebra/Basic/Variant1099644c6f6ce8b1cbfaea51fdf56366d2cb50faba0c8ff143df605f62e1966e.lean/declarations/instaddleftcancelsemigroup--8ad8978f948d83613188f1a0.md) | 78 | `declaration-track:8ad8978f948d83613188f1a001fe223ade4048543606a0e2bafb464aee86f525` |
| 9 | `instance` | [instAddRightCancelSemigroup](../../../../mathematics/Algebra/Basic/Variant1099644c6f6ce8b1cbfaea51fdf56366d2cb50faba0c8ff143df605f62e1966e.lean/declarations/instaddrightcancelsemigroup--4e26e67bd735a8678f6bdc2c.md) | 82 | `declaration-track:4e26e67bd735a8678f6bdc2cd80fdddf8e43a4fd7b689cea0cb2327fdaf72eb9` |
| 10 | `lemma` | [coe_sub_one](../../../../mathematics/Algebra/Basic/Variant1099644c6f6ce8b1cbfaea51fdf56366d2cb50faba0c8ff143df605f62e1966e.lean/declarations/coe-sub-one--89f01aea20ca9c813c09435d.md) | 87 | `result-track:89f01aea20ca9c813c09435d3d306947c2e877eb44bca3dafc2ac8acb3d8f43b` |
| 11 | `lemma` | [lt_sub_iff](../../../../mathematics/Algebra/Basic/Variant1099644c6f6ce8b1cbfaea51fdf56366d2cb50faba0c8ff143df605f62e1966e.lean/declarations/lt-sub-iff--91570f74202309adf7fc899e.md) | 98 | `result-track:91570f74202309adf7fc899e026d01afc3f38304fb570b70c1879e4faf69d99b` |
| 12 | `lemma` | [sub_le_iff](../../../../mathematics/Algebra/Basic/Variant1099644c6f6ce8b1cbfaea51fdf56366d2cb50faba0c8ff143df605f62e1966e.lean/declarations/sub-le-iff--bdf62fb9c9ab265b4f2688ec.md) | 119 | `result-track:bdf62fb9c9ab265b4f2688ec32d7ee62110cfde142d426aeb8f006f0e7638e7a` |
| 13 | `lemma` | [lt_one_iff](../../../../mathematics/Algebra/Basic/Variant1099644c6f6ce8b1cbfaea51fdf56366d2cb50faba0c8ff143df605f62e1966e.lean/declarations/lt-one-iff--af364c8c5e3a95099740fe00.md) | 123 | `result-track:af364c8c5e3a95099740fe00daacd8428461c44ecc1ff916a9026cf52a3b5009` |
| 14 | `lemma` | [lt_sub_one_iff](../../../../mathematics/Algebra/Basic/Variant1099644c6f6ce8b1cbfaea51fdf56366d2cb50faba0c8ff143df605f62e1966e.lean/declarations/lt-sub-one-iff--071bf1aa4d9acf3c8b4e7a78.md) | 126 | `result-track:071bf1aa4d9acf3c8b4e7a78cbfd8632f174f03247af3b786921bc42084b93ea` |
| 15 | `lemma` | [le_sub_one_iff](../../../../mathematics/Algebra/Basic/Variant1099644c6f6ce8b1cbfaea51fdf56366d2cb50faba0c8ff143df605f62e1966e.lean/declarations/le-sub-one-iff--18bddb933f8e9a5b5a60d04b.md) | 129 | `result-track:18bddb933f8e9a5b5a60d04bbc4673d4a6ea42e7672eedbf41a97657a55e2ae1` |
| 16 | `lemma` | [sub_one_lt_iff](../../../../mathematics/Algebra/Basic/Variant1099644c6f6ce8b1cbfaea51fdf56366d2cb50faba0c8ff143df605f62e1966e.lean/declarations/sub-one-lt-iff--6cb1a5ae007a06f139891d19.md) | 137 | `result-track:6cb1a5ae007a06f139891d194e604f4acfbe47dc855c8c18839e567f2d0c39a4` |
| 17 | `lemma` | [neg_last](../../../../mathematics/Algebra/Basic/Variant1099644c6f6ce8b1cbfaea51fdf56366d2cb50faba0c8ff143df605f62e1966e.lean/declarations/neg-last--81e933ed94522b9d40e7913e.md) | 140 | `result-track:81e933ed94522b9d40e7913eaa6cc1e0105e1a8b104ffad0e3c349ef80c143c6` |
| 18 | `lemma` | [neg_natCast_eq_one](../../../../mathematics/Algebra/Basic/Variant1099644c6f6ce8b1cbfaea51fdf56366d2cb50faba0c8ff143df605f62e1966e.lean/declarations/neg-natcast-eq-one--b14963598ec67f9fe60f067f.md) | 142 | `result-track:b14963598ec67f9fe60f067f31987a56a576e7a26cc37c14925220a51ffd58de` |
| 19 | `lemma` | [rev_add](../../../../mathematics/Algebra/Basic/Variant1099644c6f6ce8b1cbfaea51fdf56366d2cb50faba0c8ff143df605f62e1966e.lean/declarations/rev-add--267f797115ed24bab42521f4.md) | 145 | `result-track:267f797115ed24bab42521f471bedd29cfa9b8bc193a2e442bbca86f601a552f` |
| 20 | `lemma` | [rev_sub](../../../../mathematics/Algebra/Basic/Variant1099644c6f6ce8b1cbfaea51fdf56366d2cb50faba0c8ff143df605f62e1966e.lean/declarations/rev-sub--b11686af54756122b8b4f56c.md) | 150 | `result-track:b11686af54756122b8b4f56cc40785d5ab43ae9ecc3f0fc78ecebd7765d21953` |
| 21 | `lemma` | [add_lt_left_iff](../../../../mathematics/Algebra/Basic/Variant1099644c6f6ce8b1cbfaea51fdf56366d2cb50faba0c8ff143df605f62e1966e.lean/declarations/add-lt-left-iff--58f06a9dc3980a934905f69d.md) | 153 | `result-track:58f06a9dc3980a934905f69dc26f4379fbca443df309ecf9e98e812d07f6c016` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
