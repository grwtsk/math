# Verification target: GRWTSK.Algebra.UniversalAlgebra.AddAut.Variantb53e623f3124551f997ff45df753f66c09ed80cb518ec88a3870682d525a5c3e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6522bff220d5dee7b6102ff7af8b5b955f03547",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/AddAut/Variantb53e623f3124551f997ff45df753f66c09ed80cb518ec88a3870682d525a5c3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/AddAut/Variantb53e623f3124551f997ff45df753f66c09ed80cb518ec88a3870682d525a5c3e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/AddAut/Variantb53e623f3124551f997ff45df753f66c09ed80cb518ec88a3870682d525a5c3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6522bff220d5dee7b6102ff7af8b5b955f03547`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/AddAut/Variantb53e623f3124551f997ff45df753f66c09ed80cb518ec88a3870682d525a5c3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/AddAut/Variantb53e623f3124551f997ff45df753f66c09ed80cb518ec88a3870682d525a5c3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Units` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Opposite` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Opposite` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulLeft](../../../../../mathematics/Algebra/UniversalAlgebra/AddAut/Variantb53e623f3124551f997ff45df753f66c09ed80cb518ec88a3870682d525a5c3e.lean/declarations/mulleft--d714e1abe534ff58cce6206e.md) | 28 | `declaration-track:d714e1abe534ff58cce6206ee4de6b295c7cf62fe6fb6a99688965d043065aff` |
| 2 | `def` | [mulRight](../../../../../mathematics/Algebra/UniversalAlgebra/AddAut/Variantb53e623f3124551f997ff45df753f66c09ed80cb518ec88a3870682d525a5c3e.lean/declarations/mulright--8ce5ac6f95354235de0ae3af.md) | 32 | `declaration-track:8ce5ac6f95354235de0ae3afba5b03d8b64a90b3b8e0052e2c512bc998581365` |
| 3 | `theorem` | [mulRight_apply](../../../../../mathematics/Algebra/UniversalAlgebra/AddAut/Variantb53e623f3124551f997ff45df753f66c09ed80cb518ec88a3870682d525a5c3e.lean/declarations/mulright-apply--c3723f32b6bee41ab971253a.md) | 36 | `result-track:c3723f32b6bee41ab971253a3ad10c9624db58e79d19e1edbbaf05ec9a175044` |
| 4 | `theorem` | [mulRight_symm_apply](../../../../../mathematics/Algebra/UniversalAlgebra/AddAut/Variantb53e623f3124551f997ff45df753f66c09ed80cb518ec88a3870682d525a5c3e.lean/declarations/mulright-symm-apply--7e087130997d7fa298816f2c.md) | 40 | `result-track:7e087130997d7fa298816f2ced98bdff00f51267e3a266dc317bf550272e6814` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
