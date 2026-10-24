# Verification target: GRWTSK.Analysis.MeasureTheory.LpOrder.Variant18f299d952ff31adde4f915a5a2f8acc4443e25f3c28971daa49a81cc4dd79dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d868202b6c8c88ddacb18439f6f043f59b30bcc4",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/LpOrder/Variant18f299d952ff31adde4f915a5a2f8acc4443e25f3c28971daa49a81cc4dd79dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant18f299d952ff31adde4f915a5a2f8acc4443e25f3c28971daa49a81cc4dd79dd.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant18f299d952ff31adde4f915a5a2f8acc4443e25f3c28971daa49a81cc4dd79dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d868202b6c8c88ddacb18439f6f043f59b30bcc4`.

Source path: `GRWTSK/Analysis/MeasureTheory/LpOrder/Variant18f299d952ff31adde4f915a5a2f8acc4443e25f3c28971daa49a81cc4dd79dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/LpOrder/Variant18f299d952ff31adde4f915a5a2f8acc4443e25f3c28971daa49a81cc4dd79dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coeFn_le](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant18f299d952ff31adde4f915a5a2f8acc4443e25f3c28971daa49a81cc4dd79dd.lean/declarations/coefn-le--3be286f9e17c73dbb8dd3a18.md) | 53 | `result-track:3be286f9e17c73dbb8dd3a1848aaf85c523d6030fd3d26cda3cde02192ab5219` |
| 2 | `theorem` | [coeFn_nonneg](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant18f299d952ff31adde4f915a5a2f8acc4443e25f3c28971daa49a81cc4dd79dd.lean/declarations/coefn-nonneg--6b76659b18faf7796b17e1e5.md) | 56 | `result-track:6b76659b18faf7796b17e1e5d1fca3a8b9312c0f10015d0c7dc14e293f199b62` |
| 3 | `instance` | [instAddLeftMono](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant18f299d952ff31adde4f915a5a2f8acc4443e25f3c28971daa49a81cc4dd79dd.lean/declarations/instaddleftmono--1aab1a641db1d237c036122e.md) | 62 | `declaration-track:1aab1a641db1d237c036122e86f92ea9f02acdcb317fcfc45f8635e36bf01618` |
| 4 | `instance` | [instIsOrderedAddMonoid](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant18f299d952ff31adde4f915a5a2f8acc4443e25f3c28971daa49a81cc4dd79dd.lean/declarations/instisorderedaddmonoid--afb419d348343ec0cff4c8d0.md) | 69 | `declaration-track:afb419d348343ec0cff4c8d0cbc5e3472075b072b1a647b99c86a87a8fd1142a` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant18f299d952ff31adde4f915a5a2f8acc4443e25f3c28971daa49a81cc4dd79dd.lean/declarations/instance--cab76ae96c51fd8fedcbe2db.md) | 72 | `declaration-track:cab76ae96c51fd8fedcbe2db72b4bf01a85441cc6f198474bb0a10c261dd534d` |
| 6 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.CoeFnLe.Variant59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95.MeasureTheory.MemLp.sup](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant18f299d952ff31adde4f915a5a2f8acc4443e25f3c28971daa49a81cc4dd79dd.lean/declarations/root-grwtsk-analysis-measuretheory-coefnle-variant59fb30c9456ed1e3ccffa7--06d661216b875a5ebe60ba65.md) | 86 | `result-track:06d661216b875a5ebe60ba652dd132e1764a768d32ad42d963d5264071e23b86` |
| 7 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.CoeFnLe.Variant59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95.MeasureTheory.MemLp.inf](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant18f299d952ff31adde4f915a5a2f8acc4443e25f3c28971daa49a81cc4dd79dd.lean/declarations/root-grwtsk-analysis-measuretheory-coefnle-variant59fb30c9456ed1e3ccffa7--e659c7c40d428d4b166f09f6.md) | 91 | `result-track:e659c7c40d428d4b166f09f62b57d55293adbbabf630bf1d0ca7be762c425c67` |
| 8 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.CoeFnLe.Variant59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95.MeasureTheory.MemLp.abs](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant18f299d952ff31adde4f915a5a2f8acc4443e25f3c28971daa49a81cc4dd79dd.lean/declarations/root-grwtsk-analysis-measuretheory-coefnle-variant59fb30c9456ed1e3ccffa7--2492419ccd3a8948f06e5951.md) | 96 | `result-track:2492419ccd3a8948f06e59516791fda110222824c194e10b8b20bfbe90f7c78e` |
| 9 | `instance` | [instLattice](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant18f299d952ff31adde4f915a5a2f8acc4443e25f3c28971daa49a81cc4dd79dd.lean/declarations/instlattice--e9ac10865b13cc673336afd7.md) | 99 | `declaration-track:e9ac10865b13cc673336afd792c5c900f42900f95b8859cbce6daff6841b5c42` |
| 10 | `theorem` | [coeFn_sup](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant18f299d952ff31adde4f915a5a2f8acc4443e25f3c28971daa49a81cc4dd79dd.lean/declarations/coefn-sup--80cd125fb572b500cb431ed2.md) | 108 | `result-track:80cd125fb572b500cb431ed25542a0512637cf765ec6db70813caa0a7d5b8b1c` |
| 11 | `theorem` | [coeFn_inf](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant18f299d952ff31adde4f915a5a2f8acc4443e25f3c28971daa49a81cc4dd79dd.lean/declarations/coefn-inf--ce38e7228a93f06104050053.md) | 111 | `result-track:ce38e7228a93f061040500535451f4d7082f4a31d1e24779f39a433c4ca4efad` |
| 12 | `theorem` | [coeFn_abs](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant18f299d952ff31adde4f915a5a2f8acc4443e25f3c28971daa49a81cc4dd79dd.lean/declarations/coefn-abs--b6d69f173e54a5c74b002488.md) | 114 | `result-track:b6d69f173e54a5c74b00248814ade8e7c46694385fc494e91e69535bda0f09c1` |
| 13 | `instance` | [instHasSolidNorm](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant18f299d952ff31adde4f915a5a2f8acc4443e25f3c28971daa49a81cc4dd79dd.lean/declarations/insthassolidnorm--0a4258d28a738e6d960dd02d.md) | 117 | `declaration-track:0a4258d28a738e6d960dd02d809bcc874a9beeba95152d2bc40b3fc41a63c845` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
