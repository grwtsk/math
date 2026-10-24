# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.WalkDecomp.Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8fbb005201509073aea8c64afb55ad984e028c18",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8fbb005201509073aea8c64afb55ad984e028c18`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Walk` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [takeUntil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/declarations/takeuntil--d8bf5c93514262f6cd02e19c.md) | 30 | `declaration-track:d8bf5c93514262f6cd02e19c85f28c2d3107232b631bae2a7915b93cd488f7da` |
| 2 | `theorem` | [takeUntil_nil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/declarations/takeuntil-nil--662064e726138e063ffedde0.md) | 41 | `result-track:662064e726138e063ffedde0fb454d97d90bda2973ee8fadfad157ce0309864b` |
| 3 | `lemma` | [takeUntil_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/declarations/takeuntil-cons--bf793c99c56362ed916fc057.md) | 43 | `result-track:bf793c99c56362ed916fc057f9bcdc19ebf419f24bbd74fc56a5b02369b9b7f2` |
| 4 | `lemma` | [takeUntil_first](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/declarations/takeuntil-first--cbd63c396173a4e8401b999c.md) | 49 | `result-track:cbd63c396173a4e8401b999c7db6b8a71c73f57958f8040b3f6add75aac3923b` |
| 5 | `lemma` | [nil_takeUntil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/declarations/nil-takeuntil--6ea89609775c1ca579dfa6ea.md) | 53 | `result-track:6ea89609775c1ca579dfa6ea4770542ed9b739f117c49c552f3287375f746599` |
| 6 | `def` | [dropUntil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/declarations/dropuntil--52f04e13bc2876d3ee08aa37.md) | 69 | `declaration-track:52f04e13bc2876d3ee08aa376bdea9cc662ef07d038342754c2bb4a34b22bd3d` |
| 7 | `theorem` | [take_spec](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/declarations/take-spec--ba37c13978845fac427ae260.md) | 83 | `result-track:ba37c13978845fac427ae260c5c92283e02636f6d5b0394274b4d0aa047aaba7` |
| 8 | `theorem` | [mem_support_iff_exists_append](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/declarations/mem-support-iff-exists-append--88dd0410f0688c8736dd14a8.md) | 94 | `result-track:88dd0410f0688c8736dd14a80ec427757fcc4c5f62c8fb39a1f157c511873d72` |
| 9 | `theorem` | [count_support_takeUntil_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/declarations/count-support-takeuntil-eq-one--1e362297eb7c348fed1244d1.md) | 103 | `result-track:1e362297eb7c348fed1244d106c5d2309cfc5f0c06fc8ebac88a8c23b8c0449a` |
| 10 | `theorem` | [count_edges_takeUntil_le_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/declarations/count-edges-takeuntil-le-one--a3aad83f16ce41395494c5e5.md) | 114 | `result-track:a3aad83f16ce41395494c5e518373556491e33186f8740e6c2ba2b9c403be286` |
| 11 | `theorem` | [takeUntil_copy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/declarations/takeuntil-copy--b7d3ee9358d3b0b87ee06893.md) | 137 | `result-track:b7d3ee9358d3b0b87ee06893bd5f2fcb0b7244b58cfb2c314f2cd7f401c73967` |
| 12 | `theorem` | [dropUntil_copy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/declarations/dropuntil-copy--b2b524362f92d6b4e87bf74e.md) | 144 | `result-track:b2b524362f92d6b4e87bf74efde1d0febbf67c859dbc01a6107e0b49a3c7da04` |
| 13 | `theorem` | [support_takeUntil_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/declarations/support-takeuntil-subset--f63c42f4b5242469a2b55234.md) | 150 | `result-track:f63c42f4b5242469a2b552347022d0181a538248dcd17b36c74e6f0912118ef8` |
| 14 | `theorem` | [support_dropUntil_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/declarations/support-dropuntil-subset--485815b48c6acc741847867f.md) | 155 | `result-track:485815b48c6acc741847867f077f18deca2242b2a7e7c585b3566284eb5f5d18` |
| 15 | `theorem` | [darts_takeUntil_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/declarations/darts-takeuntil-subset--070b37e90ca792667fd3ac17.md) | 160 | `result-track:070b37e90ca792667fd3ac179414855439acb6da1f68aa91c2cf375d4105aa51` |
| 16 | `theorem` | [darts_dropUntil_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/declarations/darts-dropuntil-subset--021dd34e0a9724aca64bb038.md) | 165 | `result-track:021dd34e0a9724aca64bb038c654d21490b300258d9522f9aab725910639b7af` |
| 17 | `theorem` | [edges_takeUntil_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/declarations/edges-takeuntil-subset--36ec2007ebeee29e32b465c1.md) | 170 | `result-track:36ec2007ebeee29e32b465c17fe77036d1e18bdcd669b80a5691664309cd11fd` |
| 18 | `theorem` | [edges_dropUntil_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/declarations/edges-dropuntil-subset--3de79e037c14e01c0f6d52e2.md) | 174 | `result-track:3de79e037c14e01c0f6d52e2ba247bca20c2dd820cc0ec02414d274ec08dc1d6` |
| 19 | `theorem` | [length_takeUntil_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/declarations/length-takeuntil-le--7b20609a5ea82b1f1a19043c.md) | 178 | `result-track:7b20609a5ea82b1f1a19043cbbbf14f1f0257ab8ab103b8afc8ec1dc7b7289f9` |
| 20 | `theorem` | [length_dropUntil_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/declarations/length-dropuntil-le--fe0e3cebe11760bb62c02464.md) | 184 | `result-track:fe0e3cebe11760bb62c02464e61ca81b4a0472091bda82b301e8e41cbcff5a3e` |
| 21 | `lemma` | [getVert_takeUntil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/declarations/getvert-takeuntil--36fd6ff1baa50755c952b5d2.md) | 190 | `result-track:36fd6ff1baa50755c952b5d2c984bf8fe248a3dd3ffe884c17b258d4b6706212` |
| 22 | `lemma` | [snd_takeUntil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/declarations/snd-takeuntil--d34c3287ad90f90bba9b0702.md) | 206 | `result-track:d34c3287ad90f90bba9b0702b2c3928975098d58543748ca28e5ded2e44a8851` |
| 23 | `lemma` | [length_takeUntil_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/declarations/length-takeuntil-lt--a2b129b097793f4114232517.md) | 213 | `result-track:a2b129b097793f41142325177fdd9add2c442b059d449b4510954e66ab458d66` |
| 24 | `lemma` | [takeUntil_takeUntil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/declarations/takeuntil-takeuntil--6a85f3595e5b5a5189de7299.md) | 219 | `result-track:6a85f3595e5b5a5189de7299aadcb41d95e8ca322e8841f49976fb2bb69ab2d2` |
| 25 | `lemma` | [notMem_support_takeUntil_support_takeUntil_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/declarations/notmem-support-takeuntil-support-takeuntil-subset--626a37043bd4085316a357ff.md) | 246 | `result-track:626a37043bd4085316a357ff9365eef64798e0b8c608709f53d15ff4c277507d` |
| 26 | `def` | [rotate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/declarations/rotate--7176716cba7e2e566cf0cd25.md) | 264 | `declaration-track:7176716cba7e2e566cf0cd25178ee41252dd55f1a36ad5670ed5164cd8fef1cb` |
| 27 | `theorem` | [support_rotate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/declarations/support-rotate--6edb125b70e82519bbf8477d.md) | 268 | `result-track:6edb125b70e82519bbf8477d1bf9171b1cb9d9a26d7800f12e36946fc227c899` |
| 28 | `theorem` | [rotate_darts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/declarations/rotate-darts--58985a8093ac0a2172392849.md) | 274 | `result-track:58985a8093ac0a21723928491f67c3bc5ab13cb30f24e6f1b66e4ec6a395f8a6` |
| 29 | `theorem` | [rotate_edges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/declarations/rotate-edges--802d97654066b3ec9574d6c0.md) | 280 | `result-track:802d97654066b3ec9574d6c0b8baad32e3842dcc2f94e03d37ae000f43de14f8` |
| 30 | `theorem` | [mem_support_iff_exists_getVert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/declarations/mem-support-iff-exists-getvert--efeaa254679235839679ba9c.md) | 290 | `result-track:efeaa254679235839679ba9c16cd346c8251eec952d73b3aae2ee1d3219733f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
