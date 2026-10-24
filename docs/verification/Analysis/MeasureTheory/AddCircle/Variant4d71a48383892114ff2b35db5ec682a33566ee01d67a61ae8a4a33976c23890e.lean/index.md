# Verification target: GRWTSK.Analysis.MeasureTheory.AddCircle.Variant4d71a48383892114ff2b35db5ec682a33566ee01d67a61ae8a4a33976c23890e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b4aeff201aecf95438c4649b570e90f4be1928b",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AddCircle/Variant4d71a48383892114ff2b35db5ec682a33566ee01d67a61ae8a4a33976c23890e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/AddCircle/Variant4d71a48383892114ff2b35db5ec682a33566ee01d67a61ae8a4a33976c23890e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/AddCircle/Variant4d71a48383892114ff2b35db5ec682a33566ee01d67a61ae8a4a33976c23890e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b4aeff201aecf95438c4649b570e90f4be1928b`.

Source path: `GRWTSK/Analysis/MeasureTheory/AddCircle/Variant4d71a48383892114ff2b35db5ec682a33566ee01d67a61ae8a4a33976c23890e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AddCircle/Variant4d71a48383892114ff2b35db5ec682a33566ee01d67a61ae8a4a33976c23890e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Periodic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Quotient` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [closedBall_ae_eq_ball](../../../../../mathematics/Analysis/MeasureTheory/AddCircle/Variant4d71a48383892114ff2b35db5ec682a33566ee01d67a61ae8a4a33976c23890e.lean/declarations/closedball-ae-eq-ball--e8a3c5b0607ebb1ccced3e26.md) | 34 | `result-track:e8a3c5b0607ebb1ccced3e26d0d9bfc254297f93f0a58f98d5e0c0625ccdc8df` |
| 2 | `theorem` | [isAddFundamentalDomain_of_ae_ball](../../../../../mathematics/Analysis/MeasureTheory/AddCircle/Variant4d71a48383892114ff2b35db5ec682a33566ee01d67a61ae8a4a33976c23890e.lean/declarations/isaddfundamentaldomain-of-ae-ball--7a2fce88af2ab382fc58c53a.md) | 54 | `result-track:7a2fce88af2ab382fc58c53a7d5056d242681b62ec2768e19a540788919e1eaf` |
| 3 | `theorem` | [volume_of_add_preimage_eq](../../../../../mathematics/Analysis/MeasureTheory/AddCircle/Variant4d71a48383892114ff2b35db5ec682a33566ee01d67a61ae8a4a33976c23890e.lean/declarations/volume-of-add-preimage-eq--4d64c0132fd0a77ff4eeb330.md) | 95 | `result-track:4d64c0132fd0a77ff4eeb3309cc954f9ec10abcff422354f0bb61bd2b263ddde` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
