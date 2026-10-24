# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt01.Variant896d5528e13e04f0d0913514549147d831b9940520e87e7334193d81ed052405

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41796652fbe06290bb410ffdd08743fed785fa44",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant896d5528e13e04f0d0913514549147d831b9940520e87e7334193d81ed052405.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant896d5528e13e04f0d0913514549147d831b9940520e87e7334193d81ed052405.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant896d5528e13e04f0d0913514549147d831b9940520e87e7334193d81ed052405.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41796652fbe06290bb410ffdd08743fed785fa44`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant896d5528e13e04f0d0913514549147d831b9940520e87e7334193d81ed052405.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant896d5528e13e04f0d0913514549147d831b9940520e87e7334193d81ed052405.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualLogCellMoment` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cellKernel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant896d5528e13e04f0d0913514549147d831b9940520e87e7334193d81ed052405.lean/declarations/cellkernel--dcb97c5247fdd83f344d1acd.md) | 21 | `declaration-track:dcb97c5247fdd83f344d1acd2c3b537240967178f9aa56ef003edd5bf79a3010` |
| 2 | `def` | [cellDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant896d5528e13e04f0d0913514549147d831b9940520e87e7334193d81ed052405.lean/declarations/cellderivative--3e26aeb37367e7e9ae781df1.md) | 22 | `declaration-track:3e26aeb37367e7e9ae781df13868f72486d78a83c1a8f8cb049b5bda0a97349b` |
| 3 | `def` | [derivativeMajorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant896d5528e13e04f0d0913514549147d831b9940520e87e7334193d81ed052405.lean/declarations/derivativemajorant--4426ccec8b549cd2f1606a16.md) | 23 | `declaration-track:4426ccec8b549cd2f1606a1690f618c6d2714b07acc5dad9143913741036fa64` |
| 4 | `theorem` | [cellKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant896d5528e13e04f0d0913514549147d831b9940520e87e7334193d81ed052405.lean/declarations/cellkernel-integrable--aa08c77ebb53acc2df8a60eb.md) | 25 | `result-track:aa08c77ebb53acc2df8a60eb4e59229367f17fba9ad1bc9c70153910d86adc44` |
| 5 | `theorem` | [cellDerivative_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant896d5528e13e04f0d0913514549147d831b9940520e87e7334193d81ed052405.lean/declarations/cellderivative-integrable--979ce69682d2b6ce77dd524c.md) | 35 | `result-track:979ce69682d2b6ce77dd524c0a79ac23037a26b602707d35c0cb092bab24bc3e` |
| 6 | `theorem` | [cellKernel_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant896d5528e13e04f0d0913514549147d831b9940520e87e7334193d81ed052405.lean/declarations/cellkernel-hasderivat--76cc472ea4d487cf0adfdda7.md) | 46 | `result-track:76cc472ea4d487cf0adfdda71e488547b77ff3656a6ec769cca6d487651214d0` |
| 7 | `theorem` | [cellDerivative_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant896d5528e13e04f0d0913514549147d831b9940520e87e7334193d81ed052405.lean/declarations/cellderivative-bound--cfed465c3698220ab608466b.md) | 56 | `result-track:cfed465c3698220ab608466bfbec3a45674d10b8f6d8f1ec5273c708d852f599` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
