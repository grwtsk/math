# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Intro.Variantd74168b049dbe028feb59d17dc7b7acd3b0f6092d39ddeea3e4cdbd1c1037d86

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3bb7f1a40c0142d613aa5f006276188883befc46",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantd74168b049dbe028feb59d17dc7b7acd3b0f6092d39ddeea3e4cdbd1c1037d86.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantd74168b049dbe028feb59d17dc7b7acd3b0f6092d39ddeea3e4cdbd1c1037d86.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantd74168b049dbe028feb59d17dc7b7acd3b0f6092d39ddeea3e4cdbd1c1037d86.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3bb7f1a40c0142d613aa5f006276188883befc46`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantd74168b049dbe028feb59d17dc7b7acd3b0f6092d39ddeea3e4cdbd1c1037d86.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantd74168b049dbe028feb59d17dc7b7acd3b0f6092d39ddeea3e4cdbd1c1037d86.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Intro` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.InstantiateS` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.IsClass` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.AlphaShareBuilder` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [introCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantd74168b049dbe028feb59d17dc7b7acd3b0f6092d39ddeea3e4cdbd1c1037d86.lean/declarations/introcore--00514f59578e1c7b0a7f2d34.md) | 22 | `declaration-track:00514f59578e1c7b0a7f2d3488870693f204d63edc9529a802f5806b176c5c52` |
| 2 | `def` | [hugeNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantd74168b049dbe028feb59d17dc7b7acd3b0f6092d39ddeea3e4cdbd1c1037d86.lean/declarations/hugenat--8fc06d3a3cc5b1ae72a5a585.md) | 104 | `declaration-track:8fc06d3a3cc5b1ae72a5a5851adb578a7007942dff278da00e5b587e263eef93` |
| 3 | `inductive` | [IntrosResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantd74168b049dbe028feb59d17dc7b7acd3b0f6092d39ddeea3e4cdbd1c1037d86.lean/declarations/introsresult--8d97297f59de6a91eb0f20ff.md) | 106 | `declaration-track:8d97297f59de6a91eb0f20ffa6314191caa030618f93e3f1591359fec3ec4006` |
| 4 | `def` | [intros](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantd74168b049dbe028feb59d17dc7b7acd3b0f6092d39ddeea3e4cdbd1c1037d86.lean/declarations/intros--17f6641bcf7a2fc18402b0c3.md) | 120 | `declaration-track:17f6641bcf7a2fc18402b0c3fad087709c0535693415b4b7bc2bd625b3458ed9` |
| 5 | `def` | [introN](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantd74168b049dbe028feb59d17dc7b7acd3b0f6092d39ddeea3e4cdbd1c1037d86.lean/declarations/intron--89dd82893db8f68304367255.md) | 136 | `declaration-track:89dd82893db8f68304367255959d2bd97df55562d89170513dd6efd56199aed8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
