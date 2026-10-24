# Verification target: GRWTSK.Analysis.MeasureTheory.Trim.Variant1c7411f2787fa5be17cc0e4eb02799826c91caf191c5a7a0a9ba10885e35ed7a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "870be2b52d320ab78753f914198586a585bf8446",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Trim/Variant1c7411f2787fa5be17cc0e4eb02799826c91caf191c5a7a0a9ba10885e35ed7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant1c7411f2787fa5be17cc0e4eb02799826c91caf191c5a7a0a9ba10885e35ed7a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant1c7411f2787fa5be17cc0e4eb02799826c91caf191c5a7a0a9ba10885e35ed7a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `870be2b52d320ab78753f914198586a585bf8446`.

Source path: `GRWTSK/Analysis/MeasureTheory/Trim/Variant1c7411f2787fa5be17cc0e4eb02799826c91caf191c5a7a0a9ba10885e35ed7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Trim/Variant1c7411f2787fa5be17cc0e4eb02799826c91caf191c5a7a0a9ba10885e35ed7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.LpSeminorm.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eLpNorm'_trim](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant1c7411f2787fa5be17cc0e4eb02799826c91caf191c5a7a0a9ba10885e35ed7a.lean/declarations/elpnorm-trim--e68c592c1ba516425fb9c595.md) | 23 | `result-track:e68c592c1ba516425fb9c5953bb9617e073912c12f8b3ddcac137107eaaecfc3` |
| 2 | `theorem` | [limsup_trim](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant1c7411f2787fa5be17cc0e4eb02799826c91caf191c5a7a0a9ba10885e35ed7a.lean/declarations/limsup-trim--6ff7c85c3690497b046bb1c5.md) | 29 | `result-track:6ff7c85c3690497b046bb1c56182c28526710c7d3bd5467df1b328c9994b8029` |
| 3 | `theorem` | [essSup_trim](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant1c7411f2787fa5be17cc0e4eb02799826c91caf191c5a7a0a9ba10885e35ed7a.lean/declarations/esssup-trim--d5baf346cbaac920e2d67fde.md) | 41 | `result-track:d5baf346cbaac920e2d67fde89dd89a2c1897f55c57bfe5d440e7ce9d874fdca` |
| 4 | `theorem` | [eLpNormEssSup_trim](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant1c7411f2787fa5be17cc0e4eb02799826c91caf191c5a7a0a9ba10885e35ed7a.lean/declarations/elpnormesssup-trim--c68d9a347577171af80df8e0.md) | 46 | `result-track:c68d9a347577171af80df8e0f439b096928e3a085302da0ded30bf5d22566509` |
| 5 | `theorem` | [eLpNorm_trim](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant1c7411f2787fa5be17cc0e4eb02799826c91caf191c5a7a0a9ba10885e35ed7a.lean/declarations/elpnorm-trim--d07d29fd41029a9f1fbb6491.md) | 50 | `result-track:d07d29fd41029a9f1fbb649102c2b820ac07b54f775ead622eaf702cb5efd0a6` |
| 6 | `theorem` | [eLpNorm_trim_ae](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant1c7411f2787fa5be17cc0e4eb02799826c91caf191c5a7a0a9ba10885e35ed7a.lean/declarations/elpnorm-trim-ae--9b889985f0d1333e0241872d.md) | 58 | `result-track:9b889985f0d1333e0241872de9d8cc33c7aabd075bde932e4990725baee88987` |
| 7 | `theorem` | [memLp_of_memLp_trim](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant1c7411f2787fa5be17cc0e4eb02799826c91caf191c5a7a0a9ba10885e35ed7a.lean/declarations/memlp-of-memlp-trim--3851155d7bfe50085ca782c7.md) | 63 | `result-track:3851155d7bfe50085ca782c74560279828db5d13a26a16bc894f3339496584d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
