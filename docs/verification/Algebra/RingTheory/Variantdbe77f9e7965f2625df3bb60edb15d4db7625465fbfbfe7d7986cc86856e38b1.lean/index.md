# Verification target: GRWTSK.Algebra.Ring.Variantdbe77f9e7965f2625df3bb60edb15d4db7625465fbfbfe7d7986cc86856e38b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "583994878a6d70c683392a68719d40c875a0d461",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ring/Variantdbe77f9e7965f2625df3bb60edb15d4db7625465fbfbfe7d7986cc86856e38b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingTheory/Variantdbe77f9e7965f2625df3bb60edb15d4db7625465fbfbfe7d7986cc86856e38b1.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingTheory/Variantdbe77f9e7965f2625df3bb60edb15d4db7625465fbfbfe7d7986cc86856e38b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `583994878a6d70c683392a68719d40c875a0d461`.

Source path: `GRWTSK/Algebra/Ring/Variantdbe77f9e7965f2625df3bb60edb15d4db7625465fbfbfe7d7986cc86856e38b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ring/Variantdbe77f9e7965f2625df3bb60edb15d4db7625465fbfbfe7d7986cc86856e38b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Artinian.Module` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.MaximalIdeal.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isNilpotent_jacobson_bot](../../../../mathematics/Algebra/RingTheory/Variantdbe77f9e7965f2625df3bb60edb15d4db7625465fbfbfe7d7986cc86856e38b1.lean/declarations/isnilpotent-jacobson-bot--628d877796d3227fb296705a.md) | 58 | `result-track:628d877796d3227fb296705a8da657b8e780f448e3591200fc27d531032cc637` |
| 2 | `lemma` | [jacobson_eq_radical](../../../../mathematics/Algebra/RingTheory/Variantdbe77f9e7965f2625df3bb60edb15d4db7625465fbfbfe7d7986cc86856e38b1.lean/declarations/jacobson-eq-radical--8fb4e75a61da964921bc7390.md) | 64 | `result-track:8fb4e75a61da964921bc7390f3003c7ece481b81487818912635cf0f2ec5fa78` |
| 3 | `theorem` | [isNilpotent_nilradical](../../../../mathematics/Algebra/RingTheory/Variantdbe77f9e7965f2625df3bb60edb15d4db7625465fbfbfe7d7986cc86856e38b1.lean/declarations/isnilpotent-nilradical--6d6b26562b4d642a3b946253.md) | 67 | `result-track:6d6b26562b4d642a3b946253ce5e9f9a1e4f2a9b0f714d4928e8ba1d69bc87b8` |
| 4 | `theorem` | [isField_of_isReduced_of_isLocalRing](../../../../mathematics/Algebra/RingTheory/Variantdbe77f9e7965f2625df3bb60edb15d4db7625465fbfbfe7d7986cc86856e38b1.lean/declarations/isfield-of-isreduced-of-islocalring--fe7683aa4ecc2e576e6c9d46.md) | 73 | `result-track:fe7683aa4ecc2e576e6c9d46c52a7be8bbbb0f647d4d054460a2927dfb7a97fc` |
| 5 | `theorem` | [isUnit_of_mem_nonZeroDivisors](../../../../mathematics/Algebra/RingTheory/Variantdbe77f9e7965f2625df3bb60edb15d4db7625465fbfbfe7d7986cc86856e38b1.lean/declarations/isunit-of-mem-nonzerodivisors--c42544db0f7dd1cb15fa2975.md) | 82 | `result-track:c42544db0f7dd1cb15fa29754920c6f2f5b2f0eeadd5cdab540829fbb7da3b67` |
| 6 | `theorem` | [isUnit_iff_mem_nonZeroDivisors](../../../../mathematics/Algebra/RingTheory/Variantdbe77f9e7965f2625df3bb60edb15d4db7625465fbfbfe7d7986cc86856e38b1.lean/declarations/isunit-iff-mem-nonzerodivisors--f6f9a2bb3e9b3b65b622b89c.md) | 89 | `result-track:f6f9a2bb3e9b3b65b622b89c42b2f2e72c275fe7ac1a22a7c017e092f7c937c8` |
| 7 | `theorem` | [isUnit_submonoid_eq](../../../../mathematics/Algebra/RingTheory/Variantdbe77f9e7965f2625df3bb60edb15d4db7625465fbfbfe7d7986cc86856e38b1.lean/declarations/isunit-submonoid-eq--cf1c31f6564f66c63e393857.md) | 92 | `result-track:cf1c31f6564f66c63e393857ffa13f9966cdf1e1ca5fa399398db541d6e16a32` |
| 8 | `theorem` | [localization_surjective](../../../../mathematics/Algebra/RingTheory/Variantdbe77f9e7965f2625df3bb60edb15d4db7625465fbfbfe7d7986cc86856e38b1.lean/declarations/localization-surjective--f0310a964cb36a6070b822d4.md) | 103 | `result-track:f0310a964cb36a6070b822d4e64e59019337d94498c82315ab17d7bb2733fd65` |
| 9 | `theorem` | [localization_artinian](../../../../mathematics/Algebra/RingTheory/Variantdbe77f9e7965f2625df3bb60edb15d4db7625465fbfbfe7d7986cc86856e38b1.lean/declarations/localization-artinian--84b806e03767bd5d26f58f59.md) | 116 | `result-track:84b806e03767bd5d26f58f5955ce1e54eaed8d951ee134306610cc71419a87b1` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantdbe77f9e7965f2625df3bb60edb15d4db7625465fbfbfe7d7986cc86856e38b1.lean/declarations/instance--ac3fb28b002d4f13c5e8e327.md) | 121 | `declaration-track:ac3fb28b002d4f13c5e8e327d8c5f9494e76b71c8b299fc8a17fa28580bf5aec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
