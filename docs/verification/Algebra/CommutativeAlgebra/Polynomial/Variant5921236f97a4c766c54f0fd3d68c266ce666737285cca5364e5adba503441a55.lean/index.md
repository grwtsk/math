# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Polynomial.Variant5921236f97a4c766c54f0fd3d68c266ce666737285cca5364e5adba503441a55

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc3271d38b507f96a433e3c6e0a4ac73625f21bc",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant5921236f97a4c766c54f0fd3d68c266ce666737285cca5364e5adba503441a55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant5921236f97a4c766c54f0fd3d68c266ce666737285cca5364e5adba503441a55.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant5921236f97a4c766c54f0fd3d68c266ce666737285cca5364e5adba503441a55.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc3271d38b507f96a433e3c6e0a4ac73625f21bc`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant5921236f97a4c766c54f0fd3d68c266ce666737285cca5364e5adba503441a55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Polynomial/Variant5921236f97a4c766c54f0fd3d68c266ce666737285cca5364e5adba503441a55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [adjoin_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant5921236f97a4c766c54f0fd3d68c266ce666737285cca5364e5adba503441a55.lean/declarations/adjoin-x--52b78597374682fbf6279715.md) | 44 | `result-track:52b78597374682fbf627971576393310962f77607af6a685e99db31b24b655e1` |
| 2 | `theorem` | [_root_.GRWTSK.Algebra.CommutativeAlgebra.AdjoinX.Variant32cac4ce96ccc6cfabacaceee51c216e81d6f4af5e64ec561c3643f9ef81132d.Algebra.adjoin_singleton_eq_range_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant5921236f97a4c766c54f0fd3d68c266ce666737285cca5364e5adba503441a55.lean/declarations/root-grwtsk-algebra-commutativealgebra-adjoinx-variant32cac4ce96ccc6cfab--15bb617248fd88200ea5f5be.md) | 51 | `result-track:15bb617248fd88200ea5f5beb38f942ca9dff05e7cee22224e63af35f69697d5` |
| 3 | `theorem` | [aeval_mem_adjoin_singleton](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant5921236f97a4c766c54f0fd3d68c266ce666737285cca5364e5adba503441a55.lean/declarations/aeval-mem-adjoin-singleton--bf33197a998c57ff7e20334c.md) | 56 | `result-track:bf33197a998c57ff7e20334cda94f19a0e59cc7a894c725886cd93939e9b5b6a` |
| 4 | `instance` | [instCommSemiringAdjoinSingleton](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant5921236f97a4c766c54f0fd3d68c266ce666737285cca5364e5adba503441a55.lean/declarations/instcommsemiringadjoinsingleton--2d6cccd264ef81787f7756c8.md) | 60 | `declaration-track:2d6cccd264ef81787f7756c8a00e92f97c2dea292aa20580b5d17c7d0bd83864` |
| 5 | `instance` | [instCommRingAdjoinSingleton](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant5921236f97a4c766c54f0fd3d68c266ce666737285cca5364e5adba503441a55.lean/declarations/instcommringadjoinsingleton--829625921d25750b4c8ea4ff.md) | 68 | `declaration-track:829625921d25750b4c8ea4ffc2909e32e2f8246fa6bae921090fa6fed4b45fde` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
