# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.WithLp.Variant9f68d89a0a8a6503cd31c2d78b5eb7280318d36b1d90fa6efac298e17af79ddd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dff00cde4b8e8146004f9e955ea67f70da46b383",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variant9f68d89a0a8a6503cd31c2d78b5eb7280318d36b1d90fa6efac298e17af79ddd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variant9f68d89a0a8a6503cd31c2d78b5eb7280318d36b1d90fa6efac298e17af79ddd.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variant9f68d89a0a8a6503cd31c2d78b5eb7280318d36b1d90fa6efac298e17af79ddd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dff00cde4b8e8146004f9e955ea67f70da46b383`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variant9f68d89a0a8a6503cd31c2d78b5eb7280318d36b1d90fa6efac298e17af79ddd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variant9f68d89a0a8a6503cd31c2d78b5eb7280318d36b1d90fa6efac298e17af79ddd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Equiv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Lp.PiLp` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [differentiableWithinAt_piLp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variant9f68d89a0a8a6503cd31c2d78b5eb7280318d36b1d90fa6efac298e17af79ddd.lean/declarations/differentiablewithinat-pilp--ffa12444c6af2cb0d9a19f87.md) | 24 | `result-track:ffa12444c6af2cb0d9a19f87cfb12546fcc3e9b27cfe2057e5eb680f074a9d1b` |
| 2 | `theorem` | [differentiableAt_piLp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variant9f68d89a0a8a6503cd31c2d78b5eb7280318d36b1d90fa6efac298e17af79ddd.lean/declarations/differentiableat-pilp--1963e11066b5427ae4ca1c4d.md) | 30 | `result-track:1963e11066b5427ae4ca1c4db3d02852b91682d2612d9bd75fede6bc8d107597` |
| 3 | `theorem` | [differentiableOn_piLp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variant9f68d89a0a8a6503cd31c2d78b5eb7280318d36b1d90fa6efac298e17af79ddd.lean/declarations/differentiableon-pilp--8ffdb5d11e7eadbed0220616.md) | 35 | `result-track:8ffdb5d11e7eadbed02206164b09a4328fb2591afe8727fab1d3ec8d9e8c8743` |
| 4 | `theorem` | [differentiable_piLp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variant9f68d89a0a8a6503cd31c2d78b5eb7280318d36b1d90fa6efac298e17af79ddd.lean/declarations/differentiable-pilp--86c3cc19842226e1ca7296a0.md) | 40 | `result-track:86c3cc19842226e1ca7296a007bd6053dc830362eca9359fd880895145546769` |
| 5 | `theorem` | [hasStrictFDerivAt_piLp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variant9f68d89a0a8a6503cd31c2d78b5eb7280318d36b1d90fa6efac298e17af79ddd.lean/declarations/hasstrictfderivat-pilp--bb92a14a90b51fe4f57148eb.md) | 44 | `result-track:bb92a14a90b51fe4f57148eb5ce92f7a8abbcfa78bd7f9176b35538e6bb45555` |
| 6 | `theorem` | [hasFDerivWithinAt_piLp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variant9f68d89a0a8a6503cd31c2d78b5eb7280318d36b1d90fa6efac298e17af79ddd.lean/declarations/hasfderivwithinat-pilp--72b9efba8f4f00ae42f8b7ea.md) | 50 | `result-track:72b9efba8f4f00ae42f8b7ea135e05ab2096cda97346ea169ab2e346bd07e9fb` |
| 7 | `theorem` | [hasStrictFDerivAt_equiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variant9f68d89a0a8a6503cd31c2d78b5eb7280318d36b1d90fa6efac298e17af79ddd.lean/declarations/hasstrictfderivat-equiv--169a29d5619fc794c28fcb86.md) | 58 | `result-track:169a29d5619fc794c28fcb86913f416f005f3a2624c5cd2fa4392d8bb965abbe` |
| 8 | `theorem` | [hasStrictFDerivAt_equiv_symm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variant9f68d89a0a8a6503cd31c2d78b5eb7280318d36b1d90fa6efac298e17af79ddd.lean/declarations/hasstrictfderivat-equiv-symm--020c1e86284ac301ab14b702.md) | 63 | `result-track:020c1e86284ac301ab14b702b5cb43f76b85259c530e41f5fe03b89e3bd59ef6` |
| 9 | `theorem` | [hasStrictFDerivAt_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variant9f68d89a0a8a6503cd31c2d78b5eb7280318d36b1d90fa6efac298e17af79ddd.lean/declarations/hasstrictfderivat-apply--497e5bd486192b1573b19383.md) | 68 | `result-track:497e5bd486192b1573b19383f591fc533699b0e13c52cbcbfa1ad15f0bc4248d` |
| 10 | `theorem` | [hasFDerivAt_equiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variant9f68d89a0a8a6503cd31c2d78b5eb7280318d36b1d90fa6efac298e17af79ddd.lean/declarations/hasfderivat-equiv--46458a01c2fd72b94b270964.md) | 72 | `result-track:46458a01c2fd72b94b270964e5f796d17c39b299973a6e8de71685153f86cac6` |
| 11 | `theorem` | [hasFDerivAt_equiv_symm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variant9f68d89a0a8a6503cd31c2d78b5eb7280318d36b1d90fa6efac298e17af79ddd.lean/declarations/hasfderivat-equiv-symm--0459cb328110645e0eec555a.md) | 77 | `result-track:0459cb328110645e0eec555aa2a9548e6534e01f8bc923a0b2e0cedf71b94625` |
| 12 | `theorem` | [hasFDerivAt_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WithLp/Variant9f68d89a0a8a6503cd31c2d78b5eb7280318d36b1d90fa6efac298e17af79ddd.lean/declarations/hasfderivat-apply--1f21fb1cade9c5e9ac1994cb.md) | 82 | `result-track:1f21fb1cade9c5e9ac1994cb2ae52550f93a5dc26275492e924594a338a6f67f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
