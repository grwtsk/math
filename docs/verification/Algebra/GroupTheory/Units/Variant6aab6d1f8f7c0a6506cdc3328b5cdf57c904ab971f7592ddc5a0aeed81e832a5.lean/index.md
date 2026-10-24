# Verification target: GRWTSK.Algebra.GroupTheory.Units.Variant6aab6d1f8f7c0a6506cdc3328b5cdf57c904ab971f7592ddc5a0aeed81e832a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba43080762225f738d14de480781ffe0f32afcef",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Units/Variant6aab6d1f8f7c0a6506cdc3328b5cdf57c904ab971f7592ddc5a0aeed81e832a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6aab6d1f8f7c0a6506cdc3328b5cdf57c904ab971f7592ddc5a0aeed81e832a5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6aab6d1f8f7c0a6506cdc3328b5cdf57c904ab971f7592ddc5a0aeed81e832a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba43080762225f738d14de480781ffe0f32afcef`.

Source path: `GRWTSK/Algebra/GroupTheory/Units/Variant6aab6d1f8f7c0a6506cdc3328b5cdf57c904ab971f7592ddc5a0aeed81e832a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Units/Variant6aab6d1f8f7c0a6506cdc3328b5cdf57c904ab971f7592ddc5a0aeed81e832a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Equiv.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Delaborators` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MulEquiv.piUnits](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6aab6d1f8f7c0a6506cdc3328b5cdf57c904ab971f7592ddc5a0aeed81e832a5.lean/declarations/mulequiv-piunits--822aa2ae84f8413483cc08be.md) | 21 | `declaration-track:822aa2ae84f8413483cc08be011bac6b539879731d1ea307821074b533fd3f51` |
| 2 | `lemma` | [Pi.isUnit_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6aab6d1f8f7c0a6506cdc3328b5cdf57c904ab971f7592ddc5a0aeed81e832a5.lean/declarations/pi-isunit-iff--cf0b6873f3e06371fc40d244.md) | 29 | `result-track:cf0b6873f3e06371fc40d244df48207682c5d936c7d8a57d10736455be9b431c` |
| 3 | `lemma` | [IsUnit.val_inv_apply](../../../../../mathematics/Algebra/GroupTheory/Units/Variant6aab6d1f8f7c0a6506cdc3328b5cdf57c904ab971f7592ddc5a0aeed81e832a5.lean/declarations/isunit-val-inv-apply--73c3c5be097fbebb09dff7c8.md) | 38 | `result-track:73c3c5be097fbebb09dff7c883142c76c5c192284d8616394303bf02f1ab73bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
