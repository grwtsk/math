# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Basic.Variantf9097b8482a70903cbebb1988c24d14e30f7938c70964d142f4535cd664c3c7d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52b2cf879a9363cb6170188db7d523e15ed4a013",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf9097b8482a70903cbebb1988c24d14e30f7938c70964d142f4535cd664c3c7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf9097b8482a70903cbebb1988c24d14e30f7938c70964d142f4535cd664c3c7d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf9097b8482a70903cbebb1988c24d14e30f7938c70964d142f4535cd664c3c7d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52b2cf879a9363cb6170188db7d523e15ed4a013`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf9097b8482a70903cbebb1988c24d14e30f7938c70964d142f4535cd664c3c7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf9097b8482a70903cbebb1988c24d14e30f7938c70964d142f4535cd664c3c7d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Hom.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Equiv.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [AddHom.le_map_tsub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf9097b8482a70903cbebb1988c24d14e30f7938c70964d142f4535cd664c3c7d.lean/declarations/addhom-le-map-tsub--c9e71d3d1a37ffea1a67fd76.md) | 33 | `result-track:c9e71d3d1a37ffea1a67fd76edd1a3b22d82afe912218c574bd87dbe54d9a1e1` |
| 2 | `theorem` | [le_mul_tsub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf9097b8482a70903cbebb1988c24d14e30f7938c70964d142f4535cd664c3c7d.lean/declarations/le-mul-tsub--fe8ffab48c6b576fb8d9abd6.md) | 39 | `result-track:fe8ffab48c6b576fb8d9abd660ff4fa442db3cc9e0914edff8fa46fd972d873c` |
| 3 | `theorem` | [le_tsub_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf9097b8482a70903cbebb1988c24d14e30f7938c70964d142f4535cd664c3c7d.lean/declarations/le-tsub-mul--cdf091af9f4e346c03012e0f.md) | 44 | `result-track:cdf091af9f4e346c03012e0f29f55b9bb9229149e63c2948f121ed1c0f739089` |
| 4 | `theorem` | [OrderIso.map_tsub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf9097b8482a70903cbebb1988c24d14e30f7938c70964d142f4535cd664c3c7d.lean/declarations/orderiso-map-tsub--fb16e12f69ed2096b3b6a27e.md) | 53 | `result-track:fb16e12f69ed2096b3b6a27ece426958687e8b5910daaadc1199f84dcbd6d0b4` |
| 5 | `theorem` | [AddMonoidHom.le_map_tsub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf9097b8482a70903cbebb1988c24d14e30f7938c70964d142f4535cd664c3c7d.lean/declarations/addmonoidhom-le-map-tsub--4dcbb330b859a9a3fd602b4b.md) | 71 | `result-track:4dcbb330b859a9a3fd602b4be8d7b767466f174b6c77354a5793f2fb6983a440` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
