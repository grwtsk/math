# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Residue.Variant5322dbbb6ddd75e98d401dcf04788230f0c8b2d9476315bcff5fa3734b57faa3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "283883ad2ac5ababa720ab5bd98706536e8d81d2",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variant5322dbbb6ddd75e98d401dcf04788230f0c8b2d9476315bcff5fa3734b57faa3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variant5322dbbb6ddd75e98d401dcf04788230f0c8b2d9476315bcff5fa3734b57faa3.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variant5322dbbb6ddd75e98d401dcf04788230f0c8b2d9476315bcff5fa3734b57faa3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `283883ad2ac5ababa720ab5bd98706536e8d81d2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variant5322dbbb6ddd75e98d401dcf04788230f0c8b2d9476315bcff5fa3734b57faa3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variant5322dbbb6ddd75e98d401dcf04788230f0c8b2d9476315bcff5fa3734b57faa3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ResidueAtom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variant5322dbbb6ddd75e98d401dcf04788230f0c8b2d9476315bcff5fa3734b57faa3.lean/declarations/residueatom--71f6ee9cb7eb85bcf89456ce.md) | 15 | `declaration-track:71f6ee9cb7eb85bcf89456cee7790894f747c3d35f7541c2f49b48fb6546f7ed` |
| 2 | `def` | [ResidueAtom.key](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variant5322dbbb6ddd75e98d401dcf04788230f0c8b2d9476315bcff5fa3734b57faa3.lean/declarations/residueatom-key--efbd002d36bfa045768bf142.md) | 30 | `declaration-track:efbd002d36bfa045768bf1429d23e6c91b626d0a27cced24dc97c877b62f22e4` |
| 3 | `def` | [RequiredResidues](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variant5322dbbb6ddd75e98d401dcf04788230f0c8b2d9476315bcff5fa3734b57faa3.lean/declarations/requiredresidues--927e024cec5422b15c2e3c8b.md) | 49 | `declaration-track:927e024cec5422b15c2e3c8b4c602a65fc58738f66e2baef6be4ea22348610f8` |
| 4 | `theorem` | [RequiredResidues_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variant5322dbbb6ddd75e98d401dcf04788230f0c8b2d9476315bcff5fa3734b57faa3.lean/declarations/requiredresidues-count--087235cef713a69b96acdd79.md) | 64 | `result-track:087235cef713a69b96acdd7954c16077ae338b6b3f999b7da5fbcb58e4a8dd3b` |
| 5 | `theorem` | [RequiredResidues_complete](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variant5322dbbb6ddd75e98d401dcf04788230f0c8b2d9476315bcff5fa3734b57faa3.lean/declarations/requiredresidues-complete--0bed021341398ead71aef11a.md) | 68 | `result-track:0bed021341398ead71aef11a9888c15909c91c5742ea7b2a8b527bdcbc57fb72` |
| 6 | `structure` | [ResidueClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variant5322dbbb6ddd75e98d401dcf04788230f0c8b2d9476315bcff5fa3734b57faa3.lean/declarations/residueclass--876387a034472dc82f9f4ecf.md) | 72 | `declaration-track:876387a034472dc82f9f4ecfd67236246bbe3f1864e5665fb655fcf172607dbd` |
| 7 | `def` | [zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variant5322dbbb6ddd75e98d401dcf04788230f0c8b2d9476315bcff5fa3734b57faa3.lean/declarations/zero--698e572b2a4f325f1c5a845e.md) | 79 | `declaration-track:698e572b2a4f325f1c5a845eb61cca4a7a8aa58bbd5b9a0809198e29439ab6cb` |
| 8 | `def` | [ofAtom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variant5322dbbb6ddd75e98d401dcf04788230f0c8b2d9476315bcff5fa3734b57faa3.lean/declarations/ofatom--fa2d23769c0b8b5e73be238e.md) | 82 | `declaration-track:fa2d23769c0b8b5e73be238eba89f85de45e4bc060124b97f69f4c7f0c368ffa` |
| 9 | `def` | [add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variant5322dbbb6ddd75e98d401dcf04788230f0c8b2d9476315bcff5fa3734b57faa3.lean/declarations/add--00a44db3a1f957e853cc1a4c.md) | 85 | `declaration-track:00a44db3a1f957e853cc1a4cb85dcec9bf26599eeb4a350c51afc899b7dc7170` |
| 10 | `def` | [closed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variant5322dbbb6ddd75e98d401dcf04788230f0c8b2d9476315bcff5fa3734b57faa3.lean/declarations/closed--9723a9c15caa3064a377cb32.md) | 91 | `declaration-track:9723a9c15caa3064a377cb32971aded8f50661eb97fca10d32f6e257caa149a6` |
| 11 | `theorem` | [zero_closed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variant5322dbbb6ddd75e98d401dcf04788230f0c8b2d9476315bcff5fa3734b57faa3.lean/declarations/zero-closed--ce97648248e19b0422078387.md) | 94 | `result-track:ce97648248e19b0422078387e199c676241d721c3d70fed6f7315b388a18bd8b` |
| 12 | `structure` | [ResidueLedger](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variant5322dbbb6ddd75e98d401dcf04788230f0c8b2d9476315bcff5fa3734b57faa3.lean/declarations/residueledger--e5ec883b606df7a421cc96f0.md) | 100 | `declaration-track:e5ec883b606df7a421cc96f03a19514d2692d81e1cc60cbb1be4fea18be2b9ca` |
| 13 | `def` | [empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variant5322dbbb6ddd75e98d401dcf04788230f0c8b2d9476315bcff5fa3734b57faa3.lean/declarations/empty--f2d7543258599b32f46d378a.md) | 106 | `declaration-track:f2d7543258599b32f46d378a01e69e0aa976c941cc5e305839ef25058ba4269c` |
| 14 | `def` | [emit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variant5322dbbb6ddd75e98d401dcf04788230f0c8b2d9476315bcff5fa3734b57faa3.lean/declarations/emit--d7385db5346a893a01605cf6.md) | 109 | `declaration-track:d7385db5346a893a01605cf6e032dccfa97dd08964916572a33446e010bb77f3` |
| 15 | `def` | [contains](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variant5322dbbb6ddd75e98d401dcf04788230f0c8b2d9476315bcff5fa3734b57faa3.lean/declarations/contains--39240dadfae4c8f7656f81e7.md) | 112 | `declaration-track:39240dadfae4c8f7656f81e74675848eeb654b9a8ee472028141c078f8db5450` |
| 16 | `theorem` | [emit_contains](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variant5322dbbb6ddd75e98d401dcf04788230f0c8b2d9476315bcff5fa3734b57faa3.lean/declarations/emit-contains--93f31b566fade48679d4ff96.md) | 115 | `result-track:93f31b566fade48679d4ff966a4553809312c2d773a763ebcabe61295d259896` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
