# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCompactPatch

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c83a5a5fb282e3ee21a498b7b43153cc618e2432",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCompactPatch.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCompactPatch.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCompactPatch.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c83a5a5fb282e3ee21a498b7b43153cc618e2432`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCompactPatch.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripCompactPatch.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPatchCertificate`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPatchCertificate.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Topology.MetricSpace.Thickening` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Compact` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_variationPatch_of_continuousAt_ne_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCompactPatch.lean/declarations/exists-variationpatch-of-continuousat-ne-zero--78f44c211a4e474554c1fce8.md) | 29 | `result-track:78f44c211a4e474554c1fce865f3f5b398cf9cd8febe80ff86f5ec8b4f54b60d` |
| 2 | `theorem` | [exists_finiteVariationCover_of_compact](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCompactPatch.lean/declarations/exists-finitevariationcover-of-compact--6ce4d5e2e69f805569057d7c.md) | 45 | `result-track:6ce4d5e2e69f805569057d7c39c561b1b17a0cdd034bcc518f02d5f81f6352e4` |
| 3 | `theorem` | [finiteVariationCover_iff_nonzero_of_compact](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCompactPatch.lean/declarations/finitevariationcover-iff-nonzero-of-compact--c80f3b330ca68d7273b3003f.md) | 77 | `result-track:c80f3b330ca68d7273b3003f585f8070b33022123f1ee7b034d5f31700601f08` |
| 4 | `def` | [FiniteVariationCover.restrict](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCompactPatch.lean/declarations/finitevariationcover-restrict--23150ffc62d0bf89746a6993.md) | 86 | `declaration-track:23150ffc62d0bf89746a6993a19baf41b91f6714826c8301e28a2d437ed755c3` |
| 5 | `theorem` | [no_finiteVariationCover_of_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCompactPatch.lean/declarations/no-finitevariationcover-of-zero--30330b626678d2457f7aaa70.md) | 94 | `result-track:30330b626678d2457f7aaa708b7856ab57bcd10000f0c93654c4b8c234a229a8` |
| 6 | `theorem` | [exists_thickening_norm_lower_of_compact](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCompactPatch.lean/declarations/exists-thickening-norm-lower-of-compact--120081bd0830ed5fe3d04310.md) | 102 | `result-track:120081bd0830ed5fe3d0431022ce77e5aaf9813ee6764df9fa9133147d245b2c` |
| 7 | `theorem` | [reciprocal_widths_no_uniform_positive_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCompactPatch.lean/declarations/reciprocal-widths-no-uniform-positive-lower--006d89cc3b8b02affb57434d.md) | 121 | `result-track:006d89cc3b8b02affb57434df464fd232469634f2f243a033e82d57a0ae6e0bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
