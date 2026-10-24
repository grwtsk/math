# Verification target: GRWTSK.Algebra.GroupTheory.SlashActions.Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67776816f49fd552e79e034b51d4a658146264e4",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/SlashActions/Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67776816f49fd552e79e034b51d4a658146264e4`.

Source path: `GRWTSK/Algebra/GroupTheory/SlashActions/Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/SlashActions/Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.UpperHalfPlane.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41.lean/declarations/macro-rules--e47f4464410ce190dcbb0d4d.md) | 40 | `declaration-track:e47f4464410ce190dcbb0d4d33ef783117f1328588e13364b1c166df6fc96c10` |
| 2 | `class` | [SlashAction](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41.lean/declarations/slashaction--58e53b17428a29947b277a0f.md) | 53 | `declaration-track:58e53b17428a29947b277a0f3787c5fc6c962e661eb00b63124fc33b4fee9cd0` |
| 3 | `theorem` | [SlashAction.neg_slash](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41.lean/declarations/slashaction-neg-slash--b7c7e50e540b2c34b47d8f06.md) | 69 | `result-track:b7c7e50e540b2c34b47d8f0627ab1539f5c323bf0b42a0bf1795278def82ab0c` |
| 4 | `theorem` | [SlashAction.smul_slash_of_tower](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41.lean/declarations/slashaction-smul-slash-of-tower--bed12ba6fd359810cde7fc86.md) | 76 | `result-track:bed12ba6fd359810cde7fc86e0290d68b6e0691cb666678c3d0e2c2529d6bd05` |
| 5 | `def` | [monoidHomSlashAction](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41.lean/declarations/monoidhomslashaction--b653decf6daea3ad5020b599.md) | 86 | `declaration-track:b653decf6daea3ad5020b599af2d45d520b8705718d0799cbc66c215732c9963` |
| 6 | `def` | [slash](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41.lean/declarations/slash--154d686342f54c53b9db4de7.md) | 101 | `declaration-track:154d686342f54c53b9db4de7df3aab0db848165aedb311921619a55afd069741` |
| 7 | `theorem` | [slash_mul](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41.lean/declarations/slash-mul--56d475ced9f6f9cf8b5b2101.md) | 112 | `result-track:56d475ced9f6f9cf8b5b21012f0378212e78a6aa8dea77a63e3e0753a1bd0a9d` |
| 8 | `theorem` | [add_slash](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41.lean/declarations/add-slash--1b9707ee8eab34806dfaaf85.md) | 129 | `result-track:1b9707ee8eab34806dfaaf853a6b5910c6e89308c7e40186d5b7dc93fd8f17c5` |
| 9 | `theorem` | [slash_one](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41.lean/declarations/slash-one--55d5039d716e852ce381be07.md) | 135 | `result-track:55d5039d716e852ce381be07cc9d3eed8bd23f4b6b2c24453bb7862fefe63583` |
| 10 | `theorem` | [smul_slash](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41.lean/declarations/smul-slash--2bc43d76e74805beb6eaeaae.md) | 140 | `result-track:2bc43d76e74805beb6eaeaae02e2e505e29b02332eb3c2eaa62cde7d61bea791` |
| 11 | `theorem` | [zero_slash](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41.lean/declarations/zero-slash--89dcfffee169ddc218e74066.md) | 148 | `result-track:89dcfffee169ddc218e74066f59c0e4b3e622f9e35e8c2f2811ec58a96cf9e50` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41.lean/declarations/instance--ce87264e9acf24e9b5c3b52a.md) | 151 | `declaration-track:ce87264e9acf24e9b5c3b52ab9a70ebfb6b50205b547c5530da6385c397dae0a` |
| 13 | `theorem` | [slash_def](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41.lean/declarations/slash-def--cc1f7d0337ed1020c473b394.md) | 161 | `result-track:cc1f7d0337ed1020c473b39487acfa4c75a9715d5e6a58a73ec8a977c29b470d` |
| 14 | `instance` | [subgroupAction](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41.lean/declarations/subgroupaction--4d287a1b3cbf7fd6c1ae52a2.md) | 165 | `declaration-track:4d287a1b3cbf7fd6c1ae52a28f40ad669c4cb49d780b408177d4fef258eb18ff` |
| 15 | `theorem` | [subgroup_slash](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41.lean/declarations/subgroup-slash--ac05df99b914b6f7b4c17d26.md) | 172 | `result-track:ac05df99b914b6f7b4c17d26a948213647ad62a8f77dd3248c611f71eafbb33c` |
| 16 | `instance` | [SLAction](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41.lean/declarations/slaction--6d78b6eb11858880a2a4a4ac.md) | 176 | `declaration-track:6d78b6eb11858880a2a4a4aca4a796b2623e24d8e8d1e5c2137ccb4e0a54055d` |
| 17 | `theorem` | [SL_slash](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41.lean/declarations/sl-slash--753e35924d1f233b35fa830f.md) | 184 | `result-track:753e35924d1f233b35fa830f7f09d3491f0659a67b3397883dc147b5553cb36c` |
| 18 | `theorem` | [is_invariant_one](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41.lean/declarations/is-invariant-one--2a0b0747566c38755daa4de9.md) | 191 | `result-track:2a0b0747566c38755daa4de909b46c45c927dae6ffdcbdeb2d9237046c00dabb` |
| 19 | `theorem` | [slash_action_eq'_iff](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41.lean/declarations/slash-action-eq-iff--bc6ebdd0c20fd738c59e7743.md) | 201 | `result-track:bc6ebdd0c20fd738c59e77436db910f514659b9df58a352f6a96133210e46598` |
| 20 | `theorem` | [mul_slash](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41.lean/declarations/mul-slash--0375455d4312c7967a799a63.md) | 212 | `result-track:0375455d4312c7967a799a634e765dd14b70d1fc14e643ffabb69c3aa57b0b1e` |
| 21 | `theorem` | [mul_slash_SL2](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41.lean/declarations/mul-slash-sl2--20f80742325420ec9e0769e1.md) | 234 | `result-track:20f80742325420ec9e0769e15decd34712d96924c31d91434201d33c06d98e35` |
| 22 | `theorem` | [mul_slash_subgroup](../../../../../mathematics/Algebra/GroupTheory/SlashActions/Variant5ee95cef244c4029a35fb3e144a17bfa4ec6eac9f4e0da6a5723ab8e7f970c41.lean/declarations/mul-slash-subgroup--e03f3acefb0c5dc9bfa7b381.md) | 245 | `result-track:e03f3acefb0c5dc9bfa7b38129c1074d500fa5c8cf5ba4f9b3c4c4c2a062e406` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
