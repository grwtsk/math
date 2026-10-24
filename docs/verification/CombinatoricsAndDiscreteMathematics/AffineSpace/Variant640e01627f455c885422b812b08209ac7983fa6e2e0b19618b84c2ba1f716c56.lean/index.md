# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.AffineSpace.Variant640e01627f455c885422b812b08209ac7983fa6e2e0b19618b84c2ba1f716c56

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b90d6df395ddf0cc7867f46e41c0a369f580e49b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AffineSpace/Variant640e01627f455c885422b812b08209ac7983fa6e2e0b19618b84c2ba1f716c56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AffineSpace/Variant640e01627f455c885422b812b08209ac7983fa6e2e0b19618b84c2ba1f716c56.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AffineSpace/Variant640e01627f455c885422b812b08209ac7983fa6e2e0b19618b84c2ba1f716c56.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b90d6df395ddf0cc7867f46e41c0a369f580e49b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/AffineSpace/Variant640e01627f455c885422b812b08209ac7983fa6e2e0b19618b84c2ba1f716c56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/AffineSpace/Variant640e01627f455c885422b812b08209ac7983fa6e2e0b19618b84c2ba1f716c56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [convexCombination](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AffineSpace/Variant640e01627f455c885422b812b08209ac7983fa6e2e0b19618b84c2ba1f716c56.lean/declarations/convexcombination--1a358755bd4a08a6928b2548.md) | 39 | `declaration-track:1a358755bd4a08a6928b25489e215ef7188e4ac96039007016c16787b6df2860` |
| 2 | `theorem` | [convexCombination_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AffineSpace/Variant640e01627f455c885422b812b08209ac7983fa6e2e0b19618b84c2ba1f716c56.lean/declarations/convexcombination-single--2cdfc97a305bd82adc091c4d.md) | 42 | `result-track:2cdfc97a305bd82adc091c4d6ae5618d9afe5383f6c5ce65ca4ca0aeaefcc4c9` |
| 3 | `theorem` | [convexCombination_assoc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AffineSpace/Variant640e01627f455c885422b812b08209ac7983fa6e2e0b19618b84c2ba1f716c56.lean/declarations/convexcombination-assoc--b477aeb3e7ba86adc1bd128f.md) | 49 | `result-track:b477aeb3e7ba86adc1bd128ff083998a2d51794e26f74cf8b77e42debb3f1bff` |
| 4 | `def` | [ConvexSpace.ofAddTorsor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AffineSpace/Variant640e01627f455c885422b812b08209ac7983fa6e2e0b19618b84c2ba1f716c56.lean/declarations/convexspace-ofaddtorsor--3fcfaf4f423a6266674b765e.md) | 109 | `declaration-track:3fcfaf4f423a6266674b765ed1b5bc6317024200fa6e0010467deeef46b0efaf` |
| 5 | `class` | [IsAffineConvexSpace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AffineSpace/Variant640e01627f455c885422b812b08209ac7983fa6e2e0b19618b84c2ba1f716c56.lean/declarations/isaffineconvexspace--175ef63e4393f32365b40e42.md) | 120 | `declaration-track:175ef63e4393f32365b40e42db4e90107c94eacd6545b7ef9ed415e7776c872f` |
| 6 | `instance` | [IsAffineConvexSpace.ofAddTorsor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AffineSpace/Variant640e01627f455c885422b812b08209ac7983fa6e2e0b19618b84c2ba1f716c56.lean/declarations/isaffineconvexspace-ofaddtorsor--a3e58c753a7a6ba3352ec5b7.md) | 125 | `declaration-track:a3e58c753a7a6ba3352ec5b7a8f529de2c6f94d610472a75ab3741e5430653d9` |
| 7 | `instance` | [IsModuleConvexSpace.isAffineConvexSpace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AffineSpace/Variant640e01627f455c885422b812b08209ac7983fa6e2e0b19618b84c2ba1f716c56.lean/declarations/ismoduleconvexspace-isaffineconvexspace--15a26c1871d518ee5101c778.md) | 128 | `declaration-track:15a26c1871d518ee5101c7782a65c22376c171e950c5e7b0e0fc091631ac328e` |
| 8 | `theorem` | [sConvexComb_eq_affineCombination](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AffineSpace/Variant640e01627f455c885422b812b08209ac7983fa6e2e0b19618b84c2ba1f716c56.lean/declarations/sconvexcomb-eq-affinecombination--4f4f1b05a65de811d8dddea9.md) | 147 | `result-track:4f4f1b05a65de811d8dddea9e4e2aef1864d48616c4d85275ff77180b575aa89` |
| 9 | `theorem` | [iConvexComb_eq_affineCombination](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AffineSpace/Variant640e01627f455c885422b812b08209ac7983fa6e2e0b19618b84c2ba1f716c56.lean/declarations/iconvexcomb-eq-affinecombination--000ea8855be6fc37e3eacba4.md) | 154 | `result-track:000ea8855be6fc37e3eacba4eb61d4b1f50ae3d614f1bdd4e2ee12baf78d0305` |
| 10 | `theorem` | [convexCombPair_eq_lineMap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AffineSpace/Variant640e01627f455c885422b812b08209ac7983fa6e2e0b19618b84c2ba1f716c56.lean/declarations/convexcombpair-eq-linemap--90cbc0508b324d7a99f66d7f.md) | 167 | `result-track:90cbc0508b324d7a99f66d7fb35c8c0f29110eb08a5a229ff8e509345973d2cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
