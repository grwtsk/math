# Verification target: GRWTSK.Topology.GeneralTopology.Cover.Variant034b2cec16144c835ff5dd840406eb19fc9a175d8365ae65a764ff0a5f84dc9b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c20e941a13b07b1ed365d52dd61738f13dab39a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Cover/Variant034b2cec16144c835ff5dd840406eb19fc9a175d8365ae65a764ff0a5f84dc9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Cover/Variant034b2cec16144c835ff5dd840406eb19fc9a175d8365ae65a764ff0a5f84dc9b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Cover/Variant034b2cec16144c835ff5dd840406eb19fc9a175d8365ae65a764ff0a5f84dc9b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c20e941a13b07b1ed365d52dd61738f13dab39a`.

Source path: `GRWTSK/Topology/GeneralTopology/Cover/Variant034b2cec16144c835ff5dd840406eb19fc9a175d8365ae65a764ff0a5f84dc9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Cover/Variant034b2cec16144c835ff5dd840406eb19fc9a175d8365ae65a764ff0a5f84dc9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsCover](../../../../../mathematics/Topology/GeneralTopology/Cover/Variant034b2cec16144c835ff5dd840406eb19fc9a175d8365ae65a764ff0a5f84dc9b.lean/declarations/iscover--4a02de922b5f297e2e4f4ac6.md) | 41 | `declaration-track:4a02de922b5f297e2e4f4ac6f03b68401632d8aaea0018d9cd0ec95754f13a39` |
| 2 | `lemma` | [IsCover.empty](../../../../../mathematics/Topology/GeneralTopology/Cover/Variant034b2cec16144c835ff5dd840406eb19fc9a175d8365ae65a764ff0a5f84dc9b.lean/declarations/iscover-empty--cb5699ff809f93b821885657.md) | 43 | `result-track:cb5699ff809f93b82188565717136f04e36d83af1b995e4913d488743b3405e2` |
| 3 | `lemma` | [isCover_empty_right](../../../../../mathematics/Topology/GeneralTopology/Cover/Variant034b2cec16144c835ff5dd840406eb19fc9a175d8365ae65a764ff0a5f84dc9b.lean/declarations/iscover-empty-right--dde1ac4f5671e7d46725e203.md) | 45 | `result-track:dde1ac4f5671e7d46725e203f9dc3adf14cdb48e41b91f973b0a9fbbaac69127` |
| 4 | `lemma` | [IsCover.nonempty](../../../../../mathematics/Topology/GeneralTopology/Cover/Variant034b2cec16144c835ff5dd840406eb19fc9a175d8365ae65a764ff0a5f84dc9b.lean/declarations/iscover-nonempty--aee5b5ed6cc4fc70061fcd80.md) | 48 | `result-track:aee5b5ed6cc4fc70061fcd8029a8960fe3589d41fb347890677b396084aadc9a` |
| 5 | `lemma` | [IsCover.refl](../../../../../mathematics/Topology/GeneralTopology/Cover/Variant034b2cec16144c835ff5dd840406eb19fc9a175d8365ae65a764ff0a5f84dc9b.lean/declarations/iscover-refl--6366a0488f6d0520c8c93974.md) | 51 | `result-track:6366a0488f6d0520c8c9397403ba5a8bb2d893f124d1241fc3518d02d5b9747c` |
| 6 | `lemma` | [IsCover.rfl](../../../../../mathematics/Topology/GeneralTopology/Cover/Variant034b2cec16144c835ff5dd840406eb19fc9a175d8365ae65a764ff0a5f84dc9b.lean/declarations/iscover-rfl--ee8af359e9bb6b1b48ca7a33.md) | 54 | `result-track:ee8af359e9bb6b1b48ca7a33fbfb4af301779086598cbc43dab9926fc8e00a48` |
| 7 | `lemma` | [isCover_univ](../../../../../mathematics/Topology/GeneralTopology/Cover/Variant034b2cec16144c835ff5dd840406eb19fc9a175d8365ae65a764ff0a5f84dc9b.lean/declarations/iscover-univ--ab169d4ae8fcdfb6d36d7e73.md) | 56 | `result-track:ab169d4ae8fcdfb6d36d7e73bcf50f8c54943cba19e2de9702003be5a6daab9d` |
| 8 | `lemma` | [IsCover.mono](../../../../../mathematics/Topology/GeneralTopology/Cover/Variant034b2cec16144c835ff5dd840406eb19fc9a175d8365ae65a764ff0a5f84dc9b.lean/declarations/iscover-mono--484c7eedd7de642317bf9eb8.md) | 59 | `result-track:484c7eedd7de642317bf9eb82511f8e8540f8c6eeaded2035cc963f2796e976e` |
| 9 | `lemma` | [IsCover.anti](../../../../../mathematics/Topology/GeneralTopology/Cover/Variant034b2cec16144c835ff5dd840406eb19fc9a175d8365ae65a764ff0a5f84dc9b.lean/declarations/iscover-anti--992f9538a5d14056fdf2a5ec.md) | 62 | `result-track:992f9538a5d14056fdf2a5eca8067347b8f3db2a2cb05bae559e9821bb3c9704` |
| 10 | `lemma` | [IsCover.mono_entourage](../../../../../mathematics/Topology/GeneralTopology/Cover/Variant034b2cec16144c835ff5dd840406eb19fc9a175d8365ae65a764ff0a5f84dc9b.lean/declarations/iscover-mono-entourage--873b0f8a96948eb94bc43940.md) | 64 | `result-track:873b0f8a96948eb94bc43940f46964409b32bb3cc5db2c9e8efc936c20f0b49b` |
| 11 | `lemma` | [IsCover.union](../../../../../mathematics/Topology/GeneralTopology/Cover/Variant034b2cec16144c835ff5dd840406eb19fc9a175d8365ae65a764ff0a5f84dc9b.lean/declarations/iscover-union--e4dbc82c6a8203d1b640a433.md) | 67 | `result-track:e4dbc82c6a8203d1b640a433b0b9c966cecfbbe1d341b1d0d3e05337b0e5267c` |
| 12 | `lemma` | [IsCover.of_maximal_isSeparated](../../../../../mathematics/Topology/GeneralTopology/Cover/Variant034b2cec16144c835ff5dd840406eb19fc9a175d8365ae65a764ff0a5f84dc9b.lean/declarations/iscover-of-maximal-isseparated--554ee0a5c6335e424ec1af7e.md) | 74 | `result-track:554ee0a5c6335e424ec1af7eea1784c33ca5777effa1604dfa48acc40ee9ed45` |
| 13 | `lemma` | [isCover_id](../../../../../mathematics/Topology/GeneralTopology/Cover/Variant034b2cec16144c835ff5dd840406eb19fc9a175d8365ae65a764ff0a5f84dc9b.lean/declarations/iscover-id--751c609524608d545f38de6f.md) | 81 | `result-track:751c609524608d545f38de6f6d06a4d3be377c0226f457313b4f055ce64e2363` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
