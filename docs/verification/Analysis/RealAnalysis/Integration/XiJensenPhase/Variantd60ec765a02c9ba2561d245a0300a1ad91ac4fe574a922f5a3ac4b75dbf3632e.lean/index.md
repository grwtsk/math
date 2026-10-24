# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.XiJensenPhase.Variantd60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5b527d2ac6dfb6a8bc62ff3ec9e7a625b3b3625",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/XiJensenPhase/Variantd60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/XiJensenPhase/Variantd60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/XiJensenPhase/Variantd60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5b527d2ac6dfb6a8bc62ff3ec9e7a625b3b3625`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/XiJensenPhase/Variantd60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/XiJensenPhase/Variantd60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiSectionObstruction` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.XiJensenReconstruction` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [sum_even_odd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/XiJensenPhase/Variantd60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e.lean/declarations/sum-even-odd--1bdfc85290e888689b915656.md) | 19 | `result-track:1bdfc85290e888689b915656cc484be52ee482b95a1b84847867c3b6222e9371` |
| 2 | `theorem` | [phase_binomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/XiJensenPhase/Variantd60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e.lean/declarations/phase-binomial--c7b5a6d9a8a832da67d9b549.md) | 31 | `result-track:c7b5a6d9a8a832da67d9b5490f8ecdcc4f13a440aff40bc105cfcd12a91b338a` |
| 3 | `lemma` | [phase_argument](../../../../../../mathematics/Analysis/RealAnalysis/Integration/XiJensenPhase/Variantd60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e.lean/declarations/phase-argument--ef6a58fc8c62605cb4e0836c.md) | 50 | `result-track:ef6a58fc8c62605cb4e0836cae097724f4f94729005eb7f921e6866406696da7` |
| 4 | `theorem` | [phase_monomial_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/XiJensenPhase/Variantd60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e.lean/declarations/phase-monomial-integrable--5f9481a069be50b596d26eb7.md) | 56 | `result-track:5f9481a069be50b596d26eb788e140e68347e643553e1f350f5f569b49ead94b` |
| 5 | `theorem` | [phase_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/XiJensenPhase/Variantd60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e.lean/declarations/phase-integrable--8c97f7e1a06bafbe75f58b52.md) | 69 | `result-track:8c97f7e1a06bafbe75f58b525a23376fc8c4402a8efbdaa221ad95ee601b54f1` |
| 6 | `theorem` | [integral_phase_monomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/XiJensenPhase/Variantd60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e.lean/declarations/integral-phase-monomial--d4cb006e30315fc17d29d0cb.md) | 83 | `result-track:d4cb006e30315fc17d29d0cbacb43208c224a4a4000ddcd12b77717474827537` |
| 7 | `theorem` | [weighted_coefficient_eq_moment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/XiJensenPhase/Variantd60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e.lean/declarations/weighted-coefficient-eq-moment--0c45a5fe437c9a9d4d2c989a.md) | 98 | `result-track:0c45a5fe437c9a9d4d2c989a406c76b203f14028e80ca4ced8d61494f4188d67` |
| 8 | `lemma` | [phase_even_power](../../../../../../mathematics/Analysis/RealAnalysis/Integration/XiJensenPhase/Variantd60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e.lean/declarations/phase-even-power--932116b6787b19eca083bae5.md) | 107 | `result-track:932116b6787b19eca083bae555b51834341b38cee94a8d11529b1b33ae71c0b4` |
| 9 | `theorem` | [weighted_coefficient_phase](../../../../../../mathematics/Analysis/RealAnalysis/Integration/XiJensenPhase/Variantd60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e.lean/declarations/weighted-coefficient-phase--f3e643e02611a6629c19b24a.md) | 114 | `result-track:f3e643e02611a6629c19b24a7e17ce8fa7eb6e0a4a859e612e46e639bfe59c29` |
| 10 | `theorem` | [jensenSection_eq_phase_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/XiJensenPhase/Variantd60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e.lean/declarations/jensensection-eq-phase-integral--53eb01ce103eb04c7919afbd.md) | 123 | `result-track:53eb01ce103eb04c7919afbddd28b848059058e04dd2d0aca014b234dd228d61` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
