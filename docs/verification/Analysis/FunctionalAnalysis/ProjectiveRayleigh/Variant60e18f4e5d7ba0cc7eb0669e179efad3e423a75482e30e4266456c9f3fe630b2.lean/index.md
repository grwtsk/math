# Verification target: GRWTSK.Analysis.FunctionalAnalysis.ProjectiveRayleigh.Variant60e18f4e5d7ba0cc7eb0669e179efad3e423a75482e30e4266456c9f3fe630b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "651a664aafbfbec4e240080b81a232f6ea036323",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variant60e18f4e5d7ba0cc7eb0669e179efad3e423a75482e30e4266456c9f3fe630b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variant60e18f4e5d7ba0cc7eb0669e179efad3e423a75482e30e4266456c9f3fe630b2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variant60e18f4e5d7ba0cc7eb0669e179efad3e423a75482e30e4266456c9f3fe630b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `651a664aafbfbec4e240080b81a232f6ea036323`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variant60e18f4e5d7ba0cc7eb0669e179efad3e423a75482e30e4266456c9f3fe630b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variant60e18f4e5d7ba0cc7eb0669e179efad3e423a75482e30e4266456c9f3fe630b2.lean.json)

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
| 1 | `def` | [rayleighQuotientBase](../../../../../mathematics/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variant60e18f4e5d7ba0cc7eb0669e179efad3e423a75482e30e4266456c9f3fe630b2.lean/declarations/rayleighquotientbase--308270c277ad06093fb9a265.md) | 58 | `declaration-track:308270c277ad06093fb9a265262a9472e81d07a0c07125931dc967612bfe7e7a` |
| 2 | `theorem` | [rayleighQuotientBase_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variant60e18f4e5d7ba0cc7eb0669e179efad3e423a75482e30e4266456c9f3fe630b2.lean/declarations/rayleighquotientbase-eq--6c4952c6d96f2ad666427796.md) | 65 | `result-track:6c4952c6d96f2ad66642779621760e38043addc274672e755e200819cc248d1c` |
| 3 | `theorem` | [rayleighQuotientBase_eq_mathlib](../../../../../mathematics/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variant60e18f4e5d7ba0cc7eb0669e179efad3e423a75482e30e4266456c9f3fe630b2.lean/declarations/rayleighquotientbase-eq-mathlib--ae0646d6bbde7ba635f8feb5.md) | 71 | `result-track:ae0646d6bbde7ba635f8feb5cbd40b0a7a3d5af4552dde75871fdee784c26a37` |
| 4 | `theorem` | [rayleighQuotientBase_smul](../../../../../mathematics/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variant60e18f4e5d7ba0cc7eb0669e179efad3e423a75482e30e4266456c9f3fe630b2.lean/declarations/rayleighquotientbase-smul--f2f1fc7ba3b30665a038fbfd.md) | 78 | `result-track:f2f1fc7ba3b30665a038fbfd62c407e4845b6047764b3978bdefbb2900f11213` |
| 5 | `def` | [projectiveRayleighQuotient](../../../../../mathematics/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variant60e18f4e5d7ba0cc7eb0669e179efad3e423a75482e30e4266456c9f3fe630b2.lean/declarations/projectiverayleighquotient--128b76ef37df0c2af65f7006.md) | 90 | `declaration-track:128b76ef37df0c2af65f7006e91e20f193e8611bbda74501b7892f8c4b04333b` |
| 6 | `theorem` | [projectiveRayleighQuotient_mk](../../../../../mathematics/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variant60e18f4e5d7ba0cc7eb0669e179efad3e423a75482e30e4266456c9f3fe630b2.lean/declarations/projectiverayleighquotient-mk--b099dec36f0819129071b5d7.md) | 105 | `result-track:b099dec36f0819129071b5d7193fe2191577fd7d7445c1ae0f81ef1bbaf4abd0` |
| 7 | `theorem` | [projectiveRayleighQuotient_eq_of_mk_eq_mk](../../../../../mathematics/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variant60e18f4e5d7ba0cc7eb0669e179efad3e423a75482e30e4266456c9f3fe630b2.lean/declarations/projectiverayleighquotient-eq-of-mk-eq-mk--f0c7b5a3cf1086b903aaf383.md) | 112 | `result-track:f0c7b5a3cf1086b903aaf3836a41c4a0a2d419a8297b92e825fb3553a99afd55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
