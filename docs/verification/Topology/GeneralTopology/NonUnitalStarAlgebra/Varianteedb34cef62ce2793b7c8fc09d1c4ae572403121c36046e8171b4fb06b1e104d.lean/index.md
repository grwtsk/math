# Verification target: GRWTSK.Topology.GeneralTopology.NonUnitalStarAlgebra.Varianteedb34cef62ce2793b7c8fc09d1c4ae572403121c36046e8171b4fb06b1e104d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88f3f0a5b00ed11c1d1d1ec73150783bdb0a989e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NonUnitalStarAlgebra/Varianteedb34cef62ce2793b7c8fc09d1c4ae572403121c36046e8171b4fb06b1e104d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Varianteedb34cef62ce2793b7c8fc09d1c4ae572403121c36046e8171b4fb06b1e104d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Varianteedb34cef62ce2793b7c8fc09d1c4ae572403121c36046e8171b4fb06b1e104d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88f3f0a5b00ed11c1d1d1ec73150783bdb0a989e`.

Source path: `GRWTSK/Topology/GeneralTopology/NonUnitalStarAlgebra/Varianteedb34cef62ce2793b7c8fc09d1c4ae572403121c36046e8171b4fb06b1e104d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NonUnitalStarAlgebra/Varianteedb34cef62ce2793b7c8fc09d1c4ae572403121c36046e8171b4fb06b1e104d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.NonUnitalSubalgebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.NonUnitalAlgebra` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Star` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instIsTopologicalSemiring](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Varianteedb34cef62ce2793b7c8fc09d1c4ae572403121c36046e8171b4fb06b1e104d.lean/declarations/instistopologicalsemiring--c4b8d096c7682fa1509d39ac.md) | 33 | `declaration-track:c4b8d096c7682fa1509d39ac9a55d236ad49a35b16788e55dcf757338dbebada` |
| 2 | `def` | [topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Varianteedb34cef62ce2793b7c8fc09d1c4ae572403121c36046e8171b4fb06b1e104d.lean/declarations/topologicalclosure--2a6752c49cd669b27470423b.md) | 38 | `declaration-track:2a6752c49cd669b27470423bdb83adc031b7d9e31b74a5160d07960e396fe5f8` |
| 3 | `theorem` | [le_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Varianteedb34cef62ce2793b7c8fc09d1c4ae572403121c36046e8171b4fb06b1e104d.lean/declarations/le-topologicalclosure--578fce0f00b832ef23730eb2.md) | 43 | `result-track:578fce0f00b832ef23730eb23831d363c434ff728c5c4290f16db9546659d6b5` |
| 4 | `theorem` | [isClosed_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Varianteedb34cef62ce2793b7c8fc09d1c4ae572403121c36046e8171b4fb06b1e104d.lean/declarations/isclosed-topologicalclosure--f667a9112f57c858ced5fbd7.md) | 46 | `result-track:f667a9112f57c858ced5fbd7293b206fcc0079336b728342fd1d43b64831b76c` |
| 5 | `theorem` | [topologicalClosure_minimal](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Varianteedb34cef62ce2793b7c8fc09d1c4ae572403121c36046e8171b4fb06b1e104d.lean/declarations/topologicalclosure-minimal--8cc97d80d05b02baa3ba20af.md) | 49 | `result-track:8cc97d80d05b02baa3ba20aff50a75e120f78c7e27d5bf8296b465d4e3c33aeb` |
| 6 | `abbrev` | [nonUnitalCommSemiringTopologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Varianteedb34cef62ce2793b7c8fc09d1c4ae572403121c36046e8171b4fb06b1e104d.lean/declarations/nonunitalcommsemiringtopologicalclosure--bcf8294ad56ad6beb8b506d4.md) | 58 | `declaration-track:bcf8294ad56ad6beb8b506d49e90712e5dbb6888588e2f0d08f476623f97e417` |
| 7 | `instance` | [instIsTopologicalRing](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Varianteedb34cef62ce2793b7c8fc09d1c4ae572403121c36046e8171b4fb06b1e104d.lean/declarations/instistopologicalring--6659c8ae336a0148db2dc8ac.md) | 70 | `declaration-track:6659c8ae336a0148db2dc8ac01040290198a440f8f41fe74bb4f3e21588cef0b` |
| 8 | `abbrev` | [nonUnitalCommRingTopologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Varianteedb34cef62ce2793b7c8fc09d1c4ae572403121c36046e8171b4fb06b1e104d.lean/declarations/nonunitalcommringtopologicalclosure--a9245fcce79661728efda6c8.md) | 77 | `declaration-track:a9245fcce79661728efda6c846714ed77ce614d207243bd859c85330dba36346` |
| 9 | `def` | [elemental](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Varianteedb34cef62ce2793b7c8fc09d1c4ae572403121c36046e8171b4fb06b1e104d.lean/declarations/elemental--2d6b0996e25fccce812e69d9.md) | 94 | `declaration-track:2d6b0996e25fccce812e69d92cbb3bd05061c2d83117abffa3048c010b2cff63` |
| 10 | `theorem` | [self_mem](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Varianteedb34cef62ce2793b7c8fc09d1c4ae572403121c36046e8171b4fb06b1e104d.lean/declarations/self-mem--9cbdaafa9d808db47d2b75ec.md) | 100 | `result-track:9cbdaafa9d808db47d2b75ec1185065d4cf9381a22abb06bd68183fbdf4a6e81` |
| 11 | `theorem` | [star_self_mem](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Varianteedb34cef62ce2793b7c8fc09d1c4ae572403121c36046e8171b4fb06b1e104d.lean/declarations/star-self-mem--7163b144d5eaa532e7ab35aa.md) | 104 | `result-track:7163b144d5eaa532e7ab35aa4534685f1a41edbbd470fb497e999c61f1e40251` |
| 12 | `theorem` | [le_of_mem](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Varianteedb34cef62ce2793b7c8fc09d1c4ae572403121c36046e8171b4fb06b1e104d.lean/declarations/le-of-mem--1017455343335d4f6fa7a9d4.md) | 108 | `result-track:1017455343335d4f6fa7a9d4213fdc273a2b24a90f7a616bec499240c59ee42c` |
| 13 | `theorem` | [le_iff_mem](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Varianteedb34cef62ce2793b7c8fc09d1c4ae572403121c36046e8171b4fb06b1e104d.lean/declarations/le-iff-mem--720a30e28f59eb74a797fb11.md) | 113 | `result-track:720a30e28f59eb74a797fb11edd431195dc822b71a4bd4f499401d6abf5900c8` |
| 14 | `instance` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Varianteedb34cef62ce2793b7c8fc09d1c4ae572403121c36046e8171b4fb06b1e104d.lean/declarations/isclosed--8df87bf8451001ae3a7f5088.md) | 117 | `declaration-track:8df87bf8451001ae3a7f50885485ff1afd70cb43e9ad38322329c2b539c8ff55` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Varianteedb34cef62ce2793b7c8fc09d1c4ae572403121c36046e8171b4fb06b1e104d.lean/declarations/instance--4ed5c63f61d0bb1455630d38.md) | 120 | `declaration-track:4ed5c63f61d0bb1455630d384a911341876a9623a259509878b09402f4817028` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Varianteedb34cef62ce2793b7c8fc09d1c4ae572403121c36046e8171b4fb06b1e104d.lean/declarations/instance--49f59cb8009fe2e1517ef718.md) | 131 | `declaration-track:49f59cb8009fe2e1517ef7188868d22b3a98a8ca605d1cf084e2c9d9dc58e33a` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Varianteedb34cef62ce2793b7c8fc09d1c4ae572403121c36046e8171b4fb06b1e104d.lean/declarations/instance--3e791cc1cf9bfa306ab13788.md) | 137 | `declaration-track:3e791cc1cf9bfa306ab137883fae7f2c6b016ba1a4362007787fd47f65c6bf83` |
| 18 | `theorem` | [isClosedEmbedding_coe](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Varianteedb34cef62ce2793b7c8fc09d1c4ae572403121c36046e8171b4fb06b1e104d.lean/declarations/isclosedembedding-coe--a92096ffd41ec5441c219b1b.md) | 144 | `result-track:a92096ffd41ec5441c219b1b0bfb540af8307f75a6fb64dde4755c431ebcb7cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
