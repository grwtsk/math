# Verification target: GRWTSK.Analysis.Feature.Variantc86cdee603defee5b56b5cf7932a853ed9b4da773a6c22d737dd5c5282a2e855

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1393123bdbfbd949d7c7058347427478b595a68",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Feature/Variantc86cdee603defee5b56b5cf7932a853ed9b4da773a6c22d737dd5c5282a2e855.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Feature/Variantc86cdee603defee5b56b5cf7932a853ed9b4da773a6c22d737dd5c5282a2e855.lean/index.md) · [Full source](../../../../mathematics/Analysis/Feature/Variantc86cdee603defee5b56b5cf7932a853ed9b4da773a6c22d737dd5c5282a2e855.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1393123bdbfbd949d7c7058347427478b595a68`.

Source path: `GRWTSK/Analysis/Feature/Variantc86cdee603defee5b56b5cf7932a853ed9b4da773a6c22d737dd5c5282a2e855.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Feature/Variantc86cdee603defee5b56b5cf7932a853ed9b4da773a6c22d737dd5c5282a2e855.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MathDiscovery.Kernel.Core` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [scalarFeatureKernel](../../../../mathematics/Analysis/Feature/Variantc86cdee603defee5b56b5cf7932a853ed9b4da773a6c22d737dd5c5282a2e855.lean/declarations/scalarfeaturekernel--08b120ee7fca2a4c57e2cd10.md) | 24 | `declaration-track:08b120ee7fca2a4c57e2cd108650bd28df65b830f9f8332cb5470116382997bd` |
| 2 | `theorem` | [scalarFeatureKernel_apply](../../../../mathematics/Analysis/Feature/Variantc86cdee603defee5b56b5cf7932a853ed9b4da773a6c22d737dd5c5282a2e855.lean/declarations/scalarfeaturekernel-apply--248d033fcaceeb76b034da04.md) | 59 | `result-track:248d033fcaceeb76b034da0412385dd8aa9dfe534ec69ff65631f0e6ecb83c0c` |
| 3 | `def` | [finiteFeatureKernel](../../../../mathematics/Analysis/Feature/Variantc86cdee603defee5b56b5cf7932a853ed9b4da773a6c22d737dd5c5282a2e855.lean/declarations/finitefeaturekernel--cc1de78cb16818faed460473.md) | 65 | `declaration-track:cc1de78cb16818faed4604739429efa451192509212b68b48463371d529579ef` |
| 4 | `theorem` | [finiteFeatureKernel_apply](../../../../mathematics/Analysis/Feature/Variantc86cdee603defee5b56b5cf7932a853ed9b4da773a6c22d737dd5c5282a2e855.lean/declarations/finitefeaturekernel-apply--4cc829e7e4cc42707a7c3c66.md) | 75 | `result-track:4cc829e7e4cc42707a7c3c66bcc1410979c5ea2d00c1da857b9779fd5f398d1f` |
| 5 | `structure` | [FiniteFeatureFamily](../../../../mathematics/Analysis/Feature/Variantc86cdee603defee5b56b5cf7932a853ed9b4da773a6c22d737dd5c5282a2e855.lean/declarations/finitefeaturefamily--0302368aa6ab1ce0b1490143.md) | 87 | `declaration-track:0302368aa6ab1ce0b1490143bca7a3cb818a580ec123303f487e592addba1acf` |
| 6 | `def` | [FiniteFeatureFamily.kernel](../../../../mathematics/Analysis/Feature/Variantc86cdee603defee5b56b5cf7932a853ed9b4da773a6c22d737dd5c5282a2e855.lean/declarations/finitefeaturefamily-kernel--53f109d26c5d64fc7e302515.md) | 92 | `declaration-track:53f109d26c5d64fc7e302515c82467941e052fb242800aa548091047e374bf8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
