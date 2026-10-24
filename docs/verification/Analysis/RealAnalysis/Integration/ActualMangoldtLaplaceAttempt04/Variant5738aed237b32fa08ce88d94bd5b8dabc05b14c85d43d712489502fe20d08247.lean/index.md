# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualMangoldtLaplaceAttempt04.Variant5738aed237b32fa08ce88d94bd5b8dabc05b14c85d43d712489502fe20d08247

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47245c9b88f638ae0cdeafc5a040645d74cefc4f",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variant5738aed237b32fa08ce88d94bd5b8dabc05b14c85d43d712489502fe20d08247.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variant5738aed237b32fa08ce88d94bd5b8dabc05b14c85d43d712489502fe20d08247.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variant5738aed237b32fa08ce88d94bd5b8dabc05b14c85d43d712489502fe20d08247.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47245c9b88f638ae0cdeafc5a040645d74cefc4f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variant5738aed237b32fa08ce88d94bd5b8dabc05b14c85d43d712489502fe20d08247.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variant5738aed237b32fa08ce88d94bd5b8dabc05b14c85d43d712489502fe20d08247.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mangoldtWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variant5738aed237b32fa08ce88d94bd5b8dabc05b14c85d43d712489502fe20d08247.lean/declarations/mangoldtweight--47dbc6eae5c8f0317391208c.md) | 19 | `declaration-track:47dbc6eae5c8f0317391208c6ae64801b3ae7d064bca3519ded107424cedf565` |
| 2 | `def` | [laplaceAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variant5738aed237b32fa08ce88d94bd5b8dabc05b14c85d43d712489502fe20d08247.lean/declarations/laplaceatom--138d2661c22062606d209e8c.md) | 22 | `declaration-track:138d2661c22062606d209e8cf56fb7c402350ea90d95110bcc627a731f6d5a6d` |
| 3 | `theorem` | [onset_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variant5738aed237b32fa08ce88d94bd5b8dabc05b14c85d43d712489502fe20d08247.lean/declarations/onset-pos--b874552963c5c18193e9ffd7.md) | 26 | `result-track:b874552963c5c18193e9ffd754494c067369d2676e96f5249cf9e1d606947b53` |
| 4 | `theorem` | [weight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variant5738aed237b32fa08ce88d94bd5b8dabc05b14c85d43d712489502fe20d08247.lean/declarations/weight-nonneg--c20629670caa4c53323f04dd.md) | 29 | `result-track:c20629670caa4c53323f04dd0ea0e410474db94224a5e9a30e39a59b2e3cbe27` |
| 5 | `theorem` | [atom_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variant5738aed237b32fa08ce88d94bd5b8dabc05b14c85d43d712489502fe20d08247.lean/declarations/atom-nonneg--6d3455aeb5b622d9c90342e3.md) | 33 | `result-track:6d3455aeb5b622d9c90342e368784090940d1a4821e35fd32a3e9f2eaf982268` |
| 6 | `theorem` | [atom_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variant5738aed237b32fa08ce88d94bd5b8dabc05b14c85d43d712489502fe20d08247.lean/declarations/atom-measurable--4b60b75f1ba130538e51b3f7.md) | 36 | `result-track:4b60b75f1ba130538e51b3f769f0add57f4ade15eb883c241f4e9827d8ee349b` |
| 7 | `theorem` | [atom_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variant5738aed237b32fa08ce88d94bd5b8dabc05b14c85d43d712489502fe20d08247.lean/declarations/atom-integrable--487ab2477f95ad2727010c3b.md) | 42 | `result-track:487ab2477f95ad2727010c3bc41b559033443300499d266719da4be18d9310b0` |
| 8 | `theorem` | [atom_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variant5738aed237b32fa08ce88d94bd5b8dabc05b14c85d43d712489502fe20d08247.lean/declarations/atom-integral--c432427b4b3ed3f8c3d8f28c.md) | 49 | `result-track:c432427b4b3ed3f8c3d8f28c11dc4daaadae9ad3b21cca18363a9f031417e8ef` |
| 9 | `theorem` | [weighted_exp_eq_norm_term](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variant5738aed237b32fa08ce88d94bd5b8dabc05b14c85d43d712489502fe20d08247.lean/declarations/weighted-exp-eq-norm-term--53ebf8f69ae82d20f88577c3.md) | 57 | `result-track:53ebf8f69ae82d20f88577c32965152f86a2679818e503972e1e240128393867` |
| 10 | `theorem` | [atom_norm_integrals_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variant5738aed237b32fa08ce88d94bd5b8dabc05b14c85d43d712489502fe20d08247.lean/declarations/atom-norm-integrals-summable--26ada0a2cb9bfd79fd167b20.md) | 70 | `result-track:26ada0a2cb9bfd79fd167b200c1c0ff30dd41fc45361e412ab254858321b207f` |
| 11 | `theorem` | [onset_closed_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variant5738aed237b32fa08ce88d94bd5b8dabc05b14c85d43d712489502fe20d08247.lean/declarations/onset-closed-iff--8b66242f9a0b240c084059a1.md) | 83 | `result-track:8b66242f9a0b240c084059a15d22c473f06bfa35abd61209d72be2b4f63cc2a0` |
| 12 | `theorem` | [atom_zero_outside](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variant5738aed237b32fa08ce88d94bd5b8dabc05b14c85d43d712489502fe20d08247.lean/declarations/atom-zero-outside--0bd698bf728849ad673fce85.md) | 88 | `result-track:0bd698bf728849ad673fce85bba7c0f99132e73040fa2adb7804c8b610b0fa3a` |
| 13 | `theorem` | [atoms_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variant5738aed237b32fa08ce88d94bd5b8dabc05b14c85d43d712489502fe20d08247.lean/declarations/atoms-summable--b941b54f1f1870eec9b721fe.md) | 97 | `result-track:b941b54f1f1870eec9b721fe8d6956b8a9286149fb23e1b5111dd189dace37b7` |
| 14 | `theorem` | [atoms_tsum_eq_actual](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variant5738aed237b32fa08ce88d94bd5b8dabc05b14c85d43d712489502fe20d08247.lean/declarations/atoms-tsum-eq-actual--af8c5aef6c7af6735267a708.md) | 100 | `result-track:af8c5aef6c7af6735267a708cd3874e068f4920b6735f6e652f0adc28e163da1` |
| 15 | `theorem` | [atoms_tsum_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variant5738aed237b32fa08ce88d94bd5b8dabc05b14c85d43d712489502fe20d08247.lean/declarations/atoms-tsum-eq-indicator--2014bcd359bb4d5af5f2570d.md) | 126 | `result-track:2014bcd359bb4d5af5f2570d027c56c2ab66a607f3a00cacfa6da356d3e2e165` |
| 16 | `theorem` | [atoms_integrals_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variant5738aed237b32fa08ce88d94bd5b8dabc05b14c85d43d712489502fe20d08247.lean/declarations/atoms-integrals-summable--7aa0eeaecc3a4dca0ab9e8af.md) | 140 | `result-track:7aa0eeaecc3a4dca0ab9e8afc3dde86703a7d529c406a6a2e7fe949701b02349` |
| 17 | `theorem` | [atoms_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variant5738aed237b32fa08ce88d94bd5b8dabc05b14c85d43d712489502fe20d08247.lean/declarations/atoms-lintegral--615b7da120b6fb67dffcd369.md) | 145 | `result-track:615b7da120b6fb67dffcd36981acfdef55b5948080c018a6a8ca32423d252713` |
| 18 | `theorem` | [actual_prefix_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variant5738aed237b32fa08ce88d94bd5b8dabc05b14c85d43d712489502fe20d08247.lean/declarations/actual-prefix-laplace-integrable--687a32c14360d976d7e9dbbb.md) | 163 | `result-track:687a32c14360d976d7e9dbbb2c460f632362204bc795901cc832e8ff9213a235` |
| 19 | `theorem` | [actual_prefix_laplace_eq_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variant5738aed237b32fa08ce88d94bd5b8dabc05b14c85d43d712489502fe20d08247.lean/declarations/actual-prefix-laplace-eq-tsum--0f39fe3993ba632ce2f741f1.md) | 173 | `result-track:0f39fe3993ba632ce2f741f1d81b02baa236b14c0a2c602b6e327ac1ed813fcf` |
| 20 | `theorem` | [weighted_exp_eq_term](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variant5738aed237b32fa08ce88d94bd5b8dabc05b14c85d43d712489502fe20d08247.lean/declarations/weighted-exp-eq-term--b708e56ecfdfbbcd0c124b01.md) | 182 | `result-track:b708e56ecfdfbbcd0c124b0119b84eb9900643097f3b9a3ba3a188d5d3a53cf5` |
| 21 | `theorem` | [actual_prefix_laplace_eq_LSeries](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variant5738aed237b32fa08ce88d94bd5b8dabc05b14c85d43d712489502fe20d08247.lean/declarations/actual-prefix-laplace-eq-lseries--14f26d5105412b04540206df.md) | 194 | `result-track:14f26d5105412b04540206df0152e027c134ecc22d4f4ffced954d661a80d104` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
