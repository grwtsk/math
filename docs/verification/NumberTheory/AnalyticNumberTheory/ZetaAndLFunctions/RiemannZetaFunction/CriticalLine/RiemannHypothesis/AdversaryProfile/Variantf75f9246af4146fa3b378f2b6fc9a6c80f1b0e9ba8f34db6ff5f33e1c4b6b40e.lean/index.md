# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AdversaryProfile.Variantf75f9246af4146fa3b378f2b6fc9a6c80f1b0e9ba8f34db6ff5f33e1c4b6b40e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97d9095d7c02429e0a088e829af326658b45647a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AdversaryProfile/Variantf75f9246af4146fa3b378f2b6fc9a6c80f1b0e9ba8f34db6ff5f33e1c4b6b40e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AdversaryProfile/Variantf75f9246af4146fa3b378f2b6fc9a6c80f1b0e9ba8f34db6ff5f33e1c4b6b40e.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AdversaryProfile/Variantf75f9246af4146fa3b378f2b6fc9a6c80f1b0e9ba8f34db6ff5f33e1c4b6b40e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97d9095d7c02429e0a088e829af326658b45647a`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AdversaryProfile/Variantf75f9246af4146fa3b378f2b6fc9a6c80f1b0e9ba8f34db6ff5f33e1c4b6b40e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AdversaryProfile/Variantf75f9246af4146fa3b378f2b6fc9a6c80f1b0e9ba8f34db6ff5f33e1c4b6b40e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Resolution.ArithmeticAdversaryProfile` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [AdversaryWitness](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AdversaryProfile/Variantf75f9246af4146fa3b378f2b6fc9a6c80f1b0e9ba8f34db6ff5f33e1c4b6b40e.lean/declarations/adversarywitness--fe917c908bb78e39ab550453.md) | 17 | `declaration-track:fe917c908bb78e39ab550453fb4049af159f12d8f60818219c675de938122a6e` |
| 2 | `abbrev` | [ArithmeticKernelLift](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AdversaryProfile/Variantf75f9246af4146fa3b378f2b6fc9a6c80f1b0e9ba8f34db6ff5f33e1c4b6b40e.lean/declarations/arithmetickernellift--acb3f74c7b986cfd0877c821.md) | 19 | `declaration-track:acb3f74c7b986cfd0877c8211cf4536379164ccbc0a24b5a61278ed8480e6791` |
| 3 | `abbrev` | [ArithmeticAdversaryWitness](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AdversaryProfile/Variantf75f9246af4146fa3b378f2b6fc9a6c80f1b0e9ba8f34db6ff5f33e1c4b6b40e.lean/declarations/arithmeticadversarywitness--42ad33a58abb45554b7e9d46.md) | 21 | `declaration-track:42ad33a58abb45554b7e9d46a4764cc91c71934e347201948a0108c1dc4fe0a3` |
| 4 | `abbrev` | [ArithmeticAdversaryProfile](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AdversaryProfile/Variantf75f9246af4146fa3b378f2b6fc9a6c80f1b0e9ba8f34db6ff5f33e1c4b6b40e.lean/declarations/arithmeticadversaryprofile--8548d35e3f54c9b7fb40eb8a.md) | 23 | `declaration-track:8548d35e3f54c9b7fb40eb8a3696bd649cdd55ce6cd63ccf2422280deb06c88a` |
| 5 | `abbrev` | [ArithmeticKernelNormCertificate](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AdversaryProfile/Variantf75f9246af4146fa3b378f2b6fc9a6c80f1b0e9ba8f34db6ff5f33e1c4b6b40e.lean/declarations/arithmetickernelnormcertificate--7efca7f655c99037b0a9723a.md) | 25 | `declaration-track:7efca7f655c99037b0a9723a87982deebf70a1b562cc1ec9db658dca2d2ab384` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
