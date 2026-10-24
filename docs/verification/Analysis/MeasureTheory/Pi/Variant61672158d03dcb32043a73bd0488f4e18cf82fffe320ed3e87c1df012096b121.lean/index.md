# Verification target: GRWTSK.Analysis.MeasureTheory.Pi.Variant61672158d03dcb32043a73bd0488f4e18cf82fffe320ed3e87c1df012096b121

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e6a1f7b5f201cf830bcda9aca77a8f143dd0eca",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Pi/Variant61672158d03dcb32043a73bd0488f4e18cf82fffe320ed3e87c1df012096b121.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Pi/Variant61672158d03dcb32043a73bd0488f4e18cf82fffe320ed3e87c1df012096b121.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Pi/Variant61672158d03dcb32043a73bd0488f4e18cf82fffe320ed3e87c1df012096b121.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e6a1f7b5f201cf830bcda9aca77a8f143dd0eca`.

Source path: `GRWTSK/Analysis/MeasureTheory/Pi/Variant61672158d03dcb32043a73bd0488f4e18cf82fffe320ed3e87c1df012096b121.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Pi/Variant61672158d03dcb32043a73bd0488f4e18cf82fffe320ed3e87c1df012096b121.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.Constructions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.PiSystem` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [MeasurableSpace.pi_eq_generateFrom_projections](../../../../../mathematics/Analysis/MeasureTheory/Pi/Variant61672158d03dcb32043a73bd0488f4e18cf82fffe320ed3e87c1df012096b121.lean/declarations/measurablespace-pi-eq-generatefrom-projections--6affcd7ce48a5548ee9dd736.md) | 36 | `result-track:6affcd7ce48a5548ee9dd736da67f656844213cb7d92fd89009173b798ef2ea1` |
| 2 | `theorem` | [IsPiSystem.pi](../../../../../mathematics/Analysis/MeasureTheory/Pi/Variant61672158d03dcb32043a73bd0488f4e18cf82fffe320ed3e87c1df012096b121.lean/declarations/ispisystem-pi--5b8a7906f889a36b5bffe376.md) | 41 | `result-track:5b8a7906f889a36b5bffe376c639278898c89e167944ec90fb04ad55e504e678` |
| 3 | `theorem` | [isPiSystem_pi](../../../../../mathematics/Analysis/MeasureTheory/Pi/Variant61672158d03dcb32043a73bd0488f4e18cf82fffe320ed3e87c1df012096b121.lean/declarations/ispisystem-pi--cdc369ee143220e009915f52.md) | 48 | `result-track:cdc369ee143220e009915f52171fffe7c159debe9a9b6ff3a22a70689ead17df` |
| 4 | `theorem` | [IsCountablySpanning.pi](../../../../../mathematics/Analysis/MeasureTheory/Pi/Variant61672158d03dcb32043a73bd0488f4e18cf82fffe320ed3e87c1df012096b121.lean/declarations/iscountablyspanning-pi--b3b47025f32b8ca94666b3bf.md) | 57 | `result-track:b3b47025f32b8ca94666b3bfd3070561bd7d4b6cec3a55e97b0e0ccc9036224c` |
| 5 | `theorem` | [generateFrom_pi_eq](../../../../../mathematics/Analysis/MeasureTheory/Pi/Variant61672158d03dcb32043a73bd0488f4e18cf82fffe320ed3e87c1df012096b121.lean/declarations/generatefrom-pi-eq--658491d0c9244fceca652428.md) | 70 | `result-track:658491d0c9244fceca652428ac1468b12c3250e8e8cd3e747f231a27cba0105a` |
| 6 | `theorem` | [generateFrom_eq_pi](../../../../../mathematics/Analysis/MeasureTheory/Pi/Variant61672158d03dcb32043a73bd0488f4e18cf82fffe320ed3e87c1df012096b121.lean/declarations/generatefrom-eq-pi--b13f174510e5c7cbda895ac5.md) | 102 | `result-track:b13f174510e5c7cbda895ac57c37b3348fdfaab55de7cca842eb7b2370633904` |
| 7 | `theorem` | [generateFrom_pi](../../../../../mathematics/Analysis/MeasureTheory/Pi/Variant61672158d03dcb32043a73bd0488f4e18cf82fffe320ed3e87c1df012096b121.lean/declarations/generatefrom-pi--0fb4d9ec950fbdd95a5eab8e.md) | 109 | `result-track:0fb4d9ec950fbdd95a5eab8e2fc3fe27e232aedf9cc49d6f8fa732e730568e34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
