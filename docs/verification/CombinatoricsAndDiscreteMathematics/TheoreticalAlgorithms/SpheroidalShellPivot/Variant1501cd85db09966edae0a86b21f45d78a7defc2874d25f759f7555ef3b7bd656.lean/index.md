# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SpheroidalShellPivot.Variant1501cd85db09966edae0a86b21f45d78a7defc2874d25f759f7555ef3b7bd656

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e634566c26862ce662b6d41ba26c7011b8e92f8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpheroidalShellPivot/Variant1501cd85db09966edae0a86b21f45d78a7defc2874d25f759f7555ef3b7bd656.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpheroidalShellPivot/Variant1501cd85db09966edae0a86b21f45d78a7defc2874d25f759f7555ef3b7bd656.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpheroidalShellPivot/Variant1501cd85db09966edae0a86b21f45d78a7defc2874d25f759f7555ef3b7bd656.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e634566c26862ce662b6d41ba26c7011b8e92f8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpheroidalShellPivot/Variant1501cd85db09966edae0a86b21f45d78a7defc2874d25f759f7555ef3b7bd656.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpheroidalShellPivot/Variant1501cd85db09966edae0a86b21f45d78a7defc2874d25f759f7555ef3b7bd656.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.GrandChallenge.Complexity.LeanFrameConnectivity` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SpheroidalShellPivot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpheroidalShellPivot/Variant1501cd85db09966edae0a86b21f45d78a7defc2874d25f759f7555ef3b7bd656.lean/declarations/spheroidalshellpivot--be3644109c67c70ffaf58606.md) | 25 | `declaration-track:be3644109c67c70ffaf5860603f38e52bc965713c16b9dd8c28d2056c404eedc` |
| 2 | `structure` | [NonStickyPivot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpheroidalShellPivot/Variant1501cd85db09966edae0a86b21f45d78a7defc2874d25f759f7555ef3b7bd656.lean/declarations/nonstickypivot--7d67ca6088ce1a23a882b218.md) | 40 | `declaration-track:7d67ca6088ce1a23a882b21853549cc26faeff26b1252cdfb9f5e937c9ccc5c0` |
| 3 | `theorem` | [spheroidal_shell_surrounds_glitch_if_supplied](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpheroidalShellPivot/Variant1501cd85db09966edae0a86b21f45d78a7defc2874d25f759f7555ef3b7bd656.lean/declarations/spheroidal-shell-surrounds-glitch-if-supplied--d5bb9ccd2b3e1a1c8e779f58.md) | 45 | `result-track:d5bb9ccd2b3e1a1c8e779f58d13eed7209297c4f8576646a5de8967215be605d` |
| 4 | `theorem` | [spheroidal_shell_enough_room_if_supplied](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpheroidalShellPivot/Variant1501cd85db09966edae0a86b21f45d78a7defc2874d25f759f7555ef3b7bd656.lean/declarations/spheroidal-shell-enough-room-if-supplied--a477075eb62c3ab6f16434be.md) | 50 | `result-track:a477075eb62c3ab6f16434be11acb323316b240f8ea029402806f91d2a8c4525` |
| 5 | `theorem` | [nonsticky_pivot_no_persistent_boundary_if_supplied](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpheroidalShellPivot/Variant1501cd85db09966edae0a86b21f45d78a7defc2874d25f759f7555ef3b7bd656.lean/declarations/nonsticky-pivot-no-persistent-boundary-if-supplied--944714671342be50d6a6cdca.md) | 55 | `result-track:944714671342be50d6a6cdca861a945d0744c8388851b8b420021df3d5e68d79` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
