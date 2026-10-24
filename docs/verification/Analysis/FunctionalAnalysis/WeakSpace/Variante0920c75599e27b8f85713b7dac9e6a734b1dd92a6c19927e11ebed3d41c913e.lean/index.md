# Verification target: GRWTSK.Analysis.FunctionalAnalysis.WeakSpace.Variante0920c75599e27b8f85713b7dac9e6a734b1dd92a6c19927e11ebed3d41c913e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "397acc525e32fcf3df7560fc107e8ad3d20b8cd5",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/WeakSpace/Variante0920c75599e27b8f85713b7dac9e6a734b1dd92a6c19927e11ebed3d41c913e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakSpace/Variante0920c75599e27b8f85713b7dac9e6a734b1dd92a6c19927e11ebed3d41c913e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakSpace/Variante0920c75599e27b8f85713b7dac9e6a734b1dd92a6c19927e11ebed3d41c913e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `397acc525e32fcf3df7560fc107e8ad3d20b8cd5`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/WeakSpace/Variante0920c75599e27b8f85713b7dac9e6a734b1dd92a6c19927e11ebed3d41c913e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/WeakSpace/Variante0920c75599e27b8f85713b7dac9e6a734b1dd92a6c19927e11ebed3d41c913e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.HahnBanach.Separation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.WeakDual` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Convex.toWeakSpace_closure](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakSpace/Variante0920c75599e27b8f85713b7dac9e6a734b1dd92a6c19927e11ebed3d41c913e.lean/declarations/convex-toweakspace-closure--a472fe1c6de08d6c3c297161.md) | 36 | `result-track:a472fe1c6de08d6c3c297161337cfcc5e8201e4e90a95e401f37741158d2f727` |
| 2 | `theorem` | [LinearMap.image_closure_of_convex](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakSpace/Variante0920c75599e27b8f85713b7dac9e6a734b1dd92a6c19927e11ebed3d41c913e.lean/declarations/linearmap-image-closure-of-convex--d0d9159cc2a5482b1eb10eb8.md) | 58 | `result-track:d0d9159cc2a5482b1eb10eb8744cdff57908d9f10ac4ef84e5c5d040ad60409f` |
| 3 | `theorem` | [LinearEquiv.image_closure_of_convex](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakSpace/Variante0920c75599e27b8f85713b7dac9e6a734b1dd92a6c19927e11ebed3d41c913e.lean/declarations/linearequiv-image-closure-of-convex--0e3d457adfc94be7d7fec463.md) | 74 | `result-track:0e3d457adfc94be7d7fec46319072b5396bfd26bd53459e70bb2b55b848ef44a` |
| 4 | `theorem` | [LinearEquiv.image_closure_of_convex'](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakSpace/Variante0920c75599e27b8f85713b7dac9e6a734b1dd92a6c19927e11ebed3d41c913e.lean/declarations/linearequiv-image-closure-of-convex--27ccfc4bd44761f5672809ca.md) | 88 | `result-track:27ccfc4bd44761f5672809ca67e13dc9d48fe77bb30a6ace4febbbbea960bebd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
