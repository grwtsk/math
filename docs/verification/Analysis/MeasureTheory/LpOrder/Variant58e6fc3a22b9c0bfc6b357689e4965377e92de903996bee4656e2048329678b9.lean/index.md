# Verification target: GRWTSK.Analysis.MeasureTheory.LpOrder.Variant58e6fc3a22b9c0bfc6b357689e4965377e92de903996bee4656e2048329678b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c80ca39742bd610e919c64ac8f69d9e4dc00326a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/LpOrder/Variant58e6fc3a22b9c0bfc6b357689e4965377e92de903996bee4656e2048329678b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant58e6fc3a22b9c0bfc6b357689e4965377e92de903996bee4656e2048329678b9.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant58e6fc3a22b9c0bfc6b357689e4965377e92de903996bee4656e2048329678b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c80ca39742bd610e919c64ac8f69d9e4dc00326a`.

Source path: `GRWTSK/Analysis/MeasureTheory/LpOrder/Variant58e6fc3a22b9c0bfc6b357689e4965377e92de903996bee4656e2048329678b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/LpOrder/Variant58e6fc3a22b9c0bfc6b357689e4965377e92de903996bee4656e2048329678b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Order.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.ConvergenceInMeasure` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coeFn_le](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant58e6fc3a22b9c0bfc6b357689e4965377e92de903996bee4656e2048329678b9.lean/declarations/coefn-le--40367fc3554f849436115cd1.md) | 43 | `result-track:40367fc3554f849436115cd1c98e5ea8ae8e23244e7a8e759f537c0c963de34b` |
| 2 | `theorem` | [coeFn_nonneg](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant58e6fc3a22b9c0bfc6b357689e4965377e92de903996bee4656e2048329678b9.lean/declarations/coefn-nonneg--379f278b2e3bdd5065c515b9.md) | 46 | `result-track:379f278b2e3bdd5065c515b9905ae86b7560c242ca264647acf8c2a60cb575f3` |
| 3 | `instance` | [instAddLeftMono](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant58e6fc3a22b9c0bfc6b357689e4965377e92de903996bee4656e2048329678b9.lean/declarations/instaddleftmono--473ce658ea2f65b5f22b97ae.md) | 55 | `declaration-track:473ce658ea2f65b5f22b97aea44d163b7a2e36780ea36066df5687cc22c660bc` |
| 4 | `instance` | [instIsOrderedAddMonoid](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant58e6fc3a22b9c0bfc6b357689e4965377e92de903996bee4656e2048329678b9.lean/declarations/instisorderedaddmonoid--1b942351bfa8e3dfaa3ecc1c.md) | 62 | `declaration-track:1b942351bfa8e3dfaa3ecc1cc76adc9a20d4d61187f9dc7ef763242c54cbed49` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant58e6fc3a22b9c0bfc6b357689e4965377e92de903996bee4656e2048329678b9.lean/declarations/instance--eceea451dd56f74f84f373d0.md) | 65 | `declaration-track:eceea451dd56f74f84f373d0c16fb816e1c21cc51b85c44344f0904e9b8a4551` |
| 6 | `theorem` | [_root_.MeasureTheory.MemLp.sup](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant58e6fc3a22b9c0bfc6b357689e4965377e92de903996bee4656e2048329678b9.lean/declarations/root-measuretheory-memlp-sup--72e51bf147c678b1ebdf2b6e.md) | 79 | `result-track:72e51bf147c678b1ebdf2b6e9ad0601cf5df3f55e1e06b369c4c9c192eb38b91` |
| 7 | `theorem` | [_root_.MeasureTheory.MemLp.inf](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant58e6fc3a22b9c0bfc6b357689e4965377e92de903996bee4656e2048329678b9.lean/declarations/root-measuretheory-memlp-inf--4e92c7dacf5571fde0870080.md) | 87 | `result-track:4e92c7dacf5571fde08700805354d6ab3923a42c7e3a6ae00ea010ec18e64e8d` |
| 8 | `theorem` | [_root_.MeasureTheory.MemLp.abs](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant58e6fc3a22b9c0bfc6b357689e4965377e92de903996bee4656e2048329678b9.lean/declarations/root-measuretheory-memlp-abs--23e97f406c3b57b3a35f16d0.md) | 95 | `result-track:23e97f406c3b57b3a35f16d08da88113f4dfc2915e14bae6095ebf38774aba28` |
| 9 | `instance` | [instLattice](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant58e6fc3a22b9c0bfc6b357689e4965377e92de903996bee4656e2048329678b9.lean/declarations/instlattice--7e1821cb03682d49f8ab400d.md) | 101 | `declaration-track:7e1821cb03682d49f8ab400d2f003f6af995f3b1e2582e41e3ba2c1aeda86446` |
| 10 | `theorem` | [coeFn_sup](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant58e6fc3a22b9c0bfc6b357689e4965377e92de903996bee4656e2048329678b9.lean/declarations/coefn-sup--d868a801a64e8811e0c70cce.md) | 110 | `result-track:d868a801a64e8811e0c70cce22c943ae7f968ad8fd3724103a7b92a8e1bc9674` |
| 11 | `theorem` | [coeFn_inf](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant58e6fc3a22b9c0bfc6b357689e4965377e92de903996bee4656e2048329678b9.lean/declarations/coefn-inf--b8b09e03ed582a589e9b40bc.md) | 113 | `result-track:b8b09e03ed582a589e9b40bc6b87eb1d5d35dc911d2e04718e06c9062179f135` |
| 12 | `theorem` | [coeFn_abs](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant58e6fc3a22b9c0bfc6b357689e4965377e92de903996bee4656e2048329678b9.lean/declarations/coefn-abs--2f9c486d14c4a622d6d45f73.md) | 116 | `result-track:2f9c486d14c4a622d6d45f73c5271f08d94d76620b880aaea3ced7e40b7431f9` |
| 13 | `instance` | [instHasSolidNorm](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant58e6fc3a22b9c0bfc6b357689e4965377e92de903996bee4656e2048329678b9.lean/declarations/insthassolidnorm--23e45766f7b06ab68377e7c0.md) | 119 | `declaration-track:23e45766f7b06ab68377e7c01f16e364f886fcf6e5df560f9ac6c3a4cea56fa3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
