# Verification target: GRWTSK.Algebra.LinearAlgebra.Prod.Variant4704c204097578d56be0c47d4ca9474c87780d72795e5ee869b92ac9aaa9f421

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9629df49319e42fc927c5e25b8edd12fb2d4b115",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variant4704c204097578d56be0c47d4ca9474c87780d72795e5ee869b92ac9aaa9f421.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant4704c204097578d56be0c47d4ca9474c87780d72795e5ee869b92ac9aaa9f421.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant4704c204097578d56be0c47d4ca9474c87780d72795e5ee869b92ac9aaa9f421.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9629df49319e42fc927c5e25b8edd12fb2d4b115`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Prod/Variant4704c204097578d56be0c47d4ca9474c87780d72795e5ee869b92ac9aaa9f421.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Prod/Variant4704c204097578d56be0c47d4ca9474c87780d72795e5ee869b92ac9aaa9f421.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [smulWithZero](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant4704c204097578d56be0c47d4ca9474c87780d72795e5ee869b92ac9aaa9f421.lean/declarations/smulwithzero--c32ae554a89955af24779971.md) | 28 | `declaration-track:c32ae554a89955af247799716d48f979bd90801d3a7f142a79bab024051d5e39` |
| 2 | `instance` | [mulActionWithZero](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant4704c204097578d56be0c47d4ca9474c87780d72795e5ee869b92ac9aaa9f421.lean/declarations/mulactionwithzero--428f910152ff12e1343134d1.md) | 33 | `declaration-track:428f910152ff12e1343134d1a593cdecfe660e6f0266980664fd4b1254162c94` |
| 3 | `instance` | [instModule](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant4704c204097578d56be0c47d4ca9474c87780d72795e5ee869b92ac9aaa9f421.lean/declarations/instmodule--933b0b812123d7c422d1a7a1.md) | 37 | `declaration-track:933b0b812123d7c422d1a7a15638dfef6fb137f59f4a6cfc858bf72732c14c91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
