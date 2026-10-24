# Verification target: GRWTSK.Topology.GeneralTopology.Ideal.Variant7407e4475935203c6e7e28c3c2191bd08a26784e95539b7727ef8e0193142534

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc960910b0e064b7e1886a6811e46602a9254dc9",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Ideal/Variant7407e4475935203c6e7e28c3c2191bd08a26784e95539b7727ef8e0193142534.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Ideal/Variant7407e4475935203c6e7e28c3c2191bd08a26784e95539b7727ef8e0193142534.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Ideal/Variant7407e4475935203c6e7e28c3c2191bd08a26784e95539b7727ef8e0193142534.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc960910b0e064b7e1886a6811e46602a9254dc9`.

Source path: `GRWTSK/Topology/GeneralTopology/Ideal/Variant7407e4475935203c6e7e28c3c2191bd08a26784e95539b7727ef8e0193142534.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Ideal/Variant7407e4475935203c6e7e28c3c2191bd08a26784e95539b7727ef8e0193142534.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.NumberField.CanonicalEmbedding.NormLeOne` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.ClassNumber` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_norm_le_and_mk_eq_div_atTop_aux₁](../../../../../mathematics/Topology/GeneralTopology/Ideal/Variant7407e4475935203c6e7e28c3c2191bd08a26784e95539b7727ef8e0193142534.lean/declarations/tendsto-norm-le-and-mk-eq-div-attop-aux--c7449cee80ebd02458aeebe3.md) | 37 | `result-track:c7449cee80ebd02458aeebe33202253cfd73ee4df7a9dc3214d90369e277f790` |
| 2 | `def` | [tendsto_norm_le_and_mk_eq_div_atTop_aux₂](../../../../../mathematics/Topology/GeneralTopology/Ideal/Variant7407e4475935203c6e7e28c3c2191bd08a26784e95539b7727ef8e0193142534.lean/declarations/tendsto-norm-le-and-mk-eq-div-attop-aux--e0273c1a2c1d5bc2f8010dc4.md) | 52 | `declaration-track:e0273c1a2c1d5bc2f8010dc41bd48cf0fbea28c64a974e41bb7e60559430cde0` |
| 3 | `theorem` | [tendsto_norm_le_and_mk_eq_div_atTop](../../../../../mathematics/Topology/GeneralTopology/Ideal/Variant7407e4475935203c6e7e28c3c2191bd08a26784e95539b7727ef8e0193142534.lean/declarations/tendsto-norm-le-and-mk-eq-div-attop--2c986c38310c7698fe09976f.md) | 73 | `result-track:2c986c38310c7698fe09976f24f69f412839b2bb6a4935734a26f57451c0fcfb` |
| 4 | `theorem` | [tendsto_norm_le_div_atTop₀](../../../../../mathematics/Topology/GeneralTopology/Ideal/Variant7407e4475935203c6e7e28c3c2191bd08a26784e95539b7727ef8e0193142534.lean/declarations/tendsto-norm-le-div-attop--611da592ae923ad35bf68709.md) | 121 | `result-track:611da592ae923ad35bf68709a550c5e771952cbcd68b15d245acbc1d7a622571` |
| 5 | `theorem` | [tendsto_norm_le_div_atTop](../../../../../mathematics/Topology/GeneralTopology/Ideal/Variant7407e4475935203c6e7e28c3c2191bd08a26784e95539b7727ef8e0193142534.lean/declarations/tendsto-norm-le-div-attop--eb6659642dd8b3294533b2f8.md) | 144 | `result-track:eb6659642dd8b3294533b2f8a9670492b059b7604d2cba43e2ae3f0fe40c1551` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
