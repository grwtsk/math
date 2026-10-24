# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Intervals.Variant526c36585a593c62782bebb0bfc9c5df2b94aa82cad88d78b964e32c98f3644b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03a411d77ab570c25c478971cd0cb6a8293404ce",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Intervals/Variant526c36585a593c62782bebb0bfc9c5df2b94aa82cad88d78b964e32c98f3644b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Intervals/Variant526c36585a593c62782bebb0bfc9c5df2b94aa82cad88d78b964e32c98f3644b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Intervals/Variant526c36585a593c62782bebb0bfc9c5df2b94aa82cad88d78b964e32c98f3644b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03a411d77ab570c25c478971cd0cb6a8293404ce`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Intervals/Variant526c36585a593c62782bebb0bfc9c5df2b94aa82cad88d78b964e32c98f3644b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Intervals/Variant526c36585a593c62782bebb0bfc9c5df2b94aa82cad88d78b964e32c98f3644b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.CompleteLatticeIntervals` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompactlyGenerated.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isCompactElement](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Intervals/Variant526c36585a593c62782bebb0bfc9c5df2b94aa82cad88d78b964e32c98f3644b.lean/declarations/iscompactelement--982a9d6c7c02035db1740ed6.md) | 26 | `result-track:982a9d6c7c02035db1740ed63ceb7893f9bbd17621d2614122dea154d379b43c` |
| 2 | `instance` | [instIsCompactlyGenerated](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Intervals/Variant526c36585a593c62782bebb0bfc9c5df2b94aa82cad88d78b964e32c98f3644b.lean/declarations/instiscompactlygenerated--b82bc66583936d96a21d1f82.md) | 34 | `declaration-track:b82bc66583936d96a21d1f820780c8c850d46492a1b41fbd70025ebcf663bdc9` |
| 3 | `theorem` | [complementedLattice_of_complementedLattice_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Intervals/Variant526c36585a593c62782bebb0bfc9c5df2b94aa82cad88d78b964e32c98f3644b.lean/declarations/complementedlattice-of-complementedlattice-iic--94bd1327b83b874ca3bda177.md) | 53 | `result-track:94bd1327b83b874ca3bda177797198ddbad2869524bb2cae521b738a34e0c2a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
