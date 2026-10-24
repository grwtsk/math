# Verification target: GRWTSK.Algebra.LinearAlgebra.Invariant.Variant68bda017833a192d22b8704f3d94141a519026551771b5377a635385044651e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66089c2afb29a0a10124404d3e761a40f4bc643d",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Invariant/Variant68bda017833a192d22b8704f3d94141a519026551771b5377a635385044651e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant68bda017833a192d22b8704f3d94141a519026551771b5377a635385044651e3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant68bda017833a192d22b8704f3d94141a519026551771b5377a635385044651e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66089c2afb29a0a10124404d3e761a40f4bc643d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Invariant/Variant68bda017833a192d22b8704f3d94141a519026551771b5377a635385044651e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Invariant/Variant68bda017833a192d22b8704f3d94141a519026551771b5377a635385044651e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Equiv.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Map` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Span.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Sublattice` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invtSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant68bda017833a192d22b8704f3d94141a519026551771b5377a635385044651e3.lean/declarations/invtsubmodule--0bda59bc07b6c73115b76c9e.md) | 38 | `declaration-track:0bda59bc07b6c73115b76c9e99d4ae2e51cb691758e4dcb32985ce7b3b112f22` |
| 2 | `lemma` | [mem_invtSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant68bda017833a192d22b8704f3d94141a519026551771b5377a635385044651e3.lean/declarations/mem-invtsubmodule--8d04c1678bccb016539dfd32.md) | 47 | `result-track:8d04c1678bccb016539dfd32cfa201cebdaa6e5b594a31136f447477d2186a20` |
| 3 | `lemma` | [inf_mem](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant68bda017833a192d22b8704f3d94141a519026551771b5377a635385044651e3.lean/declarations/inf-mem--27dc212ae2bcceed257c7efe.md) | 55 | `result-track:27dc212ae2bcceed257c7efe705ea149ab3f18fbc4b2f6b357d17ef6bd8479c2` |
| 4 | `lemma` | [sup_mem](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant68bda017833a192d22b8704f3d94141a519026551771b5377a635385044651e3.lean/declarations/sup-mem--03895f0a727cbd8678cdb7ce.md) | 59 | `result-track:03895f0a727cbd8678cdb7ce6d53faaf42b296ecf1270687ca9a08b6e93fe4a0` |
| 5 | `lemma` | [top_mem](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant68bda017833a192d22b8704f3d94141a519026551771b5377a635385044651e3.lean/declarations/top-mem--5bf81c95f80b5a5969e32cfb.md) | 66 | `result-track:5bf81c95f80b5a5969e32cfb168bd3ecc55cb767683f35b18c9876e4e483ff73` |
| 6 | `lemma` | [bot_mem](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant68bda017833a192d22b8704f3d94141a519026551771b5377a635385044651e3.lean/declarations/bot-mem--d7dc7a0e044e680b575f71b0.md) | 69 | `result-track:d7dc7a0e044e680b575f71b0dd7e4eb227fc39f4a336088072a6a184b94c0241` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant68bda017833a192d22b8704f3d94141a519026551771b5377a635385044651e3.lean/declarations/instance--a0ca718c3f7a0e53814523e6.md) | 71 | `declaration-track:a0ca718c3f7a0e53814523e682ad394b5b47b35b3c785d9fe69b0a1b310fa8b3` |
| 8 | `lemma` | [zero](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant68bda017833a192d22b8704f3d94141a519026551771b5377a635385044651e3.lean/declarations/zero--92eeba7b1719bde538317b1d.md) | 78 | `result-track:92eeba7b1719bde538317b1d330568b6bc0644385a8df8f575fc8b94b98f1ecc` |
| 9 | `lemma` | [id](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant68bda017833a192d22b8704f3d94141a519026551771b5377a635385044651e3.lean/declarations/id--e2ca41857c833790331cca46.md) | 83 | `result-track:e2ca41857c833790331cca4693b8cdec1c3feda34040870a611782ff581ff34c` |
| 10 | `lemma` | [one](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant68bda017833a192d22b8704f3d94141a519026551771b5377a635385044651e3.lean/declarations/one--e0a12822725489fe232efbec.md) | 88 | `result-track:e0a12822725489fe232efbecc96c4c61e2f0aeaeaf257d4a7fd4c4e99509c74e` |
| 11 | `lemma` | [mk_eq_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant68bda017833a192d22b8704f3d94141a519026551771b5377a635385044651e3.lean/declarations/mk-eq-bot-iff--c142738f1228c14339cdc1fb.md) | 92 | `result-track:c142738f1228c14339cdc1fbba504ea352a622b83eb13ea91a9c1e8e4d60a9f6` |
| 12 | `lemma` | [mk_eq_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant68bda017833a192d22b8704f3d94141a519026551771b5377a635385044651e3.lean/declarations/mk-eq-top-iff--cb86b93e417b5fb35b3a2b82.md) | 96 | `result-track:cb86b93e417b5fb35b3a2b82b9132faf7346dbb8388a64d77ad56e84abada3e8` |
| 13 | `lemma` | [disjoint_mk_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant68bda017833a192d22b8704f3d94141a519026551771b5377a635385044651e3.lean/declarations/disjoint-mk-iff--76d27e76e91c998ab9bfa04b.md) | 101 | `result-track:76d27e76e91c998ab9bfa04b48fb933ebd4346f8fcd6ab7caf8bbe64f8f1f97b` |
| 14 | `lemma` | [disjoint_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant68bda017833a192d22b8704f3d94141a519026551771b5377a635385044651e3.lean/declarations/disjoint-iff--abee755d6ba2af2f5fca08c8.md) | 107 | `result-track:abee755d6ba2af2f5fca08c82fa6433f890702b735717a7b0d7bfdab24ec4163` |
| 15 | `lemma` | [codisjoint_mk_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant68bda017833a192d22b8704f3d94141a519026551771b5377a635385044651e3.lean/declarations/codisjoint-mk-iff--1fac636d35826c3da235668f.md) | 114 | `result-track:1fac636d35826c3da235668f93715c9015de3c20683566cda4a6da8bb42af122` |
| 16 | `lemma` | [codisjoint_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant68bda017833a192d22b8704f3d94141a519026551771b5377a635385044651e3.lean/declarations/codisjoint-iff--d751c4ee9bb5168a40d5638f.md) | 120 | `result-track:d751c4ee9bb5168a40d5638f8b7e2e02a58515adf359946def12003141926459` |
| 17 | `lemma` | [isCompl_mk_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant68bda017833a192d22b8704f3d94141a519026551771b5377a635385044651e3.lean/declarations/iscompl-mk-iff--fdc09268c378c51111adcd79.md) | 127 | `result-track:fdc09268c378c51111adcd79b602b91d37f899d53dd6dcbfc15ed54e3e296e70` |
| 18 | `lemma` | [isCompl_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant68bda017833a192d22b8704f3d94141a519026551771b5377a635385044651e3.lean/declarations/iscompl-iff--b97b41480c267b2116d3097c.md) | 132 | `result-track:b97b41480c267b2116d3097ce226cc5be96199cf17d975adeb775b7507f22a21` |
| 19 | `lemma` | [map_subtype_mem_of_mem_invtSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant68bda017833a192d22b8704f3d94141a519026551771b5377a635385044651e3.lean/declarations/map-subtype-mem-of-mem-invtsubmodule--d9a98db8eff6a6457c8610b1.md) | 138 | `result-track:d9a98db8eff6a6457c8610b1a2c7ae887664ce432951d06eedbc403701cf7e8d` |
| 20 | `lemma` | [comp](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant68bda017833a192d22b8704f3d94141a519026551771b5377a635385044651e3.lean/declarations/comp--2bb989cc1d270a26957a8b3b.md) | 146 | `result-track:2bb989cc1d270a26957a8b3b26cdfd7fc58cc63bc2cf4d02db4b8a9c5420c14e` |
| 21 | `lemma` | [_root_.GRWTSK.Algebra.LinearAlgebra.InvtSubmodule.Variantf7b64c2ebfb76a0633aab7c83ab2567fbe5a348e2937285698d5ffc183af5c63.LinearEquiv.map_mem_invtSubmodule_conj_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant68bda017833a192d22b8704f3d94141a519026551771b5377a635385044651e3.lean/declarations/root-grwtsk-algebra-linearalgebra-invtsubmodule-variantf7b64c2ebfb76a063--d40a1eed4ae0af0ad45f0d10.md) | 151 | `result-track:d40a1eed4ae0af0ad45f0d107765ad08886d0377c6256f4959d1034375dc71e0` |
| 22 | `lemma` | [_root_.GRWTSK.Algebra.LinearAlgebra.InvtSubmodule.Variantf7b64c2ebfb76a0633aab7c83ab2567fbe5a348e2937285698d5ffc183af5c63.LinearEquiv.map_mem_invtSubmodule_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant68bda017833a192d22b8704f3d94141a519026551771b5377a635385044651e3.lean/declarations/root-grwtsk-algebra-linearalgebra-invtsubmodule-variantf7b64c2ebfb76a063--e53afe76e4f3c664963e5dda.md) | 160 | `result-track:e53afe76e4f3c664963e5dda1b5b3080e7e46f57c73b5483557d734591c70274` |
| 23 | `lemma` | [span_orbit_mem_invtSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant68bda017833a192d22b8704f3d94141a519026551771b5377a635385044651e3.lean/declarations/span-orbit-mem-invtsubmodule--2d648b42696267aca3bd56d5.md) | 169 | `result-track:2d648b42696267aca3bd56d53fa083a253ebf3f657f4b5c46ca62d3a8d0e2c9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
