# Verification target: GRWTSK.Algebra.GroupTheory.Iwasawa.Variant3ae1db059bf347ccf38583a3b07aa5a5a9a566435791b6f89d87f92550425c27

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d23508aac9cd4d523afb15b1e0063a2f535c1f42",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Iwasawa/Variant3ae1db059bf347ccf38583a3b07aa5a5a9a566435791b6f89d87f92550425c27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Iwasawa/Variant3ae1db059bf347ccf38583a3b07aa5a5a9a566435791b6f89d87f92550425c27.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Iwasawa/Variant3ae1db059bf347ccf38583a3b07aa5a5a9a566435791b6f89d87f92550425c27.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d23508aac9cd4d523afb15b1e0063a2f535c1f42`.

Source path: `GRWTSK/Algebra/GroupTheory/Iwasawa/Variant3ae1db059bf347ccf38583a3b07aa5a5a9a566435791b6f89d87f92550425c27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Iwasawa/Variant3ae1db059bf347ccf38583a3b07aa5a5a9a566435791b6f89d87f92550425c27.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.End` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Abelianization` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Primitive` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Simple` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IwasawaStructure](../../../../../mathematics/Algebra/GroupTheory/Iwasawa/Variant3ae1db059bf347ccf38583a3b07aa5a5a9a566435791b6f89d87f92550425c27.lean/declarations/iwasawastructure--5753db860603c1e7ceea9f9b.md) | 53 | `declaration-track:5753db860603c1e7ceea9f9b787ba0ef3b0d69adb0e76bff8b4f5f7bb790ed99` |
| 2 | `theorem` | [commutator_le](../../../../../mathematics/Algebra/GroupTheory/Iwasawa/Variant3ae1db059bf347ccf38583a3b07aa5a5a9a566435791b6f89d87f92550425c27.lean/declarations/commutator-le--2777b7ee8411c6d961c697fb.md) | 70 | `result-track:2777b7ee8411c6d961c697fb67079789ed3036e3efe07789a827ccdcf1b078f4` |
| 3 | `theorem` | [isSimpleGroup](../../../../../mathematics/Algebra/GroupTheory/Iwasawa/Variant3ae1db059bf347ccf38583a3b07aa5a5a9a566435791b6f89d87f92550425c27.lean/declarations/issimplegroup--48495f6336cf9567debf7853.md) | 88 | `result-track:48495f6336cf9567debf7853f44e7287197d3a56c835b9b74a64453812994050` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
