# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.Units.Variantccb1059427579b2051e81469b18bad23e3a9ab8397bfb3a33c0e4cad31bcc1d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a34b950f501a5c4598f11e028124ccdf7f8929a1",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Units/Variantccb1059427579b2051e81469b18bad23e3a9ab8397bfb3a33c0e4cad31bcc1d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Variantccb1059427579b2051e81469b18bad23e3a9ab8397bfb3a33c0e4cad31bcc1d5.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Variantccb1059427579b2051e81469b18bad23e3a9ab8397bfb3a33c0e4cad31bcc1d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a34b950f501a5c4598f11e028124ccdf7f8929a1`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/Units/Variantccb1059427579b2051e81469b18bad23e3a9ab8397bfb3a33c0e4cad31bcc1d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/Units/Variantccb1059427579b2051e81469b18bad23e3a9ab8397bfb3a33c0e4cad31bcc1d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Torsion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.Embeddings` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.Norm` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Rat.RingOfIntegers.isUnit_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Variantccb1059427579b2051e81469b18bad23e3a9ab8397bfb3a33c0e4cad31bcc1d5.lean/declarations/rat-ringofintegers-isunit-iff--e6d4e5fd82160eb248a8773e.md) | 37 | `result-track:e6d4e5fd82160eb248a8773ee4a07b1f5eaf117e7af54826b53ea00e1408f8e7` |
| 2 | `theorem` | [isUnit_iff_norm](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Variantccb1059427579b2051e81469b18bad23e3a9ab8397bfb3a33c0e4cad31bcc1d5.lean/declarations/isunit-iff-norm--ae25aaef95cf847b1dc5c908.md) | 51 | `result-track:ae25aaef95cf847b1dc5c908edf364540138d5c792ba235e62e92938766f1f0b` |
| 3 | `theorem` | [coe_injective](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Variantccb1059427579b2051e81469b18bad23e3a9ab8397bfb3a33c0e4cad31bcc1d5.lean/declarations/coe-injective--a5da9177dfa604be320e8f11.md) | 63 | `result-track:a5da9177dfa604be320e8f1116a1c5981ed4b3b236edc1101950aef436913184` |
| 4 | `theorem` | [coe_mul](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Variantccb1059427579b2051e81469b18bad23e3a9ab8397bfb3a33c0e4cad31bcc1d5.lean/declarations/coe-mul--5a64a8ed50cdf21361e6357b.md) | 68 | `result-track:5a64a8ed50cdf21361e6357b6de0595f50b00276083ea5adf11e8f7af368a5f4` |
| 5 | `theorem` | [coe_pow](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Variantccb1059427579b2051e81469b18bad23e3a9ab8397bfb3a33c0e4cad31bcc1d5.lean/declarations/coe-pow--2a3ecf6358f0f28abc170404.md) | 70 | `result-track:2a3ecf6358f0f28abc170404fe8f60b4cfc647ba19be9bf071524bdcd847cc23` |
| 6 | `theorem` | [coe_zpow](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Variantccb1059427579b2051e81469b18bad23e3a9ab8397bfb3a33c0e4cad31bcc1d5.lean/declarations/coe-zpow--275763763442b60539ce20ef.md) | 73 | `result-track:275763763442b60539ce20ef9046dc8d8382ff712c3ccb562239704e6096abf1` |
| 7 | `theorem` | [coe_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Variantccb1059427579b2051e81469b18bad23e3a9ab8397bfb3a33c0e4cad31bcc1d5.lean/declarations/coe-one--5b88e7e33e2ef0f5b33cca66.md) | 77 | `result-track:5b88e7e33e2ef0f5b33cca66e4e0adcc8298a791c031fa312dbb4946ac60c07e` |
| 8 | `theorem` | [coe_neg_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Variantccb1059427579b2051e81469b18bad23e3a9ab8397bfb3a33c0e4cad31bcc1d5.lean/declarations/coe-neg-one--ec80a893d4eb4f890e408971.md) | 79 | `result-track:ec80a893d4eb4f890e40897105f66ba5a465720a0a17f6465b8128a7d8f13185` |
| 9 | `theorem` | [coe_ne_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Variantccb1059427579b2051e81469b18bad23e3a9ab8397bfb3a33c0e4cad31bcc1d5.lean/declarations/coe-ne-zero--5b937e1722cf829674da93b4.md) | 81 | `result-track:5b937e1722cf829674da93b42af8cd81ffdcb1090685535abcc9b0436ac13261` |
| 10 | `def` | [torsion](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Variantccb1059427579b2051e81469b18bad23e3a9ab8397bfb3a33c0e4cad31bcc1d5.lean/declarations/torsion--7c4dc137b7c3dca70f1a6d5b.md) | 91 | `declaration-track:7c4dc137b7c3dca70f1a6d5bd29d68c3e719a970e9a9ac5c7182e08d0c11d2f5` |
| 11 | `theorem` | [mem_torsion](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Variantccb1059427579b2051e81469b18bad23e3a9ab8397bfb3a33c0e4cad31bcc1d5.lean/declarations/mem-torsion--2f04d29328184d1574fd318c.md) | 93 | `result-track:2f04d29328184d1574fd318ce32d5354b85de4438b6b760cf2ffc2d2a8460b83` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Variantccb1059427579b2051e81469b18bad23e3a9ab8397bfb3a33c0e4cad31bcc1d5.lean/declarations/instance--75ab6023d92b21abe501531d.md) | 103 | `declaration-track:75ab6023d92b21abe501531d01da4f85cab2ed268ed3c094720f31d011d1e991` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Variantccb1059427579b2051e81469b18bad23e3a9ab8397bfb3a33c0e4cad31bcc1d5.lean/declarations/instance--1b575501331fa50db09eadf6.md) | 106 | `declaration-track:1b575501331fa50db09eadf61c47a135b655329df0c45b0cbf601b06e44d743e` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Variantccb1059427579b2051e81469b18bad23e3a9ab8397bfb3a33c0e4cad31bcc1d5.lean/declarations/instance--2d682bda2b1a8593243d58f2.md) | 117 | `declaration-track:2d682bda2b1a8593243d58f28e4e088610ad677cbe1188b28baaffc5ea6d7331` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Variantccb1059427579b2051e81469b18bad23e3a9ab8397bfb3a33c0e4cad31bcc1d5.lean/declarations/instance--d30f43af4bbbe63c7b59f65e.md) | 120 | `declaration-track:d30f43af4bbbe63c7b59f65e552cd72fa9d8abd26b0163c7107c933853dd59ff` |
| 16 | `def` | [torsion_order](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Variantccb1059427579b2051e81469b18bad23e3a9ab8397bfb3a33c0e4cad31bcc1d5.lean/declarations/torsion-order--703e7a31ec7971fb01188d23.md) | 123 | `declaration-track:703e7a31ec7971fb01188d23073eb85affec9f9b0bc470ddf574735e6890789b` |
| 17 | `theorem` | [rootsOfUnity_eq_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Variantccb1059427579b2051e81469b18bad23e3a9ab8397bfb3a33c0e4cad31bcc1d5.lean/declarations/rootsofunity-eq-one--8d46816b06ef8b33c3f348d1.md) | 127 | `result-track:8d46816b06ef8b33c3f348d125b1db19c03f5ee67bdb1d3bd3e139fa6109c521` |
| 18 | `theorem` | [rootsOfUnity_eq_torsion](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Variantccb1059427579b2051e81469b18bad23e3a9ab8397bfb3a33c0e4cad31bcc1d5.lean/declarations/rootsofunity-eq-torsion--32ae1974a6a1586860b0464b.md) | 141 | `result-track:32ae1974a6a1586860b0464b3bba57ef3e60291c3e1365466d830e5a2582ece5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
