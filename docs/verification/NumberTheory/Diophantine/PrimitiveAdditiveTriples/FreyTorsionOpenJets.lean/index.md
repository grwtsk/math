# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionOpenJets

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c5725845a06d37d088501206039d609ae89ed27",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpenJets.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpenJets.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpenJets.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c5725845a06d37d088501206039d609ae89ed27`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpenJets.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpenJets.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionOpen`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpen.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionContact`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionContact.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [atA](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpenJets.lean/declarations/ata--037ee52b8c187e82c3f5f0ad.md) | 23 | `declaration-track:037ee52b8c187e82c3f5f0adf5a186400d31e0d2922c56dc931c0f1e573c5203` |
| 2 | `def` | [atB](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpenJets.lean/declarations/atb--106d20d3190564de9b6d3ecb.md) | 25 | `declaration-track:106d20d3190564de9b6d3ecb080795870d369d9651bbc9d44eca1056c3295c38` |
| 3 | `theorem` | [pullback_target_displacement](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpenJets.lean/declarations/pullback-target-displacement--8f2b6f05bcc667dcd01a1054.md) | 28 | `result-track:8f2b6f05bcc667dcd01a10540ab22937cbd191184953a5a390458104a51eedfc` |
| 4 | `theorem` | [pullback_source_displacement](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpenJets.lean/declarations/pullback-source-displacement--1dcb0b1f6119bfa03d3ddf71.md) | 38 | `result-track:1dcb0b1f6119bfa03d3ddf710e43b390d9011cea2e04f69f842acd9725f8971f` |
| 5 | `theorem` | [map_atB_le](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpenJets.lean/declarations/map-atb-le--16000099ecdd934151b03646.md) | 48 | `result-track:16000099ecdd934151b03646addbf0c3020cfd01c1d46c347937aab260a41205` |
| 6 | `theorem` | [map_atA_le](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpenJets.lean/declarations/map-ata-le--1b670cbd7c8243154734840c.md) | 64 | `result-track:1b670cbd7c8243154734840cc3509f61655adbc92746540671026aebc4436563` |
| 7 | `theorem` | [map_atB](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpenJets.lean/declarations/map-atb--3635d996f059be350d0ff044.md) | 81 | `result-track:3635d996f059be350d0ff044e970b90cd750f3d7d060ed5a4c41a24e4a7e713c` |
| 8 | `theorem` | [map_atA](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpenJets.lean/declarations/map-ata--fb69e10ace5da5f1e1a84c9c.md) | 92 | `result-track:fb69e10ace5da5f1e1a84c9c8195ab4c863e22ae169a337f763de93e5fd7d1e0` |
| 9 | `theorem` | [map_powers](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpenJets.lean/declarations/map-powers--504350c3ae5687cf9f52d8a5.md) | 104 | `result-track:504350c3ae5687cf9f52d8a59386cea81903fe64972d4e0a496573133f15a0ff` |
| 10 | `abbrev` | [JetA](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpenJets.lean/declarations/jeta--99a17224c87c789ea33b93b0.md) | 111 | `declaration-track:99a17224c87c789ea33b93b0afecf4104e8719b0a0c58436704c6b04f9ac8cd5` |
| 11 | `abbrev` | [JetB](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpenJets.lean/declarations/jetb--6e254b47638b672d86983480.md) | 112 | `declaration-track:6e254b47638b672d869834801ff26c79554491212e0a2b13b9685eac7bebe8e1` |
| 12 | `def` | [pullbackBA](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpenJets.lean/declarations/pullbackba--bf851bdff6097a32b3ad9e98.md) | 115 | `declaration-track:bf851bdff6097a32b3ad9e98f581b39ef576d17056a90bda56ffd1550f103e18` |
| 13 | `def` | [pullbackAB](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpenJets.lean/declarations/pullbackab--4a20bc20586d55731f87f726.md) | 123 | `declaration-track:4a20bc20586d55731f87f7267280f6939343a5f66624f45152d2fc57fb90175a` |
| 14 | `theorem` | [pullbackBA_mk](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpenJets.lean/declarations/pullbackba-mk--0bb4bb5d15b12cc3f21f13a8.md) | 131 | `result-track:0bb4bb5d15b12cc3f21f13a84b279d6473e694261041c0a8f99f3e500b33789d` |
| 15 | `theorem` | [pullbackAB_mk](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpenJets.lean/declarations/pullbackab-mk--e82c5b850373661c450d7cdf.md) | 134 | `result-track:e82c5b850373661c450d7cdfba55a13015b50561c240004ee783c756dcd63b36` |
| 16 | `def` | [jetEquiv](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpenJets.lean/declarations/jetequiv--2d3093ed5f6f9b71bb078c79.md) | 139 | `declaration-track:2d3093ed5f6f9b71bb078c7903a018ad56c7819587e4b21cc28f3f8c4e0271c2` |
| 17 | `theorem` | [pullbackBA_truncate](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpenJets.lean/declarations/pullbackba-truncate--7e0091b1f8dee128a312cf0f.md) | 156 | `result-track:7e0091b1f8dee128a312cf0f2e4fe027b236e5c08b69948b07304d7d301e8373` |
| 18 | `theorem` | [pullbackAB_truncate](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpenJets.lean/declarations/pullbackab-truncate--be5e8004d1d7c2b576feee9f.md) | 166 | `result-track:be5e8004d1d7c2b576feee9f4364f05423ad39466ca434050af343f057f8905d` |
| 19 | `theorem` | [PrimitiveAdditiveTriple.freyOpen_ab_inverse](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpenJets.lean/declarations/primitiveadditivetriple-freyopen-ab-inverse--776c01a268bd0284d29b98df.md) | 182 | `result-track:776c01a268bd0284d29b98df20d1f42011f21729916c7ab130e61b7e56ed68de` |
| 20 | `def` | [PrimitiveAdditiveTriple.freyT0OpenPullback](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpenJets.lean/declarations/primitiveadditivetriple-freyt0openpullback--bfc6f0510ba364d6a9fac37e.md) | 189 | `declaration-track:bfc6f0510ba364d6a9fac37e3cf6eb682f9a608417f762eca6c110460523c748` |
| 21 | `def` | [PrimitiveAdditiveTriple.freyTaOpenContactEvaluation](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpenJets.lean/declarations/primitiveadditivetriple-freytaopencontactevaluation--16f9ac2fb6f5a967bd2e6755.md) | 194 | `declaration-track:16f9ac2fb6f5a967bd2e6755f813d67e1386d4187cb669dfa1d5b862c510fa56` |
| 22 | `theorem` | [PrimitiveAdditiveTriple.freyT0OpenPullback_contact_X](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpenJets.lean/declarations/primitiveadditivetriple-freyt0openpullback-contact-x--eb54179369ff94a5666668bd.md) | 200 | `result-track:eb54179369ff94a5666668bdafb57f2ffb5becdb54b53200dc089df0f6986fa7` |
| 23 | `theorem` | [PrimitiveAdditiveTriple.freyT0OpenPullback_contact_Y](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionOpenJets.lean/declarations/primitiveadditivetriple-freyt0openpullback-contact-y--8d6f33cb55a255dd9a45cc2a.md) | 212 | `result-track:8d6f33cb55a255dd9a45cc2afe58557e0e45d3bb950e0d0fb344146fa8d62a4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
