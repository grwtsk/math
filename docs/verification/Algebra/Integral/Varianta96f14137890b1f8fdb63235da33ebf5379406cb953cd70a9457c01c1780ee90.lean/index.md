# Verification target: GRWTSK.Algebra.Integral.Varianta96f14137890b1f8fdb63235da33ebf5379406cb953cd70a9457c01c1780ee90

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0822781dc03f4ca42802ca698db85fb72b71c11b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Integral/Varianta96f14137890b1f8fdb63235da33ebf5379406cb953cd70a9457c01c1780ee90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Integral/Varianta96f14137890b1f8fdb63235da33ebf5379406cb953cd70a9457c01c1780ee90.lean/index.md) · [Full source](../../../../mathematics/Algebra/Integral/Varianta96f14137890b1f8fdb63235da33ebf5379406cb953cd70a9457c01c1780ee90.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0822781dc03f4ca42802ca698db85fb72b71c11b`.

Source path: `GRWTSK/Algebra/Integral/Varianta96f14137890b1f8fdb63235da33ebf5379406cb953cd70a9457c01c1780ee90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Integral/Varianta96f14137890b1f8fdb63235da33ebf5379406cb953cd70a9457c01c1780ee90.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.LocalProperties.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Integral` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isIntegral_stableUnderComposition](../../../../mathematics/Algebra/Integral/Varianta96f14137890b1f8fdb63235da33ebf5379406cb953cd70a9457c01c1780ee90.lean/declarations/isintegral-stableundercomposition--a6391738163ac87b6e735af2.md) | 22 | `result-track:a6391738163ac87b6e735af2372b3e8dee0731e2c8cdef6a6f3a1a46a212d092` |
| 2 | `theorem` | [isIntegral_respectsIso](../../../../mathematics/Algebra/Integral/Varianta96f14137890b1f8fdb63235da33ebf5379406cb953cd70a9457c01c1780ee90.lean/declarations/isintegral-respectsiso--f2fcde22dd5147b29c32942e.md) | 25 | `result-track:f2fcde22dd5147b29c32942ec861a9c4500d381ab522e62282ae8763c59d0636` |
| 3 | `theorem` | [isIntegral_isStableUnderBaseChange](../../../../mathematics/Algebra/Integral/Varianta96f14137890b1f8fdb63235da33ebf5379406cb953cd70a9457c01c1780ee90.lean/declarations/isintegral-isstableunderbasechange--60810a861199dadf0f4be8b7.md) | 31 | `result-track:60810a861199dadf0f4be8b7fada7a2aa671d5033549aef21bf99047478b2fd2` |
| 4 | `theorem` | [isIntegral_ofLocalizationSpan](../../../../mathematics/Algebra/Integral/Varianta96f14137890b1f8fdb63235da33ebf5379406cb953cd70a9457c01c1780ee90.lean/declarations/isintegral-oflocalizationspan--7386db662b69b9c86b04c401.md) | 42 | `result-track:7386db662b69b9c86b04c401828600f303523fd3f4a3e9cf4f560c9c85017574` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
