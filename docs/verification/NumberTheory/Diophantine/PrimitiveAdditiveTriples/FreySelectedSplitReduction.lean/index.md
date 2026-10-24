# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreySelectedSplitReduction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe8a7418fba3c54538099ed25754e7a6d20785af",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedSplitReduction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedSplitReduction.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedSplitReduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe8a7418fba3c54538099ed25754e7a6d20785af`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedSplitReduction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedSplitReduction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.EllipticCurve.AffineSlopeTransport`](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/AffineSlopeTransport.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyOddSplitReduction`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean/index.md) — import line 12; pinned internal source present.
- `Mathlib.Tactic.Tauto` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [selectedResidueModel](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedSplitReduction.lean/declarations/selectedresiduemodel--0ece92a169b7cb1c50d36e6d.md) | 26 | `declaration-track:0ece92a169b7cb1c50d36e6d7614699119b14be1e2c92845056a246e7f2a555b` |
| 2 | `theorem` | [selected_split_iff_polynomial](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedSplitReduction.lean/declarations/selected-split-iff-polynomial--91d44ef28813cefa68b6fc82.md) | 31 | `result-track:91d44ef28813cefa68b6fc82201d77f20e39cc511821fbdb988aa523d48f90be` |
| 3 | `def` | [slopeScale](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedSplitReduction.lean/declarations/slopescale--c5487d6ea473d640ba680d4b.md) | 53 | `declaration-track:c5487d6ea473d640ba680d4b1d9efa55eae2349d961dad315d24c48b8378ff1b` |
| 4 | `def` | [slopeShear](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedSplitReduction.lean/declarations/slopeshear--9e6a3e142d248178e73f0427.md) | 55 | `declaration-track:9e6a3e142d248178e73f0427234ce4a318f5261d45de6ab4b1d3d9a60b4c5ed8` |
| 5 | `theorem` | [selected_scale_shear](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedSplitReduction.lean/declarations/selected-scale-shear--fc93d15a7488a292f53f2517.md) | 57 | `result-track:fc93d15a7488a292f53f25174d930330a2abe78a1ebcaea334c5acd7507966f1` |
| 6 | `theorem` | [rational_tangent_identity](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedSplitReduction.lean/declarations/rational-tangent-identity--b86aaff045e0071552e38ad4.md) | 72 | `result-track:b86aaff045e0071552e38ad4f307b3daa04ad907ffcfa3806b23f18e3f4c5c12` |
| 7 | `theorem` | [integer_tangent_identity](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedSplitReduction.lean/declarations/integer-tangent-identity--a7553f851972cd7bd16f2094.md) | 90 | `result-track:a7553f851972cd7bd16f209489ca3e061b042bc0a79d16879d355887e8657d36` |
| 8 | `theorem` | [residue_tangent_identity](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedSplitReduction.lean/declarations/residue-tangent-identity--7a1bf27ece259b7fa1922c8b.md) | 110 | `result-track:7a1bf27ece259b7fa1922c8b1a69cf0320bc29b951eec8adbeed669e0412f55d` |
| 9 | `theorem` | [scale_ne_zero_at_odd](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedSplitReduction.lean/declarations/scale-ne-zero-at-odd--4f7e96ab1466ae0e6d0eea80.md) | 120 | `result-track:4f7e96ab1466ae0e6d0eea80235fb3e1b3ccda0dc636ec0a77ae8bfe37834bbb` |
| 10 | `theorem` | [odd_polynomial_splits_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedSplitReduction.lean/declarations/odd-polynomial-splits-iff--4fa14388c01f338cfebebcd2.md) | 127 | `result-track:4fa14388c01f338cfebebcd26211e3f05def348bb56b977f2e673b9cad79f45a` |
| 11 | `def` | [oddSlopeEquiv](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedSplitReduction.lean/declarations/oddslopeequiv--ce92fe5dc8b3e13d991942e8.md) | 136 | `declaration-track:ce92fe5dc8b3e13d991942e8aabf1934b422cea8139d95d021cbf21d660f8f98` |
| 12 | `theorem` | [selected_split_iff_raw](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedSplitReduction.lean/declarations/selected-split-iff-raw--17130e815a04d1b185417710.md) | 143 | `result-track:17130e815a04d1b185417710dc3b4199f85723d9bd4f660ea810c888a877d1cb` |
| 13 | `theorem` | [selected_split_at_odd_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedSplitReduction.lean/declarations/selected-split-at-odd-iff--d12877857beba995d9999e77.md) | 160 | `result-track:d12877857beba995d9999e7745af7bdc6979006dc5a37a04480a2516c0cfee50` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedSplitReduction.lean/declarations/instance--af25eea232a53cb6c083f689.md) | 169 | `declaration-track:af25eea232a53cb6c083f68907f62b78382324e8e79b858afb9cb8307037d173` |
| 15 | `theorem` | [selected_a2_formula](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedSplitReduction.lean/declarations/selected-a2-formula--c9b317c83cd2ea963f7c355a.md) | 172 | `result-track:c9b317c83cd2ea963f7c355a79ba4fa87ee81626e42f85b75a4ccea9c39b96de` |
| 16 | `theorem` | [selected_binary_tangent](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedSplitReduction.lean/declarations/selected-binary-tangent--98a488464c7e4ca9f8988c02.md) | 181 | `result-track:98a488464c7e4ca9f8988c0262ee7d76df27f20fc61334ccdebab0d388480962` |
| 17 | `theorem` | [selected_split_at_two_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedSplitReduction.lean/declarations/selected-split-at-two-iff--dbc46c9611e9ad2306985451.md) | 200 | `result-track:dbc46c9611e9ad2306985451721596752e396409e67ac279cb873953c4ccc4cd` |
| 18 | `theorem` | [first_a2_parity](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedSplitReduction.lean/declarations/first-a2-parity--392291f3c6cc5285ad3c286d.md) | 218 | `result-track:392291f3c6cc5285ad3c286da2c4b163e3582cbb5181149ee667eab793c73ccf` |
| 19 | `theorem` | [even_a2_parity](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedSplitReduction.lean/declarations/even-a2-parity--078f673650a7eca7cd100648.md) | 225 | `result-track:078f673650a7eca7cd100648d3b84a7082849faf75f4e1bf50a088240b458105` |
| 20 | `theorem` | [dyadic_parity_formula](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedSplitReduction.lean/declarations/dyadic-parity-formula--4562fabf89228ef75d0357f9.md) | 234 | `result-track:4562fabf89228ef75d0357f98072329b38d5f3476dab24c04422db97cda0dd0b` |
| 21 | `theorem` | [selected_nonsplit_at_two_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedSplitReduction.lean/declarations/selected-nonsplit-at-two-iff--32017758bf9ef075fe50e231.md) | 244 | `result-track:32017758bf9ef075fe50e231743c86f3367dc57833890c9d36cd0fbca0eb991c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
