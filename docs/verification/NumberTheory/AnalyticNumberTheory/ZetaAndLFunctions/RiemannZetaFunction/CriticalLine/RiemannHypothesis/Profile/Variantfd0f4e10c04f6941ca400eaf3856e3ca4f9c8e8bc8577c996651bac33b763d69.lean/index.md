# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Profile.Variantfd0f4e10c04f6941ca400eaf3856e3ca4f9c8e8bc8577c996651bac33b763d69

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a1345a9f27d89461ff8e768585f9f93789e5fae",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Profile/Variantfd0f4e10c04f6941ca400eaf3856e3ca4f9c8e8bc8577c996651bac33b763d69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Profile/Variantfd0f4e10c04f6941ca400eaf3856e3ca4f9c8e8bc8577c996651bac33b763d69.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Profile/Variantfd0f4e10c04f6941ca400eaf3856e3ca4f9c8e8bc8577c996651bac33b763d69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a1345a9f27d89461ff8e768585f9f93789e5fae`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Profile/Variantfd0f4e10c04f6941ca400eaf3856e3ca4f9c8e8bc8577c996651bac33b763d69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Profile/Variantfd0f4e10c04f6941ca400eaf3856e3ca4f9c8e8bc8577c996651bac33b763d69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.SmoothTransition` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [taperProfile_smoothTransition](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Profile/Variantfd0f4e10c04f6941ca400eaf3856e3ca4f9c8e8bc8577c996651bac33b763d69.lean/declarations/taperprofile-smoothtransition--524d80de29d6bc066fe245a8.md) | 20 | `result-track:524d80de29d6bc066fe245a844d52ff964799ac8686edcec76c874f7934e7a4a` |
| 2 | `def` | [stdProfile](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Profile/Variantfd0f4e10c04f6941ca400eaf3856e3ca4f9c8e8bc8577c996651bac33b763d69.lean/declarations/stdprofile--9d48147c907ef9199fe32588.md) | 27 | `declaration-track:9d48147c907ef9199fe32588a9a8e0566fe9fe0a6bad03b75c28621b2e1cd88a` |
| 3 | `theorem` | [taperProfile_stdProfile](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Profile/Variantfd0f4e10c04f6941ca400eaf3856e3ca4f9c8e8bc8577c996651bac33b763d69.lean/declarations/taperprofile-stdprofile--554ee85e887d084b281a6b24.md) | 29 | `result-track:554ee85e887d084b281a6b249bb143ecfcc9f8e7bb7bbe1630f1b874949f871d` |
| 4 | `theorem` | [exists_taperProfile](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Profile/Variantfd0f4e10c04f6941ca400eaf3856e3ca4f9c8e8bc8577c996651bac33b763d69.lean/declarations/exists-taperprofile--05a202ff5638f38cad421816.md) | 32 | `result-track:05a202ff5638f38cad421816daed7c5b458da843c7ed64e34c579fe13564ba8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
