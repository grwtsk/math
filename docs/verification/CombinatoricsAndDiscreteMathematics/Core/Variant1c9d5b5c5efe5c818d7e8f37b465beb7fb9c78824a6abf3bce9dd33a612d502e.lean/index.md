# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Core.Variant1c9d5b5c5efe5c818d7e8f37b465beb7fb9c78824a6abf3bce9dd33a612d502e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c88a4a98e2fdf1b43a40722792d29e2267e255d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variant1c9d5b5c5efe5c818d7e8f37b465beb7fb9c78824a6abf3bce9dd33a612d502e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variant1c9d5b5c5efe5c818d7e8f37b465beb7fb9c78824a6abf3bce9dd33a612d502e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variant1c9d5b5c5efe5c818d7e8f37b465beb7fb9c78824a6abf3bce9dd33a612d502e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c88a4a98e2fdf1b43a40722792d29e2267e255d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variant1c9d5b5c5efe5c818d7e8f37b465beb7fb9c78824a6abf3bce9dd33a612d502e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Core/Variant1c9d5b5c5efe5c818d7e8f37b465beb7fb9c78824a6abf3bce9dd33a612d502e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Semantics](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variant1c9d5b5c5efe5c818d7e8f37b465beb7fb9c78824a6abf3bce9dd33a612d502e.lean/declarations/semantics--6056afe2a10c16672de3e7d9.md) | 15 | `declaration-track:6056afe2a10c16672de3e7d918370fd96f0f89b3a7ad661a7322b7aab2e03783` |
| 2 | `def` | [Semantics.SatisfiesAll](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variant1c9d5b5c5efe5c818d7e8f37b465beb7fb9c78824a6abf3bce9dd33a612d502e.lean/declarations/semantics-satisfiesall--56a532e2e83bb2e42d6401b3.md) | 31 | `declaration-track:56a532e2e83bb2e42d6401b3a589783f9965c23f46aa4fee009b85e986090a6d` |
| 3 | `def` | [Semantics.Feasible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variant1c9d5b5c5efe5c818d7e8f37b465beb7fb9c78824a6abf3bce9dd33a612d502e.lean/declarations/semantics-feasible--f885f2af0a4b2566c1e3cac1.md) | 42 | `declaration-track:f885f2af0a4b2566c1e3cac19bf66f643f8ac08fb0999c656c222740a9a1eb68` |
| 4 | `def` | [Semantics.Infeasible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variant1c9d5b5c5efe5c818d7e8f37b465beb7fb9c78824a6abf3bce9dd33a612d502e.lean/declarations/semantics-infeasible--536cbc2f2f556af9bb4505c0.md) | 55 | `declaration-track:536cbc2f2f556af9bb4505c0dd16bbbda3b1aa2deaa2fe8802cf56e028d9b88e` |
| 5 | `theorem` | [Semantics.infeasible_iff_not_feasible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variant1c9d5b5c5efe5c818d7e8f37b465beb7fb9c78824a6abf3bce9dd33a612d502e.lean/declarations/semantics-infeasible-iff-not-feasible--f42f3fe882d1a5fb7cb23bc7.md) | 68 | `result-track:f42f3fe882d1a5fb7cb23bc7d7ef6543655daf4c58d1ca29077f68d86a099df8` |
| 6 | `structure` | [CompletionCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variant1c9d5b5c5efe5c818d7e8f37b465beb7fb9c78824a6abf3bce9dd33a612d502e.lean/declarations/completioncertificate--ddb884fb7d69154c4ac18165.md) | 89 | `declaration-track:ddb884fb7d69154c4ac18165c021c5edd7de7d0609bcc6690b11f59ec96bbd5c` |
| 7 | `structure` | [NoCompletionCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variant1c9d5b5c5efe5c818d7e8f37b465beb7fb9c78824a6abf3bce9dd33a612d502e.lean/declarations/nocompletioncertificate--106719461270de8adc730c40.md) | 104 | `declaration-track:106719461270de8adc730c4010a0732c4fc3741e1f4711e7eb41b759409e716f` |
| 8 | `theorem` | [Semantics.infeasible_of_refinement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variant1c9d5b5c5efe5c818d7e8f37b465beb7fb9c78824a6abf3bce9dd33a612d502e.lean/declarations/semantics-infeasible-of-refinement--50c1e756d9db7f362bf30b69.md) | 115 | `result-track:50c1e756d9db7f362bf30b695e2983e4f764141b874167130fe0dde2d705c20d` |
| 9 | `theorem` | [Semantics.infeasibility_downward_closed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variant1c9d5b5c5efe5c818d7e8f37b465beb7fb9c78824a6abf3bce9dd33a612d502e.lean/declarations/semantics-infeasibility-downward-closed--930656dad1ed503efd7f8ed7.md) | 134 | `result-track:930656dad1ed503efd7f8ed7e00da578fc9f7a94d3f2f58f672e54be0e798007` |
| 10 | `theorem` | [Semantics.infeasible_mono_constraints](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variant1c9d5b5c5efe5c818d7e8f37b465beb7fb9c78824a6abf3bce9dd33a612d502e.lean/declarations/semantics-infeasible-mono-constraints--6df1e0c07896c7c39e47385a.md) | 150 | `result-track:6df1e0c07896c7c39e47385a71943e5d410f9960e552ab6b76e5c828051ac52e` |
| 11 | `theorem` | [Semantics.feasible_anti_constraints](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variant1c9d5b5c5efe5c818d7e8f37b465beb7fb9c78824a6abf3bce9dd33a612d502e.lean/declarations/semantics-feasible-anti-constraints--6c5520d7f53172e8bddf98ed.md) | 168 | `result-track:6c5520d7f53172e8bddf98ed0c74e6c02a386c3ed0c65bad87a4f38b2c5d85fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
