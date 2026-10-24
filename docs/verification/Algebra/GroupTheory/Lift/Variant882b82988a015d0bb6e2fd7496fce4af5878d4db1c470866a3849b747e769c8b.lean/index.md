# Verification target: GRWTSK.Algebra.GroupTheory.Lift.Variant882b82988a015d0bb6e2fd7496fce4af5878d4db1c470866a3849b747e769c8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e2443975b01607dee026920e50f880bd5379693",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Lift/Variant882b82988a015d0bb6e2fd7496fce4af5878d4db1c470866a3849b747e769c8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Lift/Variant882b82988a015d0bb6e2fd7496fce4af5878d4db1c470866a3849b747e769c8b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Lift/Variant882b82988a015d0bb6e2fd7496fce4af5878d4db1c470866a3849b747e769c8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e2443975b01607dee026920e50f880bd5379693`.

Source path: `GRWTSK/Algebra/GroupTheory/Lift/Variant882b82988a015d0bb6e2fd7496fce4af5878d4db1c470866a3849b747e769c8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Lift/Variant882b82988a015d0bb6e2fd7496fce4af5878d4db1c470866a3849b747e769c8b.lean.json)

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
| 1 | `def` | [liftNC](../../../../../mathematics/Algebra/GroupTheory/Lift/Variant882b82988a015d0bb6e2fd7496fce4af5878d4db1c470866a3849b747e769c8b.lean/declarations/liftnc--d1beb7eb5f3a8db737700f11.md) | 49 | `declaration-track:d1beb7eb5f3a8db737700f1157eb79c2f4b0834d14634ba73aed809d3f417b38` |
| 2 | `theorem` | [liftNC_single](../../../../../mathematics/Algebra/GroupTheory/Lift/Variant882b82988a015d0bb6e2fd7496fce4af5878d4db1c470866a3849b747e769c8b.lean/declarations/liftnc-single--9617b46b07fc74548c15203f.md) | 53 | `result-track:9617b46b07fc74548c15203f1b63ddd5ad6af7616bafef7a912a1bf8e2d49f92` |
| 3 | `theorem` | [liftNC_mul](../../../../../mathematics/Algebra/GroupTheory/Lift/Variant882b82988a015d0bb6e2fd7496fce4af5878d4db1c470866a3849b747e769c8b.lean/declarations/liftnc-mul--2013cf57b1e3a1b67ae634dc.md) | 63 | `result-track:2013cf57b1e3a1b67ae634dcc11675bed82cf6d23e04cdb2cdfe7dd6717ab074` |
| 4 | `theorem` | [liftNC_one](../../../../../mathematics/Algebra/GroupTheory/Lift/Variant882b82988a015d0bb6e2fd7496fce4af5878d4db1c470866a3849b747e769c8b.lean/declarations/liftnc-one--9daa989d2c8a1e145c08fdd3.md) | 79 | `result-track:9daa989d2c8a1e145c08fdd338c58dbb50ab2e9700efa502380fee4ed7b6898c` |
| 5 | `def` | [liftNCRingHom](../../../../../mathematics/Algebra/GroupTheory/Lift/Variant882b82988a015d0bb6e2fd7496fce4af5878d4db1c470866a3849b747e769c8b.lean/declarations/liftncringhom--23a77cadc7f20cef97e9fbff.md) | 91 | `declaration-track:23a77cadc7f20cef97e9fbff20ad6bff20a11f98ee2cbed8fbec113b36cf6045` |
| 6 | `lemma` | [liftNCRingHom_single](../../../../../mathematics/Algebra/GroupTheory/Lift/Variant882b82988a015d0bb6e2fd7496fce4af5878d4db1c470866a3849b747e769c8b.lean/declarations/liftncringhom-single--14f08f999f38beb826cf1c46.md) | 97 | `result-track:14f08f999f38beb826cf1c46a6580d1a2c5b30f701b8af12a6702184a6ff33b5` |
| 7 | `def` | [liftNC](../../../../../mathematics/Algebra/GroupTheory/Lift/Variant882b82988a015d0bb6e2fd7496fce4af5878d4db1c470866a3849b747e769c8b.lean/declarations/liftnc--8a234991d2c13731cd25c7f9.md) | 121 | `declaration-track:8a234991d2c13731cd25c7f916d2765beb91709b64144703a45fd575dde8c005` |
| 8 | `theorem` | [liftNC_single](../../../../../mathematics/Algebra/GroupTheory/Lift/Variant882b82988a015d0bb6e2fd7496fce4af5878d4db1c470866a3849b747e769c8b.lean/declarations/liftnc-single--784c3deab5260cdcda17513f.md) | 125 | `result-track:784c3deab5260cdcda17513f21057daa4ee4a378468678149ce8384fcf8506e8` |
| 9 | `theorem` | [liftNC_mul](../../../../../mathematics/Algebra/GroupTheory/Lift/Variant882b82988a015d0bb6e2fd7496fce4af5878d4db1c470866a3849b747e769c8b.lean/declarations/liftnc-mul--59e26fa6ceee1360cb0871ca.md) | 135 | `result-track:59e26fa6ceee1360cb0871cae620bb84b6d4077108c5acef1a2dd2f0b5e1ef8f` |
| 10 | `theorem` | [liftNC_one](../../../../../mathematics/Algebra/GroupTheory/Lift/Variant882b82988a015d0bb6e2fd7496fce4af5878d4db1c470866a3849b747e769c8b.lean/declarations/liftnc-one--caf356cc656881adb755f79e.md) | 152 | `result-track:caf356cc656881adb755f79eb2843fab86b0eb1d820d383672f5469d7779fb2f` |
| 11 | `def` | [liftNCRingHom](../../../../../mathematics/Algebra/GroupTheory/Lift/Variant882b82988a015d0bb6e2fd7496fce4af5878d4db1c470866a3849b747e769c8b.lean/declarations/liftncringhom--c3bc314c8b4f06e81fb4a11f.md) | 165 | `declaration-track:c3bc314c8b4f06e81fb4a11fd75f81e683c5bf8c3e94e9d3e37aa3cc9a9a9b96` |
| 12 | `lemma` | [liftNCRingHom_single](../../../../../mathematics/Algebra/GroupTheory/Lift/Variant882b82988a015d0bb6e2fd7496fce4af5878d4db1c470866a3849b747e769c8b.lean/declarations/liftncringhom-single--8e77459feb4297a44e1a032f.md) | 172 | `result-track:8e77459feb4297a44e1a032f03f963b1c0bccfe83c38687d4bec4117d5a288fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
