# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SchurInertiaDraft.Variant6cc2a850de721eb76c43a6955b7ba52eb07481647bf7486eb7e20c5b405231e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ca76bb0925d8f2ac4f68e69a3afad73998afba4",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SchurInertiaDraft/Variant6cc2a850de721eb76c43a6955b7ba52eb07481647bf7486eb7e20c5b405231e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SchurInertiaDraft/Variant6cc2a850de721eb76c43a6955b7ba52eb07481647bf7486eb7e20c5b405231e2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SchurInertiaDraft/Variant6cc2a850de721eb76c43a6955b7ba52eb07481647bf7486eb7e20c5b405231e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ca76bb0925d8f2ac4f68e69a3afad73998afba4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SchurInertiaDraft/Variant6cc2a850de721eb76c43a6955b7ba52eb07481647bf7486eb7e20c5b405231e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SchurInertiaDraft/Variant6cc2a850de721eb76c43a6955b7ba52eb07481647bf7486eb7e20c5b405231e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `HermitianInertiaDraft` — import line 1; external provider; requires a separately pinned dependency.
- `SchurZeroDraft` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [complexInertia](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SchurInertiaDraft/Variant6cc2a850de721eb76c43a6955b7ba52eb07481647bf7486eb7e20c5b405231e2.lean/declarations/complexinertia--37bec29176909d1475af6757.md) | 16 | `declaration-track:37bec29176909d1475af67574cd9c2467224c1fd3d50ff38801ecec62835a1e0` |
| 2 | `theorem` | [positive_count_schur](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SchurInertiaDraft/Variant6cc2a850de721eb76c43a6955b7ba52eb07481647bf7486eb7e20c5b405231e2.lean/declarations/positive-count-schur--f5238359a2237b056413c8ad.md) | 22 | `result-track:f5238359a2237b056413c8adc93d5de44c020eb8c82087b40e8082de13abd6fa` |
| 3 | `theorem` | [negative_count_schur](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SchurInertiaDraft/Variant6cc2a850de721eb76c43a6955b7ba52eb07481647bf7486eb7e20c5b405231e2.lean/declarations/negative-count-schur--caad6267ea48ef1e58a00575.md) | 33 | `result-track:caad6267ea48ef1e58a00575cae37816e68b095f070cda8056818e70f22e80dd` |
| 4 | `theorem` | [complexInertia_schur](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SchurInertiaDraft/Variant6cc2a850de721eb76c43a6955b7ba52eb07481647bf7486eb7e20c5b405231e2.lean/declarations/complexinertia-schur--83bcd58cc0f04a663de4a8cd.md) | 44 | `result-track:83bcd58cc0f04a663de4a8cd19e9a67dee6e3346bc1bea57af356031e86ab061` |
| 5 | `def` | [ComplexFeshbachInertiaObligation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SchurInertiaDraft/Variant6cc2a850de721eb76c43a6955b7ba52eb07481647bf7486eb7e20c5b405231e2.lean/declarations/complexfeshbachinertiaobligation--3091b2f71fa47a6966ae84e2.md) | 55 | `declaration-track:3091b2f71fa47a6966ae84e2e61302b3528d7dad5ed60bf907f079401f82ade3` |
| 6 | `theorem` | [issue266_obligation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SchurInertiaDraft/Variant6cc2a850de721eb76c43a6955b7ba52eb07481647bf7486eb7e20c5b405231e2.lean/declarations/issue266-obligation--4523aa6d68b13ccfeae6992c.md) | 65 | `result-track:4523aa6d68b13ccfeae6992cc563d84f5d8632fa86ec3ae4e41a7bf8888b8348` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
