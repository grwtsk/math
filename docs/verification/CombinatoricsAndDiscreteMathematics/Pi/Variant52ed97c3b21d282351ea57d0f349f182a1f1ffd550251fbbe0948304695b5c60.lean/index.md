# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Pi.Variant52ed97c3b21d282351ea57d0f349f182a1f1ffd550251fbbe0948304695b5c60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a01cfa86ecd12af2508b9df7aed92a6114abd82",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant52ed97c3b21d282351ea57d0f349f182a1f1ffd550251fbbe0948304695b5c60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant52ed97c3b21d282351ea57d0f349f182a1f1ffd550251fbbe0948304695b5c60.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant52ed97c3b21d282351ea57d0f349f182a1f1ffd550251fbbe0948304695b5c60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a01cfa86ecd12af2508b9df7aed92a6114abd82`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant52ed97c3b21d282351ea57d0f349f182a1f1ffd550251fbbe0948304695b5c60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Pi/Variant52ed97c3b21d282351ea57d0f349f182a1f1ffd550251fbbe0948304695b5c60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Pi` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [piFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant52ed97c3b21d282351ea57d0f349f182a1f1ffd550251fbbe0948304695b5c60.lean/declarations/pifinset--a99cd515d28ebfaae49a83c8.md) | 28 | `declaration-track:a99cd515d28ebfaae49a83c83dcf083448b83dbe252f054b3c751b6e51afce9c` |
| 2 | `theorem` | [mem_piFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant52ed97c3b21d282351ea57d0f349f182a1f1ffd550251fbbe0948304695b5c60.lean/declarations/mem-pifinset--2f72152d49d82d2d093da798.md) | 34 | `result-track:2f72152d49d82d2d093da798c7a7c1b1436e6efd7f66098f4e8645bb80991ba3` |
| 3 | `theorem` | [coe_piFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant52ed97c3b21d282351ea57d0f349f182a1f1ffd550251fbbe0948304695b5c60.lean/declarations/coe-pifinset--c49a9e9be825252bde3e7094.md) | 46 | `result-track:c49a9e9be825252bde3e70940e5c5a7df1124a75de5f1b927cc911ab13196b66` |
| 4 | `theorem` | [piFinset_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant52ed97c3b21d282351ea57d0f349f182a1f1ffd550251fbbe0948304695b5c60.lean/declarations/pifinset-subset--d22022d5fa903c6aaf494b1b.md) | 53 | `result-track:d22022d5fa903c6aaf494b1b5d77623e2bde0a7b8707f661a67ce80851690142` |
| 5 | `theorem` | [piFinset_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant52ed97c3b21d282351ea57d0f349f182a1f1ffd550251fbbe0948304695b5c60.lean/declarations/pifinset-empty--34c7096b9da4d3e93bfa438d.md) | 58 | `result-track:34c7096b9da4d3e93bfa438dafc63dd1235316675ad05fd7c60d1ca24342cad0` |
| 6 | `theorem` | [piFinset_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant52ed97c3b21d282351ea57d0f349f182a1f1ffd550251fbbe0948304695b5c60.lean/declarations/pifinset-singleton--6bbc3e12d580e5e84fd3ee65.md) | 63 | `result-track:6bbc3e12d580e5e84fd3ee65b87b6ebf72099e1cf7669a24e1f7e45abeb47300` |
| 7 | `theorem` | [piFinset_subsingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant52ed97c3b21d282351ea57d0f349f182a1f1ffd550251fbbe0948304695b5c60.lean/declarations/pifinset-subsingleton--79a4304aefd0302516b7f939.md) | 67 | `result-track:79a4304aefd0302516b7f939db2f2ddc20adf43fcd65690416e1171d849d55b4` |
| 8 | `theorem` | [piFinset_disjoint_of_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant52ed97c3b21d282351ea57d0f349f182a1f1ffd550251fbbe0948304695b5c60.lean/declarations/pifinset-disjoint-of-disjoint--b85537751df9ad00449eab22.md) | 72 | `result-track:b85537751df9ad00449eab2288e817dacba9af1213107fb02ce110887b6d70eb` |
| 9 | `instance` | [Pi.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant52ed97c3b21d282351ea57d0f349f182a1f1ffd550251fbbe0948304695b5c60.lean/declarations/pi-fintype--d567ac84ab40d8a47914161d.md) | 84 | `declaration-track:d567ac84ab40d8a47914161da5ed02091aa1410cd80442342653e429504fd827` |
| 10 | `theorem` | [Fintype.piFinset_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant52ed97c3b21d282351ea57d0f349f182a1f1ffd550251fbbe0948304695b5c60.lean/declarations/fintype-pifinset-univ--dce5d3551ad355dfa1938983.md) | 90 | `result-track:dce5d3551ad355dfa1938983b8edbbc02e26644273ba6110390cee7d0121b421` |
| 11 | `instance` | [_root_.Function.Embedding.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant52ed97c3b21d282351ea57d0f349f182a1f1ffd550251fbbe0948304695b5c60.lean/declarations/root-function-embedding-fintype--e22a27dbe0a4555a3cd4b85d.md) | 101 | `declaration-track:e22a27dbe0a4555a3cd4b85d3dbd2d00676776b971d8185d8c33e300c3f78d00` |
| 12 | `theorem` | [Finset.univ_pi_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant52ed97c3b21d282351ea57d0f349f182a1f1ffd550251fbbe0948304695b5c60.lean/declarations/finset-univ-pi-univ--28f442572feeb7eb38021b83.md) | 107 | `result-track:28f442572feeb7eb38021b832f09e17aca6c0b94bd78d5781315d997c192e829` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
