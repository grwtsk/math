# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DivMod.Variant5f7d31d3eaae15b7f64286fa6c2681b55cec711f516e2a7749cac7f093c51df6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04dabbd67c355c874c853b138109e15ee6e5f629",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant5f7d31d3eaae15b7f64286fa6c2681b55cec711f516e2a7749cac7f093c51df6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant5f7d31d3eaae15b7f64286fa6c2681b55cec711f516e2a7749cac7f093c51df6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant5f7d31d3eaae15b7f64286fa6c2681b55cec711f516e2a7749cac7f093c51df6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04dabbd67c355c874c853b138109e15ee6e5f629`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant5f7d31d3eaae15b7f64286fa6c2681b55cec711f516e2a7749cac7f093c51df6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant5f7d31d3eaae15b7f64286fa6c2681b55cec711f516e2a7749cac7f093c51df6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isInt_ediv_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant5f7d31d3eaae15b7f64286fa6c2681b55cec711f516e2a7749cac7f093c51df6.lean/declarations/isint-ediv-zero--e4124d42035d9d902dad293b.md) | 27 | `result-track:e4124d42035d9d902dad293bd8cad35edac935585122479fc7828dd6b93ff04c` |
| 2 | `lemma` | [isInt_ediv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant5f7d31d3eaae15b7f64286fa6c2681b55cec711f516e2a7749cac7f093c51df6.lean/declarations/isint-ediv--df7cf382e5c98b88fe43c7ba.md) | 30 | `result-track:df7cf382e5c98b88fe43c7bab290345834a947c4e1a62f4e5eeafc11364da74b` |
| 3 | `lemma` | [isInt_ediv_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant5f7d31d3eaae15b7f64286fa6c2681b55cec711f516e2a7749cac7f093c51df6.lean/declarations/isint-ediv-neg--7639c1104d2322a4e9445963.md) | 39 | `result-track:7639c1104d2322a4e944596392ae20dd427cd2e6a83a50cfe7e3161e45051bbc` |
| 4 | `lemma` | [isNat_neg_of_isNegNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant5f7d31d3eaae15b7f64286fa6c2681b55cec711f516e2a7749cac7f093c51df6.lean/declarations/isnat-neg-of-isnegnat--00b5f361b96d96d9edcc6c63.md) | 42 | `result-track:00b5f361b96d96d9edcc6c633cc1f469cb9756a3dd9cb0e3cf83f939a6262549` |
| 5 | `def` | [evalIntDiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant5f7d31d3eaae15b7f64286fa6c2681b55cec711f516e2a7749cac7f093c51df6.lean/declarations/evalintdiv--19da25ae8329ffd2bfe4569c.md) | 49 | `declaration-track:19da25ae8329ffd2bfe4569c7c93edc6716e1bf7c923c7c2b7e9259b85d4b812` |
| 6 | `lemma` | [isInt_emod_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant5f7d31d3eaae15b7f64286fa6c2681b55cec711f516e2a7749cac7f093c51df6.lean/declarations/isint-emod-zero--219fd40c9d46d3669342709a.md) | 90 | `result-track:219fd40c9d46d3669342709a44ba42256428d82ee17f2360aff1ce19fd75823c` |
| 7 | `lemma` | [isInt_emod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant5f7d31d3eaae15b7f64286fa6c2681b55cec711f516e2a7749cac7f093c51df6.lean/declarations/isint-emod--c641bb6e6bb781f541a63bc0.md) | 93 | `result-track:c641bb6e6bb781f541a63bc0ebf7fdfe38705e23aa64c6e38e65db880bde20f4` |
| 8 | `lemma` | [isInt_emod_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant5f7d31d3eaae15b7f64286fa6c2681b55cec711f516e2a7749cac7f093c51df6.lean/declarations/isint-emod-neg--3db6de1fcba40a24c843a1af.md) | 101 | `result-track:3db6de1fcba40a24c843a1af391c2a417fa4f6e9236ee1bc58315ba20e9c098f` |
| 9 | `def` | [evalIntMod.go](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant5f7d31d3eaae15b7f64286fa6c2681b55cec711f516e2a7749cac7f093c51df6.lean/declarations/evalintmod-go--76d66cbbdcc86575380edb3a.md) | 105 | `declaration-track:76d66cbbdcc86575380edb3a8e5f9ff5cc0aad62f01895ae36d06a3fd3b1973b` |
| 10 | `def` | [evalIntMod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant5f7d31d3eaae15b7f64286fa6c2681b55cec711f516e2a7749cac7f093c51df6.lean/declarations/evalintmod--4fe88a8d326394e32ad10a2a.md) | 141 | `declaration-track:4fe88a8d326394e32ad10a2a1d96e7480ad5a59bcf3ed33fe84c74a040086ae3` |
| 11 | `theorem` | [isInt_dvd_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant5f7d31d3eaae15b7f64286fa6c2681b55cec711f516e2a7749cac7f093c51df6.lean/declarations/isint-dvd-true--3a0c96c197eb54a298d6a16f.md) | 151 | `result-track:3a0c96c197eb54a298d6a16f32c38c5dbbccd115303471eca9d2acd275cd8f68` |
| 12 | `theorem` | [isInt_dvd_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant5f7d31d3eaae15b7f64286fa6c2681b55cec711f516e2a7749cac7f093c51df6.lean/declarations/isint-dvd-false--9ae18f8f756875d1f215f3ff.md) | 155 | `result-track:9ae18f8f756875d1f215f3ffa9f0dbe182b7e78f6075ebf62e65aaa3bbf6ac49` |
| 13 | `def` | [evalIntDvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant5f7d31d3eaae15b7f64286fa6c2681b55cec711f516e2a7749cac7f093c51df6.lean/declarations/evalintdvd--9a8b68fdd707a0f929b451f0.md) | 162 | `declaration-track:9a8b68fdd707a0f929b451f04790ae17373fce722fe18bb41967746b436c9b2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
