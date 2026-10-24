# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lattice.Variant0b9f4b71ba9e2ce5dc839a1d9795c942c4635028c336af6d4cd97cde7a0f86db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f1c66d33ee1da271a2153245a804e0db4424a17",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant0b9f4b71ba9e2ce5dc839a1d9795c942c4635028c336af6d4cd97cde7a0f86db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant0b9f4b71ba9e2ce5dc839a1d9795c942c4635028c336af6d4cd97cde7a0f86db.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant0b9f4b71ba9e2ce5dc839a1d9795c942c4635028c336af6d4cd97cde7a0f86db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f1c66d33ee1da271a2153245a804e0db4424a17`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant0b9f4b71ba9e2ce5dc839a1d9795c942c4635028c336af6d4cd97cde7a0f86db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant0b9f4b71ba9e2ce5dc839a1d9795c942c4635028c336af6d4cd97cde7a0f86db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Lattice.Image` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [gc_upperBounds_lowerBounds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant0b9f4b71ba9e2ce5dc839a1d9795c942c4635028c336af6d4cd97cde7a0f86db.lean/declarations/gc-upperbounds-lowerbounds--b31c75eb179b3486bc9f33c2.md) | 23 | `result-track:b31c75eb179b3486bc9f33c2e5cf3402023b9555e77cedf990c621f8956f74ea` |
| 2 | `theorem` | [upperBounds_iUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant0b9f4b71ba9e2ce5dc839a1d9795c942c4635028c336af6d4cd97cde7a0f86db.lean/declarations/upperbounds-iunion--456c059157cbb35449de90d9.md) | 30 | `result-track:456c059157cbb35449de90d998e63feb13bcfb706b275de8847e2007527ce2f3` |
| 3 | `theorem` | [lowerBounds_iUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant0b9f4b71ba9e2ce5dc839a1d9795c942c4635028c336af6d4cd97cde7a0f86db.lean/declarations/lowerbounds-iunion--1f85eed4115131a1565d7264.md) | 35 | `result-track:1f85eed4115131a1565d7264b74c41e5ca6cf01b155e8edababdd551e1a8ba22` |
| 4 | `theorem` | [isLUB_iUnion_iff_of_isLUB](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant0b9f4b71ba9e2ce5dc839a1d9795c942c4635028c336af6d4cd97cde7a0f86db.lean/declarations/islub-iunion-iff-of-islub--9c3b93f329fd39eaa332817f.md) | 39 | `result-track:9c3b93f329fd39eaa332817f86fe9603d9e4a9a354df32d5f239d01291d24cd6` |
| 5 | `theorem` | [isGLB_iUnion_iff_of_isLUB](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant0b9f4b71ba9e2ce5dc839a1d9795c942c4635028c336af6d4cd97cde7a0f86db.lean/declarations/isglb-iunion-iff-of-islub--8373f3c440f56decc2cdf615.md) | 44 | `result-track:8373f3c440f56decc2cdf615f6388f4b39c5f03425fcc2b91e9baf5ba5d023ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
