# Verification target: GRWTSK.LinearAlgebra.FilteredProjectorSplit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de05b4131c05bb31b1e86b77093cfa5747f9bc83",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/FilteredProjectorSplit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/FilteredProjectorSplit.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/FilteredProjectorSplit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de05b4131c05bb31b1e86b77093cfa5747f9bc83`.

Source path: `GRWTSK/LinearAlgebra/FilteredProjectorSplit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/FilteredProjectorSplit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FilteredIdempotent](../../../../mathematics/Algebra/LinearAlgebra/FilteredProjectorSplit.lean/declarations/filteredidempotent--ddb2b78fd85ba8a7e5ba0fe3.md) | 28 | `declaration-track:ddb2b78fd85ba8a7e5ba0fe3b04a8e32851bb45c8608f4b22af30b28f0194085` |
| 2 | `def` | [FilteredIdempotent.q](../../../../mathematics/Algebra/LinearAlgebra/FilteredProjectorSplit.lean/declarations/filteredidempotent-q--2beb164913e90cd554b75062.md) | 35 | `declaration-track:2beb164913e90cd554b75062a421f5ff5a9d0928c741d330a14c61cc76b05ab6` |
| 3 | `def` | [FilteredIdempotent.left](../../../../mathematics/Algebra/LinearAlgebra/FilteredProjectorSplit.lean/declarations/filteredidempotent-left--d730ff2c4df152030460217e.md) | 40 | `declaration-track:d730ff2c4df152030460217ea74bb1e023704a9a6048fe878c33d6570545c75f` |
| 4 | `def` | [FilteredIdempotent.right](../../../../mathematics/Algebra/LinearAlgebra/FilteredProjectorSplit.lean/declarations/filteredidempotent-right--10154cc6f2c3fdd48e717ef4.md) | 45 | `declaration-track:10154cc6f2c3fdd48e717ef453e29419c29448d725505bff56749977cf63e243` |
| 5 | `theorem` | [FilteredIdempotent.q_preserves](../../../../mathematics/Algebra/LinearAlgebra/FilteredProjectorSplit.lean/declarations/filteredidempotent-q-preserves--e1c19a54e8b338efe75b2d30.md) | 50 | `result-track:e1c19a54e8b338efe75b2d30c8e1f458c8fde9feaafc8e67dc446c940b492898` |
| 6 | `theorem` | [FilteredIdempotent.q_idempotent](../../../../mathematics/Algebra/LinearAlgebra/FilteredProjectorSplit.lean/declarations/filteredidempotent-q-idempotent--b8dff4fae35fae3543a5716f.md) | 57 | `result-track:b8dff4fae35fae3543a5716fda88d80842ed7b753116ddc4573633316018406e` |
| 7 | `theorem` | [FilteredIdempotent.range_isCompl](../../../../mathematics/Algebra/LinearAlgebra/FilteredProjectorSplit.lean/declarations/filteredidempotent-range-iscompl--3a933ed9badad2c920382861.md) | 64 | `result-track:3a933ed9badad2c92038286178facfbc84e6c238d367f8e34c83b5b8739ea789` |
| 8 | `theorem` | [FilteredIdempotent.left_right_disjoint](../../../../mathematics/Algebra/LinearAlgebra/FilteredProjectorSplit.lean/declarations/filteredidempotent-left-right-disjoint--51ed03d094f6ff4f9a218a4a.md) | 72 | `result-track:51ed03d094f6ff4f9a218a4a9eaef4060a4e78563332f2d5e9af91ce8fc1c521` |
| 9 | `theorem` | [FilteredIdempotent.left_sup_right](../../../../mathematics/Algebra/LinearAlgebra/FilteredProjectorSplit.lean/declarations/filteredidempotent-left-sup-right--35a4ee3dfe79f973d65ccf2c.md) | 78 | `result-track:35a4ee3dfe79f973d65ccf2c22676d50340b2e3e5af8926a1c09839116fa30f1` |
| 10 | `theorem` | [FilteredIdempotent.finrank_left_add_right](../../../../mathematics/Algebra/LinearAlgebra/FilteredProjectorSplit.lean/declarations/filteredidempotent-finrank-left-add-right--4757e8b8378000a854eee0f6.md) | 96 | `result-track:4757e8b8378000a854eee0f6df05a6763c2ff74e0c81679a808c0d8645b7bdad` |
| 11 | `structure` | [FilteredFrobeniusProjector](../../../../mathematics/Algebra/LinearAlgebra/FilteredProjectorSplit.lean/declarations/filteredfrobeniusprojector--0e9440de6bf53d3ee724a95b.md) | 108 | `declaration-track:0e9440de6bf53d3ee724a95bb62118516041f0ab2d3d96a545a6eae8ad96eb6c` |
| 12 | `theorem` | [FilteredFrobeniusProjector.q_commutes](../../../../mathematics/Algebra/LinearAlgebra/FilteredProjectorSplit.lean/declarations/filteredfrobeniusprojector-q-commutes--eb4b7ba3846639633ad48bdc.md) | 114 | `result-track:eb4b7ba3846639633ad48bdcdbe4e0ee17a9128a5d5db6a4393582b959da8bed` |
| 13 | `theorem` | [FilteredFrobeniusProjector.phi_mem_range_p](../../../../mathematics/Algebra/LinearAlgebra/FilteredProjectorSplit.lean/declarations/filteredfrobeniusprojector-phi-mem-range-p--fb5b9a311c4d7fed8eb21d25.md) | 123 | `result-track:fb5b9a311c4d7fed8eb21d2548a24706799ed1e72359409d3581f6d302ba37d9` |
| 14 | `theorem` | [FilteredFrobeniusProjector.phi_mem_range_q](../../../../mathematics/Algebra/LinearAlgebra/FilteredProjectorSplit.lean/declarations/filteredfrobeniusprojector-phi-mem-range-q--cdac22255d7f2903e6c483cf.md) | 132 | `result-track:cdac22255d7f2903e6c483cfe877d630c343171153cc2009a778d4bebae93036` |
| 15 | `theorem` | [FilteredFrobeniusProjector.phi_mem_left](../../../../mathematics/Algebra/LinearAlgebra/FilteredProjectorSplit.lean/declarations/filteredfrobeniusprojector-phi-mem-left--d584185fdc6a2e1465026bcb.md) | 142 | `result-track:d584185fdc6a2e1465026bcb0558e8ef0a0c812fa556b46d4f408504c48e7405` |
| 16 | `theorem` | [FilteredFrobeniusProjector.phi_mem_right](../../../../mathematics/Algebra/LinearAlgebra/FilteredProjectorSplit.lean/declarations/filteredfrobeniusprojector-phi-mem-right--d750098c2b21014e32635c2e.md) | 151 | `result-track:d750098c2b21014e32635c2eefa2c330f7a3681ae54635ed3dfe1e6dfceac741` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
