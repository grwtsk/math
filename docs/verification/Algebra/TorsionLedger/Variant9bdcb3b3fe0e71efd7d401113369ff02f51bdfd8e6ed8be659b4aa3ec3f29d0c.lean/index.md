# Verification target: GRWTSK.Algebra.TorsionLedger.Variant9bdcb3b3fe0e71efd7d401113369ff02f51bdfd8e6ed8be659b4aa3ec3f29d0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "212c524427100e74729356a86100163a2c02bc84",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/TorsionLedger/Variant9bdcb3b3fe0e71efd7d401113369ff02f51bdfd8e6ed8be659b4aa3ec3f29d0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/TorsionLedger/Variant9bdcb3b3fe0e71efd7d401113369ff02f51bdfd8e6ed8be659b4aa3ec3f29d0c.lean/index.md) · [Full source](../../../../mathematics/Algebra/TorsionLedger/Variant9bdcb3b3fe0e71efd7d401113369ff02f51bdfd8e6ed8be659b4aa3ec3f29d0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `212c524427100e74729356a86100163a2c02bc84`.

Source path: `GRWTSK/Algebra/TorsionLedger/Variant9bdcb3b3fe0e71efd7d401113369ff02f51bdfd8e6ed8be659b4aa3ec3f29d0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/TorsionLedger/Variant9bdcb3b3fe0e71efd7d401113369ff02f51bdfd8e6ed8be659b4aa3ec3f29d0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Homology.SmithCertificate` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.CharacterModule` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TorsionLedger](../../../../mathematics/Algebra/TorsionLedger/Variant9bdcb3b3fe0e71efd7d401113369ff02f51bdfd8e6ed8be659b4aa3ec3f29d0c.lean/declarations/torsionledger--272fe38fbbd6fb545bd58756.md) | 23 | `declaration-track:272fe38fbbd6fb545bd58756059196d95883384472cfa430ba39bbfd0045198a` |
| 2 | `abbrev` | [Coordinate](../../../../mathematics/Algebra/TorsionLedger/Variant9bdcb3b3fe0e71efd7d401113369ff02f51bdfd8e6ed8be659b4aa3ec3f29d0c.lean/declarations/coordinate--6f15e8275a97804a89f92212.md) | 41 | `declaration-track:6f15e8275a97804a89f92212230ff55572da55f49fe408bcc78b12da46ad3e61` |
| 3 | `instance` | [coordinateFintype](../../../../mathematics/Algebra/TorsionLedger/Variant9bdcb3b3fe0e71efd7d401113369ff02f51bdfd8e6ed8be659b4aa3ec3f29d0c.lean/declarations/coordinatefintype--1527a485cde1e87291e38519.md) | 44 | `declaration-track:1527a485cde1e87291e38519495413c47e0ae16ba99be3b608a3e9e5d3b2a61b` |
| 4 | `structure` | [UCTBocksteinTorsionRepresentation](../../../../mathematics/Algebra/TorsionLedger/Variant9bdcb3b3fe0e71efd7d401113369ff02f51bdfd8e6ed8be659b4aa3ec3f29d0c.lean/declarations/uctbocksteintorsionrepresentation--fc98db11773e1e1c6e0fc741.md) | 58 | `declaration-track:fc98db11773e1e1c6e0fc741fa73981c252d9b709847bb1d5b176307eec61071` |
| 5 | `theorem` | [finite](../../../../mathematics/Algebra/TorsionLedger/Variant9bdcb3b3fe0e71efd7d401113369ff02f51bdfd8e6ed8be659b4aa3ec3f29d0c.lean/declarations/finite--9f4690203b07bee92ef74df1.md) | 84 | `result-track:9f4690203b07bee92ef74df1d71d8ccdd1444595dcba78be27f4ff06f25639e0` |
| 6 | `theorem` | [coordinates_injective](../../../../mathematics/Algebra/TorsionLedger/Variant9bdcb3b3fe0e71efd7d401113369ff02f51bdfd8e6ed8be659b4aa3ec3f29d0c.lean/declarations/coordinates-injective--8b13f38c2c4a4a671a428bb4.md) | 89 | `result-track:8b13f38c2c4a4a671a428bb427d4fd614c017c5d1d76261bec4b8ccd2dd7038a` |
| 7 | `structure` | [TorsionTransport](../../../../mathematics/Algebra/TorsionLedger/Variant9bdcb3b3fe0e71efd7d401113369ff02f51bdfd8e6ed8be659b4aa3ec3f29d0c.lean/declarations/torsiontransport--cdf0d7bebf7c3d4bea51dda1.md) | 106 | `declaration-track:cdf0d7bebf7c3d4bea51dda1c51e4cc62de60ad15bc0ff8b280d9f2ef63651d5` |
| 8 | `theorem` | [transports_bockstein](../../../../mathematics/Algebra/TorsionLedger/Variant9bdcb3b3fe0e71efd7d401113369ff02f51bdfd8e6ed8be659b4aa3ec3f29d0c.lean/declarations/transports-bockstein--7b6ad2304f78152c61ff21c9.md) | 185 | `result-track:7b6ad2304f78152c61ff21c93ba1ec21472b7f420c0bc8b4182732eeacaa6cbe` |
| 9 | `theorem` | [transports_coordinates](../../../../mathematics/Algebra/TorsionLedger/Variant9bdcb3b3fe0e71efd7d401113369ff02f51bdfd8e6ed8be659b4aa3ec3f29d0c.lean/declarations/transports-coordinates--1130c1442e4f91354abcc8e9.md) | 191 | `result-track:1130c1442e4f91354abcc8e9facdf5360a9198bb580929bfeccf527e67b18b76` |
| 10 | `theorem` | [transports_gluing](../../../../mathematics/Algebra/TorsionLedger/Variant9bdcb3b3fe0e71efd7d401113369ff02f51bdfd8e6ed8be659b4aa3ec3f29d0c.lean/declarations/transports-gluing--039e8c066d8183e9111dd647.md) | 199 | `result-track:039e8c066d8183e9111dd64745d9163b846806b9bab6a53aae88d57a5245cd74` |
| 11 | `structure` | [UniformTorsionBound](../../../../mathematics/Algebra/TorsionLedger/Variant9bdcb3b3fe0e71efd7d401113369ff02f51bdfd8e6ed8be659b4aa3ec3f29d0c.lean/declarations/uniformtorsionbound--05ed212c5ec40f1a78d688b1.md) | 207 | `declaration-track:05ed212c5ec40f1a78d688b10d5aa9d02b93ed41663abfa5e1321a8abe9d4a07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
