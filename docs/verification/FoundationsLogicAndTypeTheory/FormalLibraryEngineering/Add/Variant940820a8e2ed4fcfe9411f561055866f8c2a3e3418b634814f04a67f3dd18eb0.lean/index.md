# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Add.Variant940820a8e2ed4fcfe9411f561055866f8c2a3e3418b634814f04a67f3dd18eb0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14f4ff3f9cf6955771acdb099ff776b44c480b17",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant940820a8e2ed4fcfe9411f561055866f8c2a3e3418b634814f04a67f3dd18eb0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant940820a8e2ed4fcfe9411f561055866f8c2a3e3418b634814f04a67f3dd18eb0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant940820a8e2ed4fcfe9411f561055866f8c2a3e3418b634814f04a67f3dd18eb0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14f4ff3f9cf6955771acdb099ff776b44c480b17`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant940820a8e2ed4fcfe9411f561055866f8c2a3e3418b634814f04a67f3dd18eb0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant940820a8e2ed4fcfe9411f561055866f8c2a3e3418b634814f04a67f3dd18eb0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [denote_mkFullAdderOut](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant940820a8e2ed4fcfe9411f561055866f8c2a3e3418b634814f04a67f3dd18eb0.lean/declarations/denote-mkfulladderout--dab0dd273869773cc2a89474.md) | 41 | `result-track:dab0dd273869773cc2a894743e2a98e0849f5f16216be149eac34db5c7313566` |
| 2 | `theorem` | [denote_mkFullAdderCarry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant940820a8e2ed4fcfe9411f561055866f8c2a3e3418b634814f04a67f3dd18eb0.lean/declarations/denote-mkfulladdercarry--6e7282dfdc9437e8dc963044.md) | 51 | `result-track:6e7282dfdc9437e8dc9630448a326e99c2c73a6fa1f1bfe1ebeee7a718abedfb` |
| 3 | `theorem` | [mkFullAdder_denote_mem_prefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant940820a8e2ed4fcfe9411f561055866f8c2a3e3418b634814f04a67f3dd18eb0.lean/declarations/mkfulladder-denote-mem-prefix--43928695c98a4e68219df77a.md) | 76 | `result-track:43928695c98a4e68219df77af60d694cbf95f96e5a2bf596e7e515ef88146b26` |
| 4 | `theorem` | [go_denote_mem_prefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant940820a8e2ed4fcfe9411f561055866f8c2a3e3418b634814f04a67f3dd18eb0.lean/declarations/go-denote-mem-prefix--31eaef686e2ed00a0fb0653e.md) | 90 | `result-track:31eaef686e2ed00a0fb0653ee17e8dbebf0b101a992b432ca4c03bcb762395c1` |
| 5 | `theorem` | [go_get_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant940820a8e2ed4fcfe9411f561055866f8c2a3e3418b634814f04a67f3dd18eb0.lean/declarations/go-get-aux--9de185c7e300656fb6cd0b6f.md) | 106 | `result-track:9de185c7e300656fb6cd0b6f291692db6eeed9c8f3d8056c8760f8ec19966ea6` |
| 6 | `theorem` | [go_get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant940820a8e2ed4fcfe9411f561055866f8c2a3e3418b634814f04a67f3dd18eb0.lean/declarations/go-get--27e9b02c5dfd6d2340cb6444.md) | 133 | `result-track:27e9b02c5dfd6d2340cb64443dd6b19ba9f6d91f04323218f873f68d497df920` |
| 7 | `theorem` | [atLeastTwo_eq_halfAdder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant940820a8e2ed4fcfe9411f561055866f8c2a3e3418b634814f04a67f3dd18eb0.lean/declarations/atleasttwo-eq-halfadder--f7209023b601dbb25366d62d.md) | 142 | `result-track:f7209023b601dbb25366d62dc9adce8e5cc5fcc52a4abc48df79abefc32a463e` |
| 8 | `theorem` | [go_denote_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant940820a8e2ed4fcfe9411f561055866f8c2a3e3418b634814f04a67f3dd18eb0.lean/declarations/go-denote-eq--d4520f3a3dec0269f005d2bb.md) | 149 | `result-track:d4520f3a3dec0269f005d2bb7b749fe95a25ec9789efba7bdf29c37df885fb79` |
| 9 | `theorem` | [denote_blast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant940820a8e2ed4fcfe9411f561055866f8c2a3e3418b634814f04a67f3dd18eb0.lean/declarations/denote-blast--e2550a187b8fd018877588e1.md) | 216 | `result-track:e2550a187b8fd018877588e1d41a516070fe00e4e9a896a46049e663b335cc67` |
| 10 | `theorem` | [denote_blastAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant940820a8e2ed4fcfe9411f561055866f8c2a3e3418b634814f04a67f3dd18eb0.lean/declarations/denote-blastadd--55c98cda1daa2795bbf54c06.md) | 239 | `result-track:55c98cda1daa2795bbf54c060733e1e41cd56415d358abf62c97a960c74ff7b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
