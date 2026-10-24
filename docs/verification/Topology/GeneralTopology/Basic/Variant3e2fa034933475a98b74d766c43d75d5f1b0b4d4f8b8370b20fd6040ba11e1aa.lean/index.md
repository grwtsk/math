# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant3e2fa034933475a98b74d766c43d75d5f1b0b4d4f8b8370b20fd6040ba11e1aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21968510f5cd70740baaddcbc391ad931b9f73f2",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3e2fa034933475a98b74d766c43d75d5f1b0b4d4f8b8370b20fd6040ba11e1aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3e2fa034933475a98b74d766c43d75d5f1b0b4d4f8b8370b20fd6040ba11e1aa.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3e2fa034933475a98b74d766c43d75d5f1b0b4d4f8b8370b20fd6040ba11e1aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21968510f5cd70740baaddcbc391ad931b9f73f2`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant3e2fa034933475a98b74d766c43d75d5f1b0b4d4f8b8370b20fd6040ba11e1aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant3e2fa034933475a98b74d766c43d75d5f1b0b4d4f8b8370b20fd6040ba11e1aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.TopCat.Limits.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Sphere` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.RelativeCellComplex.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [basicCell](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3e2fa034933475a98b74d766c43d75d5f1b0b4d4f8b8370b20fd6040ba11e1aa.lean/declarations/basiccell--e70616baf54f7228bd593065.md) | 59 | `declaration-track:e70616baf54f7228bd593065f61faffaf70a75369f77d43598676bb8946540af` |
| 2 | `abbrev` | [RelativeCWComplex](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3e2fa034933475a98b74d766c43d75d5f1b0b4d4f8b8370b20fd6040ba11e1aa.lean/declarations/relativecwcomplex--e948e3780f9e65e970656cb6.md) | 68 | `declaration-track:e948e3780f9e65e970656cb6ee1ab140c4c62345da1119550abd5285edfa44c4` |
| 3 | `abbrev` | [CWComplex](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3e2fa034933475a98b74d766c43d75d5f1b0b4d4f8b8370b20fd6040ba11e1aa.lean/declarations/cwcomplex--71b427c308be0feb2beffb04.md) | 71 | `declaration-track:71b427c308be0feb2beffb04fe925a2d4827d38c710ed36e8d0789d9af24585e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
