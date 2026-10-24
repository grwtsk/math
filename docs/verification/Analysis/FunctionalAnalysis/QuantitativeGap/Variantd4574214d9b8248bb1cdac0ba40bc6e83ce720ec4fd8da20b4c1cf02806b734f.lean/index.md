# Verification target: GRWTSK.Analysis.FunctionalAnalysis.QuantitativeGap.Variantd4574214d9b8248bb1cdac0ba40bc6e83ce720ec4fd8da20b4c1cf02806b734f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97867e58b4153ead19a3f1daf3b3f724ba87f6b9",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/QuantitativeGap/Variantd4574214d9b8248bb1cdac0ba40bc6e83ce720ec4fd8da20b4c1cf02806b734f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/QuantitativeGap/Variantd4574214d9b8248bb1cdac0ba40bc6e83ce720ec4fd8da20b4c1cf02806b734f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/QuantitativeGap/Variantd4574214d9b8248bb1cdac0ba40bc6e83ce720ec4fd8da20b4c1cf02806b734f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97867e58b4153ead19a3f1daf3b3f724ba87f6b9`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/QuantitativeGap/Variantd4574214d9b8248bb1cdac0ba40bc6e83ce720ec4fd8da20b4c1cf02806b734f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/QuantitativeGap/Variantd4574214d9b8248bb1cdac0ba40bc6e83ce720ec4fd8da20b4c1cf02806b734f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProtectedProjector](../../../../../mathematics/Analysis/FunctionalAnalysis/QuantitativeGap/Variantd4574214d9b8248bb1cdac0ba40bc6e83ce720ec4fd8da20b4c1cf02806b734f.lean/declarations/protectedprojector--269f232673d6433885d94d9a.md) | 35 | `declaration-track:269f232673d6433885d94d9a28ab01c36af1518eb999e97f32ced018103c76f1` |
| 2 | `def` | [ProtectedProjector.complement](../../../../../mathematics/Analysis/FunctionalAnalysis/QuantitativeGap/Variantd4574214d9b8248bb1cdac0ba40bc6e83ce720ec4fd8da20b4c1cf02806b734f.lean/declarations/protectedprojector-complement--d4a77d6ff307540d368b0b52.md) | 42 | `declaration-track:d4a77d6ff307540d368b0b527098ad1d67db50ad748ca9d8d446291156fe0b64` |
| 3 | `def` | [CoerciveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/QuantitativeGap/Variantd4574214d9b8248bb1cdac0ba40bc6e83ce720ec4fd8da20b4c1cf02806b734f.lean/declarations/coerciveon--54cfbed6f3e1ad832bbeed04.md) | 46 | `declaration-track:54cfbed6f3e1ad832bbeed042fe2ac42ccbc365295434427de28a81342ff1b6a` |
| 4 | `theorem` | [coerciveOn_mono](../../../../../mathematics/Analysis/FunctionalAnalysis/QuantitativeGap/Variantd4574214d9b8248bb1cdac0ba40bc6e83ce720ec4fd8da20b4c1cf02806b734f.lean/declarations/coerciveon-mono--5298c8f308ff3fe52a889263.md) | 51 | `result-track:5298c8f308ff3fe52a8892631de1834547b3afe43c27c8325bdefd4f9fee6bc7` |
| 5 | `theorem` | [pullback_coerciveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/QuantitativeGap/Variantd4574214d9b8248bb1cdac0ba40bc6e83ce720ec4fd8da20b4c1cf02806b734f.lean/declarations/pullback-coerciveon--e619df487543184d294166b7.md) | 59 | `result-track:e619df487543184d294166b75e09521224a14b920cc886f14674ae3bf626998d` |
| 6 | `theorem` | [kernel_eq_protected_range](../../../../../mathematics/Analysis/FunctionalAnalysis/QuantitativeGap/Variantd4574214d9b8248bb1cdac0ba40bc6e83ce720ec4fd8da20b4c1cf02806b734f.lean/declarations/kernel-eq-protected-range--1c35f0a6a1a7fdcdadf14623.md) | 86 | `result-track:1c35f0a6a1a7fdcdadf14623b3b778b66b61568cfabe0493b5cdfa22bfb720c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
