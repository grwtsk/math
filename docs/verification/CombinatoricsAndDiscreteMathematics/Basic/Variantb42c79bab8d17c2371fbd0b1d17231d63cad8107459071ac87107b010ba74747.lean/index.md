# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variantb42c79bab8d17c2371fbd0b1d17231d63cad8107459071ac87107b010ba74747

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68bd4ad43f5b695c3bd1eef3af7a1f8d36928c0d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantb42c79bab8d17c2371fbd0b1d17231d63cad8107459071ac87107b010ba74747.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantb42c79bab8d17c2371fbd0b1d17231d63cad8107459071ac87107b010ba74747.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantb42c79bab8d17c2371fbd0b1d17231d63cad8107459071ac87107b010ba74747.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68bd4ad43f5b695c3bd1eef3af7a1f8d36928c0d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantb42c79bab8d17c2371fbd0b1d17231d63cad8107459071ac87107b010ba74747.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variantb42c79bab8d17c2371fbd0b1d17231d63cad8107459071ac87107b010ba74747.lean.json)

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
| 1 | `def` | [hallMatchingsOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantb42c79bab8d17c2371fbd0b1d17231d63cad8107459071ac87107b010ba74747.lean/declarations/hallmatchingson--0288ee20895936cc0827c09a.md) | 67 | `declaration-track:0288ee20895936cc0827c09affee7b8c3e4e8644a81bccf1e489b92eb30c8048` |
| 2 | `def` | [hallMatchingsOn.restrict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantb42c79bab8d17c2371fbd0b1d17231d63cad8107459071ac87107b010ba74747.lean/declarations/hallmatchingson-restrict--a966f484d051b51cc452a3a3.md) | 71 | `declaration-track:a966f484d051b51cc452a3a318efd48a659c9eb90e8aa02f1d005a4dad75b729` |
| 3 | `theorem` | [hallMatchingsOn.nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantb42c79bab8d17c2371fbd0b1d17231d63cad8107459071ac87107b010ba74747.lean/declarations/hallmatchingson-nonempty--218209eebff6c8fd79d25547.md) | 81 | `result-track:218209eebff6c8fd79d25547867e09850da5f77ec42fa9153ca69ab86f3e2bf2` |
| 4 | `def` | [hallMatchingsFunctor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantb42c79bab8d17c2371fbd0b1d17231d63cad8107459071ac87107b010ba74747.lean/declarations/hallmatchingsfunctor--be81654a8f94c53e5c08d249.md) | 94 | `declaration-track:be81654a8f94c53e5c08d249f86ed63c14df8853b1bf57b515e2bc61c5d784c7` |
| 5 | `instance` | [hallMatchingsOn.finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantb42c79bab8d17c2371fbd0b1d17231d63cad8107459071ac87107b010ba74747.lean/declarations/hallmatchingson-finite--c5de8c052da526d750cf3282.md) | 99 | `declaration-track:c5de8c052da526d750cf3282321723b88243228ba6deaacee936152a34b6f026` |
| 6 | `theorem` | [Finset.all_card_le_biUnion_card_iff_exists_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantb42c79bab8d17c2371fbd0b1d17231d63cad8107459071ac87107b010ba74747.lean/declarations/finset-all-card-le-biunion-card-iff-exists-injective--4c6995bd4ffbb134a7b8922f.md) | 124 | `result-track:4c6995bd4ffbb134a7b8922fdc84e573fae520e5104878a0befa660f84a6cb5b` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantb42c79bab8d17c2371fbd0b1d17231d63cad8107459071ac87107b010ba74747.lean/declarations/instance--25825baf2a15d93aebf79ea9.md) | 165 | `declaration-track:25825baf2a15d93aebf79ea966c91f3d2245b177b513e93ee78ed94448fcc4fb` |
| 8 | `theorem` | [Fintype.all_card_le_rel_image_card_iff_exists_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantb42c79bab8d17c2371fbd0b1d17231d63cad8107459071ac87107b010ba74747.lean/declarations/fintype-all-card-le-rel-image-card-iff-exists-injective--d81c35beb491481474cefb60.md) | 184 | `result-track:d81c35beb491481474cefb60d1f9308f860dea5280d0818771bc5e9b2c6fe2db` |
| 9 | `theorem` | [Fintype.all_card_le_filter_rel_iff_exists_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantb42c79bab8d17c2371fbd0b1d17231d63cad8107459071ac87107b010ba74747.lean/declarations/fintype-all-card-le-filter-rel-iff-exists-injective--600e1be858c0176138e66576.md) | 206 | `result-track:600e1be858c0176138e665765fb67901428cadaa2fd8e4fad2aef50a60425733` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
