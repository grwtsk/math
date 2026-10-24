# Verification target: GRWTSK.Algebra.LinearAlgebra.Quotient.Variantd0e05151b33e82ef2f10046562cef0c0e140d4620935a2a6786dced5041b859a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3e1d811fe302ff44c67d5b3b684fc14a7c9f0af",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variantd0e05151b33e82ef2f10046562cef0c0e140d4620935a2a6786dced5041b859a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantd0e05151b33e82ef2f10046562cef0c0e140d4620935a2a6786dced5041b859a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantd0e05151b33e82ef2f10046562cef0c0e140d4620935a2a6786dced5041b859a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3e1d811fe302ff44c67d5b3b684fc14a7c9f0af`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Quotient/Variantd0e05151b33e82ef2f10046562cef0c0e140d4620935a2a6786dced5041b859a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Quotient/Variantd0e05151b33e82ef2f10046562cef0c0e140d4620935a2a6786dced5041b859a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Ideal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.OfAssociative` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Isomorphisms` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantd0e05151b33e82ef2f10046562cef0c0e140d4620935a2a6786dced5041b859a.lean/declarations/instance--1d46e7c305da1e54e7ad8774.md) | 50 | `declaration-track:1d46e7c305da1e54e7ad8774abb2cfd4f7044a83d9094f2cb8fc66968a686112` |
| 2 | `instance` | [addCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantd0e05151b33e82ef2f10046562cef0c0e140d4620935a2a6786dced5041b859a.lean/declarations/addcommgroup--93f100a72bed08ee16923f05.md) | 57 | `declaration-track:93f100a72bed08ee16923f05c6b2246e22603fe7732cfb4d791edde9036bb488` |
| 3 | `instance` | [module'](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantd0e05151b33e82ef2f10046562cef0c0e140d4620935a2a6786dced5041b859a.lean/declarations/module--b19abeb0854f09333c8d57f2.md) | 60 | `declaration-track:b19abeb0854f09333c8d57f29277789a86553616ea347e7b81aa8d49e998c78b` |
| 4 | `instance` | [module](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantd0e05151b33e82ef2f10046562cef0c0e140d4620935a2a6786dced5041b859a.lean/declarations/module--debd0a91637d32ce6032599e.md) | 64 | `declaration-track:debd0a91637d32ce6032599e700cc2271e7c87d8f60831239fe5dd07572aeede` |
| 5 | `instance` | [isCentralScalar](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantd0e05151b33e82ef2f10046562cef0c0e140d4620935a2a6786dced5041b859a.lean/declarations/iscentralscalar--a2cd3109b67bfcffa33e74ce.md) | 67 | `declaration-track:a2cd3109b67bfcffa33e74ce300e24563addacabc5e3344cefc3d80d7588bbe6` |
| 6 | `instance` | [inhabited](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantd0e05151b33e82ef2f10046562cef0c0e140d4620935a2a6786dced5041b859a.lean/declarations/inhabited--0a94e178475443a3141f7ce3.md) | 72 | `declaration-track:0a94e178475443a3141f7ce3b874bdb1e9e51ea7c83b7f7bcce748db6adc4c7d` |
| 7 | `abbrev` | [mk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantd0e05151b33e82ef2f10046562cef0c0e140d4620935a2a6786dced5041b859a.lean/declarations/mk--e737ea5e24b210661c89dc8f.md) | 77 | `declaration-track:e737ea5e24b210661c89dc8f1a5518b0819d7025514b6b8f486f5b02507e2027` |
| 8 | `theorem` | [mk_eq_zero'](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantd0e05151b33e82ef2f10046562cef0c0e140d4620935a2a6786dced5041b859a.lean/declarations/mk-eq-zero--c501f5526c261acbde6f9025.md) | 81 | `result-track:c501f5526c261acbde6f90251efcf8a2b7d3382260bdfc1151f3432c82a6fc70` |
| 9 | `theorem` | [is_quotient_mk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantd0e05151b33e82ef2f10046562cef0c0e140d4620935a2a6786dced5041b859a.lean/declarations/is-quotient-mk--1d68d7a6f298173d9c5de4f7.md) | 84 | `result-track:1d68d7a6f298173d9c5de4f7dfb33db667fffaa2479a57b96d98fcb85c9541c0` |
| 10 | `def` | [lieSubmoduleInvariant](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantd0e05151b33e82ef2f10046562cef0c0e140d4620935a2a6786dced5041b859a.lean/declarations/liesubmoduleinvariant--bbc4eaeb9bfbc298f8401a02.md) | 91 | `declaration-track:bbc4eaeb9bfbc298f8401a02e8bca6b04b8fabd79c38bba88b3724ccb51453a3` |
| 11 | `def` | [actionAsEndoMap](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantd0e05151b33e82ef2f10046562cef0c0e140d4620935a2a6786dced5041b859a.lean/declarations/actionasendomap--e747a014d8115bc9fdaf2bc5.md) | 98 | `declaration-track:e747a014d8115bc9fdaf2bc552444d0a4b743e7ceedacbddcfc633a6b7bdb26b` |
| 12 | `instance` | [actionAsEndoMapBracket](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantd0e05151b33e82ef2f10046562cef0c0e140d4620935a2a6786dced5041b859a.lean/declarations/actionasendomapbracket--8f36ac46f06b9595cbb0e61f.md) | 106 | `declaration-track:8f36ac46f06b9595cbb0e61fe57451994ab85b26bcc01a4a0958feb051c1f91c` |
| 13 | `instance` | [lieQuotientLieRingModule](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantd0e05151b33e82ef2f10046562cef0c0e140d4620935a2a6786dced5041b859a.lean/declarations/liequotientlieringmodule--6ad27ce9feaf931639d8e9a1.md) | 109 | `declaration-track:6ad27ce9feaf931639d8e9a16a47f2669af21d6a30f5066d58c85596ad9e7bd2` |
| 14 | `instance` | [lieQuotientLieModule](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantd0e05151b33e82ef2f10046562cef0c0e140d4620935a2a6786dced5041b859a.lean/declarations/liequotientliemodule--9edac372e3e0f7de896458b0.md) | 113 | `declaration-track:9edac372e3e0f7de896458b0c4018bce77c2dee02584da2a6b054ba09c2b45a7` |
| 15 | `instance` | [lieQuotientHasBracket](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantd0e05151b33e82ef2f10046562cef0c0e140d4620935a2a6786dced5041b859a.lean/declarations/liequotienthasbracket--269c394e8718b7a5769c9853.md) | 116 | `declaration-track:269c394e8718b7a5769c9853982711b260fe37adc6dd79eebe547933a3cf1855` |
| 16 | `theorem` | [mk_bracket](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantd0e05151b33e82ef2f10046562cef0c0e140d4620935a2a6786dced5041b859a.lean/declarations/mk-bracket--d11449c59f427ee05b3dc268.md) | 131 | `result-track:d11449c59f427ee05b3dc2682479da43dcfd26443fdb1a9764a1ae96f67cb51d` |
| 17 | `instance` | [lieQuotientLieRing](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantd0e05151b33e82ef2f10046562cef0c0e140d4620935a2a6786dced5041b859a.lean/declarations/liequotientliering--1bd22cb712ac4f4b5bc40cc0.md) | 134 | `declaration-track:1bd22cb712ac4f4b5bc40cc05dff39edef3025771fb9ae9c146298abf93a14d7` |
| 18 | `instance` | [lieQuotientLieAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantd0e05151b33e82ef2f10046562cef0c0e140d4620935a2a6786dced5041b859a.lean/declarations/liequotientliealgebra--5262818d7f0a07cad1098be4.md) | 164 | `declaration-track:5262818d7f0a07cad1098be4762cc5d10c637bd097fc82603b09148615e3af38` |
| 19 | `def` | [mk'](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantd0e05151b33e82ef2f10046562cef0c0e140d4620935a2a6786dced5041b859a.lean/declarations/mk--818e1043aea7f088110231ca.md) | 176 | `declaration-track:818e1043aea7f088110231cac9dfdedef1bed41b195f914394ee8f59df07b21e` |
| 20 | `theorem` | [surjective_mk'](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantd0e05151b33e82ef2f10046562cef0c0e140d4620935a2a6786dced5041b859a.lean/declarations/surjective-mk--e9431763b415ba1276360398.md) | 182 | `result-track:e9431763b415ba12763603988643428d00213c97217536ecf6afaddbe232dbae` |
| 21 | `theorem` | [range_mk'](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantd0e05151b33e82ef2f10046562cef0c0e140d4620935a2a6786dced5041b859a.lean/declarations/range-mk--e8807c335a627cb7964e7b4b.md) | 185 | `result-track:e8807c335a627cb7964e7b4baca9b0ad05174417ef652435c947b2e42abbb5b2` |
| 22 | `instance` | [isNoetherian](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantd0e05151b33e82ef2f10046562cef0c0e140d4620935a2a6786dced5041b859a.lean/declarations/isnoetherian--3dc0dff05ac53710fb5b816a.md) | 188 | `declaration-track:3dc0dff05ac53710fb5b816aeb8a76a960ecc4258b38a1f8a3f2e2d7fb2d6104` |
| 23 | `theorem` | [mk_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantd0e05151b33e82ef2f10046562cef0c0e140d4620935a2a6786dced5041b859a.lean/declarations/mk-eq-zero--91e7bc8eb755f69d8bb647fc.md) | 191 | `result-track:91e7bc8eb755f69d8bb647fcceacf78212f096f384f4fe2fe54c5004f8b89829` |
| 24 | `theorem` | [mk'_ker](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantd0e05151b33e82ef2f10046562cef0c0e140d4620935a2a6786dced5041b859a.lean/declarations/mk-ker--af6c4d0097df1cdbe0dbda3b.md) | 195 | `result-track:af6c4d0097df1cdbe0dbda3bfe217cece5054d261c1602f8bc21eed687cabbde` |
| 25 | `theorem` | [map_mk'_eq_bot_le](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantd0e05151b33e82ef2f10046562cef0c0e140d4620935a2a6786dced5041b859a.lean/declarations/map-mk-eq-bot-le--ad60dca42b5bfddb7b570fbd.md) | 198 | `result-track:ad60dca42b5bfddb7b570fbd3d408d20319d27061222f11beb288aff4c63b79a` |
| 26 | `theorem` | [lieModuleHom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantd0e05151b33e82ef2f10046562cef0c0e140d4620935a2a6786dced5041b859a.lean/declarations/liemodulehom-ext--9033d8280bf6b080c7b59691.md) | 206 | `result-track:9033d8280bf6b080c7b59691925e0288805009f62083fb0ad0a212bbca19b46b` |
| 27 | `lemma` | [toEnd_comp_mk'](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantd0e05151b33e82ef2f10046562cef0c0e140d4620935a2a6786dced5041b859a.lean/declarations/toend-comp-mk--a660b0eec55e12cd05cff1b3.md) | 209 | `result-track:a660b0eec55e12cd05cff1b33bfa079fb910ae837e56bb2337cc477353d20225` |
| 28 | `def` | [quotKerEquivRange](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantd0e05151b33e82ef2f10046562cef0c0e140d4620935a2a6786dced5041b859a.lean/declarations/quotkerequivrange--82372fad6c01feb3a618bfeb.md) | 225 | `declaration-track:82372fad6c01feb3a618bfebb0accf78f426b0cffdf5964d3c8cbc2059cae45d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
