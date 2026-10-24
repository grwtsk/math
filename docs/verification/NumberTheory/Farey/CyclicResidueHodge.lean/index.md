# Verification target: GRWTSK.NumberTheory.Farey.CyclicResidueHodge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b01203327e2320a57ccf8cc5cf5dd216d0cbfe1b",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Farey/CyclicResidueHodge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Farey/CyclicResidueHodge.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Farey/CyclicResidueHodge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b01203327e2320a57ccf8cc5cf5dd216d0cbfe1b`.

Source path: `GRWTSK/NumberTheory/Farey/CyclicResidueHodge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Farey/CyclicResidueHodge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Geometry.Hodge.FiniteMatrixHodge`](../../../../mathematics/Geometry/Hodge/FiniteMatrixHodge.lean/index.md) — import line 9; pinned internal source present.
- [`GRWTSK.NumberTheory.Farey.FareyResidueChannelDecomposition`](../../../../mathematics/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cyclicIncidence](../../../../mathematics/NumberTheory/Farey/CyclicResidueHodge.lean/declarations/cyclicincidence--0ba2aff9b49d4ca752f4ecfb.md) | 38 | `declaration-track:0ba2aff9b49d4ca752f4ecfb35d06d118914fb316353663fcedbd33d9048b70e` |
| 2 | `theorem` | [cyclic_coboundary_apply](../../../../mathematics/NumberTheory/Farey/CyclicResidueHodge.lean/declarations/cyclic-coboundary-apply--11ea6085f2d189e0807ea94c.md) | 43 | `result-track:11ea6085f2d189e0807ea94cbf533466d386a2acce0644195431b397656e5530` |
| 3 | `theorem` | [cyclic_energy_nonneg](../../../../mathematics/NumberTheory/Farey/CyclicResidueHodge.lean/declarations/cyclic-energy-nonneg--269fd0d0e70ffd59b56b488f.md) | 48 | `result-track:269fd0d0e70ffd59b56b488f3f6265e18cc198172bcf4b76e09557a2cc6d35fc` |
| 4 | `theorem` | [cyclic_laplacian_nonneg](../../../../mathematics/NumberTheory/Farey/CyclicResidueHodge.lean/declarations/cyclic-laplacian-nonneg--a5cca5c3d13047d14de5cdac.md) | 54 | `result-track:a5cca5c3d13047d14de5cdac00f3fe1e5d0bed75ff7f1f5023f2dc17728ec317` |
| 5 | `theorem` | [cyclic_laplacian_kernel](../../../../mathematics/NumberTheory/Farey/CyclicResidueHodge.lean/declarations/cyclic-laplacian-kernel--165233fb5ff69fea3f94819d.md) | 60 | `result-track:165233fb5ff69fea3f94819d7cde499fdc13671c4fc8b70b0c60d5fed38984bd` |
| 6 | `def` | [unitPart](../../../../mathematics/NumberTheory/Farey/CyclicResidueHodge.lean/declarations/unitpart--389b3ffafd300b6198173df3.md) | 66 | `declaration-track:389b3ffafd300b6198173df387705cb00a5a64ad59b4e81fadd6b1a316689904` |
| 7 | `def` | [nonunitPart](../../../../mathematics/NumberTheory/Farey/CyclicResidueHodge.lean/declarations/nonunitpart--938c15cada4136336e409d3e.md) | 70 | `declaration-track:938c15cada4136336e409d3e6f8ca4fc5af12f82722f454a0272efb851acbc77` |
| 8 | `theorem` | [unit_add_nonunit](../../../../mathematics/NumberTheory/Farey/CyclicResidueHodge.lean/declarations/unit-add-nonunit--d78f921decb6843589a4c23d.md) | 73 | `result-track:d78f921decb6843589a4c23de85f91dedd69a034d2ba02c178b6b83e4672d0b9` |
| 9 | `theorem` | [unitPart_idempotent](../../../../mathematics/NumberTheory/Farey/CyclicResidueHodge.lean/declarations/unitpart-idempotent--a0fc00801d438bd72f9cbc5a.md) | 79 | `result-track:a0fc00801d438bd72f9cbc5aa8ea22b45922e3e0b56b668540939abaa296e0b1` |
| 10 | `theorem` | [nonunitPart_idempotent](../../../../mathematics/NumberTheory/Farey/CyclicResidueHodge.lean/declarations/nonunitpart-idempotent--0026f5fd80a328e19933d677.md) | 85 | `result-track:0026f5fd80a328e19933d6778f721008d4a39e346c00bff804962163f55316b7` |
| 11 | `theorem` | [unit_nonunit_pointwise_zero](../../../../mathematics/NumberTheory/Farey/CyclicResidueHodge.lean/declarations/unit-nonunit-pointwise-zero--da889854ff8fcb19159a16f5.md) | 92 | `result-track:da889854ff8fcb19159a16f5d72455572c780768ea94d9651d60ca4966a99437` |
| 12 | `theorem` | [unit_nonunit_counting_orthogonal](../../../../mathematics/NumberTheory/Farey/CyclicResidueHodge.lean/declarations/unit-nonunit-counting-orthogonal--2d0169006f94db5b2ccacff4.md) | 99 | `result-track:2d0169006f94db5b2ccacff4adeac56ca51ff6b632e4714d3919c043dbf2d970` |
| 13 | `theorem` | [unitPart_nonunitPart_zero](../../../../mathematics/NumberTheory/Farey/CyclicResidueHodge.lean/declarations/unitpart-nonunitpart-zero--792afcd86203cd143acb8c1e.md) | 107 | `result-track:792afcd86203cd143acb8c1e044914e1595dd1f7173a3c94d6c7c680af74ed7e` |
| 14 | `def` | [translateUp](../../../../mathematics/NumberTheory/Farey/CyclicResidueHodge.lean/declarations/translateup--b700adc9a024174a18f50bc3.md) | 114 | `declaration-track:b700adc9a024174a18f50bc39f9b60ed5c65a8d64331fb7bd404d93f4250a6cc` |
| 15 | `def` | [fareyNonunitPointMass](../../../../mathematics/NumberTheory/Farey/CyclicResidueHodge.lean/declarations/fareynonunitpointmass--dd895e745a089ec65d8a8660.md) | 118 | `declaration-track:dd895e745a089ec65d8a86609ee0acbb35fc97941efa705580dbccbccb30be8e` |
| 16 | `theorem` | [fareyNonunitPointMass_eq_indicator](../../../../mathematics/NumberTheory/Farey/CyclicResidueHodge.lean/declarations/fareynonunitpointmass-eq-indicator--d486402bd7f3fd0685082556.md) | 121 | `result-track:d486402bd7f3fd06850825560ec7e6a7c2ccdd0d1717c2245a3f82bdb9471c7f` |
| 17 | `theorem` | [farey_unit_projector_not_translation_equivariant](../../../../mathematics/NumberTheory/Farey/CyclicResidueHodge.lean/declarations/farey-unit-projector-not-translation-equivariant--0f31c418d544f0981f23b8c6.md) | 128 | `result-track:0f31c418d544f0981f23b8c6ea3f31d1ec27907a9f14130d9ecd3d6cc1bca0ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
