# Verification target: GRWTSK.Algebra.GroupTheory.Reflection.Variantf4286289a9dca0954d7ba94ea6b64eeb9fae36420d49e15279b4d77cddcc8b1d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8786faebf42e97cf8f1260a04f3728a65d2e2590",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Reflection/Variantf4286289a9dca0954d7ba94ea6b64eeb9fae36420d49e15279b4d77cddcc8b1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Reflection/Variantf4286289a9dca0954d7ba94ea6b64eeb9fae36420d49e15279b4d77cddcc8b1d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Reflection/Variantf4286289a9dca0954d7ba94ea6b64eeb9fae36420d49e15279b4d77cddcc8b1d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8786faebf42e97cf8f1260a04f3728a65d2e2590`.

Source path: `GRWTSK/Algebra/GroupTheory/Reflection/Variantf4286289a9dca0954d7ba94ea6b64eeb9fae36420d49e15279b4d77cddcc8b1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Reflection/Variantf4286289a9dca0954d7ba94ea6b64eeb9fae36420d49e15279b4d77cddcc8b1d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.Ownership` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.Transformation` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Defs` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ReflectionInterpretation](../../../../../mathematics/Algebra/GroupTheory/Reflection/Variantf4286289a9dca0954d7ba94ea6b64eeb9fae36420d49e15279b4d77cddcc8b1d.lean/declarations/reflectioninterpretation--d11ec19c602dbda86f0e9af1.md) | 18 | `declaration-track:d11ec19c602dbda86f0e9af15a4b72286b8069d1950ddb009fb50ba11977a6a7` |
| 2 | `structure` | [CertifiedWorldReflection](../../../../../mathematics/Algebra/GroupTheory/Reflection/Variantf4286289a9dca0954d7ba94ea6b64eeb9fae36420d49e15279b4d77cddcc8b1d.lean/declarations/certifiedworldreflection--9a8e3eff646967629dc349c7.md) | 30 | `declaration-track:9a8e3eff646967629dc349c7707a66f277d13682b50e8a30697e23665b4e906e` |
| 3 | `theorem` | [reflect_reflect](../../../../../mathematics/Algebra/GroupTheory/Reflection/Variantf4286289a9dca0954d7ba94ea6b64eeb9fae36420d49e15279b4d77cddcc8b1d.lean/declarations/reflect-reflect--37d7c993d1b1cd8663baa1a6.md) | 44 | `result-track:37d7c993d1b1cd8663baa1a64c4776cf4ab98374dcec081abbe56b1d97e22b3d` |
| 4 | `structure` | [AdditiveWorldReflection](../../../../../mathematics/Algebra/GroupTheory/Reflection/Variantf4286289a9dca0954d7ba94ea6b64eeb9fae36420d49e15279b4d77cddcc8b1d.lean/declarations/additiveworldreflection--cf76a2cb6fc931d8d0f2ebef.md) | 53 | `declaration-track:cf76a2cb6fc931d8d0f2ebef8e5c51875b072376402674c6a75a2089378e40f7` |
| 5 | `def` | [reflectionDefect](../../../../../mathematics/Algebra/GroupTheory/Reflection/Variantf4286289a9dca0954d7ba94ea6b64eeb9fae36420d49e15279b4d77cddcc8b1d.lean/declarations/reflectiondefect--eb1e758373904c200bd65224.md) | 59 | `declaration-track:eb1e758373904c200bd65224f9a40b7c947ba6b6064dbdbdd9783761cc43d470` |
| 6 | `theorem` | [reflectionDefect_eq_zero_of_fixed](../../../../../mathematics/Algebra/GroupTheory/Reflection/Variantf4286289a9dca0954d7ba94ea6b64eeb9fae36420d49e15279b4d77cddcc8b1d.lean/declarations/reflectiondefect-eq-zero-of-fixed--de4db78532814c47ba339ac5.md) | 67 | `result-track:de4db78532814c47ba339ac54853852acadd720db79e83f477b40174eb966577` |
| 7 | `structure` | [ReflectionComparison](../../../../../mathematics/Algebra/GroupTheory/Reflection/Variantf4286289a9dca0954d7ba94ea6b64eeb9fae36420d49e15279b4d77cddcc8b1d.lean/declarations/reflectioncomparison--dd2cf7b5170ef346d0441083.md) | 76 | `declaration-track:dd2cf7b5170ef346d044108330fad07f2b77ae8928e570abfb6e1c0c6bbeb9d2` |
| 8 | `def` | [reflectionComparison](../../../../../mathematics/Algebra/GroupTheory/Reflection/Variantf4286289a9dca0954d7ba94ea6b64eeb9fae36420d49e15279b4d77cddcc8b1d.lean/declarations/reflectioncomparison--a3dbec4d7f20381d72aa7270.md) | 84 | `declaration-track:a3dbec4d7f20381d72aa727028d89c06496b46a6ad1b372071c0b1aaa0d67e00` |
| 9 | `structure` | [ReflectionCertificate](../../../../../mathematics/Algebra/GroupTheory/Reflection/Variantf4286289a9dca0954d7ba94ea6b64eeb9fae36420d49e15279b4d77cddcc8b1d.lean/declarations/reflectioncertificate--d2f2a24d269ee8bb7139db44.md) | 96 | `declaration-track:d2f2a24d269ee8bb7139db447f3bf1cf78e75fc2c768cda6279039e9503ed45c` |
| 10 | `def` | [ReflectionCertificate.ValidFor](../../../../../mathematics/Algebra/GroupTheory/Reflection/Variantf4286289a9dca0954d7ba94ea6b64eeb9fae36420d49e15279b4d77cddcc8b1d.lean/declarations/reflectioncertificate-validfor--8fd653450bee9ce609d4281e.md) | 102 | `declaration-track:8fd653450bee9ce609d4281ecf67c227d9cfa86029692aef5f2a82f16894ec49` |
| 11 | `theorem` | [reflection_version_change_rejects_stale_certificate](../../../../../mathematics/Algebra/GroupTheory/Reflection/Variantf4286289a9dca0954d7ba94ea6b64eeb9fae36420d49e15279b4d77cddcc8b1d.lean/declarations/reflection-version-change-rejects-stale-certificate--78c92aa2e3103967f0e6fa12.md) | 109 | `result-track:78c92aa2e3103967f0e6fa12cf887f6ffde64838eeb684ce2875dc113a17a3d9` |
| 12 | `theorem` | [zero_reflection_defect_has_no_uniform_proof_eliminator](../../../../../mathematics/Algebra/GroupTheory/Reflection/Variantf4286289a9dca0954d7ba94ea6b64eeb9fae36420d49e15279b4d77cddcc8b1d.lean/declarations/zero-reflection-defect-has-no-uniform-proof-eliminator--f947647abd1f53ee41a96e0d.md) | 118 | `result-track:f947647abd1f53ee41a96e0dd86e3a1699967185d9896071291459fe6eb6e052` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
