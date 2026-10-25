# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IndependentWN.Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c659de0788c489a89b6e5551d7d06a33019e8f4d",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c659de0788c489a89b6e5551d7d06a33019e8f4d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.TypeTheory.PureTypeSystem.IntendedPTS` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Arrow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean/declarations/arrow--f74719b51b4eae8ae7494b57.md) | 24 | `declaration-track:f74719b51b4eae8ae7494b5765c95adfd9ceb0831a4b855d3270eac44d2ea282` |
| 2 | `def` | [Arrow.expression](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean/declarations/arrow-expression--8f916a5296a84a6f45b2aaff.md) | 30 | `declaration-track:8f916a5296a84a6f45b2aaff8a945900051ba12aa45195d0eb6c3de5fdff1707` |
| 3 | `def` | [decodeArrow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean/declarations/decodearrow--e71505b6f420d9ba9afb215c.md) | 35 | `declaration-track:e71505b6f420d9ba9afb215c341f40d249f6f5906f082902032c2da9c86a09f5` |
| 4 | `theorem` | [Arrow.grammar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean/declarations/arrow-grammar--24923322a605d7308b2cb089.md) | 39 | `result-track:24923322a605d7308b2cb0897d913dea55d066fb3e944e23a4f865abd65b026b` |
| 5 | `theorem` | [decode_expression](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean/declarations/decode-expression--6e5eab8a6d7444d0669da9b9.md) | 44 | `result-track:6e5eab8a6d7444d0669da9b9e9282f8a138d9c1f4f5756e14983148107ecc75b` |
| 6 | `theorem` | [decode_rename](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean/declarations/decode-rename--05045494f4535b94c3392244.md) | 51 | `result-track:05045494f4535b94c33922445fab01d82c3d03c435a7210c258838cde29ef1cc` |
| 7 | `theorem` | [wn_rename](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean/declarations/wn-rename--e95fde101d48f9fdac70452d.md) | 61 | `result-track:e95fde101d48f9fdac70452d6389f339b09656de4a9fc1e9db110bcd5a16961c` |
| 8 | `theorem` | [wn_prepend](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean/declarations/wn-prepend--af03fc7fc2e5fa18dfb77b17.md) | 66 | `result-track:af03fc7fc2e5fa18dfb77b1751b5799183ddcee5768362887efb802f83eb8a4c` |
| 9 | `theorem` | [wn_lam](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean/declarations/wn-lam--c3d4d50f36f3810a99e5e408.md) | 71 | `result-track:c3d4d50f36f3810a99e5e40822ca95fee4c6013eb16ccc3be3d515b09de3210d` |
| 10 | `theorem` | [wn_pi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean/declarations/wn-pi--4554d3b5874ffd9816d668c9.md) | 79 | `result-track:4554d3b5874ffd9816d668c936515045b040ec52f33bc84cdbe5b176429d84cd` |
| 11 | `theorem` | [neutral_rename](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean/declarations/neutral-rename--7b4dda9ac8b70e42f7e81709.md) | 87 | `result-track:7b4dda9ac8b70e42f7e817098062a13b08f8a6ae62df12f20a04f2a398672a15` |
| 12 | `theorem` | [neutral_step](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean/declarations/neutral-step--0aa194dc8481511ac879a224.md) | 93 | `result-track:0aa194dc8481511ac879a224d605965533a88fd52ad358b7ff57c170dbd13203` |
| 13 | `theorem` | [neutral_reduces](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean/declarations/neutral-reduces--29ec25c34a49c185c3fbf6ff.md) | 103 | `result-track:29ec25c34a49c185c3fbf6fff1d42dc9f7349678a5d613e61995c81a4c173ce4` |
| 14 | `theorem` | [wn_neutral_app](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean/declarations/wn-neutral-app--29f990cf8b78fa84759c53a9.md) | 109 | `result-track:29f990cf8b78fa84759c53a9c6915f3a7982098765a4ad8d5eb843504e33c9cf` |
| 15 | `def` | [Reducible](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean/declarations/reducible--f53c817f31946978ba0feed5.md) | 124 | `declaration-track:f53c817f31946978ba0feed5b79aeb3ffbac3259caf8a4d956a4ae988a64f7c3` |
| 16 | `theorem` | [reducible_wn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean/declarations/reducible-wn--0b611f8b391ffb52a2559e51.md) | 130 | `result-track:0b611f8b391ffb52a2559e51f3bc5d05ee16d6009de344b15199cde3ad316010` |
| 17 | `theorem` | [reducible_rename](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean/declarations/reducible-rename--2e81bd7ba88d71aa2d855360.md) | 136 | `result-track:2e81bd7ba88d71aa2d85536006adac5ee0d3181cefa6d9822d98b68462ce4f2f` |
| 18 | `theorem` | [reducible_prepend](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean/declarations/reducible-prepend--9aec74a79985313350832860.md) | 148 | `result-track:9aec74a7998531335083286072f2f5e5c898d310433ac8e21424b0b898246c7a` |
| 19 | `theorem` | [reducible_neutral](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean/declarations/reducible-neutral--9538dd63702023b465ec66c1.md) | 159 | `result-track:9538dd63702023b465ec66c128bb028ae08c4aca87fb6049bbd751b6e2e5a6fa` |
| 20 | `theorem` | [reducible_var](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean/declarations/reducible-var--9debf6f9d0b4dc500349194a.md) | 170 | `result-track:9debf6f9d0b4dc500349194a2069cfad66a718c3e7ae9a05d626f3b48300720f` |
| 21 | `inductive` | [ArrowTyping](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean/declarations/arrowtyping--a56e185028616b0784ad7e5c.md) | 175 | `declaration-track:a56e185028616b0784ad7e5c4f551dbe179ff89ea5892884d1cde29b96275f5d` |
| 22 | `def` | [ReducibleEnvironment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean/declarations/reducibleenvironment--88e4af3b847dc6afd325f819.md) | 187 | `declaration-track:88e4af3b847dc6afd325f81946237eb38a20843ba71285a88c53a376b2b6e902` |
| 23 | `theorem` | [reducible_environment_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean/declarations/reducible-environment-lift--b1c807eccb93da27585b393f.md) | 190 | `result-track:b1c807eccb93da27585b393f8fbfb74d982d1cd68401c3d5a2be94c49007779e` |
| 24 | `theorem` | [ArrowTyping.reducible](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean/declarations/arrowtyping-reducible--a850f0998d86a4f4b0ebd94b.md) | 204 | `result-track:a850f0998d86a4f4b0ebd94b00692564304f7bedbadc61598b6987dd90df4803` |
| 25 | `theorem` | [ArrowTyping.weakly_normalizing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean/declarations/arrowtyping-weakly-normalizing--a58e2ab0436e4bcea59aa662.md) | 259 | `result-track:a58e2ab0436e4bcea59aa6628b1ce852b12225aec363cbf08cac6ecfe1740e0c` |
| 26 | `theorem` | [BaseArrowType.ne_kind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean/declarations/basearrowtype-ne-kind--874934abfb7c33fa30c9bcbd.md) | 266 | `result-track:874934abfb7c33fa30c9bcbd31688493431062ae2c9592d102b80ba267307148` |
| 27 | `theorem` | [BaseArrowType.sort_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean/declarations/basearrowtype-sort-unique--45aff5b99ba635f56181ffd1.md) | 275 | `result-track:45aff5b99ba635f56181ffd161c577a94609937a459741a637eac9e897026421` |
| 28 | `theorem` | [lookup_sorted](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean/declarations/lookup-sorted--67aef1c416289f03a9c36b78.md) | 287 | `result-track:67aef1c416289f03a9c36b78af6b5671df918a02402c59181f423aa51fd2554a` |
| 29 | `theorem` | [lookup_decoded](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean/declarations/lookup-decoded--b577cf481fd620934b2b393c.md) | 299 | `result-track:b577cf481fd620934b2b393cf41b9d2272be807bb071e08093e9d7f474672309` |
| 30 | `theorem` | [sorted_convert_to_grammar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean/declarations/sorted-convert-to-grammar--bd64f96fbbed41731e5f624b.md) | 309 | `result-track:bd64f96fbbed41731e5f624bea0e1134fd72caeaa77f77423c8d283fc905a534` |
| 31 | `theorem` | [arrow_typing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean/declarations/arrow-typing--9e432321c5bfb3cfddb2e574.md) | 324 | `result-track:9e432321c5bfb3cfddb2e57404d9a5f8e83204744ff22c2b7daad06ece9f7b21` |
| 32 | `theorem` | [typed_weakly_normalizing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean/declarations/typed-weakly-normalizing--a8d5713e1356287709851f56.md) | 388 | `result-track:a8d5713e1356287709851f563bb0def10087d647329a64bfc24ac0b215f6d6a5` |
| 33 | `theorem` | [monomorphic_arrow_weakly_normalizing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentWN/Variant610c9135a9e3929bb219c119d2f7766f843790f6760adfd45f6b105b791c9493.lean/declarations/monomorphic-arrow-weakly-normalizing--4b1d0a89c31aada0a11b1da7.md) | 425 | `result-track:4b1d0a89c31aada0a11b1da73390d96ea3480a3bf1a2892baf95737387a3a69e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
