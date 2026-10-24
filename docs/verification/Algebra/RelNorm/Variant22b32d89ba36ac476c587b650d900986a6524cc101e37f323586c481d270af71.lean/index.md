# Verification target: GRWTSK.Algebra.RelNorm.Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "117d689eb4f609ae648664333824bcc5b33e5350",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean/index.md) · [Full source](../../../../mathematics/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `117d689eb4f609ae648664333824bcc5b33e5350`.

Source path: `GRWTSK/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FreeModule.PID` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.PID` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.NormTrace` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure.IntegralRestrict` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [spanNorm](../../../../mathematics/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean/declarations/spannorm--0ee66a5db4dad508b25ac097.md) | 57 | `declaration-track:0ee66a5db4dad508b25ac097809ff5daf3e37184ed8582644a8a62ec9e6fca5e` |
| 2 | `theorem` | [spanNorm_bot](../../../../mathematics/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean/declarations/spannorm-bot--d6cbe623ddefb25cf185fba6.md) | 61 | `result-track:d6cbe623ddefb25cf185fba6324cf8d6b03f91efc90a80db926719f6d5386665` |
| 3 | `theorem` | [spanNorm_eq_bot_iff](../../../../mathematics/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean/declarations/spannorm-eq-bot-iff--40e5aca9a6bbdacfbd1cbf47.md) | 66 | `result-track:40e5aca9a6bbdacfbd1cbf47484303b42753d58702e0ea8427fb4c7c170df030` |
| 4 | `theorem` | [intNorm_mem_spanNorm](../../../../mathematics/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean/declarations/intnorm-mem-spannorm--63d5765e4169a2cf20563fd9.md) | 71 | `result-track:63d5765e4169a2cf20563fd95774ac1bd9353799a7f010c42ae9a18ee1faff67` |
| 5 | `theorem` | [norm_mem_spanNorm](../../../../mathematics/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean/declarations/norm-mem-spannorm--ae9e2575c12368b59b5cb6b3.md) | 75 | `result-track:ae9e2575c12368b59b5cb6b3646261c17893ea02472c656ffd22ab03d8359a73` |
| 6 | `theorem` | [spanNorm_singleton](../../../../mathematics/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean/declarations/spannorm-singleton--e51e77867cdf20b842dcc39c.md) | 81 | `result-track:e51e77867cdf20b842dcc39c28294f2cd819b239314366ab39a4ec7bca879a3e` |
| 7 | `theorem` | [spanNorm_top](../../../../mathematics/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean/declarations/spannorm-top--3be334735b7bf8696c23b9e7.md) | 92 | `result-track:3be334735b7bf8696c23b9e77de44f75a4180ef2e4d20815362eced60936f676` |
| 8 | `theorem` | [map_spanIntNorm](../../../../mathematics/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean/declarations/map-spanintnorm--de227539378a5d77a395d7ac.md) | 95 | `result-track:de227539378a5d77a395d7acbe188f8894289169d2fea65e08c22a44720baf3b` |
| 9 | `theorem` | [spanNorm_mono](../../../../mathematics/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean/declarations/spannorm-mono--3dfea0ef289412d2ca1b9620.md) | 102 | `result-track:3dfea0ef289412d2ca1b96203ce8741bc9f90e1855f2f1144b3f84f928ea3534` |
| 10 | `theorem` | [spanIntNorm_localization](../../../../mathematics/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean/declarations/spanintnorm-localization--8900cee32a811a84a8268bae.md) | 105 | `result-track:8900cee32a811a84a8268bae44816c00d905d8426ad749f2e917d23d98ac1811` |
| 11 | `theorem` | [spanNorm_mul_spanNorm_le](../../../../mathematics/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean/declarations/spannorm-mul-spannorm-le--45a65b6c27b2a959ac6d809f.md) | 164 | `result-track:45a65b6c27b2a959ac6d809f9498d94fce1948f830c4c88a6cad2276922fd7c5` |
| 12 | `theorem` | [spanNorm_mul_of_bot_or_top](../../../../mathematics/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean/declarations/spannorm-mul-of-bot-or-top--8976da4f77ee8c35ffc35958.md) | 176 | `result-track:8976da4f77ee8c35ffc35958d11ad9871a25473000d17db7bfd7c05931f7c74b` |
| 13 | `theorem` | [spanNorm_mul](../../../../mathematics/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean/declarations/spannorm-mul--f6f2ad3dadae46b025ff14ac.md) | 191 | `result-track:f6f2ad3dadae46b025ff14aced15c92bc46af02f75b040174e9d21e9b6c18f1a` |
| 14 | `def` | [relNorm](../../../../mathematics/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean/declarations/relnorm--36f03db02bc7fa1c621efcd6.md) | 244 | `declaration-track:36f03db02bc7fa1c621efcd62d0ee48bb836aed70ee13737744538083cd9e702` |
| 15 | `theorem` | [relNorm_apply](../../../../mathematics/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean/declarations/relnorm-apply--19a7151791ef4d63960d642d.md) | 250 | `result-track:19a7151791ef4d63960d642da9d015d7af0526d5b6030642810005a15fe8635d` |
| 16 | `theorem` | [spanNorm_eq](../../../../mathematics/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean/declarations/spannorm-eq--64182352f5c79ba3c789e09f.md) | 255 | `result-track:64182352f5c79ba3c789e09f3f878253d34a8e091809e36d912fc388a5b6bb6a` |
| 17 | `theorem` | [relNorm_bot](../../../../mathematics/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean/declarations/relnorm-bot--5aa9a44f10c7f735e09210d4.md) | 258 | `result-track:5aa9a44f10c7f735e09210d4b9915cd6b1b109e67f79f88a256fdd41c150d4b1` |
| 18 | `theorem` | [relNorm_top](../../../../mathematics/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean/declarations/relnorm-top--65c21f2ec2a5c3f2e31fc44d.md) | 262 | `result-track:65c21f2ec2a5c3f2e31fc44d9b611a06c30006954b702b0acee8cf1517627f85` |
| 19 | `theorem` | [relNorm_eq_bot_iff](../../../../mathematics/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean/declarations/relnorm-eq-bot-iff--17a17d750345b68dc580d286.md) | 267 | `result-track:17a17d750345b68dc580d2866454ad3e6d3be383a57dc8da032523813cecb953` |
| 20 | `theorem` | [norm_mem_relNorm](../../../../mathematics/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean/declarations/norm-mem-relnorm--e037ec731d99ce67ccf5db21.md) | 270 | `result-track:e037ec731d99ce67ccf5db219d248060e2b038ed72e32f899bc4da242c21c064` |
| 21 | `theorem` | [relNorm_singleton](../../../../mathematics/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean/declarations/relnorm-singleton--5b907fbf51c245f954c22ad4.md) | 275 | `result-track:5b907fbf51c245f954c22ad437cdaa658b09cb1ef639aba024f6bba87ce48396` |
| 22 | `theorem` | [map_relNorm](../../../../mathematics/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean/declarations/map-relnorm--c36f547c69f4ac6de985bdf9.md) | 278 | `result-track:c36f547c69f4ac6de985bdf987b46fcad31fc41040c231f5634184d413910ca7` |
| 23 | `theorem` | [relNorm_mono](../../../../mathematics/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean/declarations/relnorm-mono--fccf6142b513ec937b06b28b.md) | 283 | `result-track:fccf6142b513ec937b06b28b164ceeb894543b5a5435e0964d299caa9534359d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
