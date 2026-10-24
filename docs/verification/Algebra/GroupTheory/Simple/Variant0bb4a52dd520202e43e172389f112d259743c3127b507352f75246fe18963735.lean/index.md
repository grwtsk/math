# Verification target: GRWTSK.Algebra.GroupTheory.Simple.Variant0bb4a52dd520202e43e172389f112d259743c3127b507352f75246fe18963735

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58f73472191762f506160a69ebbc560854438619",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Simple/Variant0bb4a52dd520202e43e172389f112d259743c3127b507352f75246fe18963735.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Simple/Variant0bb4a52dd520202e43e172389f112d259743c3127b507352f75246fe18963735.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Simple/Variant0bb4a52dd520202e43e172389f112d259743c3127b507352f75246fe18963735.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58f73472191762f506160a69ebbc560854438619`.

Source path: `GRWTSK/Algebra/GroupTheory/Simple/Variant0bb4a52dd520202e43e172389f112d259743c3127b507352f75246fe18963735.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Simple/Variant0bb4a52dd520202e43e172389f112d259743c3127b507352f75246fe18963735.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Atoms` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsSimpleGroup](../../../../../mathematics/Algebra/GroupTheory/Simple/Variant0bb4a52dd520202e43e172389f112d259743c3127b507352f75246fe18963735.lean/declarations/issimplegroup--3dce4f7e072d7f536259ea3d.md) | 33 | `declaration-track:3dce4f7e072d7f536259ea3d99e6b9e35829738156b34068d13f18c928f87c89` |
| 2 | `class` | [IsSimpleAddGroup](../../../../../mathematics/Algebra/GroupTheory/Simple/Variant0bb4a52dd520202e43e172389f112d259743c3127b507352f75246fe18963735.lean/declarations/issimpleaddgroup--3c83c54a3929947dfb0bb04e.md) | 38 | `declaration-track:3c83c54a3929947dfb0bb04ed29e64f3e160e9dc1b616ceaa363c53fee8093ec` |
| 3 | `theorem` | [Subgroup.Normal.eq_bot_or_eq_top](../../../../../mathematics/Algebra/GroupTheory/Simple/Variant0bb4a52dd520202e43e172389f112d259743c3127b507352f75246fe18963735.lean/declarations/subgroup-normal-eq-bot-or-eq-top--33b38399e4dabae04bdcb374.md) | 47 | `result-track:33b38399e4dabae04bdcb37411e7fc0200a443c0731575c2bf2f71bb757ebc07` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Simple/Variant0bb4a52dd520202e43e172389f112d259743c3127b507352f75246fe18963735.lean/declarations/instance--55f478640a3347aa992c30f9.md) | 54 | `declaration-track:55f478640a3347aa992c30f9604386e17431905308770a7e2abe4c4da0563a95` |
| 5 | `theorem` | [isSimpleGroup_of_surjective](../../../../../mathematics/Algebra/GroupTheory/Simple/Variant0bb4a52dd520202e43e172389f112d259743c3127b507352f75246fe18963735.lean/declarations/issimplegroup-of-surjective--d87dbb42cbf1004ca047e9ef.md) | 60 | `result-track:d87dbb42cbf1004ca047e9efd209d1690a31001f2226ac79abaa6b2a86f735e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
