# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DimOne.Variant12f64db03e2416fce670f33c51e74182cd406ae29acce056304a0a547a79c47f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e2e34c6ad04894a4b181341e79f000f40a6a751",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DimOne/Variant12f64db03e2416fce670f33c51e74182cd406ae29acce056304a0a547a79c47f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DimOne/Variant12f64db03e2416fce670f33c51e74182cd406ae29acce056304a0a547a79c47f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DimOne/Variant12f64db03e2416fce670f33c51e74182cd406ae29acce056304a0a547a79c47f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e2e34c6ad04894a4b181341e79f000f40a6a751`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DimOne/Variant12f64db03e2416fce670f33c51e74182cd406ae29acce056304a0a547a79c47f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/DimOne/Variant12f64db03e2416fce670f33c51e74182cd406ae29acce056304a0a547a79c47f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.TangentCone.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Uniform` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tangentConeAt_eq_univ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DimOne/Variant12f64db03e2416fce670f33c51e74182cd406ae29acce056304a0a547a79c47f.lean/declarations/tangentconeat-eq-univ--f0e2a23f99bfc5eb7b04eb14.md) | 36 | `result-track:f0e2a23f99bfc5eb7b04eb14694515f9349040b2d073259ddfac7f9c1713d591` |
| 2 | `theorem` | [uniqueDiffWithinAt_iff_accPt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DimOne/Variant12f64db03e2416fce670f33c51e74182cd406ae29acce056304a0a547a79c47f.lean/declarations/uniquediffwithinat-iff-accpt--a0b43c25175934f0f5f3a1d9.md) | 49 | `result-track:a0b43c25175934f0f5f3a1d9d474e5247cb8769700c933e3245d795fbc43686b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
