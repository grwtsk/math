# Verification target: GRWTSK.Topology.EffectiveEpi.Variant53e2fa84f9c1f6982297e437a678b65a543fcda1bf7897f84d755f0c1925d766

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "810d6032f9b7d74750115cb6d2b303c2b64134b8",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/EffectiveEpi/Variant53e2fa84f9c1f6982297e437a678b65a543fcda1bf7897f84d755f0c1925d766.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/EffectiveEpi/Variant53e2fa84f9c1f6982297e437a678b65a543fcda1bf7897f84d755f0c1925d766.lean/index.md) · [Full source](../../../../mathematics/Topology/EffectiveEpi/Variant53e2fa84f9c1f6982297e437a678b65a543fcda1bf7897f84d755f0c1925d766.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `810d6032f9b7d74750115cb6d2b303c2b64134b8`.

Source path: `GRWTSK/Topology/EffectiveEpi/Variant53e2fa84f9c1f6982297e437a678b65a543fcda1bf7897f84d755f0c1925d766.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/EffectiveEpi/Variant53e2fa84f9c1f6982297e437a678b65a543fcda1bf7897f84d755f0c1925d766.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.Stonean.Limits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompHaus.EffectiveEpi` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [two](../../../../mathematics/Topology/EffectiveEpi/Variant53e2fa84f9c1f6982297e437a678b65a543fcda1bf7897f84d755f0c1925d766.lean/declarations/two--daae4f8fdb2fa589cca6ee96.md) | 52 | `declaration-track:daae4f8fdb2fa589cca6ee960979f630325a8ca831ea77b004f0fa248dd04c59` |
| 2 | `lemma` | [epi_iff_surjective](../../../../mathematics/Topology/EffectiveEpi/Variant53e2fa84f9c1f6982297e437a678b65a543fcda1bf7897f84d755f0c1925d766.lean/declarations/epi-iff-surjective--4607bac612767b236882777e.md) | 60 | `result-track:4607bac612767b236882777e600577e02d51d230b60255967b4856d84e8c13a2` |
| 3 | `abbrev` | [F](../../../../mathematics/Topology/EffectiveEpi/Variant53e2fa84f9c1f6982297e437a678b65a543fcda1bf7897f84d755f0c1925d766.lean/declarations/f--ee3230f144d8b10900795148.md) | 115 | `declaration-track:ee3230f144d8b1090079514889935e16c0863130c2652201dc354001863f8734` |
| 4 | `lemma` | [lift_desc_condition](../../../../mathematics/Topology/EffectiveEpi/Variant53e2fa84f9c1f6982297e437a678b65a543fcda1bf7897f84d755f0c1925d766.lean/declarations/lift-desc-condition--1f2b53508ac70b4290d4c4ed.md) | 135 | `result-track:1f2b53508ac70b4290d4c4edd7659593f78d67ac896da4f840e4b88e13b6b39e` |
| 5 | `def` | [struct](../../../../mathematics/Topology/EffectiveEpi/Variant53e2fa84f9c1f6982297e437a678b65a543fcda1bf7897f84d755f0c1925d766.lean/declarations/struct--8f4f0df2bb21f85c87a8f727.md) | 156 | `declaration-track:8f4f0df2bb21f85c87a8f727e9266d3fcbf0b3d9af02aa16a92a2a301d090abd` |
| 6 | `theorem` | [effectiveEpiFamily_of_jointly_surjective](../../../../mathematics/Topology/EffectiveEpi/Variant53e2fa84f9c1f6982297e437a678b65a543fcda1bf7897f84d755f0c1925d766.lean/declarations/effectiveepifamily-of-jointly-surjective--a90109fde3f55ff16d8df34b.md) | 189 | `result-track:a90109fde3f55ff16d8df34b27a1f190b2d3cb068c8828a82e764c0a138dcf74` |
| 7 | `theorem` | [effectiveEpiFamily_tfae](../../../../mathematics/Topology/EffectiveEpi/Variant53e2fa84f9c1f6982297e437a678b65a543fcda1bf7897f84d755f0c1925d766.lean/declarations/effectiveepifamily-tfae--263be32a6f1ca57ba2369ce3.md) | 203 | `result-track:263be32a6f1ca57ba2369ce32867058d9a59163ad0805e792fe71b2a1a5a7abc` |
| 8 | `theorem` | [_root_.GRWTSK.Topology.Two.Variant91d22f8a26748ff36956732555c16499e76476512f0ee57f823b2962d3c6b7a2.CategoryTheory.EffectiveEpiFamily.toCompHaus](../../../../mathematics/Topology/EffectiveEpi/Variant53e2fa84f9c1f6982297e437a678b65a543fcda1bf7897f84d755f0c1925d766.lean/declarations/root-grwtsk-topology-two-variant91d22f8a26748ff36956732555c16499e7647651--4a3b4462b5a5b27fbfbd5178.md) | 245 | `result-track:4a3b4462b5a5b27fbfbd51788ef2ab2676091de1281c267759c44b40dd694d1b` |
| 9 | `instance` | [instPrecoherent](../../../../mathematics/Topology/EffectiveEpi/Variant53e2fa84f9c1f6982297e437a678b65a543fcda1bf7897f84d755f0c1925d766.lean/declarations/instprecoherent--6262f727569ccc22819d1b2d.md) | 252 | `declaration-track:6262f727569ccc22819d1b2d326a7926d0ff1b81389db6a87d66b14b262d74ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
