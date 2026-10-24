# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyRationalHeight

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66daa33898476c13817eedf6fb11ec9ac4d2e3c4",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyRationalHeight.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyRationalHeight.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyRationalHeight.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66daa33898476c13817eedf6fb11ec9ac4d2e3c4`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyRationalHeight.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyRationalHeight.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyProjectiveHeight`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyProjectiveHeight.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib.RingTheory.Coprime.Lemmas` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [freyPrimitiveRepresentative](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyRationalHeight.lean/declarations/freyprimitiverepresentative--4bb9cfabd10f1d012da3a8b6.md) | 19 | `declaration-track:4bb9cfabd10f1d012da3a8b6d2fcca80b65ddf82f5eba89f3a4b8ad9d220a2d1` |
| 2 | `def` | [freyRepresentativeScale](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyRationalHeight.lean/declarations/freyrepresentativescale--ed9343ae2febecc72ccd2163.md) | 26 | `declaration-track:ed9343ae2febecc72ccd21632e29a122300866a8e9b17137e73983b8cf71c2c5` |
| 3 | `theorem` | [freyPrimitiveRepresentative_gcd](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyRationalHeight.lean/declarations/freyprimitiverepresentative-gcd--99673761aced71e4ff120814.md) | 31 | `result-track:99673761aced71e4ff120814f2f12a5aa455ed7153f256443b43b287705f2869` |
| 4 | `theorem` | [freyPrimitiveRepresentative_reconstruct](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyRationalHeight.lean/declarations/freyprimitiverepresentative-reconstruct--1dff18786f1a962f78a89fc8.md) | 45 | `result-track:1dff18786f1a962f78a89fc8784a938ffd435b9790ea9a3f44de63f456502693` |
| 5 | `theorem` | [freyRepresentativeScale_ne_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyRationalHeight.lean/declarations/freyrepresentativescale-ne-zero--749e3274d14841c2f091579c.md) | 75 | `result-track:749e3274d14841c2f091579c291b52a8a384b1ed75926782c5bcdf86aa56cd48` |
| 6 | `theorem` | [frey_exists_primitive_representative](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyRationalHeight.lean/declarations/frey-exists-primitive-representative--3abb39964c16307f8da78184.md) | 85 | `result-track:3abb39964c16307f8da78184058c4b49852d3c09bfa244b6ed633a8a2902b141` |
| 7 | `theorem` | [freyPrimitiveRepresentative_smul](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyRationalHeight.lean/declarations/freyprimitiverepresentative-smul--e6f072e2acf579ae7e3bb1ce.md) | 95 | `result-track:e6f072e2acf579ae7e3bb1ce74ad654d8e14f4928a2500be17184234ccdb7f18` |
| 8 | `theorem` | [freyRepresentativeScale_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyRationalHeight.lean/declarations/freyrepresentativescale-zero--0165a4ac4562359804ba2e82.md) | 108 | `result-track:0165a4ac4562359804ba2e824f7630cff1047ff03f19f69216047a56816749c2` |
| 9 | `theorem` | [PrimitiveAdditiveTriple.frey_logHeight_lower](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyRationalHeight.lean/declarations/primitiveadditivetriple-frey-logheight-lower--f3306b329458cefe166073ea.md) | 115 | `result-track:f3306b329458cefe166073ea63fda5c002a79e61582b2bea9934b54a3352ac47` |
| 10 | `theorem` | [freyPrimitiveRepresentative_mixed_fixture](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyRationalHeight.lean/declarations/freyprimitiverepresentative-mixed-fixture--0532a83e7a8c7b2836e7dd31.md) | 125 | `result-track:0532a83e7a8c7b2836e7dd31a9046ff41666be29ccb39c40d2a4a4769c7433e6` |
| 11 | `theorem` | [freyRepresentativeScale_mixed_fixture](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyRationalHeight.lean/declarations/freyrepresentativescale-mixed-fixture--2704905ea289bb79ff29bd62.md) | 130 | `result-track:2704905ea289bb79ff29bd624206b13375cc8db65db077158b07870fa9d49eb7` |
| 12 | `theorem` | [freyPrimitiveRepresentative_vertical_fixture](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyRationalHeight.lean/declarations/freyprimitiverepresentative-vertical-fixture--6c9c01bae1c9a4a3b66fe77b.md) | 136 | `result-track:6c9c01bae1c9a4a3b66fe77b1262dcf41829ea3c52c9a1bffd90b3b30a702489` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
