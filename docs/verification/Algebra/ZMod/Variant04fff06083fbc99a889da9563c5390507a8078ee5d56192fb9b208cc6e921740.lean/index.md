# Verification target: GRWTSK.Algebra.ZMod.Variant04fff06083fbc99a889da9563c5390507a8078ee5d56192fb9b208cc6e921740

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b0a67667b68b364af8ccb0c3c3e34ea7bbdceb1",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ZMod/Variant04fff06083fbc99a889da9563c5390507a8078ee5d56192fb9b208cc6e921740.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ZMod/Variant04fff06083fbc99a889da9563c5390507a8078ee5d56192fb9b208cc6e921740.lean/index.md) · [Full source](../../../../mathematics/Algebra/ZMod/Variant04fff06083fbc99a889da9563c5390507a8078ee5d56192fb9b208cc6e921740.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b0a67667b68b364af8ccb0c3c3e34ea7bbdceb1`.

Source path: `GRWTSK/Algebra/ZMod/Variant04fff06083fbc99a889da9563c5390507a8078ee5d56192fb9b208cc6e921740.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ZMod/Variant04fff06083fbc99a889da9563c5390507a8078ee5d56192fb9b208cc6e921740.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mul_inv_cancel_aux](../../../../mathematics/Algebra/ZMod/Variant04fff06083fbc99a889da9563c5390507a8078ee5d56192fb9b208cc6e921740.lean/declarations/mul-inv-cancel-aux--f0d5bea30eb73c5f1189463b.md) | 16 | `result-track:f0d5bea30eb73c5f1189463bac458251d3dabf546cd0afa3d21b46fc501bb9d2` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ZMod/Variant04fff06083fbc99a889da9563c5390507a8078ee5d56192fb9b208cc6e921740.lean/declarations/instance--fc78e4b96bda3de2892e27a9.md) | 23 | `declaration-track:fc78e4b96bda3de2892e27a9de228605cc94d9aee3df4687174794b15435765c` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ZMod/Variant04fff06083fbc99a889da9563c5390507a8078ee5d56192fb9b208cc6e921740.lean/declarations/instance--16c21217419bd5b7728ad14e.md) | 32 | `declaration-track:16c21217419bd5b7728ad14e6ace07b3bf65aca1a3dae71ecc0b183f05a13625` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
