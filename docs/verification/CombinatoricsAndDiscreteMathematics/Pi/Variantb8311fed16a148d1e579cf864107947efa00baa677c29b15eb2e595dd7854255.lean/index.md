# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Pi.Variantb8311fed16a148d1e579cf864107947efa00baa677c29b15eb2e595dd7854255

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8955345a242a87b032b13aa7c28d8435a35d871f",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variantb8311fed16a148d1e579cf864107947efa00baa677c29b15eb2e595dd7854255.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantb8311fed16a148d1e579cf864107947efa00baa677c29b15eb2e595dd7854255.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantb8311fed16a148d1e579cf864107947efa00baa677c29b15eb2e595dd7854255.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8955345a242a87b032b13aa7c28d8435a35d871f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variantb8311fed16a148d1e579cf864107947efa00baa677c29b15eb2e595dd7854255.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Pi/Variantb8311fed16a148d1e579cf864107947efa00baa677c29b15eb2e595dd7854255.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.Pi` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantb8311fed16a148d1e579cf864107947efa00baa677c29b15eb2e595dd7854255.lean/declarations/nil--bc98aa190e7a0db98b8c0099.md) | 22 | `declaration-track:bc98aa190e7a0db98b8c00992345b42a65d3e91aef5b19d332274d7ca2f6d14e` |
| 2 | `def` | [head](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantb8311fed16a148d1e579cf864107947efa00baa677c29b15eb2e595dd7854255.lean/declarations/head--1f5f09a0f2ea80bc4a7e8759.md) | 28 | `declaration-track:1f5f09a0f2ea80bc4a7e8759a152720c16eaa5537da5fe1e4777a5f5d98c32ae` |
| 3 | `def` | [tail](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantb8311fed16a148d1e579cf864107947efa00baa677c29b15eb2e595dd7854255.lean/declarations/tail--fbd3e302d94511745a271c7d.md) | 33 | `declaration-track:fbd3e302d94511745a271c7db24f3ec3173b169840597b194d6743e8dd4fe4e8` |
| 4 | `def` | [cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantb8311fed16a148d1e579cf864107947efa00baa677c29b15eb2e595dd7854255.lean/declarations/cons--e0986bc6a81d5f182492abd8.md) | 41 | `declaration-track:e0986bc6a81d5f182492abd8f2e1c0f436aafc8f6c2265c4c8e8e06d5dc24a15` |
| 5 | `lemma` | [cons_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantb8311fed16a148d1e579cf864107947efa00baa677c29b15eb2e595dd7854255.lean/declarations/cons-def--4af70056badd7aad10428f28.md) | 46 | `result-track:4af70056badd7aad10428f28816a8d07d5a3b24863f8a0d61f300b812e66f3f8` |
| 6 | `lemma` | [_root_.Multiset.Pi.cons_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantb8311fed16a148d1e579cf864107947efa00baa677c29b15eb2e595dd7854255.lean/declarations/root-multiset-pi-cons-coe--76520e1945a7604fc11cfc67.md) | 50 | `result-track:76520e1945a7604fc11cfc679d1151127f59c74188612655e2222c6572949b77` |
| 7 | `lemma` | [cons_eta](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantb8311fed16a148d1e579cf864107947efa00baa677c29b15eb2e595dd7854255.lean/declarations/cons-eta--dddc6238ec684e341c600653.md) | 54 | `result-track:dddc6238ec684e341c600653cf23b59f9fe1033bafb2650f11b9047f965adcbb` |
| 8 | `lemma` | [cons_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantb8311fed16a148d1e579cf864107947efa00baa677c29b15eb2e595dd7854255.lean/declarations/cons-map--4607ba39f955e0d01b55709b.md) | 58 | `result-track:4607ba39f955e0d01b55709b412ed3f0a65994d4d218e9546e06ad78912270ae` |
| 9 | `lemma` | [forall_rel_cons_ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantb8311fed16a148d1e579cf864107947efa00baa677c29b15eb2e595dd7854255.lean/declarations/forall-rel-cons-ext--2a6fca679eb5a14cb7a44819.md) | 63 | `result-track:2a6fca679eb5a14cb7a44819047136a41779796a9900808d7dcd8d01c8c4fedf` |
| 10 | `def` | [pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantb8311fed16a148d1e579cf864107947efa00baa677c29b15eb2e595dd7854255.lean/declarations/pi--6ada3749023a9555003a4771.md) | 73 | `declaration-track:6ada3749023a9555003a47717d906a577702dd2ecaf480f43d74463fb96ac1e4` |
| 11 | `lemma` | [pi_nil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantb8311fed16a148d1e579cf864107947efa00baa677c29b15eb2e595dd7854255.lean/declarations/pi-nil--08708e6ae58dd8c9dd8875d4.md) | 77 | `result-track:08708e6ae58dd8c9dd8875d4b21efc5b45df2b02ca87ca934792c513f2023692` |
| 12 | `lemma` | [pi_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantb8311fed16a148d1e579cf864107947efa00baa677c29b15eb2e595dd7854255.lean/declarations/pi-cons--3e8cda433a6e8b9c62de0565.md) | 81 | `result-track:3e8cda433a6e8b9c62de05653f7a6199a1ffdb0794c5165d83851fbdac7df2d9` |
| 13 | `lemma` | [_root_.Multiset.pi_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantb8311fed16a148d1e579cf864107947efa00baa677c29b15eb2e595dd7854255.lean/declarations/root-multiset-pi-coe--a50463f65e7b165c5d1716c7.md) | 85 | `result-track:a50463f65e7b165c5d1716c7b278d4f57ae350584c5a13862f7d6960fa54b2d1` |
| 14 | `lemma` | [mem_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantb8311fed16a148d1e579cf864107947efa00baa677c29b15eb2e595dd7854255.lean/declarations/mem-pi--e6bdbb8ef4f8620a088a2ebd.md) | 95 | `result-track:e6bdbb8ef4f8620a088a2ebd75767af4c82c41a5fde7962c0292044a07027de4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
