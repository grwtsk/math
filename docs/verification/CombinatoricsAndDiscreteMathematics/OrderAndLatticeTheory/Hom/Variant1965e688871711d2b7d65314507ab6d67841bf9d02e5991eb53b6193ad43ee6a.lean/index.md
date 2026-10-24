# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Hom.Variant1965e688871711d2b7d65314507ab6d67841bf9d02e5991eb53b6193ad43ee6a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa8b439b1cda62b41844b35b442b929bfaecd68a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant1965e688871711d2b7d65314507ab6d67841bf9d02e5991eb53b6193ad43ee6a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant1965e688871711d2b7d65314507ab6d67841bf9d02e5991eb53b6193ad43ee6a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant1965e688871711d2b7d65314507ab6d67841bf9d02e5991eb53b6193ad43ee6a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa8b439b1cda62b41844b35b442b929bfaecd68a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant1965e688871711d2b7d65314507ab6d67841bf9d02e5991eb53b6193ad43ee6a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant1965e688871711d2b7d65314507ab6d67841bf9d02e5991eb53b6193ad43ee6a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Equiv.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [AddHom.le_map_tsub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant1965e688871711d2b7d65314507ab6d67841bf9d02e5991eb53b6193ad43ee6a.lean/declarations/addhom-le-map-tsub--0b5d6278137867ca7a6f1f18.md) | 21 | `result-track:0b5d6278137867ca7a6f1f18885158dc3d1a0d3cd34eaa8b9bdd3e4607d1429e` |
| 2 | `theorem` | [le_mul_tsub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant1965e688871711d2b7d65314507ab6d67841bf9d02e5991eb53b6193ad43ee6a.lean/declarations/le-mul-tsub--dff53b557d000f66008d4a86.md) | 26 | `result-track:dff53b557d000f66008d4a8694a292a6a5fea571b310cde4f01ccc15084bf83c` |
| 3 | `theorem` | [le_tsub_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant1965e688871711d2b7d65314507ab6d67841bf9d02e5991eb53b6193ad43ee6a.lean/declarations/le-tsub-mul--eb39ee8164e40810c27006a4.md) | 30 | `result-track:eb39ee8164e40810c27006a4569b53204c1a5f6a1dd6b9eeb8b85b00a6813107` |
| 4 | `theorem` | [OrderIso.map_tsub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant1965e688871711d2b7d65314507ab6d67841bf9d02e5991eb53b6193ad43ee6a.lean/declarations/orderiso-map-tsub--dce3358311a789b08cdc4a6c.md) | 38 | `result-track:dce3358311a789b08cdc4a6c7d43163722ff9e0239ca35fc44916b019a97979e` |
| 5 | `theorem` | [AddMonoidHom.le_map_tsub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant1965e688871711d2b7d65314507ab6d67841bf9d02e5991eb53b6193ad43ee6a.lean/declarations/addmonoidhom-le-map-tsub--61e8881bc57440bfc9371ef8.md) | 54 | `result-track:61e8881bc57440bfc9371ef8cfb718e253dbe2bd92560b495fa02e536a6a72e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
