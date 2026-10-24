# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceRecenteredMangoldtPairing.Variant517b9c16e624667fa65d011ab9757951c72482c7c7dc316a2b3eb4181bbd56fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f73912ac574899b1b287a875f3712748c02ee1f4",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variant517b9c16e624667fa65d011ab9757951c72482c7c7dc316a2b3eb4181bbd56fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variant517b9c16e624667fa65d011ab9757951c72482c7c7dc316a2b3eb4181bbd56fb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variant517b9c16e624667fa65d011ab9757951c72482c7c7dc316a2b3eb4181bbd56fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f73912ac574899b1b287a875f3712748c02ee1f4`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variant517b9c16e624667fa65d011ab9757951c72482c7c7dc316a2b3eb4181bbd56fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variant517b9c16e624667fa65d011ab9757951c72482c7c7dc316a2b3eb4181bbd56fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualShiftedXiDerivativeAdapter` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredLogPairing](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variant517b9c16e624667fa65d011ab9757951c72482c7c7dc316a2b3eb4181bbd56fb.lean/declarations/centeredlogpairing--a22297c6309162d4997211e4.md) | 32 | `declaration-track:a22297c6309162d4997211e44270803a983ebefecaae5304ec0c2e0ba068ba99` |
| 2 | `def` | [compensatedLogPairing](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variant517b9c16e624667fa65d011ab9757951c72482c7c7dc316a2b3eb4181bbd56fb.lean/declarations/compensatedlogpairing--629908d31256dc8b5ce19fdd.md) | 37 | `declaration-track:629908d31256dc8b5ce19fddfd9e05269e0a7ea1f59453b62f5e6afff5376597` |
| 3 | `theorem` | [actual_derivative_mass](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variant517b9c16e624667fa65d011ab9757951c72482c7c7dc316a2b3eb4181bbd56fb.lean/declarations/actual-derivative-mass--61c06ec836a8ec645fbbbea7.md) | 42 | `result-track:61c06ec836a8ec645fbbbea78dff556cfecb7fe4be5f92c25800929060c7b6ed` |
| 4 | `theorem` | [centeredLogPairing_eq_signedCesaroPairing](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variant517b9c16e624667fa65d011ab9757951c72482c7c7dc316a2b3eb4181bbd56fb.lean/declarations/centeredlogpairing-eq-signedcesaropairing--b694052c44ab5728b61ef4c5.md) | 54 | `result-track:b694052c44ab5728b61ef4c577cd0377c3d6b50990acc3c3ee636db3120ffce4` |
| 5 | `theorem` | [centeredLogPairing_eq_compensated](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variant517b9c16e624667fa65d011ab9757951c72482c7c7dc316a2b3eb4181bbd56fb.lean/declarations/centeredlogpairing-eq-compensated--b56d4baf23eb1c61f3a3b8f4.md) | 75 | `result-track:b56d4baf23eb1c61f3a3b8f44a1a02f6de36ae5bed13eb17390cc61cd24baa62` |
| 6 | `def` | [boundaryBudget](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variant517b9c16e624667fa65d011ab9757951c72482c7c7dc316a2b3eb4181bbd56fb.lean/declarations/boundarybudget--f8493537544c4a16ffea24eb.md) | 95 | `declaration-track:f8493537544c4a16ffea24eb21f4c9373f922d40f54128b8b59cb5c36c12454f` |
| 7 | `theorem` | [actual_centered_boundary_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variant517b9c16e624667fa65d011ab9757951c72482c7c7dc316a2b3eb4181bbd56fb.lean/declarations/actual-centered-boundary-abs-le--414a8de5d2437a6903e3c6a9.md) | 99 | `result-track:414a8de5d2437a6903e3c6a90104f166d87744621d36692480e4777afa367b1e` |
| 8 | `theorem` | [signed_pairing_lower_of_compensated](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variant517b9c16e624667fa65d011ab9757951c72482c7c7dc316a2b3eb4181bbd56fb.lean/declarations/signed-pairing-lower-of-compensated--adb936c1b4725bf8e2c38560.md) | 125 | `result-track:adb936c1b4725bf8e2c385602f8e913036f5aba1da237d662d40f66125118d70` |
| 9 | `theorem` | [estimate_of_compensated_tail](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variant517b9c16e624667fa65d011ab9757951c72482c7c7dc316a2b3eb4181bbd56fb.lean/declarations/estimate-of-compensated-tail--51cf257f1cc2c0e1bdde475e.md) | 134 | `result-track:51cf257f1cc2c0e1bdde475ea692fd4f9f3bdcaffeaec1e4709bc67cf79d3dab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
