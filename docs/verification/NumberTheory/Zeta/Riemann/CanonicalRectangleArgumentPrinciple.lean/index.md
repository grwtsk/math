# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleArgumentPrinciple

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c04d8919ee397a32cf8ac4d057f3be19595c77a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleArgumentPrinciple.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleArgumentPrinciple.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleArgumentPrinciple.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c04d8919ee397a32cf8ac4d057f3be19595c77a`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleArgumentPrinciple.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalRectangleArgumentPrinciple.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleUnitPoleWinding`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleRegularization`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleRegularization.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleTuringPacket`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleTuringPacket.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [normalizedRectangleIndex_eq_expected](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleArgumentPrinciple.lean/declarations/normalizedrectangleindex-eq-expected--035653432640cc666407d747.md) | 54 | `result-track:035653432640cc666407d747fea7246857c250fe144f6fb0f8f4aa4ab6b00cfa` |
| 2 | `def` | [toCanonicalRectangleIndexEnclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleArgumentPrinciple.lean/declarations/tocanonicalrectangleindexenclosure--e9fdf378fe4841890d8d6f63.md) | 62 | `declaration-track:e9fdf378fe4841890d8d6f634410b1f0e919edaf14ab00130b4acd8db0234bab` |
| 3 | `theorem` | [enclosure_argument_principle](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleArgumentPrinciple.lean/declarations/enclosure-argument-principle--2b2fd622d46ebfe5535bbfa2.md) | 70 | `result-track:2b2fd622d46ebfe5535bbfa2c36d0bbeeb0c46eabe921e22dc42b53d64015e74` |
| 4 | `theorem` | [exact_positive_count_of_accepts](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleArgumentPrinciple.lean/declarations/exact-positive-count-of-accepts--7b7fd74246ab9703f1bbb42a.md) | 81 | `result-track:7b7fd74246ab9703f1bbb42a6533185c16c4339b4390db850a980ad6ffb558e1` |
| 5 | `def` | [packetOfRegularizedRectangle](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleArgumentPrinciple.lean/declarations/packetofregularizedrectangle--5b1035a5eea67d5d8f6e7940.md) | 97 | `declaration-track:5b1035a5eea67d5d8f6e79403554cdb7345388416a0f7c484aab6f7626967a6d` |
| 6 | `theorem` | [packet_totalCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleArgumentPrinciple.lean/declarations/packet-totalcount--dd688039e291bb2fcc7e7649.md) | 112 | `result-track:dd688039e291bb2fcc7e76494f02ac31d4723bad3f3d59c52bd60cba1fcda162` |
| 7 | `theorem` | [rhThrough_of_regularized_rectangle_count_margin](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleArgumentPrinciple.lean/declarations/rhthrough-of-regularized-rectangle-count-margin--5f6715c8adf1c51c665dd6e3.md) | 128 | `result-track:5f6715c8adf1c51c665dd6e3606d5e7c65e6728224481e27fa473dac32c531d8` |
| 8 | `theorem` | [knownPoints_eq_positiveHeightHead_of_regularized_rectangle_count_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleArgumentPrinciple.lean/declarations/knownpoints-eq-positiveheighthead-of-regularized-rectangle-count-eq--eb600c55da45b63482c1972e.md) | 146 | `result-track:eb600c55da45b63482c1972ebd17504e660e2b62e6ffe1635d575d6996cc20a5` |
| 9 | `theorem` | [packet_gap_eq_zero_of_regularized_rectangle_count_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleArgumentPrinciple.lean/declarations/packet-gap-eq-zero-of-regularized-rectangle-count-eq--4ad34f8264533e86410934fa.md) | 163 | `result-track:4ad34f8264533e86410934fae41101b5dd5b115a592c2682f0233ee3ed86b874` |
| 10 | `theorem` | [exact_two_unit_deficit_still_rejected_fixture](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleArgumentPrinciple.lean/declarations/exact-two-unit-deficit-still-rejected-fixture--184161d3451906df4ce85c29.md) | 183 | `result-track:184161d3451906df4ce85c29302c9efd3d254646cf0f4d9844b99fbbf26fb534` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
