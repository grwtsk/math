# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.RationalPoleJet

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f44d2d5cbac7cab9f1b784cd4c4ffdf8f96fccf4",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalPoleJet.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleJet.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleJet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f44d2d5cbac7cab9f1b784cd4c4ffdf8f96fccf4`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/RationalPoleJet.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/RationalPoleJet.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.RationalPoleValue`](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleValue.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.RationalPolePatch`](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPolePatch.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.Complex.CenterJetVariation`](../../../../../mathematics/Analysis/ComplexAnalysis/CenterJetVariation.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [check](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleJet.lean/declarations/check--7c8f6d7794d479ed2a8d4a1e.md) | 28 | `declaration-track:7c8f6d7794d479ed2a8d4a1e17755caffa80f117e62fe0f6b7dd6f2e8a3ae4b0` |
| 2 | `theorem` | [check_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleJet.lean/declarations/check-iff--ac604d6324656428ecf2e094.md) | 31 | `result-track:ac604d6324656428ecf2e094bb8f1f5c98c6812f418f11336e1cbf13c74b9e9f` |
| 3 | `def` | [uniformError](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleJet.lean/declarations/uniformerror--cac6290f760b634fb15148c9.md) | 37 | `declaration-track:cac6290f760b634fb15148c909fa1561ee880ec311e41df54e13efb8dfd09f05` |
| 4 | `theorem` | [tailAllowance_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleJet.lean/declarations/tailallowance-nonneg--8c7924f7e281eb011cb58790.md) | 41 | `result-track:8c7924f7e281eb011cb58790a21b01a5f5bfc1e959109f12eec26311dc72b5ff` |
| 5 | `theorem` | [uniformError_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleJet.lean/declarations/uniformerror-nonneg--918b3f4849b09c385f25b81c.md) | 47 | `result-track:918b3f4849b09c385f25b81c9456dd60a360bff44ee2ce42ee101365b85554f0` |
| 6 | `theorem` | [disk_geometry](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleJet.lean/declarations/disk-geometry--078c3fcd009d4c1b9fd63cbe.md) | 55 | `result-track:078c3fcd009d4c1b9fd63cbe617b262274d84bd390a1766286dd2530dafd3af8` |
| 7 | `theorem` | [uniform_source_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleJet.lean/declarations/uniform-source-error--df968e385b0a9dfe09d8e403.md) | 69 | `result-track:df968e385b0a9dfe09d8e4037ce4f22354e65e659c93c7af7bd8956791683976` |
| 8 | `def` | [derivativeBall](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleJet.lean/declarations/derivativeball--f05002586c5fefae3b004cb2.md) | 94 | `declaration-track:f05002586c5fefae3b004cb25399a63a76d107f8f76fedc1b5c4c58c76e79264` |
| 9 | `theorem` | [derivativeBall_sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleJet.lean/declarations/derivativeball-sound--40bec5a92e147d5d9307ab41.md) | 99 | `result-track:40bec5a92e147d5d9307ab415a93c812f2c7053c631153141c4f5a21e3679a3e` |
| 10 | `def` | [jet](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleJet.lean/declarations/jet--4d5eade4a55a7e4fc9eeaff0.md) | 123 | `declaration-track:4d5eade4a55a7e4fc9eeaff03c8804097b26fd059cd87926e21fa7c04012b9b8` |
| 11 | `theorem` | [jet_sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleJet.lean/declarations/jet-sound--7811feb7062d50f08326bacf.md) | 126 | `result-track:7811feb7062d50f08326bacf8808a39e9121e88e7d58d625c8733e37a24748bf` |
| 12 | `def` | [evaluate](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleJet.lean/declarations/evaluate--527e6ce4246582c894c02bce.md) | 132 | `declaration-track:527e6ce4246582c894c02bce45f4eb50864d2acf667643c0fb7b44d78800e5b5` |
| 13 | `theorem` | [evaluate_sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleJet.lean/declarations/evaluate-sound--8409f2fdf6047a278da45f1e.md) | 135 | `result-track:8409f2fdf6047a278da45f1eb31b7249e79aa8921e90c32037f058b134ee3519` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
