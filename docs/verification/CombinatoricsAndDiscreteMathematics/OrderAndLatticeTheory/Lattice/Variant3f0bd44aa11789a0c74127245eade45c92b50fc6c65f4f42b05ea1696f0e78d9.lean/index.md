# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lattice.Variant3f0bd44aa11789a0c74127245eade45c92b50fc6c65f4f42b05ea1696f0e78d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf1ae58eec0b157302f00b1101fa6c1773ffe594",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3f0bd44aa11789a0c74127245eade45c92b50fc6c65f4f42b05ea1696f0e78d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3f0bd44aa11789a0c74127245eade45c92b50fc6c65f4f42b05ea1696f0e78d9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3f0bd44aa11789a0c74127245eade45c92b50fc6c65f4f42b05ea1696f0e78d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf1ae58eec0b157302f00b1101fa6c1773ffe594`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3f0bd44aa11789a0c74127245eade45c92b50fc6c65f4f42b05ea1696f0e78d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3f0bd44aa11789a0c74127245eade45c92b50fc6c65f4f42b05ea1696f0e78d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Sum.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Lattice` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instSemilatticeSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3f0bd44aa11789a0c74127245eade45c92b50fc6c65f4f42b05ea1696f0e78d9.lean/declarations/instsemilatticesup--df0e59b8bd9015c57484f255.md) | 26 | `declaration-track:df0e59b8bd9015c57484f2555c214d37c44e1e6f4373a331c07a22226646f1f6` |
| 2 | `lemma` | [inl_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3f0bd44aa11789a0c74127245eade45c92b50fc6c65f4f42b05ea1696f0e78d9.lean/declarations/inl-sup--f7af3e08def70a6bfc6ec422.md) | 49 | `result-track:f7af3e08def70a6bfc6ec422f6668fb866d9906ae8bee66d8e372f71f02e23c3` |
| 3 | `lemma` | [inr_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3f0bd44aa11789a0c74127245eade45c92b50fc6c65f4f42b05ea1696f0e78d9.lean/declarations/inr-sup--fba4a8626185282e3fef6404.md) | 50 | `result-track:fba4a8626185282e3fef64046d1cd5210534a61cd70294d69d7525683e6ea59f` |
| 4 | `instance` | [instSemilatticeInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3f0bd44aa11789a0c74127245eade45c92b50fc6c65f4f42b05ea1696f0e78d9.lean/declarations/instsemilatticeinf--24ad1600c45d4b1a9f1643c3.md) | 59 | `declaration-track:24ad1600c45d4b1a9f1643c3494039faf69dcbc5114cbe2e23c2724b8c02418a` |
| 5 | `lemma` | [inl_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3f0bd44aa11789a0c74127245eade45c92b50fc6c65f4f42b05ea1696f0e78d9.lean/declarations/inl-inf--91fad490243240d1ed6b2368.md) | 82 | `result-track:91fad490243240d1ed6b2368936ae249a1d7a70c117cd8e9e3c359a305e58f86` |
| 6 | `lemma` | [inr_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3f0bd44aa11789a0c74127245eade45c92b50fc6c65f4f42b05ea1696f0e78d9.lean/declarations/inr-inf--e84238c112046067e11bcecb.md) | 83 | `result-track:e84238c112046067e11bcecb7f85840b52d2574a919c3c0d85200a64b264cc5b` |
| 7 | `instance` | [instLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3f0bd44aa11789a0c74127245eade45c92b50fc6c65f4f42b05ea1696f0e78d9.lean/declarations/instlattice--973e69d3fe51a3b9976d93e3.md) | 90 | `declaration-track:973e69d3fe51a3b9976d93e3a71caa4f711d5924fe8e6173a4883e74890d0d01` |
| 8 | `def` | [inlLatticeHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3f0bd44aa11789a0c74127245eade45c92b50fc6c65f4f42b05ea1696f0e78d9.lean/declarations/inllatticehom--85a61c29abb6be1b37236f3e.md) | 93 | `declaration-track:85a61c29abb6be1b37236f3e2c8a82b06c0600924cb54128925777e605a31f01` |
| 9 | `def` | [inrLatticeHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3f0bd44aa11789a0c74127245eade45c92b50fc6c65f4f42b05ea1696f0e78d9.lean/declarations/inrlatticehom--b958ac33ab8e229e6b5739fe.md) | 99 | `declaration-track:b958ac33ab8e229e6b5739fea30de46ddde3c8066bc00ab8fe9490f61d14f0a9` |
| 10 | `instance` | [instDistribLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3f0bd44aa11789a0c74127245eade45c92b50fc6c65f4f42b05ea1696f0e78d9.lean/declarations/instdistriblattice--b595842eccff5599174b79fd.md) | 106 | `declaration-track:b595842eccff5599174b79fd2dd77a323f1da974f576b4db0b460d6578c890e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
