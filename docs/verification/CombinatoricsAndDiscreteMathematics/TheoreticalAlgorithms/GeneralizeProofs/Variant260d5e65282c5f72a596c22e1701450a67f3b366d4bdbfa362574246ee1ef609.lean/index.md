# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GeneralizeProofs.Variant260d5e65282c5f72a596c22e1701450a67f3b366d4bdbfa362574246ee1ef609

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d1ad12a3b10aca73ab300bc7ec6dd2ebe6aff39",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GeneralizeProofs/Variant260d5e65282c5f72a596c22e1701450a67f3b366d4bdbfa362574246ee1ef609.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GeneralizeProofs/Variant260d5e65282c5f72a596c22e1701450a67f3b366d4bdbfa362574246ee1ef609.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GeneralizeProofs/Variant260d5e65282c5f72a596c22e1701450a67f3b366d4bdbfa362574246ee1ef609.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d1ad12a3b10aca73ab300bc7ec6dd2ebe6aff39`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GeneralizeProofs/Variant260d5e65282c5f72a596c22e1701450a67f3b366d4bdbfa362574246ee1ef609.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GeneralizeProofs/Variant260d5e65282c5f72a596c22e1701450a67f3b366d4bdbfa362574246ee1ef609.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GeneralizeProofs` — import line 7; external provider; requires a separately pinned dependency.
- `Std.Tactic.GuardExpr` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LibrarySearch` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [List.nthLe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GeneralizeProofs/Variant260d5e65282c5f72a596c22e1701450a67f3b366d4bdbfa362574246ee1ef609.lean/declarations/list-nthle--8ba573cfd0fb4438f8b65785.md) | 15 | `declaration-track:8ba573cfd0fb4438f8b65785c7aa2d3466d468653784a7afff30c3b9229b255d` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GeneralizeProofs/Variant260d5e65282c5f72a596c22e1701450a67f3b366d4bdbfa362574246ee1ef609.lean/declarations/example--94009b6d636d8f859b3afc8b.md) | 17 | `declaration-track:94009b6d636d8f859b3afc8ba6333432afc41b8248074c20e63b520229451b15` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GeneralizeProofs/Variant260d5e65282c5f72a596c22e1701450a67f3b366d4bdbfa362574246ee1ef609.lean/declarations/example--8c6bd25301c4df2ba03596c0.md) | 24 | `declaration-track:8c6bd25301c4df2ba03596c0a69232a8a13f8eca7bfabdbf7bbcf706a12d4c85` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GeneralizeProofs/Variant260d5e65282c5f72a596c22e1701450a67f3b366d4bdbfa362574246ee1ef609.lean/declarations/example--dd5ca563e5ea9521c27decae.md) | 30 | `declaration-track:dd5ca563e5ea9521c27decaef1d1fbc3f7a0e0d85edff1a920b2b6c20a277011` |
| 5 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GeneralizeProofs/Variant260d5e65282c5f72a596c22e1701450a67f3b366d4bdbfa362574246ee1ef609.lean/declarations/example--182d9d9676beaa6b8392ecbb.md) | 36 | `declaration-track:182d9d9676beaa6b8392ecbb4e086dde40d684f7169dda23c52a6d461bdd6699` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GeneralizeProofs/Variant260d5e65282c5f72a596c22e1701450a67f3b366d4bdbfa362574246ee1ef609.lean/declarations/example--152c6b4197fdf5db2d756198.md) | 43 | `declaration-track:152c6b4197fdf5db2d7561980c43f08549017f1a9ae9b870a6a59405058354c5` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GeneralizeProofs/Variant260d5e65282c5f72a596c22e1701450a67f3b366d4bdbfa362574246ee1ef609.lean/declarations/example--28ec93561ff2e598e10559ed.md) | 49 | `declaration-track:28ec93561ff2e598e10559ed7ccd9533493df2d788ac48eaacfeb79f3331c239` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GeneralizeProofs/Variant260d5e65282c5f72a596c22e1701450a67f3b366d4bdbfa362574246ee1ef609.lean/declarations/example--a509dbef5ae470e1d7925874.md) | 56 | `declaration-track:a509dbef5ae470e1d79258740735ceb563e6810df66fd06e6ccc5744adf652ad` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GeneralizeProofs/Variant260d5e65282c5f72a596c22e1701450a67f3b366d4bdbfa362574246ee1ef609.lean/declarations/example--36e6b3355fdbc616ceec99cd.md) | 61 | `declaration-track:36e6b3355fdbc616ceec99cd244c1802eba018cca63ca71469dfd44dc3226f9d` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GeneralizeProofs/Variant260d5e65282c5f72a596c22e1701450a67f3b366d4bdbfa362574246ee1ef609.lean/declarations/example--1dd2f3ffa05c0a5e8e712381.md) | 66 | `declaration-track:1dd2f3ffa05c0a5e8e7123812d2b8c645c0d7ab7a4e21426f6c2b847f9ea5209` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GeneralizeProofs/Variant260d5e65282c5f72a596c22e1701450a67f3b366d4bdbfa362574246ee1ef609.lean/declarations/example--931f8a1bd6c0bc4eaaa1f79b.md) | 81 | `declaration-track:931f8a1bd6c0bc4eaaa1f79b14f34e4ee5721a2b8a5d7260708b73d571d587a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
