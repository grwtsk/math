# Verification target: GRWTSK.Algebra.LinearAlgebra.Finsupp.Variant69d0bdb479a527e4e8cf609a7b56146800aa2910d803d77ef7b14ace04a03686

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "618f1f4108eacd3cd71539b0ee3d5063d179b820",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Finsupp/Variant69d0bdb479a527e4e8cf609a7b56146800aa2910d803d77ef7b14ace04a03686.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant69d0bdb479a527e4e8cf609a7b56146800aa2910d803d77ef7b14ace04a03686.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant69d0bdb479a527e4e8cf609a7b56146800aa2910d803d77ef7b14ace04a03686.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `618f1f4108eacd3cd71539b0ee3d5063d179b820`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Finsupp/Variant69d0bdb479a527e4e8cf609a7b56146800aa2910d803d77ef7b14ace04a03686.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Finsupp/Variant69d0bdb479a527e4e8cf609a7b56146800aa2910d803d77ef7b14ace04a03686.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Finsupp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DirectSum.TensorProduct` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finsuppTensorFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant69d0bdb479a527e4e8cf609a7b56146800aa2910d803d77ef7b14ace04a03686.lean/declarations/finsupptensorfinsupp--c4a0a892e612ae41405fdf33.md) | 38 | `declaration-track:c4a0a892e612ae41405fdf33758399d9975e7b0fe4b47c4d6c1492367c835f1b` |
| 2 | `theorem` | [finsuppTensorFinsupp_single](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant69d0bdb479a527e4e8cf609a7b56146800aa2910d803d77ef7b14ace04a03686.lean/declarations/finsupptensorfinsupp-single--5155760d6b40da40a2d8492c.md) | 46 | `result-track:5155760d6b40da40a2d8492c3297cb0c9953516fb9ea071c286a4f4a86914148` |
| 3 | `theorem` | [finsuppTensorFinsupp_apply](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant69d0bdb479a527e4e8cf609a7b56146800aa2910d803d77ef7b14ace04a03686.lean/declarations/finsupptensorfinsupp-apply--e75303b8608425385efbab84.md) | 54 | `result-track:e75303b8608425385efbab842ce2c2ab035cb330f04342fc54521be652c6618f` |
| 4 | `theorem` | [finsuppTensorFinsupp_symm_single](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant69d0bdb479a527e4e8cf609a7b56146800aa2910d803d77ef7b14ace04a03686.lean/declarations/finsupptensorfinsupp-symm-single--ecc9632def5ead71dc6b17e9.md) | 77 | `result-track:ecc9632def5ead71dc6b17e9e50f95fc252e1c7cc2a2712161345263cf22c6d7` |
| 5 | `def` | [finsuppTensorFinsupp'](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant69d0bdb479a527e4e8cf609a7b56146800aa2910d803d77ef7b14ace04a03686.lean/declarations/finsupptensorfinsupp--b39d671309a50e5cf3275763.md) | 88 | `declaration-track:b39d671309a50e5cf3275763c9bc5e6bf4e6d4bb9e3c36dc5e6c3ffa3e72a4f9` |
| 6 | `theorem` | [finsuppTensorFinsupp'_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant69d0bdb479a527e4e8cf609a7b56146800aa2910d803d77ef7b14ace04a03686.lean/declarations/finsupptensorfinsupp-apply-apply--6a5dc5343ae6ed5e861d0fee.md) | 93 | `result-track:6a5dc5343ae6ed5e861d0fee33f9a4b83e42e3ec5defb9278dc25b99ab93ea93` |
| 7 | `theorem` | [finsuppTensorFinsupp'_single_tmul_single](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant69d0bdb479a527e4e8cf609a7b56146800aa2910d803d77ef7b14ace04a03686.lean/declarations/finsupptensorfinsupp-single-tmul-single--00c81a4f1fb5c18b2a668174.md) | 98 | `result-track:00c81a4f1fb5c18b2a6681744aafe306b087f433ea1eedd4ee9e1bade5965bfd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
