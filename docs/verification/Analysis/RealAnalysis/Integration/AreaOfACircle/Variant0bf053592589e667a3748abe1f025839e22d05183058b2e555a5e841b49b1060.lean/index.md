# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.AreaOfACircle.Variant0bf053592589e667a3748abe1f025839e22d05183058b2e555a5e841b49b1060

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d3519540ed4ef11b34f8a589128034402117da3",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant0bf053592589e667a3748abe1f025839e22d05183058b2e555a5e841b49b1060.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant0bf053592589e667a3748abe1f025839e22d05183058b2e555a5e841b49b1060.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant0bf053592589e667a3748abe1f025839e22d05183058b2e555a5e841b49b1060.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d3519540ed4ef11b34f8a589128034402117da3`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant0bf053592589e667a3748abe1f025839e22d05183058b2e555a5e841b49b1060.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant0bf053592589e667a3748abe1f025839e22d05183058b2e555a5e841b49b1060.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.InverseDeriv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.FundThmCalculus` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Integral` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant0bf053592589e667a3748abe1f025839e22d05183058b2e555a5e841b49b1060.lean/declarations/macro-rules--b7a6807b8bf27c63ff037dde.md) | 55 | `declaration-track:b7a6807b8bf27c63ff037dde6e94902c38facb980322135ca420017f748979cd` |
| 2 | `def` | [disc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant0bf053592589e667a3748abe1f025839e22d05183058b2e555a5e841b49b1060.lean/declarations/disc--879b078137cf2b24e438754e.md) | 69 | `declaration-track:879b078137cf2b24e438754eee22f30f182db337bd3845c3a4c04698994166a5` |
| 3 | `theorem` | [disc_eq_regionBetween](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant0bf053592589e667a3748abe1f025839e22d05183058b2e555a5e841b49b1060.lean/declarations/disc-eq-regionbetween--93f9b6e38f7dbbfb96d5abb6.md) | 77 | `result-track:93f9b6e38f7dbbfb96d5abb6df31235a8195978d10d5f5b25835bd69ad4c9010` |
| 4 | `theorem` | [measurableSet_disc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant0bf053592589e667a3748abe1f025839e22d05183058b2e555a5e841b49b1060.lean/declarations/measurableset-disc--f2ba91652d5b3a8a683a3b3e.md) | 93 | `result-track:f2ba91652d5b3a8a683a3b3edbfef7672c86eee6dfd83dab8971ba398c6c9914` |
| 5 | `theorem` | [area_disc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant0bf053592589e667a3748abe1f025839e22d05183058b2e555a5e841b49b1060.lean/declarations/area-disc--564620059cf021c6655a70f9.md) | 98 | `result-track:564620059cf021c6655a70f9eab03805285a1bd19d7cfc9a591e185966129379` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
