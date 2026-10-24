# Verification target: GRWTSK.Topology.GeneralTopology.Hom.Variant2de6f9b1aec32eee65121b0b7d8ac89cc566e99bb5e1f3acf86705320ef7cfff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6f359283b2c40e5549f82260808e7f4b0a40d77",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Hom/Variant2de6f9b1aec32eee65121b0b7d8ac89cc566e99bb5e1f3acf86705320ef7cfff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant2de6f9b1aec32eee65121b0b7d8ac89cc566e99bb5e1f3acf86705320ef7cfff.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant2de6f9b1aec32eee65121b0b7d8ac89cc566e99bb5e1f3acf86705320ef7cfff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6f359283b2c40e5549f82260808e7f4b0a40d77`.

Source path: `GRWTSK/Topology/GeneralTopology/Hom/Variant2de6f9b1aec32eee65121b0b7d8ac89cc566e99bb5e1f3acf86705320ef7cfff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Hom/Variant2de6f9b1aec32eee65121b0b7d8ac89cc566e99bb5e1f3acf86705320ef7cfff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.ContinuousMonoidHom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.SeparationQuotient.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [liftContinuousMonoidHom](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant2de6f9b1aec32eee65121b0b7d8ac89cc566e99bb5e1f3acf86705320ef7cfff.lean/declarations/liftcontinuousmonoidhom--209786d62d80074212ef4ace.md) | 33 | `declaration-track:209786d62d80074212ef4ace114d0d83c03a4059c7829e1313239d6ddf56cf45` |
| 2 | `theorem` | [liftContinuousCommMonoidHom_mk](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant2de6f9b1aec32eee65121b0b7d8ac89cc566e99bb5e1f3acf86705320ef7cfff.lean/declarations/liftcontinuouscommmonoidhom-mk--1396624954b37c528ab24c6f.md) | 42 | `result-track:1396624954b37c528ab24c6f0a7272240e408b39497d5b6066eb364b96d566f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
