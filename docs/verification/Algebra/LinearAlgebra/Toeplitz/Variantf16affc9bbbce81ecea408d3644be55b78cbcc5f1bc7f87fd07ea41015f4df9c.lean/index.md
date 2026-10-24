# Verification target: GRWTSK.Algebra.LinearAlgebra.Toeplitz.Variantf16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df50a21a6590f9f16ccad85807556007ee25d4da",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Toeplitz/Variantf16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Toeplitz/Variantf16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Toeplitz/Variantf16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df50a21a6590f9f16ccad85807556007ee25d4da`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Toeplitz/Variantf16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Toeplitz/Variantf16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.OrderedMinors` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [entry](../../../../../mathematics/Algebra/LinearAlgebra/Toeplitz/Variantf16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c.lean/declarations/entry--82f93f20da36a669bb6a759f.md) | 18 | `declaration-track:82f93f20da36a669bb6a759fd556abe51353f5bde5c881c1f5cc39aee8954ae4` |
| 2 | `def` | [block](../../../../../mathematics/Algebra/LinearAlgebra/Toeplitz/Variantf16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c.lean/declarations/block--74f3cd240be8393e5eeb611a.md) | 22 | `declaration-track:74f3cd240be8393e5eeb611a76c139508adb2336ceee60b3277906e25246706c` |
| 3 | `def` | [minor](../../../../../mathematics/Algebra/LinearAlgebra/Toeplitz/Variantf16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c.lean/declarations/minor--8796956d464b44d2f1ad2048.md) | 26 | `declaration-track:8796956d464b44d2f1ad20488e76086354a7f59b23ca1279a4f585c447f405e3` |
| 4 | `def` | [FiniteNonnegative](../../../../../mathematics/Algebra/LinearAlgebra/Toeplitz/Variantf16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c.lean/declarations/finitenonnegative--8281da8e488b5f1fc6448547.md) | 30 | `declaration-track:8281da8e488b5f1fc6448547efa7adba55d04f7afce59a234d0e3769391aa895` |
| 5 | `def` | [PFInfinity](../../../../../mathematics/Algebra/LinearAlgebra/Toeplitz/Variantf16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c.lean/declarations/pfinfinity--493c454ebdd9006c49228d05.md) | 35 | `declaration-track:493c454ebdd9006c49228d05b88e8e2aa6cfc73b2bf9168089689fb61a62d0d0` |
| 6 | `theorem` | [entry_below](../../../../../mathematics/Algebra/LinearAlgebra/Toeplitz/Variantf16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c.lean/declarations/entry-below--5b7fd3bf7425fbe17a7d3ba0.md) | 39 | `result-track:5b7fd3bf7425fbe17a7d3ba056fe944165e8501449459934ffda3b58670d7e0d` |
| 7 | `theorem` | [entry_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Toeplitz/Variantf16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c.lean/declarations/entry-diagonal--f0036720ec715a9897d7d3b3.md) | 43 | `result-track:f0036720ec715a9897d7d3b35e15185af506c94327728142c7adc113408085fe` |
| 8 | `theorem` | [entry_first_row](../../../../../mathematics/Algebra/LinearAlgebra/Toeplitz/Variantf16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c.lean/declarations/entry-first-row--9c419dd93d1349e76b10f42f.md) | 47 | `result-track:9c419dd93d1349e76b10f42fafd7308fe77adf4a9b9f25c05c7d9012be2f0615` |
| 9 | `theorem` | [block_restrict](../../../../../mathematics/Algebra/LinearAlgebra/Toeplitz/Variantf16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c.lean/declarations/block-restrict--1deb1313c26f91f8368d5c81.md) | 51 | `result-track:1deb1313c26f91f8368d5c813df48c5cb3d15651f85089d4c911e822dc7967e9` |
| 10 | `theorem` | [blocks_injective](../../../../../mathematics/Algebra/LinearAlgebra/Toeplitz/Variantf16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c.lean/declarations/blocks-injective--123a8982353c951b069ab113.md) | 55 | `result-track:123a8982353c951b069ab1131b99d989eeac44bc01d5956348fb0ee1543d8845` |
| 11 | `theorem` | [pfInfinity_iff_blocks](../../../../../mathematics/Algebra/LinearAlgebra/Toeplitz/Variantf16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c.lean/declarations/pfinfinity-iff-blocks--ff3ac1454e2fd0005df2dcb9.md) | 61 | `result-track:ff3ac1454e2fd0005df2dcb9446b54c762015f5524ee2b8f36f1d76be45dffba` |
| 12 | `def` | [rescale](../../../../../mathematics/Algebra/LinearAlgebra/Toeplitz/Variantf16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c.lean/declarations/rescale--11ea1f734774eeb3c5c6986f.md) | 91 | `declaration-track:11ea1f734774eeb3c5c6986ff75b7f375d878613bc087ef45580efb08c075c2f` |
| 13 | `theorem` | [entry_rescale](../../../../../mathematics/Algebra/LinearAlgebra/Toeplitz/Variantf16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c.lean/declarations/entry-rescale--bb80bc0c4bad60ece1d8dfd6.md) | 94 | `result-track:bb80bc0c4bad60ece1d8dfd67c7844c96f2ebdc49692dc377518c59600cc5cfe` |
| 14 | `theorem` | [minor_rescale](../../../../../mathematics/Algebra/LinearAlgebra/Toeplitz/Variantf16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c.lean/declarations/minor-rescale--bdb287c0ea61ff0ce36f88e9.md) | 105 | `result-track:bdb287c0ea61ff0ce36f88e9d9564a865356768cf2ea1fc869b36f2f7495039a` |
| 15 | `theorem` | [minor_rescale_nonnegative_iff](../../../../../mathematics/Algebra/LinearAlgebra/Toeplitz/Variantf16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c.lean/declarations/minor-rescale-nonnegative-iff--b9d26f355615596d30c19651.md) | 125 | `result-track:b9d26f355615596d30c196517a5ae646c6411ddec3aa917bad1460c5496814c3` |
| 16 | `theorem` | [pfInfinity_rescale_iff](../../../../../mathematics/Algebra/LinearAlgebra/Toeplitz/Variantf16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c.lean/declarations/pfinfinity-rescale-iff--f289beeb67f524a6df920063.md) | 136 | `result-track:f289beeb67f524a6df920063c00a22ea8dac56719e631737c766af0d72429b0d` |
| 17 | `def` | [quadraticFixture](../../../../../mathematics/Algebra/LinearAlgebra/Toeplitz/Variantf16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c.lean/declarations/quadraticfixture--869bbc1c7ff4d3fcfd5e148a.md) | 145 | `declaration-track:869bbc1c7ff4d3fcfd5e148a9380f4d58a4c0482bf6d09b4e821d84f30e01718` |
| 18 | `theorem` | [quadraticFixture_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/Toeplitz/Variantf16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c.lean/declarations/quadraticfixture-nonnegative--7c4e0fb2d9daf1127e329197.md) | 148 | `result-track:7c4e0fb2d9daf1127e329197096fa1ae86bdb55dbd1b1f9539ea63fb6d5d1c07` |
| 19 | `theorem` | [quadraticFixture_negative_minor](../../../../../mathematics/Algebra/LinearAlgebra/Toeplitz/Variantf16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c.lean/declarations/quadraticfixture-negative-minor--8e0cb7aa164fc1cbc59c6d18.md) | 153 | `result-track:8e0cb7aa164fc1cbc59c6d18325f9d1d56ed1cbeff1819a273c199aaa788bac0` |
| 20 | `theorem` | [quadraticFixture_not_pfInfinity](../../../../../mathematics/Algebra/LinearAlgebra/Toeplitz/Variantf16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c.lean/declarations/quadraticfixture-not-pfinfinity--15e0b0bf94dab5911face069.md) | 161 | `result-track:15e0b0bf94dab5911face0691103fe6ac03d2f53c636ab70b6ca6b42831d5d92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
