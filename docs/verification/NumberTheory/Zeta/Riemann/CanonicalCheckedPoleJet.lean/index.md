# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalCheckedPoleJet

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f43c73eddbf429fd153b65e4e48005250db4ce3",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCheckedPoleJet.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCheckedPoleJet.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCheckedPoleJet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f43c73eddbf429fd153b65e4e48005250db4ce3`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCheckedPoleJet.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalCheckedPoleJet.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CheckedPoleJet`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powerRows](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCheckedPoleJet.lean/declarations/powerrows--6c260ad3a9f77bab5bf37412.md) | 24 | `declaration-track:6c260ad3a9f77bab5bf374125c8e8329e42c74cfd84fc988f01c968a5954cafc` |
| 2 | `theorem` | [powerRows_checked](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCheckedPoleJet.lean/declarations/powerrows-checked--06282fd9516dc4293f334399.md) | 31 | `result-track:06282fd9516dc4293f3343991f582432796aa3697a11b1ee3f410726482bb7c4` |
| 3 | `def` | [packetFrom](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCheckedPoleJet.lean/declarations/packetfrom--0e270d91e857ed4717897a4c.md) | 56 | `declaration-track:0e270d91e857ed4717897a4c87d5eaa838e51d4bee9f2b9d40099a4b0dfb9a6c` |
| 4 | `def` | [packet](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCheckedPoleJet.lean/declarations/packet--f288390a6142c53aca3c8fe1.md) | 61 | `declaration-track:f288390a6142c53aca3c8fe17eaea40751cc4ea255f10670a84a2742e9b14c10` |
| 5 | `theorem` | [packetFrom_length](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCheckedPoleJet.lean/declarations/packetfrom-length--9082f46403af48c111ddf5d7.md) | 64 | `result-track:9082f46403af48c111ddf5d765352ff177de4884adcaa77cc6855d6926d5a2b7` |
| 6 | `theorem` | [packet_length](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCheckedPoleJet.lean/declarations/packet-length--3f89ae8c7cf43737b20e541d.md) | 70 | `result-track:3f89ae8c7cf43737b20e541d4a30df91d25c0dc94e08f7815be380323e34b774` |
| 7 | `theorem` | [scan_packetFrom](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCheckedPoleJet.lean/declarations/scan-packetfrom--0bdc9dd2bb9e641eb069b37a.md) | 75 | `result-track:0bdc9dd2bb9e641eb069b37a25ef08c10b235a3c153e9ddf6c2d681c27703707` |
| 8 | `theorem` | [finite_packet](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCheckedPoleJet.lean/declarations/finite-packet--0c8fe898d6463a7c3289089f.md) | 97 | `result-track:0c8fe898d6463a7c3289089f918e51d4612f32d9f841d5dfecc218143f298421` |
| 9 | `theorem` | [checkPatch_packet](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCheckedPoleJet.lean/declarations/checkpatch-packet--ef65f3647f3b6eac912cdb50.md) | 109 | `result-track:ef65f3647f3b6eac912cdb50afc27267833f8f41768e2afc8e9b0649bdaddfda` |
| 10 | `theorem` | [checkPatch_packet_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCheckedPoleJet.lean/declarations/checkpatch-packet-iff--543cac47fd4731762817ea9f.md) | 121 | `result-track:543cac47fd4731762817ea9ff5e05dec04abc091e79d3bd9f98a499e53db6d2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
