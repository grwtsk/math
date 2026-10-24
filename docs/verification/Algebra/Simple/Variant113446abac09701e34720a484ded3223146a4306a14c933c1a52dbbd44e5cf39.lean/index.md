# Verification target: GRWTSK.Algebra.Simple.Variant113446abac09701e34720a484ded3223146a4306a14c933c1a52dbbd44e5cf39

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9f85be1110c2f138d6d6890ea0903d7a9a9af34",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Simple/Variant113446abac09701e34720a484ded3223146a4306a14c933c1a52dbbd44e5cf39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Simple/Variant113446abac09701e34720a484ded3223146a4306a14c933c1a52dbbd44e5cf39.lean/index.md) · [Full source](../../../../mathematics/Algebra/Simple/Variant113446abac09701e34720a484ded3223146a4306a14c933c1a52dbbd44e5cf39.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9f85be1110c2f138d6d6890ea0903d7a9a9af34`.

Source path: `GRWTSK/Algebra/Simple/Variant113446abac09701e34720a484ded3223146a4306a14c933c1a52dbbd44e5cf39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Simple/Variant113446abac09701e34720a484ded3223146a4306a14c933c1a52dbbd44e5cf39.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Algebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Subobject` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Simple` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Lemmas` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleModule.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [simple_iff_isSimpleModule](../../../../mathematics/Algebra/Simple/Variant113446abac09701e34720a484ded3223146a4306a14c933c1a52dbbd44e5cf39.lean/declarations/simple-iff-issimplemodule--a07089a851c87f23c94c01d5.md) | 23 | `result-track:a07089a851c87f23c94c01d5941890d0bd8339d03e5842f1c70dfe83be92457f` |
| 2 | `theorem` | [simple_iff_isSimpleModule'](../../../../mathematics/Algebra/Simple/Variant113446abac09701e34720a484ded3223146a4306a14c933c1a52dbbd44e5cf39.lean/declarations/simple-iff-issimplemodule--5515c2bbfc4049948523db82.md) | 26 | `result-track:5515c2bbfc4049948523db82501da86bb1c050b389906697896c3586eb5a34a0` |
| 3 | `instance` | [simple_of_isSimpleModule](../../../../mathematics/Algebra/Simple/Variant113446abac09701e34720a484ded3223146a4306a14c933c1a52dbbd44e5cf39.lean/declarations/simple-of-issimplemodule--e915ea82c1c2af56d0ebd061.md) | 30 | `declaration-track:e915ea82c1c2af56d0ebd06146ffede0439b1a1887d3bc9e607305897e9081e9` |
| 4 | `instance` | [isSimpleModule_of_simple](../../../../mathematics/Algebra/Simple/Variant113446abac09701e34720a484ded3223146a4306a14c933c1a52dbbd44e5cf39.lean/declarations/issimplemodule-of-simple--51b1b93c2986650650533504.md) | 34 | `declaration-track:51b1b93c2986650650533504f78b5dc069127ceab95d747d69c7f69aaf3f00d9` |
| 5 | `theorem` | [simple_of_finrank_eq_one](../../../../mathematics/Algebra/Simple/Variant113446abac09701e34720a484ded3223146a4306a14c933c1a52dbbd44e5cf39.lean/declarations/simple-of-finrank-eq-one--3892fe128913d6f2035e5604.md) | 42 | `result-track:3892fe128913d6f2035e5604b7ca354e0a980a957ad7e26d18b14d0a80725d3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
