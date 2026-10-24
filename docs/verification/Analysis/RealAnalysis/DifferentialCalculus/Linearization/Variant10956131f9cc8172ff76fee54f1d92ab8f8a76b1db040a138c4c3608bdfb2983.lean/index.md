# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Linearization.Variant10956131f9cc8172ff76fee54f1d92ab8f8a76b1db040a138c4c3608bdfb2983

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61cc3d3f8916e29d6173fca90db444e01da21d20",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant10956131f9cc8172ff76fee54f1d92ab8f8a76b1db040a138c4c3608bdfb2983.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant10956131f9cc8172ff76fee54f1d92ab8f8a76b1db040a138c4c3608bdfb2983.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant10956131f9cc8172ff76fee54f1d92ab8f8a76b1db040a138c4c3608bdfb2983.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61cc3d3f8916e29d6173fca90db444e01da21d20`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant10956131f9cc8172ff76fee54f1d92ab8f8a76b1db040a138c4c3608bdfb2983.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant10956131f9cc8172ff76fee54f1d92ab8f8a76b1db040a138c4c3608bdfb2983.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Operational.Stability` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LinearizationCertificate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant10956131f9cc8172ff76fee54f1d92ab8f8a76b1db040a138c4c3608bdfb2983.lean/declarations/linearizationcertificate--98103e3b724b572b97639c26.md) | 19 | `declaration-track:98103e3b724b572b97639c26de68a6f1ada0c99109a7b1a99bc8b38bf276693b` |
| 2 | `structure` | [LinearizationIntertwining](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant10956131f9cc8172ff76fee54f1d92ab8f8a76b1db040a138c4c3608bdfb2983.lean/declarations/linearizationintertwining--8fce503a79be712a22b1a864.md) | 47 | `declaration-track:8fce503a79be712a22b1a864ab0edf9b3032ed0517b7a90833161157d5c48214` |
| 3 | `theorem` | [apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant10956131f9cc8172ff76fee54f1d92ab8f8a76b1db040a138c4c3608bdfb2983.lean/declarations/apply--0040c528307d53b379ad45ac.md) | 75 | `result-track:0040c528307d53b379ad45acd0a78e2cb0bbbde0e52e6c9bb8591b76cfe01473` |
| 4 | `structure` | [FiniteLyapunovOperatorCertificate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant10956131f9cc8172ff76fee54f1d92ab8f8a76b1db040a138c4c3608bdfb2983.lean/declarations/finitelyapunovoperatorcertificate--4bd86f6fce7c00a3578b7497.md) | 93 | `declaration-track:4bd86f6fce7c00a3578b749738b057fe8a3ae1bc2553b957265068793a6ee0ca` |
| 5 | `theorem` | [decreased_energy_with_margin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant10956131f9cc8172ff76fee54f1d92ab8f8a76b1db040a138c4c3608bdfb2983.lean/declarations/decreased-energy-with-margin--cca038070a76dfb6b56aabdf.md) | 125 | `result-track:cca038070a76dfb6b56aabdf9fc765aa847c771011f375aa1cf35b646417be48` |
| 6 | `structure` | [VerifiedNumericalChecker](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant10956131f9cc8172ff76fee54f1d92ab8f8a76b1db040a138c4c3608bdfb2983.lean/declarations/verifiednumericalchecker--6ef926ae1259156803d06fc2.md) | 147 | `declaration-track:6ef926ae1259156803d06fc2fadde9c326e18bbdc0e9d9aae0b23f5a780744da` |
| 7 | `theorem` | [proves_after_acceptance](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant10956131f9cc8172ff76fee54f1d92ab8f8a76b1db040a138c4c3608bdfb2983.lean/declarations/proves-after-acceptance--3ad77d7137b84c29038e84b2.md) | 155 | `result-track:3ad77d7137b84c29038e84b2d208e29622a33e32ef8eaf29051a1beb9447abf7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
