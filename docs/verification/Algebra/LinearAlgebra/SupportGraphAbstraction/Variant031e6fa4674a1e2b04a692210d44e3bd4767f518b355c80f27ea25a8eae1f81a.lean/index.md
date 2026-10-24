# Verification target: GRWTSK.Algebra.LinearAlgebra.SupportGraphAbstraction.Variant031e6fa4674a1e2b04a692210d44e3bd4767f518b355c80f27ea25a8eae1f81a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cce17602f1a0548073778e62fd5830c55126adbd",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant031e6fa4674a1e2b04a692210d44e3bd4767f518b355c80f27ea25a8eae1f81a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant031e6fa4674a1e2b04a692210d44e3bd4767f518b355c80f27ea25a8eae1f81a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant031e6fa4674a1e2b04a692210d44e3bd4767f518b355c80f27ea25a8eae1f81a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cce17602f1a0548073778e62fd5830c55126adbd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant031e6fa4674a1e2b04a692210d44e3bd4767f518b355c80f27ea25a8eae1f81a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant031e6fa4674a1e2b04a692210d44e3bd4767f518b355c80f27ea25a8eae1f81a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Core.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [undirectedSupport](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant031e6fa4674a1e2b04a692210d44e3bd4767f518b355c80f27ea25a8eae1f81a.lean/declarations/undirectedsupport--706fb393ba932874327f9f66.md) | 27 | `declaration-track:706fb393ba932874327f9f660a28b7a6f6ad24210be60665d652546c8b295e0c` |
| 2 | `theorem` | [directed_edge_visible](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant031e6fa4674a1e2b04a692210d44e3bd4767f518b355c80f27ea25a8eae1f81a.lean/declarations/directed-edge-visible--cfac7cf160452a86d57c2ace.md) | 34 | `result-track:cfac7cf160452a86d57c2ace8c719ec89d8b031d9ffc212d5f636939af0ed11b` |
| 3 | `theorem` | [undirectedSupport_symmetric](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant031e6fa4674a1e2b04a692210d44e3bd4767f518b355c80f27ea25a8eae1f81a.lean/declarations/undirectedsupport-symmetric--a1df6c4653527bb6658c6000.md) | 43 | `result-track:a1df6c4653527bb6658c60003578b11b0bb00882a8a78710a519fe0c3cf1b4f9` |
| 4 | `def` | [boolZModMatrix](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant031e6fa4674a1e2b04a692210d44e3bd4767f518b355c80f27ea25a8eae1f81a.lean/declarations/boolzmodmatrix--a203a0af7175a5f979945439.md) | 51 | `declaration-track:a203a0af7175a5f97994543967017ac994fdff7ae0e245b97e20c59a45772517` |
| 5 | `def` | [swapSupportExample](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant031e6fa4674a1e2b04a692210d44e3bd4767f518b355c80f27ea25a8eae1f81a.lean/declarations/swapsupportexample--cb694d6a62bc18e004a4f8a4.md) | 58 | `declaration-track:cb694d6a62bc18e004a4f8a461210dec409e54716b594644695c8375c5e08673` |
| 6 | `def` | [orientedSupportExample](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant031e6fa4674a1e2b04a692210d44e3bd4767f518b355c80f27ea25a8eae1f81a.lean/declarations/orientedsupportexample--d867083fa19297c9932ef90a.md) | 62 | `declaration-track:d867083fa19297c9932ef90a3ebd5f90d4451b1547d0174eb07b0f4748049ec9` |
| 7 | `theorem` | [support_examples_distinct](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant031e6fa4674a1e2b04a692210d44e3bd4767f518b355c80f27ea25a8eae1f81a.lean/declarations/support-examples-distinct--fbe98b94dd0ec2f8d07342f1.md) | 66 | `result-track:fbe98b94dd0ec2f8d07342f1a6f4af143f055daef4d0f5ef7b09bc4d9893e9b6` |
| 8 | `theorem` | [support_examples_same_abstraction](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant031e6fa4674a1e2b04a692210d44e3bd4767f518b355c80f27ea25a8eae1f81a.lean/declarations/support-examples-same-abstraction--a29865ac7a1d88a61f5199ea.md) | 73 | `result-track:a29865ac7a1d88a61f5199eaab0569ac4784b04bd4dfad1cdfb3eb57cbee49d9` |
| 9 | `theorem` | [swapSupportExample_det](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant031e6fa4674a1e2b04a692210d44e3bd4767f518b355c80f27ea25a8eae1f81a.lean/declarations/swapsupportexample-det--14e6709852877da32c3eb9de.md) | 80 | `result-track:14e6709852877da32c3eb9de76e03140e2a9ef0b1d45af5611fa8baaa35215a3` |
| 10 | `theorem` | [orientedSupportExample_det](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant031e6fa4674a1e2b04a692210d44e3bd4767f518b355c80f27ea25a8eae1f81a.lean/declarations/orientedsupportexample-det--db50978e86d42ac9489b8717.md) | 85 | `result-track:db50978e86d42ac9489b8717c9e90b74f100a6615cc736b6a46ad520e675cbd9` |
| 11 | `theorem` | [support_does_not_determine_invertibility](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant031e6fa4674a1e2b04a692210d44e3bd4767f518b355c80f27ea25a8eae1f81a.lean/declarations/support-does-not-determine-invertibility--aafaaa803664fc5f999ca31f.md) | 93 | `result-track:aafaaa803664fc5f999ca31fcafdd0860f2c419dc1bc46e1ba3036e140c2c3c9` |
| 12 | `structure` | [SupportAbstractionLoss](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant031e6fa4674a1e2b04a692210d44e3bd4767f518b355c80f27ea25a8eae1f81a.lean/declarations/supportabstractionloss--279ce4a6f5e35b750b311de4.md) | 106 | `declaration-track:279ce4a6f5e35b750b311de47227a5822c898cef5b4eb2932907a5582f37e7eb` |
| 13 | `def` | [undirectedSupportLoss](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant031e6fa4674a1e2b04a692210d44e3bd4767f518b355c80f27ea25a8eae1f81a.lean/declarations/undirectedsupportloss--5d92fd6674d786c3ca04ddd3.md) | 114 | `declaration-track:5d92fd6674d786c3ca04ddd3f6a396789abb0d96ddc9d0a6546f66a8585c7f91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
