# Verification target: GRWTSK.Algebra.LinearAlgebra.Rat.Variant9c178412768bd81b3b8a4323538257d9fe74409d0b2369da459407686f15c0e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64f9ceb24ea52be4f04f0cee117ddc25e69baab2",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Rat/Variant9c178412768bd81b3b8a4323538257d9fe74409d0b2369da459407686f15c0e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant9c178412768bd81b3b8a4323538257d9fe74409d0b2369da459407686f15c0e9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant9c178412768bd81b3b8a4323538257d9fe74409d0b2369da459407686f15c0e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64f9ceb24ea52be4f04f0cee117ddc25e69baab2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Rat/Variant9c178412768bd81b3b8a4323538257d9fe74409d0b2369da459407686f15c0e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Rat/Variant9c178412768bd81b3b8a4323538257d9fe74409d0b2369da459407686f15c0e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Rat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LinearMap.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AddMonoidHom.toRatLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant9c178412768bd81b3b8a4323538257d9fe74409d0b2369da459407686f15c0e9.lean/declarations/addmonoidhom-toratlinearmap--275a421856002bc87deedc98.md) | 27 | `declaration-track:275a421856002bc87deedc98fb331a3521b9ea0a1699f450944c7bf4f959a32c` |
| 2 | `theorem` | [AddMonoidHom.toRatLinearMap_injective](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant9c178412768bd81b3b8a4323538257d9fe74409d0b2369da459407686f15c0e9.lean/declarations/addmonoidhom-toratlinearmap-injective--315141cec522c1a1c643976c.md) | 31 | `result-track:315141cec522c1a1c643976cdff48460cbf47f385b376d522b839c1f51f6b73f` |
| 3 | `theorem` | [AddMonoidHom.coe_toRatLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant9c178412768bd81b3b8a4323538257d9fe74409d0b2369da459407686f15c0e9.lean/declarations/addmonoidhom-coe-toratlinearmap--e00cd7abfd7c1c67e33e2fb0.md) | 38 | `result-track:e00cd7abfd7c1c67e33e2fb0664f6c34d934b8748fb6ed1bed78afb06aa65586` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
