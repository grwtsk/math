# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyMarkedSUnit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9a2c9414adfcda7d543e116afb5bc53068a67e1",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedSUnit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedSUnit.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedSUnit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9a2c9414adfcda7d543e116afb5bc53068a67e1`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedSUnit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedSUnit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Padics.RationalPairSupport`](../../../../../mathematics/NumberTheory/Padics/RationalPairSupport.lean/index.md) — import line 12; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyMarkedObservationHeight`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedObservationHeight.lean/index.md) — import line 13; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftUnit](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedSUnit.lean/declarations/leftunit--13f387aa1abee57b4ac9ddf7.md) | 28 | `declaration-track:13f387aa1abee57b4ac9ddf7dd5a191e9b8a938465d7011d694e1053a999251e` |
| 2 | `def` | [rightUnit](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedSUnit.lean/declarations/rightunit--d207357db1a9b6b81d9e5d36.md) | 31 | `declaration-track:d207357db1a9b6b81d9e5d367ec67b7983dc358e3a6e77b3159230b4c56bc2c9` |
| 3 | `theorem` | [unit_values](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedSUnit.lean/declarations/unit-values--79ce2fa1a21b252324b86c85.md) | 33 | `result-track:79ce2fa1a21b252324b86c85c679aaf237e10f9a38b02acc1f3b7d3e913419f9` |
| 4 | `theorem` | [units_pos](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedSUnit.lean/declarations/units-pos--04c462c58cab24b364d69a40.md) | 37 | `result-track:04c462c58cab24b364d69a402c0e0c046456ce6be40e872ffa49c44caf0c9e06` |
| 5 | `theorem` | [unit_equation](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedSUnit.lean/declarations/unit-equation--4a2e9280dfedb397d00e7caf.md) | 42 | `result-track:4a2e9280dfedb397d00e7caf2e5819feadcaed413fd9f517ecc6bd6bcd76ba1f` |
| 6 | `theorem` | [valuation_pair](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedSUnit.lean/declarations/valuation-pair--eed89e4f2c8410b466a2f5c7.md) | 48 | `result-track:eed89e4f2c8410b466a2f5c70f11d4ef00eea0ab8ccfc228701aa55d8c9f23b7` |
| 7 | `theorem` | [exclusive_depths](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedSUnit.lean/declarations/exclusive-depths--c10cd8e6d648426aedb96afa.md) | 64 | `result-track:c10cd8e6d648426aedb96afa27bdacc8f4af85aba8e9d2729f2fcbfc89a1e1c7` |
| 8 | `theorem` | [common_pole_depth](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedSUnit.lean/declarations/common-pole-depth--03900ec92e5fe1b7d86e47b0.md) | 73 | `result-track:03900ec92e5fe1b7d86e47b0d24d8e01d8465849b4763e881c3e58efcea44c05` |
| 9 | `theorem` | [numerator_depths](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedSUnit.lean/declarations/numerator-depths--7c2ef0af76fd55185eb8a273.md) | 83 | `result-track:7c2ef0af76fd55185eb8a273b3e3a658a550125df052e6880960eab4f3a25526` |
| 10 | `theorem` | [boundary_depth](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedSUnit.lean/declarations/boundary-depth--c4cb321846926f5b84f6ff9c.md) | 93 | `result-track:c4cb321846926f5b84f6ff9cedb66ca71d894547865a6366de51dc9ab9586212` |
| 11 | `def` | [markedSupport](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedSUnit.lean/declarations/markedsupport--e4074dc4a4334c4710a841bd.md) | 110 | `declaration-track:e4074dc4a4334c4710a841bdbcb749f79e8a6333de1a3aa1eed97667408f3a22` |
| 12 | `theorem` | [markedSupport_eq](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedSUnit.lean/declarations/markedsupport-eq--0eb675bec9cceb1e1d7bb524.md) | 114 | `result-track:0eb675bec9cceb1e1d7bb524918f46c0b8fa3f5eeded809b503f6138f805781f` |
| 13 | `theorem` | [minimal_S](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedSUnit.lean/declarations/minimal-s--09303cdbf3809efd32876ed2.md) | 131 | `result-track:09303cdbf3809efd32876ed2f32224307a755273f7e970ff8413d72a4b6661d7` |
| 14 | `theorem` | [marked_radical](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedSUnit.lean/declarations/marked-radical--19dc8bfc31adc521b2552a7f.md) | 139 | `result-track:19dc8bfc31adc521b2552a7fa3e5d7f185267e3830025ef6deaaced6afcd22d5` |
| 15 | `def` | [truncatedCount](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedSUnit.lean/declarations/truncatedcount--98c9a7a38b9ad1964004cbf1.md) | 145 | `declaration-track:98c9a7a38b9ad1964004cbf1b3be6dc212c1e0e9ebcded05d4dbabf893d4a86c` |
| 16 | `def` | [multiplicityCount](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedSUnit.lean/declarations/multiplicitycount--dff97c1d35165c9f48d92c0c.md) | 149 | `declaration-track:dff97c1d35165c9f48d92c0c70b2d06ad13ee3bf7dfe96909c2a10d604bc08e7` |
| 17 | `def` | [excessCount](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedSUnit.lean/declarations/excesscount--eb6fc76fae7183802d99e4ec.md) | 152 | `declaration-track:eb6fc76fae7183802d99e4ec76e9059d26e9c16ac81deb0bba561e01f9ae6281` |
| 18 | `theorem` | [truncatedCount_eq](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedSUnit.lean/declarations/truncatedcount-eq--1d7d33bda82dc1c6432e1657.md) | 156 | `result-track:1d7d33bda82dc1c6432e1657acaa7a43e0e8772ab2f65c30833901ec61970b4a` |
| 19 | `theorem` | [multiplicityCount_eq](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedSUnit.lean/declarations/multiplicitycount-eq--cdfb869e3a127db43ecd4f49.md) | 161 | `result-track:cdfb869e3a127db43ecd4f4957e5f064d748ff1236c67248c27317552d962748` |
| 20 | `theorem` | [excessCount_eq](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedSUnit.lean/declarations/excesscount-eq--80f505a42ad128f38482c9a1.md) | 172 | `result-track:80f505a42ad128f38482c9a182dca298fe50afb2edd2fcdcba0f8ca2315f7ae6` |
| 21 | `theorem` | [counting_decomposition](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedSUnit.lean/declarations/counting-decomposition--b02c3d650ad3fad878fa85cd.md) | 181 | `result-track:b02c3d650ad3fad878fa85cde6c08a3b8f724237f716229617a5b0c61431c21c` |
| 22 | `theorem` | [source_support_split](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedSUnit.lean/declarations/source-support-split--86184c5cb0f7947004637db9.md) | 187 | `result-track:86184c5cb0f7947004637db9405a72b43c6272c500933d6b5b9bf01c9622fca1` |
| 23 | `theorem` | [height_counting_defect](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedSUnit.lean/declarations/height-counting-defect--a36da42f5fdba922383ddc9b.md) | 196 | `result-track:a36da42f5fdba922383ddc9b568e912f7a82376736a5d6d22c05e26785fe2560` |
| 24 | `theorem` | [excess_bound_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedSUnit.lean/declarations/excess-bound-iff--b79d18bb5ecf56e9115f3b16.md) | 204 | `result-track:b79d18bb5ecf56e9115f3b16739a7fe72502527044a31b7cbaa7d25ee8241b45` |
| 25 | `theorem` | [uniform_excess_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedSUnit.lean/declarations/uniform-excess-iff--afa2225dcb500b754bb469a8.md) | 211 | `result-track:afa2225dcb500b754bb469a86eb6fc62e3c4e8f2bfa3d37b4aac3305989d138a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
