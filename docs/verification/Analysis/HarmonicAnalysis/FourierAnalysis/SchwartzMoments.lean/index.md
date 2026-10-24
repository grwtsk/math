# Verification target: GRWTSK.Analysis.Fourier.SchwartzMoments

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ffe55e588dc155475c1d6afa2342ff065fb7803",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/SchwartzMoments.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SchwartzMoments.lean/index.md) · [Full source](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SchwartzMoments.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ffe55e588dc155475c1d6afa2342ff065fb7803`.

Source path: `GRWTSK/Analysis/Fourier/SchwartzMoments.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/SchwartzMoments.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Distribution.SchwartzSpace.Fourier` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fourier_coefficient_moment](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SchwartzMoments.lean/declarations/fourier-coefficient-moment--704833eb0839194816fe647e.md) | 31 | `result-track:704833eb0839194816fe647e3c614356cac31ac114519aa2b51d942ca3086b88` |
| 2 | `theorem` | [fourier_seminorm_from_derivative_integrals](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SchwartzMoments.lean/declarations/fourier-seminorm-from-derivative-integrals--c741f21a7b6faee050c6e352.md) | 39 | `result-track:c741f21a7b6faee050c6e35261e35fa1927b0c3aca9e673cfefe84f838b0eac5` |
| 3 | `theorem` | [uniform_fourier_seminorm_transfer](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SchwartzMoments.lean/declarations/uniform-fourier-seminorm-transfer--71e8d7010186912c5c336ee6.md) | 60 | `result-track:71e8d7010186912c5c336ee6c6936d2f34f4e69e95c9015b656d854fe6158cca` |
| 4 | `theorem` | [uniform_fourier_coefficient_moment](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SchwartzMoments.lean/declarations/uniform-fourier-coefficient-moment--b09cc3075ee9d6124821010b.md) | 119 | `result-track:b09cc3075ee9d6124821010ba88c89847c7d2b2d002f3b9f517b948b435c0a45` |
| 5 | `theorem` | [fourier_one_plus_moment_integrable](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SchwartzMoments.lean/declarations/fourier-one-plus-moment-integrable--bd114f1dfd87a3fea0b88278.md) | 159 | `result-track:bd114f1dfd87a3fea0b88278e1f46bff8b5d895a7ebca01a357786da80465997` |
| 6 | `def` | [coefficientMomentBound](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SchwartzMoments.lean/declarations/coefficientmomentbound--5593e584d139d725b89ade34.md) | 179 | `declaration-track:5593e584d139d725b89ade340b6c2f55254104fa118b6d4bb56d168d5961be1e` |
| 7 | `theorem` | [coefficientMomentBound_nonneg](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SchwartzMoments.lean/declarations/coefficientmomentbound-nonneg--d06285e0cb836dfa04df1142.md) | 184 | `result-track:d06285e0cb836dfa04df1142879ca2b9d837d0a4f0b56fce14eaa41bb0d4e3a4` |
| 8 | `theorem` | [uniform_fourier_one_plus_moment](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SchwartzMoments.lean/declarations/uniform-fourier-one-plus-moment--46dfc0ae54ea70b88bbd5f6d.md) | 189 | `result-track:46dfc0ae54ea70b88bbd5f6d46fa32ba728efbf1ab3debbf49298cfb78c2472d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
