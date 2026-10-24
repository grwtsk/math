# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Eval.Variant749e0c147ea9affc909067141f59e0f27b37d82d5bb6e2555e10318769ca2509

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ccefaecdc270bed77155f8e431d01a42a1c47bf",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Eval/Variant749e0c147ea9affc909067141f59e0f27b37d82d5bb6e2555e10318769ca2509.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Eval/Variant749e0c147ea9affc909067141f59e0f27b37d82d5bb6e2555e10318769ca2509.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Eval/Variant749e0c147ea9affc909067141f59e0f27b37d82d5bb6e2555e10318769ca2509.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ccefaecdc270bed77155f8e431d01a42a1c47bf`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Eval/Variant749e0c147ea9affc909067141f59e0f27b37d82d5bb6e2555e10318769ca2509.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Eval/Variant749e0c147ea9affc909067141f59e0f27b37d82d5bb6e2555e10318769ca2509.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.Fintype` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Vieta` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.ScaleRoots` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [aevalMultiset](../../../../../mathematics/Algebra/CommutativeAlgebra/Eval/Variant749e0c147ea9affc909067141f59e0f27b37d82d5bb6e2555e10318769ca2509.lean/declarations/aevalmultiset--0968447672fc84cc2f09d8f9.md) | 53 | `declaration-track:0968447672fc84cc2f09d8f9929723e1ecd9e9c9d95809fb779ad5cecea2ae39` |
| 2 | `theorem` | [aevalMultiset_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Eval/Variant749e0c147ea9affc909067141f59e0f27b37d82d5bb6e2555e10318769ca2509.lean/declarations/aevalmultiset-apply--a17ba23a60eea851e9b6baaa.md) | 57 | `result-track:a17ba23a60eea851e9b6baaaa30bb02498d20e7460b4e33322aa409cf06f73eb` |
| 3 | `theorem` | [aevalMultiset_esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/Eval/Variant749e0c147ea9affc909067141f59e0f27b37d82d5bb6e2555e10318769ca2509.lean/declarations/aevalmultiset-esymm--ae3b076c4c060c114dac280e.md) | 61 | `result-track:ae3b076c4c060c114dac280e098e928a8da584721ccfd931e8ccc4b1b15660c8` |
| 4 | `theorem` | [aevalMultiset_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Eval/Variant749e0c147ea9affc909067141f59e0f27b37d82d5bb6e2555e10318769ca2509.lean/declarations/aevalmultiset-map--465fe9362e8ceaae7de66942.md) | 65 | `result-track:465fe9362e8ceaae7de6694243c6ada7018dae839b6d2b3fa8167bdbca12384a` |
| 5 | `theorem` | [aevalMultiset_map_of_card_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Eval/Variant749e0c147ea9affc909067141f59e0f27b37d82d5bb6e2555e10318769ca2509.lean/declarations/aevalmultiset-map-of-card-eq--3480049cda6f44a72ef5f6b1.md) | 73 | `result-track:3480049cda6f44a72ef5f6b1157a27857f5a97f4233e3dd0d4cf80e348058678` |
| 6 | `def` | [sumPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Eval/Variant749e0c147ea9affc909067141f59e0f27b37d82d5bb6e2555e10318769ca2509.lean/declarations/sumpolynomial--352c6b7203401b39dcd832c9.md) | 83 | `declaration-track:352c6b7203401b39dcd832c9e8b9cb2014501a2b753e31edd995704a35929996` |
| 7 | `theorem` | [coe_sumPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Eval/Variant749e0c147ea9affc909067141f59e0f27b37d82d5bb6e2555e10318769ca2509.lean/declarations/coe-sumpolynomial--a548b2e32484b1a4d0455d53.md) | 88 | `result-track:a548b2e32484b1a4d0455d53c7c616b9d6ed87347f016dec1ede4fbbbb8e6080` |
| 8 | `theorem` | [aevalMultiset_sumPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Eval/Variant749e0c147ea9affc909067141f59e0f27b37d82d5bb6e2555e10318769ca2509.lean/declarations/aevalmultiset-sumpolynomial--96dd6b5d3db7555619c03b4a.md) | 91 | `result-track:96dd6b5d3db7555619c03b4a5865f85737386d48ed27889cf19c525777af51b9` |
| 9 | `theorem` | [aevalMultiset_mem](../../../../../mathematics/Algebra/CommutativeAlgebra/Eval/Variant749e0c147ea9affc909067141f59e0f27b37d82d5bb6e2555e10318769ca2509.lean/declarations/aevalmultiset-mem--1e6e54bd0fb469a017237e7e.md) | 102 | `result-track:1e6e54bd0fb469a017237e7e270e6dd32833dbc05e8ddb572519c71b05288304` |
| 10 | `theorem` | [esymm_map_smul_aroots_mem_range_algebraMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Eval/Variant749e0c147ea9affc909067141f59e0f27b37d82d5bb6e2555e10318769ca2509.lean/declarations/esymm-map-smul-aroots-mem-range-algebramap--9139b01e56ffebb0db34a465.md) | 116 | `result-track:9139b01e56ffebb0db34a465d5e22278b0a35e7ba829b6cedd2de4e17ed8ecd2` |
| 11 | `theorem` | [aevalMultiset_map_aroots_mem_range_algebraMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Eval/Variant749e0c147ea9affc909067141f59e0f27b37d82d5bb6e2555e10318769ca2509.lean/declarations/aevalmultiset-map-aroots-mem-range-algebramap--6c0737f75851d181c93c5aaf.md) | 142 | `result-track:6c0737f75851d181c93c5aaf5e97903de4a1c65ac1a6c3d6f6e95641574f4d5a` |
| 12 | `theorem` | [leadingCoeff_pow_natDegree_smul_sum_map_aroots_aeval_mem_range_algebraMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Eval/Variant749e0c147ea9affc909067141f59e0f27b37d82d5bb6e2555e10318769ca2509.lean/declarations/leadingcoeff-pow-natdegree-smul-sum-map-aroots-aeval-mem-range-algebrama--d7ec03be1b86959a506ca02b.md) | 160 | `result-track:d7ec03be1b86959a506ca02b17a6dc869854d554dd8f77dc1dc22b2b7cfb5e63` |
| 13 | `theorem` | [pow_smul_sum_map_aroots_aeval_mem_range_algebraMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Eval/Variant749e0c147ea9affc909067141f59e0f27b37d82d5bb6e2555e10318769ca2509.lean/declarations/pow-smul-sum-map-aroots-aeval-mem-range-algebramap--6e27819b5a0bf3d75f7ffd10.md) | 174 | `result-track:6e27819b5a0bf3d75f7ffd109b133a18aa2242958b9e9184d64edcc56d98e031` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
