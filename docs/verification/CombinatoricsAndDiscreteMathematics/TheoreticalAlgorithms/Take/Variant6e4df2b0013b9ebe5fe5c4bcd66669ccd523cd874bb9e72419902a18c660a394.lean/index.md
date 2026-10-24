# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Take.Variant6e4df2b0013b9ebe5fe5c4bcd66669ccd523cd874bb9e72419902a18c660a394

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fd5ff1f4a07cd1abc567cf02bf8c419eaa832c0",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant6e4df2b0013b9ebe5fe5c4bcd66669ccd523cd874bb9e72419902a18c660a394.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant6e4df2b0013b9ebe5fe5c4bcd66669ccd523cd874bb9e72419902a18c660a394.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant6e4df2b0013b9ebe5fe5c4bcd66669ccd523cd874bb9e72419902a18c660a394.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fd5ff1f4a07cd1abc567cf02bf8c419eaa832c0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant6e4df2b0013b9ebe5fe5c4bcd66669ccd523cd874bb9e72419902a18c660a394.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant6e4df2b0013b9ebe5fe5c4bcd66669ccd523cd874bb9e72419902a18c660a394.lean.json)

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
| 1 | `def` | [take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant6e4df2b0013b9ebe5fe5c4bcd66669ccd523cd874bb9e72419902a18c660a394.lean/declarations/take--f076e5683ebe847a3452db9e.md) | 38 | `declaration-track:f076e5683ebe847a3452db9e2c58afbb5b0d88e6260c514c455c438b8ee8165e` |
| 2 | `theorem` | [take_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant6e4df2b0013b9ebe5fe5c4bcd66669ccd523cd874bb9e72419902a18c660a394.lean/declarations/take-apply--2344113d78ec86ac05de58ad.md) | 42 | `result-track:2344113d78ec86ac05de58ad6fa030aa263f58cd811447301f8aa99331282b86` |
| 3 | `theorem` | [take_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant6e4df2b0013b9ebe5fe5c4bcd66669ccd523cd874bb9e72419902a18c660a394.lean/declarations/take-zero--0ea123cdfd03e5a47618fecc.md) | 46 | `result-track:0ea123cdfd03e5a47618fecce8723cce9d1a7337dd346f7ce535e5c73d590ab4` |
| 4 | `theorem` | [take_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant6e4df2b0013b9ebe5fe5c4bcd66669ccd523cd874bb9e72419902a18c660a394.lean/declarations/take-one--c6eda85b202d06a27457dad1.md) | 50 | `result-track:c6eda85b202d06a27457dad1ed954c8a4a9ce916712dc3c6d175c9b1c0258022` |
| 5 | `theorem` | [take_eq_init](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant6e4df2b0013b9ebe5fe5c4bcd66669ccd523cd874bb9e72419902a18c660a394.lean/declarations/take-eq-init--baa768d01db8b7709fb01dd7.md) | 56 | `result-track:baa768d01db8b7709fb01dd7c76fb2afc033cb39f3907b586b8a9d2488a7f8c9` |
| 6 | `theorem` | [take_eq_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant6e4df2b0013b9ebe5fe5c4bcd66669ccd523cd874bb9e72419902a18c660a394.lean/declarations/take-eq-self--47890dfbfa2f388a0d389d6e.md) | 60 | `result-track:47890dfbfa2f388a0d389d6e577e8f224d726e47f3acfc3c85ea15b58dfc1f13` |
| 7 | `theorem` | [take_take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant6e4df2b0013b9ebe5fe5c4bcd66669ccd523cd874bb9e72419902a18c660a394.lean/declarations/take-take--731e0fd49a2dd0f4a838d476.md) | 65 | `result-track:731e0fd49a2dd0f4a838d4762da2f4b5c66c4956655698aec46e1023263a925e` |
| 8 | `theorem` | [take_init](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant6e4df2b0013b9ebe5fe5c4bcd66669ccd523cd874bb9e72419902a18c660a394.lean/declarations/take-init--00e0ee8bec91b4523131ab5a.md) | 69 | `result-track:00e0ee8bec91b4523131ab5abcab5595e1de49f156fe7fe9182c3fecc8f1ba24` |
| 9 | `theorem` | [take_repeat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant6e4df2b0013b9ebe5fe5c4bcd66669ccd523cd874bb9e72419902a18c660a394.lean/declarations/take-repeat--556512e41cd28c71ab8eb71a.md) | 72 | `result-track:556512e41cd28c71ab8eb71ab405294f2d20882fc54496fc9265261129bc5d03` |
| 10 | `theorem` | [take_succ_eq_snoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant6e4df2b0013b9ebe5fe5c4bcd66669ccd523cd874bb9e72419902a18c660a394.lean/declarations/take-succ-eq-snoc--c4f332f97c9afeaf3aee30e6.md) | 78 | `result-track:c4f332f97c9afeaf3aee30e6e74f797a2f1f28f290decedf5e7b1e18f991dcd1` |
| 11 | `theorem` | [take_update_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant6e4df2b0013b9ebe5fe5c4bcd66669ccd523cd874bb9e72419902a18c660a394.lean/declarations/take-update-of-lt--d306193c2719b95d7309df85.md) | 93 | `result-track:d306193c2719b95d7309df858ef3a66a4e802471d20fbc3c4c6d0dbfa32d4c23` |
| 12 | `theorem` | [take_update_of_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant6e4df2b0013b9ebe5fe5c4bcd66669ccd523cd874bb9e72419902a18c660a394.lean/declarations/take-update-of-ge--d2fb27f38e3d02b9340b54f0.md) | 104 | `result-track:d2fb27f38e3d02b9340b54f0466e916d65d36a91f3a2f5988902488549dee93b` |
| 13 | `theorem` | [take_addCases_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant6e4df2b0013b9ebe5fe5c4bcd66669ccd523cd874bb9e72419902a18c660a394.lean/declarations/take-addcases-left--7dee595cb91d922b09027ff6.md) | 115 | `result-track:7dee595cb91d922b09027ff6018ae0a0e2cd031ac374e4d23c53188cec48ed2e` |
| 14 | `theorem` | [take_append_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant6e4df2b0013b9ebe5fe5c4bcd66669ccd523cd874bb9e72419902a18c660a394.lean/declarations/take-append-left--4b27adaf61839cedfa5cd639.md) | 124 | `result-track:4b27adaf61839cedfa5cd639bbdde274e85caf92090cdf53aaf31a7c56f34057` |
| 15 | `theorem` | [take_addCases_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant6e4df2b0013b9ebe5fe5c4bcd66669ccd523cd874bb9e72419902a18c660a394.lean/declarations/take-addcases-right--df44fc58921ffc2c4b65c48c.md) | 130 | `result-track:df44fc58921ffc2c4b65c48cc41653eeacdfec72bcab6e49f58533f35d5a64d0` |
| 16 | `theorem` | [take_append_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant6e4df2b0013b9ebe5fe5c4bcd66669ccd523cd874bb9e72419902a18c660a394.lean/declarations/take-append-right--807a8775fbca4c35aae78ab6.md) | 141 | `result-track:807a8775fbca4c35aae78ab67508cedd1416604902c359e60c17fb9532a8255b` |
| 17 | `theorem` | [ofFn_take_eq_take_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant6e4df2b0013b9ebe5fe5c4bcd66669ccd523cd874bb9e72419902a18c660a394.lean/declarations/offn-take-eq-take-offn--99c47225565ecac9b42ff4b0.md) | 147 | `result-track:99c47225565ecac9b42ff4b0d5eb2c320ea68e64ac0b957ed0ab0dec4cdadb44` |
| 18 | `theorem` | [ofFn_take_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant6e4df2b0013b9ebe5fe5c4bcd66669ccd523cd874bb9e72419902a18c660a394.lean/declarations/offn-take-get--11b6c5a387d45dc621fb9935.md) | 152 | `result-track:11b6c5a387d45dc621fb9935ba3f3e2b33358a4250f887ded87762c93c0ffe3a` |
| 19 | `theorem` | [get_take_eq_take_get_comp_cast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant6e4df2b0013b9ebe5fe5c4bcd66669ccd523cd874bb9e72419902a18c660a394.lean/declarations/get-take-eq-take-get-comp-cast--6813bc6d85310aae32b576ae.md) | 157 | `result-track:6813bc6d85310aae32b576aefb575aae173f8a65e6a4e34c59ebf000f2bfae6b` |
| 20 | `theorem` | [get_take_ofFn_eq_take_comp_cast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant6e4df2b0013b9ebe5fe5c4bcd66669ccd523cd874bb9e72419902a18c660a394.lean/declarations/get-take-offn-eq-take-comp-cast--bd09a75a5d6b06ad3dcd51bf.md) | 163 | `result-track:bd09a75a5d6b06ad3dcd51bf7517a8f09ae50254f7c77f511fbd744ecc0832f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
