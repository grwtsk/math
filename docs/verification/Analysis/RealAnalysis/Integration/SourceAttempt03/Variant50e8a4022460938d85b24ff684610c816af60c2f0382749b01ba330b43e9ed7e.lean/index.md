# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceAttempt03.Variant50e8a4022460938d85b24ff684610c816af60c2f0382749b01ba330b43e9ed7e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "293c1cb51180c5f3175f5df8cdbedc181173b9b1",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant50e8a4022460938d85b24ff684610c816af60c2f0382749b01ba330b43e9ed7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant50e8a4022460938d85b24ff684610c816af60c2f0382749b01ba330b43e9ed7e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant50e8a4022460938d85b24ff684610c816af60c2f0382749b01ba330b43e9ed7e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `293c1cb51180c5f3175f5df8cdbedc181173b9b1`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant50e8a4022460938d85b24ff684610c816af60c2f0382749b01ba330b43e9ed7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant50e8a4022460938d85b24ff684610c816af60c2f0382749b01ba330b43e9ed7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant50e8a4022460938d85b24ff684610c816af60c2f0382749b01ba330b43e9ed7e.lean/declarations/kernel--c71d6e4edba6405b0def83e9.md) | 13 | `declaration-track:c71d6e4edba6405b0def83e99eb88c9b8c27cfb920ef81124f19df818dcf4893` |
| 2 | `def` | [secondMomentIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant50e8a4022460938d85b24ff684610c816af60c2f0382749b01ba330b43e9ed7e.lean/declarations/secondmomentintegrand--a85a994fd744ab840ba9dc7f.md) | 14 | `declaration-track:a85a994fd744ab840ba9dc7fa192e4efa8b7564b0a7f9edf61d2918c8cc53e78` |
| 3 | `def` | [majorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant50e8a4022460938d85b24ff684610c816af60c2f0382749b01ba330b43e9ed7e.lean/declarations/majorant--d8a68892033f05a2ce961b31.md) | 15 | `declaration-track:d8a68892033f05a2ce961b314fb6dbf85ae236a47ea5727df7c440f9c07e0cd0` |
| 4 | `theorem` | [denominator_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant50e8a4022460938d85b24ff684610c816af60c2f0382749b01ba330b43e9ed7e.lean/declarations/denominator-pos--7f4f25d3bc24a4019c8827bc.md) | 17 | `result-track:7f4f25d3bc24a4019c8827bc95bec7279ef99b886a36e1c2a88971aadbf48107` |
| 5 | `theorem` | [kernel_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant50e8a4022460938d85b24ff684610c816af60c2f0382749b01ba330b43e9ed7e.lean/declarations/kernel-nonneg--0e4e9cd095a5d54e1f7e95fd.md) | 22 | `result-track:0e4e9cd095a5d54e1f7e95fd5d487596787fe74367d49376a4c140ba395aa314` |
| 6 | `theorem` | [reciprocal_denominator_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant50e8a4022460938d85b24ff684610c816af60c2f0382749b01ba330b43e9ed7e.lean/declarations/reciprocal-denominator-bound--4321a2c790f69d2fc61817d9.md) | 25 | `result-track:4321a2c790f69d2fc61817d972b8ef67d6a5078c1ca7b5ffbcee9875c05c11f5` |
| 7 | `theorem` | [secondMoment_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant50e8a4022460938d85b24ff684610c816af60c2f0382749b01ba330b43e9ed7e.lean/declarations/secondmoment-bound--4b72d6bf20426a43b5a2c954.md) | 37 | `result-track:4b72d6bf20426a43b5a2c954ff1bea1323f00d47b7598df472a4e334b349417a` |
| 8 | `theorem` | [polynomial_exp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant50e8a4022460938d85b24ff684610c816af60c2f0382749b01ba330b43e9ed7e.lean/declarations/polynomial-exp-integrable--af26e0f374e42e69f4f30094.md) | 49 | `result-track:af26e0f374e42e69f4f3009489f6079f03d3e0814cea27767a29a7674b18dfa4` |
| 9 | `theorem` | [polynomial_exp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant50e8a4022460938d85b24ff684610c816af60c2f0382749b01ba330b43e9ed7e.lean/declarations/polynomial-exp-integral--13b4e1f7848977627233c3fb.md) | 56 | `result-track:13b4e1f7848977627233c3fb02260bf78c914769fc6dc8ba34a460b57b114de5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
