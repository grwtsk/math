# Verification target: GRWTSK.Algebra.End.Varianteffb468a89bc2dd03cec3838d8c60dceaa1e05c4ef9dfcd93ae1cdd162e6783b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba46302be0c6ef70dfd6390916504f3e322bd647",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/End/Varianteffb468a89bc2dd03cec3838d8c60dceaa1e05c4ef9dfcd93ae1cdd162e6783b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/End/Varianteffb468a89bc2dd03cec3838d8c60dceaa1e05c4ef9dfcd93ae1cdd162e6783b.lean/index.md) · [Full source](../../../../mathematics/Algebra/End/Varianteffb468a89bc2dd03cec3838d8c60dceaa1e05c4ef9dfcd93ae1cdd162e6783b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba46302be0c6ef70dfd6390916504f3e322bd647`.

Source path: `GRWTSK/Algebra/End/Varianteffb468a89bc2dd03cec3838d8c60dceaa1e05c4ef9dfcd93ae1cdd162e6783b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/End/Varianteffb468a89bc2dd03cec3838d8c60dceaa1e05c4ef9dfcd93ae1cdd162e6783b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Action.Group` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Aut` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [applyMulSemiringAction](../../../../mathematics/Algebra/End/Varianteffb468a89bc2dd03cec3838d8c60dceaa1e05c4ef9dfcd93ae1cdd162e6783b.lean/declarations/applymulsemiringaction--ca960f518f82a08fc03f4335.md) | 33 | `declaration-track:ca960f518f82a08fc03f43359affd160b27cac00902c3ac51ae505ade415376c` |
| 2 | `theorem` | [smul_def](../../../../mathematics/Algebra/End/Varianteffb468a89bc2dd03cec3838d8c60dceaa1e05c4ef9dfcd93ae1cdd162e6783b.lean/declarations/smul-def--4ff8b7fe1079fbf87843271e.md) | 44 | `result-track:4ff8b7fe1079fbf87843271e02dcd029cdc1def46a34476ada1bc1bfc0b3e72a` |
| 3 | `instance` | [apply_faithfulSMul](../../../../mathematics/Algebra/End/Varianteffb468a89bc2dd03cec3838d8c60dceaa1e05c4ef9dfcd93ae1cdd162e6783b.lean/declarations/apply-faithfulsmul--837ae35c21929c39ca963806.md) | 47 | `declaration-track:837ae35c21929c39ca9638060c00a67fe2d33820a68939dc6ff3fe7c991bc6a0` |
| 4 | `def` | [_root_.MulSemiringAction.toRingAut](../../../../mathematics/Algebra/End/Varianteffb468a89bc2dd03cec3838d8c60dceaa1e05c4ef9dfcd93ae1cdd162e6783b.lean/declarations/root-mulsemiringaction-toringaut--7a089302687be87babc76996.md) | 57 | `declaration-track:7a089302687be87babc76996557044abc2e91723118aa66ced6f05d19009b3a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
