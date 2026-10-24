# Verification target: GRWTSK.Analysis.MeasureTheory.RCLike.Variant139daf02efb242a3f0276f775fa14a728eb4a7d0048b16fecb3655c767e21ba7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "901f414e3c78c43a5147d66e4c0ee198b7fc14dc",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/RCLike/Variant139daf02efb242a3f0276f775fa14a728eb4a7d0048b16fecb3655c767e21ba7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/RCLike/Variant139daf02efb242a3f0276f775fa14a728eb4a7d0048b16fecb3655c767e21ba7.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/RCLike/Variant139daf02efb242a3f0276f775fa14a728eb4a7d0048b16fecb3655c767e21ba7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `901f414e3c78c43a5147d66e4c0ee198b7fc14dc`.

Source path: `GRWTSK/Analysis/MeasureTheory/RCLike/Variant139daf02efb242a3f0276f775fa14a728eb4a7d0048b16fecb3655c767e21ba7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/RCLike/Variant139daf02efb242a3f0276f775fa14a728eb4a7d0048b16fecb3655c767e21ba7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.RCLike.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Complex` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurable_re](../../../../../mathematics/Analysis/MeasureTheory/RCLike/Variant139daf02efb242a3f0276f775fa14a728eb4a7d0048b16fecb3655c767e21ba7.lean/declarations/measurable-re--095170b90ca3192146871210.md) | 24 | `result-track:095170b90ca319214687121002342e5ba3ab4747ad7c06d03a6eebe82a62b6dd` |
| 2 | `theorem` | [measurable_im](../../../../../mathematics/Analysis/MeasureTheory/RCLike/Variant139daf02efb242a3f0276f775fa14a728eb4a7d0048b16fecb3655c767e21ba7.lean/declarations/measurable-im--9611f75ac203e6f77e631af5.md) | 28 | `result-track:9611f75ac203e6f77e631af52dff418bc8bb5b5ecda4577ff35ef6d9d1ced6c7` |
| 3 | `theorem` | [Measurable.re](../../../../../mathematics/Analysis/MeasureTheory/RCLike/Variant139daf02efb242a3f0276f775fa14a728eb4a7d0048b16fecb3655c767e21ba7.lean/declarations/measurable-re--fda714a608103b2d81d52700.md) | 39 | `result-track:fda714a608103b2d81d52700a2b15a21989b94cd3afcc3f42be9266bfea2bf7f` |
| 4 | `theorem` | [AEMeasurable.re](../../../../../mathematics/Analysis/MeasureTheory/RCLike/Variant139daf02efb242a3f0276f775fa14a728eb4a7d0048b16fecb3655c767e21ba7.lean/declarations/aemeasurable-re--b16e4eac2a0aa17eb405fba9.md) | 43 | `result-track:b16e4eac2a0aa17eb405fba9c6790bad046ea962bdbca3530b8b2b240c651291` |
| 5 | `theorem` | [Measurable.im](../../../../../mathematics/Analysis/MeasureTheory/RCLike/Variant139daf02efb242a3f0276f775fa14a728eb4a7d0048b16fecb3655c767e21ba7.lean/declarations/measurable-im--0d133313910f7369315040f5.md) | 47 | `result-track:0d133313910f7369315040f502c7dcc774582ccf647dca5bed041d379df4fdb6` |
| 6 | `theorem` | [AEMeasurable.im](../../../../../mathematics/Analysis/MeasureTheory/RCLike/Variant139daf02efb242a3f0276f775fa14a728eb4a7d0048b16fecb3655c767e21ba7.lean/declarations/aemeasurable-im--7a3f359b4b16e5abdcba5751.md) | 51 | `result-track:7a3f359b4b16e5abdcba5751d936713c3d8c292ca163f45dd8120f62252cc10b` |
| 7 | `theorem` | [RCLike.measurable_ofReal](../../../../../mathematics/Analysis/MeasureTheory/RCLike/Variant139daf02efb242a3f0276f775fa14a728eb4a7d0048b16fecb3655c767e21ba7.lean/declarations/rclike-measurable-ofreal--8c0c5b08d6319e25142ce2b3.md) | 61 | `result-track:8c0c5b08d6319e25142ce2b3c2ccf7ffd829ac4ffb2659d3637c156db978667c` |
| 8 | `theorem` | [measurable_of_re_im](../../../../../mathematics/Analysis/MeasureTheory/RCLike/Variant139daf02efb242a3f0276f775fa14a728eb4a7d0048b16fecb3655c767e21ba7.lean/declarations/measurable-of-re-im--f7118ac6bd675e23e11b17cc.md) | 64 | `result-track:f7118ac6bd675e23e11b17cc4213d21028b1d94f84196ffcbc7a7c786b528371` |
| 9 | `theorem` | [aemeasurable_of_re_im](../../../../../mathematics/Analysis/MeasureTheory/RCLike/Variant139daf02efb242a3f0276f775fa14a728eb4a7d0048b16fecb3655c767e21ba7.lean/declarations/aemeasurable-of-re-im--68f936cd5ceaebe2ea74bce4.md) | 70 | `result-track:68f936cd5ceaebe2ea74bce4f44f0508c61c0e58cef305d19e7427f03e4d348e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
