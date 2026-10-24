# Verification target: GRWTSK.Algebra.LinearAlgebra.Finrank.Variant94ce8e07a27d8aefa570520218fa0d2a19958a95cbe7d77a040f63ddf33ef16e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7be7183d39298db203548d3885c2ca274cbd1dd",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Finrank/Variant94ce8e07a27d8aefa570520218fa0d2a19958a95cbe7d77a040f63ddf33ef16e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Finrank/Variant94ce8e07a27d8aefa570520218fa0d2a19958a95cbe7d77a040f63ddf33ef16e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Finrank/Variant94ce8e07a27d8aefa570520218fa0d2a19958a95cbe7d77a040f63ddf33ef16e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7be7183d39298db203548d3885c2ca274cbd1dd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Finrank/Variant94ce8e07a27d8aefa570520218fa0d2a19958a95cbe7d77a040f63ddf33ef16e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Finrank/Variant94ce8e07a27d8aefa570520218fa0d2a19958a95cbe7d77a040f63ddf33ef16e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dimension.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.ToNat` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finrank](../../../../../mathematics/Algebra/LinearAlgebra/Finrank/Variant94ce8e07a27d8aefa570520218fa0d2a19958a95cbe7d77a040f63ddf33ef16e.lean/declarations/finrank--1f5898f31e1ec1af24606906.md) | 66 | `declaration-track:1f5898f31e1ec1af24606906cad2cc7cc7bd0efc84a7a254013852f9af4c50f4` |
| 2 | `theorem` | [finrank_eq_of_rank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Finrank/Variant94ce8e07a27d8aefa570520218fa0d2a19958a95cbe7d77a040f63ddf33ef16e.lean/declarations/finrank-eq-of-rank-eq--035d951f72403311923881fa.md) | 69 | `result-track:035d951f72403311923881fa349d4070dc7cee73a5f7fc9e35309e953014bcff` |
| 3 | `lemma` | [rank_eq_one_iff_finrank_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Finrank/Variant94ce8e07a27d8aefa570520218fa0d2a19958a95cbe7d77a040f63ddf33ef16e.lean/declarations/rank-eq-one-iff-finrank-eq-one--f09d2ad659657a7e62c800aa.md) | 72 | `result-track:f09d2ad659657a7e62c800aabc6ac0d52e964d7f187de61fdfa2f4cb70d73c02` |
| 4 | `lemma` | [rank_eq_ofNat_iff_finrank_eq_ofNat](../../../../../mathematics/Algebra/LinearAlgebra/Finrank/Variant94ce8e07a27d8aefa570520218fa0d2a19958a95cbe7d77a040f63ddf33ef16e.lean/declarations/rank-eq-ofnat-iff-finrank-eq-ofnat--fdb7c4be8524816f9bb17436.md) | 76 | `result-track:fdb7c4be8524816f9bb17436aefe4052b303585084d1b7e5f01be6a95c2eca9b` |
| 5 | `theorem` | [finrank_le_of_rank_le](../../../../../mathematics/Algebra/LinearAlgebra/Finrank/Variant94ce8e07a27d8aefa570520218fa0d2a19958a95cbe7d77a040f63ddf33ef16e.lean/declarations/finrank-le-of-rank-le--3976d1274dff915cb6df70fc.md) | 80 | `result-track:3976d1274dff915cb6df70fc9891fbb0d60d44bff6e1661be46678937eac70a9` |
| 6 | `theorem` | [finrank_lt_of_rank_lt](../../../../../mathematics/Algebra/LinearAlgebra/Finrank/Variant94ce8e07a27d8aefa570520218fa0d2a19958a95cbe7d77a040f63ddf33ef16e.lean/declarations/finrank-lt-of-rank-lt--64ec56f8d02367622f4b85f3.md) | 85 | `result-track:64ec56f8d02367622f4b85f37ed4d6cd63e659040d6602176dc2c8dd4805848f` |
| 7 | `theorem` | [lt_rank_of_lt_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Finrank/Variant94ce8e07a27d8aefa570520218fa0d2a19958a95cbe7d77a040f63ddf33ef16e.lean/declarations/lt-rank-of-lt-finrank--c95176052ef8f2f41d229560.md) | 90 | `result-track:c95176052ef8f2f41d229560068b15d186aff27515b5e1a735338ace279121c0` |
| 8 | `theorem` | [one_lt_rank_of_one_lt_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Finrank/Variant94ce8e07a27d8aefa570520218fa0d2a19958a95cbe7d77a040f63ddf33ef16e.lean/declarations/one-lt-rank-of-one-lt-finrank--75551172817b7e9a1572b322.md) | 97 | `result-track:75551172817b7e9a1572b32287745e236656d9962676551b9296d9772b329637` |
| 9 | `theorem` | [finrank_le_finrank_of_rank_le_rank](../../../../../mathematics/Algebra/LinearAlgebra/Finrank/Variant94ce8e07a27d8aefa570520218fa0d2a19958a95cbe7d77a040f63ddf33ef16e.lean/declarations/finrank-le-finrank-of-rank-le-rank--55a7cd8af46f2d04d15851b1.md) | 100 | `result-track:55a7cd8af46f2d04d15851b1b5f9f0a0da61e595d2cbbeb8267224522621b3e0` |
| 10 | `theorem` | [finrank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Finrank/Variant94ce8e07a27d8aefa570520218fa0d2a19958a95cbe7d77a040f63ddf33ef16e.lean/declarations/finrank-eq--dc6f71218d02ef59c2074e95.md) | 114 | `result-track:dc6f71218d02ef59c2074e9563b9e05a0223ca4ceff0b6923cf0e297db890319` |
| 11 | `theorem` | [finrank_map_eq](../../../../../mathematics/Algebra/LinearAlgebra/Finrank/Variant94ce8e07a27d8aefa570520218fa0d2a19958a95cbe7d77a040f63ddf33ef16e.lean/declarations/finrank-map-eq--7313752f121db60ef1856b02.md) | 119 | `result-track:7313752f121db60ef1856b02a7c0036a8ae9fd25e567d5a3cd5e270993d57832` |
| 12 | `theorem` | [LinearMap.finrank_range_of_inj](../../../../../mathematics/Algebra/LinearAlgebra/Finrank/Variant94ce8e07a27d8aefa570520218fa0d2a19958a95cbe7d77a040f63ddf33ef16e.lean/declarations/linearmap-finrank-range-of-inj--e0178dd09f2ce3b170801b4a.md) | 126 | `result-track:e0178dd09f2ce3b170801b4a960398321eaccee40abdb04953e06aa7026077c2` |
| 13 | `theorem` | [Submodule.finrank_map_subtype_eq](../../../../../mathematics/Algebra/LinearAlgebra/Finrank/Variant94ce8e07a27d8aefa570520218fa0d2a19958a95cbe7d77a040f63ddf33ef16e.lean/declarations/submodule-finrank-map-subtype-eq--7159c12a14346fcd85db4409.md) | 130 | `result-track:7159c12a14346fcd85db4409435c5486b3905127c30dd18d58d9ffefee527137` |
| 14 | `theorem` | [finrank_top](../../../../../mathematics/Algebra/LinearAlgebra/Finrank/Variant94ce8e07a27d8aefa570520218fa0d2a19958a95cbe7d77a040f63ddf33ef16e.lean/declarations/finrank-top--08b35fee50feeb94e23625f1.md) | 137 | `result-track:08b35fee50feeb94e23625f1655fe6cf0be7a2cf2d51d5394221c08d1c1cdf31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
