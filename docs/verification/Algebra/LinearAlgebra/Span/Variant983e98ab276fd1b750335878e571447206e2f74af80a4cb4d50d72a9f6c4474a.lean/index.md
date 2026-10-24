# Verification target: GRWTSK.Algebra.LinearAlgebra.Span.Variant983e98ab276fd1b750335878e571447206e2f74af80a4cb4d50d72a9f6c4474a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35c632a20cd662c46df8bc5e46e0ce7778ccfba5",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Span/Variant983e98ab276fd1b750335878e571447206e2f74af80a4cb4d50d72a9f6c4474a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variant983e98ab276fd1b750335878e571447206e2f74af80a4cb4d50d72a9f6c4474a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variant983e98ab276fd1b750335878e571447206e2f74af80a4cb4d50d72a9f6c4474a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35c632a20cd662c46df8bc5e46e0ce7778ccfba5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Span/Variant983e98ab276fd1b750335878e571447206e2f74af80a4cb4d50d72a9f6c4474a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Span/Variant983e98ab276fd1b750335878e571447206e2f74af80a4cb4d50d72a9f6c4474a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Operator.LinearIsometry` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.ContinuousLinearMap` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toSpanSingleton_homothety](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variant983e98ab276fd1b750335878e571447206e2f74af80a4cb4d50d72a9f6c4474a.lean/declarations/tospansingleton-homothety--0e3127e618d4223862818ed1.md) | 45 | `result-track:0e3127e618d4223862818ed102530fd606538dc1a82e6129e9a6a5137db4ea7b` |
| 2 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.ToSpanSingletonHomothety.Variant546bd3abc8479dd84ea19a39b1e77baf14962188e53b6ed6b6d1bd6253311217.LinearEquiv.toSpanNonzeroSingleton_homothety](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variant983e98ab276fd1b750335878e571447206e2f74af80a4cb4d50d72a9f6c4474a.lean/declarations/root-grwtsk-algebra-linearalgebra-tospansingletonhomothety-variant546bd3--6ffcf8d999bd2947058ea9a1.md) | 61 | `result-track:6ffcf8d999bd2947058ea9a116f797e01d382fe07b5765df9364187bd78c80c9` |
| 3 | `def` | [toSpanNonzeroSingleton](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variant983e98ab276fd1b750335878e571447206e2f74af80a4cb4d50d72a9f6c4474a.lean/declarations/tospannonzerosingleton--070de36098df129681b3c9f0.md) | 72 | `declaration-track:070de36098df129681b3c9f0d77033d0b1de226cbdb722226da80e576b481d5c` |
| 4 | `def` | [coord](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variant983e98ab276fd1b750335878e571447206e2f74af80a4cb4d50d72a9f6c4474a.lean/declarations/coord--39c7919c056dc585f89c7752.md) | 78 | `declaration-track:39c7919c056dc585f89c775297fc9da9bc7a9b25a1742261af0f242daf1b202a` |
| 5 | `theorem` | [coe_toSpanNonzeroSingleton_symm](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variant983e98ab276fd1b750335878e571447206e2f74af80a4cb4d50d72a9f6c4474a.lean/declarations/coe-tospannonzerosingleton-symm--c3b04466655baaaa31cd96d5.md) | 82 | `result-track:c3b04466655baaaa31cd96d54f07d94efb9292c62d0b1a40ddc5daf1bd63d1a0` |
| 6 | `theorem` | [coord_toSpanNonzeroSingleton](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variant983e98ab276fd1b750335878e571447206e2f74af80a4cb4d50d72a9f6c4474a.lean/declarations/coord-tospannonzerosingleton--b3a8676b0020332faf75bc3e.md) | 87 | `result-track:b3a8676b0020332faf75bc3e39c2c51a9ac73eee1835b8bd104b470d12c38826` |
| 7 | `theorem` | [toSpanNonzeroSingleton_coord](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variant983e98ab276fd1b750335878e571447206e2f74af80a4cb4d50d72a9f6c4474a.lean/declarations/tospannonzerosingleton-coord--0e5835f6160a656c3ad43090.md) | 92 | `result-track:0e5835f6160a656c3ad43090a0ecbe71c52b1c9f83a0ca5fa43d248770eb4ebd` |
| 8 | `theorem` | [coord_self](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variant983e98ab276fd1b750335878e571447206e2f74af80a4cb4d50d72a9f6c4474a.lean/declarations/coord-self--30f0680ce6415bf1f004b5da.md) | 97 | `result-track:30f0680ce6415bf1f004b5daaac56371ce38a7fb094472def75a4561b911d830` |
| 9 | `def` | [toSpanUnitSingleton](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variant983e98ab276fd1b750335878e571447206e2f74af80a4cb4d50d72a9f6c4474a.lean/declarations/tospanunitsingleton--36b388ca2576a0d91c7b8dd8.md) | 111 | `declaration-track:36b388ca2576a0d91c7b8dd8f66f3e7ed5e6894bfeeb47b3c88c59ab20ad2412` |
| 10 | `theorem` | [toSpanUnitSingleton_apply](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variant983e98ab276fd1b750335878e571447206e2f74af80a4cb4d50d72a9f6c4474a.lean/declarations/tospanunitsingleton-apply--58baa0e71a33618c4bc144f2.md) | 118 | `result-track:58baa0e71a33618c4bc144f2eeaaf2e183dc85458c3d2a9b024bad14bd5f7cb0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
