# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ScottContinuity.Variant737b24a8db49225c101337e36ff1eb1c400e32c413f601378134c024c70cfba1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de21639888f945fa1a1b573dae1a6d8a6b145eed",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ScottContinuity/Variant737b24a8db49225c101337e36ff1eb1c400e32c413f601378134c024c70cfba1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ScottContinuity/Variant737b24a8db49225c101337e36ff1eb1c400e32c413f601378134c024c70cfba1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ScottContinuity/Variant737b24a8db49225c101337e36ff1eb1c400e32c413f601378134c024c70cfba1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de21639888f945fa1a1b573dae1a6d8a6b145eed`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ScottContinuity/Variant737b24a8db49225c101337e36ff1eb1c400e32c413f601378134c024c70cfba1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ScottContinuity/Variant737b24a8db49225c101337e36ff1eb1c400e32c413f601378134c024c70cfba1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Bounds.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ScottContinuousOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ScottContinuity/Variant737b24a8db49225c101337e36ff1eb1c400e32c413f601378134c024c70cfba1.lean/declarations/scottcontinuouson--101bc0bb3ff8833e3d3a8e97.md) | 57 | `declaration-track:101bc0bb3ff8833e3d3a8e971d674ecd5aa8e73f4cca4aecf22f634c5b356569` |
| 2 | `lemma` | [ScottContinuousOn.mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ScottContinuity/Variant737b24a8db49225c101337e36ff1eb1c400e32c413f601378134c024c70cfba1.lean/declarations/scottcontinuouson-mono--d14ffed4a82809c6ae95dec5.md) | 60 | `result-track:d14ffed4a82809c6ae95dec5b7a0ab0a781802c7a5f419acfaa10d11d8430119` |
| 3 | `theorem` | [ScottContinuousOn.monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ScottContinuity/Variant737b24a8db49225c101337e36ff1eb1c400e32c413f601378134c024c70cfba1.lean/declarations/scottcontinuouson-monotone--d2bb367210eada83e940884c.md) | 63 | `result-track:d2bb367210eada83e940884c297d9b14d8c7eaefd0d9459dbd899c068d36f52d` |
| 4 | `lemma` | [ScottContinuousOn.id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ScottContinuity/Variant737b24a8db49225c101337e36ff1eb1c400e32c413f601378134c024c70cfba1.lean/declarations/scottcontinuouson-id--a7432dbcbe36a35b4f1108f2.md) | 72 | `result-track:a7432dbcbe36a35b4f1108f27c6f1889f522f816ad69aef25dbb19b84c1568b6` |
| 5 | `lemma` | [ScottContinuousOn.prodMk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ScottContinuity/Variant737b24a8db49225c101337e36ff1eb1c400e32c413f601378134c024c70cfba1.lean/declarations/scottcontinuouson-prodmk--12d02223f5a5322701626a36.md) | 76 | `result-track:12d02223f5a5322701626a3611cadc91c1db4d927d8a99129e96d4840e554c0f` |
| 6 | `def` | [ScottContinuous](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ScottContinuity/Variant737b24a8db49225c101337e36ff1eb1c400e32c413f601378134c024c70cfba1.lean/declarations/scottcontinuous--b423093a877600ead695e4da.md) | 102 | `declaration-track:b423093a877600ead695e4da228894407601d59bbe4801869e771bdf7a66356e` |
| 7 | `lemma` | [scottContinuousOn_univ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ScottContinuity/Variant737b24a8db49225c101337e36ff1eb1c400e32c413f601378134c024c70cfba1.lean/declarations/scottcontinuouson-univ--df0ef134b8dd4cf15cd4d6f7.md) | 105 | `result-track:df0ef134b8dd4cf15cd4d6f7867954ba48373a9fbf6e7f280861e44c00d4b0da` |
| 8 | `lemma` | [ScottContinuous.scottContinuousOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ScottContinuity/Variant737b24a8db49225c101337e36ff1eb1c400e32c413f601378134c024c70cfba1.lean/declarations/scottcontinuous-scottcontinuouson--a682a506ab5f8b858e4db730.md) | 108 | `result-track:a682a506ab5f8b858e4db730838f82db49c47f1712e0c3e7e5c19d324aeff6cd` |
| 9 | `theorem` | [ScottContinuous.monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ScottContinuity/Variant737b24a8db49225c101337e36ff1eb1c400e32c413f601378134c024c70cfba1.lean/declarations/scottcontinuous-monotone--c89f36dba56991595f60acae.md) | 111 | `result-track:c89f36dba56991595f60acae07d7a581bdacbc4e459135427bfe7a5c5078dcb0` |
| 10 | `lemma` | [ScottContinuous.id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ScottContinuity/Variant737b24a8db49225c101337e36ff1eb1c400e32c413f601378134c024c70cfba1.lean/declarations/scottcontinuous-id--2ed39571192b8afb756337b3.md) | 114 | `result-track:2ed39571192b8afb756337b31cf4980cc97d5c49934e601a9dcacd93fae32998` |
| 11 | `lemma` | [ScottContinuous.sup₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ScottContinuity/Variant737b24a8db49225c101337e36ff1eb1c400e32c413f601378134c024c70cfba1.lean/declarations/scottcontinuous-sup--b2db97cd4d086962cc7e37ce.md) | 122 | `result-track:b2db97cd4d086962cc7e37cef56f4a528be5de1c72553ada1bdc487134fde0b2` |
| 12 | `lemma` | [ScottContinuousOn.sup₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ScottContinuity/Variant737b24a8db49225c101337e36ff1eb1c400e32c413f601378134c024c70cfba1.lean/declarations/scottcontinuouson-sup--6c27284ea97a43a7327b36e7.md) | 134 | `result-track:6c27284ea97a43a7327b36e781bf0632347b83190bf469a12c5176a73691c642` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
