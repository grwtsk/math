# Verification target: GRWTSK.Algebra.GroupTheory.Reflection.Variant2a368a958fa1afac0fb8fe82eefedeb0042d70b0f1aaf32a62398db3d0edd514

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc3a897c91d37c769c6e13ceeaac219ba4d83dc5",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Reflection/Variant2a368a958fa1afac0fb8fe82eefedeb0042d70b0f1aaf32a62398db3d0edd514.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Reflection/Variant2a368a958fa1afac0fb8fe82eefedeb0042d70b0f1aaf32a62398db3d0edd514.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Reflection/Variant2a368a958fa1afac0fb8fe82eefedeb0042d70b0f1aaf32a62398db3d0edd514.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc3a897c91d37c769c6e13ceeaac219ba4d83dc5`.

Source path: `GRWTSK/Algebra/GroupTheory/Reflection/Variant2a368a958fa1afac0fb8fe82eefedeb0042d70b0f1aaf32a62398db3d0edd514.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Reflection/Variant2a368a958fa1afac0fb8fe82eefedeb0042d70b0f1aaf32a62398db3d0edd514.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.Ownership` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.Transformation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ReflectionInterpretation](../../../../../mathematics/Algebra/GroupTheory/Reflection/Variant2a368a958fa1afac0fb8fe82eefedeb0042d70b0f1aaf32a62398db3d0edd514.lean/declarations/reflectioninterpretation--a8090d56e26d76e51a53e926.md) | 26 | `declaration-track:a8090d56e26d76e51a53e9262e924883e0513334d232ff147047c4246015e61a` |
| 2 | `structure` | [CertifiedWorldReflection](../../../../../mathematics/Algebra/GroupTheory/Reflection/Variant2a368a958fa1afac0fb8fe82eefedeb0042d70b0f1aaf32a62398db3d0edd514.lean/declarations/certifiedworldreflection--558ea0ed47d3e4701f98ef01.md) | 38 | `declaration-track:558ea0ed47d3e4701f98ef0162f4710c792319260ecec2bb8ee369ee78f38fd8` |
| 3 | `theorem` | [reflect_reflect](../../../../../mathematics/Algebra/GroupTheory/Reflection/Variant2a368a958fa1afac0fb8fe82eefedeb0042d70b0f1aaf32a62398db3d0edd514.lean/declarations/reflect-reflect--9366737a6f79d40af39fc9ae.md) | 52 | `result-track:9366737a6f79d40af39fc9aef902670e2a1632e7d0bd94316cc42cd55a33c2ca` |
| 4 | `structure` | [AdditiveWorldReflection](../../../../../mathematics/Algebra/GroupTheory/Reflection/Variant2a368a958fa1afac0fb8fe82eefedeb0042d70b0f1aaf32a62398db3d0edd514.lean/declarations/additiveworldreflection--7a8d5a35c6a797ea6ff62fa3.md) | 61 | `declaration-track:7a8d5a35c6a797ea6ff62fa377bf7904857928bf44cbe12b4f8f4b3c6c734c3f` |
| 5 | `def` | [reflectionDefect](../../../../../mathematics/Algebra/GroupTheory/Reflection/Variant2a368a958fa1afac0fb8fe82eefedeb0042d70b0f1aaf32a62398db3d0edd514.lean/declarations/reflectiondefect--ce791b64412d089de5f41408.md) | 67 | `declaration-track:ce791b64412d089de5f41408c27afb9e0e9ee64a21ad403fea737b8dd5c78c57` |
| 6 | `theorem` | [reflectionDefect_eq_zero_of_fixed](../../../../../mathematics/Algebra/GroupTheory/Reflection/Variant2a368a958fa1afac0fb8fe82eefedeb0042d70b0f1aaf32a62398db3d0edd514.lean/declarations/reflectiondefect-eq-zero-of-fixed--648b65b111e7fbd10e5b9d53.md) | 75 | `result-track:648b65b111e7fbd10e5b9d537006f1a0ef79d4a8ac4191d5f12f047988ad4d07` |
| 7 | `structure` | [ReflectionComparison](../../../../../mathematics/Algebra/GroupTheory/Reflection/Variant2a368a958fa1afac0fb8fe82eefedeb0042d70b0f1aaf32a62398db3d0edd514.lean/declarations/reflectioncomparison--9fd2b4abe36f44dfbc44e8c9.md) | 84 | `declaration-track:9fd2b4abe36f44dfbc44e8c9410b31411a3e25fd53f7aefafcf47f3e66df7154` |
| 8 | `def` | [reflectionComparison](../../../../../mathematics/Algebra/GroupTheory/Reflection/Variant2a368a958fa1afac0fb8fe82eefedeb0042d70b0f1aaf32a62398db3d0edd514.lean/declarations/reflectioncomparison--a960e58995374bb794938ed1.md) | 92 | `declaration-track:a960e58995374bb794938ed13db6c728a63b6cbb339220d31c42070ba15b7810` |
| 9 | `structure` | [ReflectionCertificate](../../../../../mathematics/Algebra/GroupTheory/Reflection/Variant2a368a958fa1afac0fb8fe82eefedeb0042d70b0f1aaf32a62398db3d0edd514.lean/declarations/reflectioncertificate--7881402c63bc2b28e345b095.md) | 104 | `declaration-track:7881402c63bc2b28e345b095d1f0edad3598c2c5089a55e136bf2a3ecbf88526` |
| 10 | `def` | [ReflectionCertificate.ValidFor](../../../../../mathematics/Algebra/GroupTheory/Reflection/Variant2a368a958fa1afac0fb8fe82eefedeb0042d70b0f1aaf32a62398db3d0edd514.lean/declarations/reflectioncertificate-validfor--f0246eea5565bd6f7b0966ec.md) | 110 | `declaration-track:f0246eea5565bd6f7b0966ec40d455c086a09fe79b9dc8e9dc46b29fec26e6ee` |
| 11 | `theorem` | [reflection_version_change_rejects_stale_certificate](../../../../../mathematics/Algebra/GroupTheory/Reflection/Variant2a368a958fa1afac0fb8fe82eefedeb0042d70b0f1aaf32a62398db3d0edd514.lean/declarations/reflection-version-change-rejects-stale-certificate--5292075fc4cdb6787ef80be9.md) | 117 | `result-track:5292075fc4cdb6787ef80be90bb6dad191ea483430ce886f74514546d1fe2e90` |
| 12 | `theorem` | [zero_reflection_defect_has_no_uniform_proof_eliminator](../../../../../mathematics/Algebra/GroupTheory/Reflection/Variant2a368a958fa1afac0fb8fe82eefedeb0042d70b0f1aaf32a62398db3d0edd514.lean/declarations/zero-reflection-defect-has-no-uniform-proof-eliminator--cf3f73095d7ebb65d630b11a.md) | 126 | `result-track:cf3f73095d7ebb65d630b11ab141cd63bbda27e343ae5d7c1da24183d77f110b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
