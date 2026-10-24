# Verification target: GRWTSK.Analysis.FunctionalAnalysis.WeakSpace.Variante5505b78260fc66bb05d785f474ce80f7be9728eb78778d6a53850521272a8bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53106b46e0496c86a0df2dce6bae4d3bb6f3db9d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/WeakSpace/Variante5505b78260fc66bb05d785f474ce80f7be9728eb78778d6a53850521272a8bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakSpace/Variante5505b78260fc66bb05d785f474ce80f7be9728eb78778d6a53850521272a8bf.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakSpace/Variante5505b78260fc66bb05d785f474ce80f7be9728eb78778d6a53850521272a8bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53106b46e0496c86a0df2dce6bae4d3bb6f3db9d`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/WeakSpace/Variante5505b78260fc66bb05d785f474ce80f7be9728eb78778d6a53850521272a8bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/WeakSpace/Variante5505b78260fc66bb05d785f474ce80f7be9728eb78778d6a53850521272a8bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.HahnBanach.Separation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.WeakDual` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Convex.toWeakSpace_closure](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakSpace/Variante5505b78260fc66bb05d785f474ce80f7be9728eb78778d6a53850521272a8bf.lean/declarations/convex-toweakspace-closure--6c71dc5db7f043ce06543c7d.md) | 44 | `result-track:6c71dc5db7f043ce06543c7d168b6c29bba5daaddfc6d0beaeaf5b9278c0f356` |
| 2 | `theorem` | [LinearMap.image_closure_of_convex](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakSpace/Variante5505b78260fc66bb05d785f474ce80f7be9728eb78778d6a53850521272a8bf.lean/declarations/linearmap-image-closure-of-convex--175791d6dac5ca72d6f2e1e2.md) | 66 | `result-track:175791d6dac5ca72d6f2e1e27759033516765f00c2c61ae1b3fb77120735b615` |
| 3 | `theorem` | [LinearEquiv.image_closure_of_convex](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakSpace/Variante5505b78260fc66bb05d785f474ce80f7be9728eb78778d6a53850521272a8bf.lean/declarations/linearequiv-image-closure-of-convex--6da25aa2cf5e96ce72771f2d.md) | 82 | `result-track:6da25aa2cf5e96ce72771f2dfa6427e00874415c71e3885cfc68bdf7bb6e6d88` |
| 4 | `theorem` | [LinearEquiv.image_closure_of_convex'](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakSpace/Variante5505b78260fc66bb05d785f474ce80f7be9728eb78778d6a53850521272a8bf.lean/declarations/linearequiv-image-closure-of-convex--7d436a501a48aa4a64305f5e.md) | 96 | `result-track:7d436a501a48aa4a64305f5e97107e6c856f1f95e05277ac03ecc4b1c7262d6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
