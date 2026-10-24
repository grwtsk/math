# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Sym.Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6783e4cd4a416ce8c6d439f827b2c814764a99a2",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6783e4cd4a416ce8c6d439f827b2c814764a99a2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Choose.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sym.Sym2` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sym2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean/declarations/sym2--7d3e808ecf2ab6b957132741.md) | 36 | `declaration-track:7d3e808ecf2ab6b9571327414c16537badc72b9f8ab2d2ed2de0f6e2a82fb634` |
| 2 | `theorem` | [sym2_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean/declarations/sym2-map--d78aa2485aef828c46b9eb87.md) | 40 | `result-track:d78aa2485aef828c46b9eb87070198a235db585beeebb7da9dd3702ea2f399e1` |
| 3 | `theorem` | [mem_sym2_cons_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean/declarations/mem-sym2-cons-iff--ce5d606fb9d6fec2d3ffd695.md) | 46 | `result-track:ce5d606fb9d6fec2d3ffd695d668742229c7806aab1d06da8abd4e00d731338b` |
| 4 | `theorem` | [sym2_eq_nil_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean/declarations/sym2-eq-nil-iff--13c34d3df7d125429544de97.md) | 52 | `result-track:13c34d3df7d125429544de972480287f9e43c2073e0f6a69c081671962618340` |
| 5 | `theorem` | [left_mem_of_mk_mem_sym2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean/declarations/left-mem-of-mk-mem-sym2--534448e7f9d0b860c0b9d780.md) | 55 | `result-track:534448e7f9d0b860c0b9d780feaafa3ffc005e688ba5b4673cc5e4e96b4bab64` |
| 6 | `theorem` | [right_mem_of_mk_mem_sym2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean/declarations/right-mem-of-mk-mem-sym2--8567e46bf66011ef3d6ece66.md) | 69 | `result-track:8567e46bf66011ef3d6ece66a6244ab0b18ac038aa58872011415d85c5db0f21` |
| 7 | `theorem` | [mk_mem_sym2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean/declarations/mk-mem-sym2--e91cf11e4fbaeaa6cc08fe8b.md) | 74 | `result-track:e91cf11e4fbaeaa6cc08fe8b4c57b7ae19b7c5e2a9e3d8ee00706fc47e38da7e` |
| 8 | `theorem` | [mk_mem_sym2_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean/declarations/mk-mem-sym2-iff--edbffb2774da1b5d6ce68c99.md) | 87 | `result-track:edbffb2774da1b5d6ce68c99a8f8a8fc7c21787f114349b807fff34667d4a2d2` |
| 9 | `theorem` | [mem_sym2_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean/declarations/mem-sym2-iff--e16721d08b596d4233615bc8.md) | 95 | `result-track:e16721d08b596d4233615bc8fe38a7afce4a5d3e26671601c2048b195b7317d8` |
| 10 | `theorem` | [Nodup.sym2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean/declarations/nodup-sym2--1deba5788fa1a8e0ddd8cc24.md) | 100 | `result-track:1deba5788fa1a8e0ddd8cc249982a5928ba2d1ebd7a37571a9f4b8c256387fb5` |
| 11 | `theorem` | [map_mk_sublist_sym2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean/declarations/map-mk-sublist-sym2--bc415208da43c32b0dd13c3d.md) | 121 | `result-track:bc415208da43c32b0dd13c3ddffce30a04e0ef6a908c67e6c99ad133bdd1e874` |
| 12 | `theorem` | [map_mk_disjoint_sym2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean/declarations/map-mk-disjoint-sym2--4cad758b79e64eacae80db49.md) | 137 | `result-track:4cad758b79e64eacae80db490a31f287689af0664797f7217b515ecf35792599` |
| 13 | `theorem` | [dedup_sym2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean/declarations/dedup-sym2--c9464717d4c1195c522ee803.md) | 165 | `result-track:c9464717d4c1195c522ee80385be12bea7e5386ef0bd0bfed33d9c4d9bd6ad0f` |
| 14 | `theorem` | [Perm.sym2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean/declarations/perm-sym2--e3b2a730a486d53a95d1f7aa.md) | 182 | `result-track:e3b2a730a486d53a95d1f7aa13329a0a3d7df193d184186ab0b6485f53cb6729` |
| 15 | `theorem` | [Sublist.sym2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean/declarations/sublist-sym2--9ec8588bf22e4bf01b82ccb1.md) | 199 | `result-track:9ec8588bf22e4bf01b82ccb11b9d1e6ead13580e19d571f89b25a6cd0e2428d5` |
| 16 | `theorem` | [Subperm.sym2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean/declarations/subperm-sym2--8d5cc948ebc6a03e1d308850.md) | 209 | `result-track:8d5cc948ebc6a03e1d308850e6292701956413f32e5bdab7b7a5e3947a28de45` |
| 17 | `theorem` | [length_sym2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean/declarations/length-sym2--7298d8607715982ffd1e5fb2.md) | 213 | `result-track:7298d8607715982ffd1e5fb2763508e2a6001872279ac0fa9d8f58f928f05383` |
| 18 | `def` | [sym](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean/declarations/sym--0c1e632602980e4bfa531969.md) | 225 | `declaration-track:0c1e632602980e4bfa5319699c38a99bb05b317a2e4ace9650431e112ba4e078` |
| 19 | `theorem` | [sym_one_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean/declarations/sym-one-eq--60ecba37b1110f96dba58661.md) | 232 | `result-track:60ecba37b1110f96dba586619855cafc2be469818569d9d693796b9979e0b848` |
| 20 | `theorem` | [sym2_eq_sym_two](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean/declarations/sym2-eq-sym-two--2f56c84a8dccb54f2dbc2586.md) | 238 | `result-track:2f56c84a8dccb54f2dbc258699ce8e0f847c850f13fb5902a0955cc4d986b14c` |
| 21 | `theorem` | [sym_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean/declarations/sym-map--b4d10519f9c363534f5f735d.md) | 245 | `result-track:b4d10519f9c363534f5f735d17ca2b587c17b289534995d1dd3a05f5a91e3d33` |
| 22 | `theorem` | [Sublist.sym](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean/declarations/sublist-sym--34de529fe14ecd28a1b439a8.md) | 257 | `result-track:34de529fe14ecd28a1b439a88b520cae825091c7a3b7f4d777176f9cee579450` |
| 23 | `theorem` | [sym_sublist_sym_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean/declarations/sym-sublist-sym-cons--cbf3b66e489b57e2336287c2.md) | 271 | `result-track:cbf3b66e489b57e2336287c27e39052b5f7f24febd29e2723b2a7e5b9e2d8b2c` |
| 24 | `theorem` | [mem_of_mem_of_mem_sym](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean/declarations/mem-of-mem-of-mem-sym--560a1f0da5655a2b649a8c69.md) | 274 | `result-track:560a1f0da5655a2b649a8c692113f5e8e892e42ff4a4b8c89bcb6f956eaf6b08` |
| 25 | `theorem` | [first_mem_of_cons_mem_sym](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean/declarations/first-mem-of-cons-mem-sym--63e9a19f944aa6ef9dfa248f.md) | 292 | `result-track:63e9a19f944aa6ef9dfa248f37d930b457c1c457856f19857fb85f317781f720` |
| 26 | `theorem` | [Nodup.sym](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean/declarations/nodup-sym--fac442d8964f5ae508273764.md) | 296 | `result-track:fac442d8964f5ae5082737649cbd50f8ea4a7a24582e438b00b594694645dd7a` |
| 27 | `theorem` | [length_sym](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant33f7e98fbc63950bd16324aff762f1a6f8a77626df45b46b53e051219c529700.lean/declarations/length-sym--fa2a549dc45662cbada7cb5a.md) | 313 | `result-track:fa2a549dc45662cbada7cb5a3a2767d2521ea6b6d5a3b0ad364e4d65a8883615` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
