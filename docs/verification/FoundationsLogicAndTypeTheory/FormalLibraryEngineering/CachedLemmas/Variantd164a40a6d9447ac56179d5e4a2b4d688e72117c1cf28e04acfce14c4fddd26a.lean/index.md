# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CachedLemmas.Variantd164a40a6d9447ac56179d5e4a2b4d688e72117c1cf28e04acfce14c4fddd26a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ddef402dad09691fc44b0f14aa35f17e8797daff",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variantd164a40a6d9447ac56179d5e4a2b4d688e72117c1cf28e04acfce14c4fddd26a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variantd164a40a6d9447ac56179d5e4a2b4d688e72117c1cf28e04acfce14c4fddd26a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variantd164a40a6d9447ac56179d5e4a2b4d688e72117c1cf28e04acfce14c4fddd26a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ddef402dad09691fc44b0f14aa35f17e8797daff`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variantd164a40a6d9447ac56179d5e4a2b4d688e72117c1cf28e04acfce14c4fddd26a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variantd164a40a6d9447ac56179d5e4a2b4d688e72117c1cf28e04acfce14c4fddd26a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Order` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Order.Lemmas` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [denote_mkAtom_cached](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variantd164a40a6d9447ac56179d5e4a2b4d688e72117c1cf28e04acfce14c4fddd26a.lean/declarations/denote-mkatom-cached--8e8081416b3889acc5480d40.md) | 31 | `result-track:8e8081416b3889acc5480d40dc4a10c1100f6d7f34e2e50708701e7eab6c7af5` |
| 2 | `theorem` | [mkAtomCached_hit_aig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variantd164a40a6d9447ac56179d5e4a2b4d688e72117c1cf28e04acfce14c4fddd26a.lean/declarations/mkatomcached-hit-aig--15ea9c21b1a5d707fa51805b.md) | 43 | `result-track:15ea9c21b1a5d707fa51805b8389e9244fd3ebb46dc85694f4d6e8f5c05257f5` |
| 3 | `theorem` | [mkAtomCached_miss_aig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variantd164a40a6d9447ac56179d5e4a2b4d688e72117c1cf28e04acfce14c4fddd26a.lean/declarations/mkatomcached-miss-aig--350fd35b55634b84ef4b60fc.md) | 51 | `result-track:350fd35b55634b84ef4b60fc17724b1a5643d98d62625f9971a368b5a8c1851d` |
| 4 | `theorem` | [mkAtomCached_decl_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variantd164a40a6d9447ac56179d5e4a2b4d688e72117c1cf28e04acfce14c4fddd26a.lean/declarations/mkatomcached-decl-eq--1cf741e865d60c53824d623f.md) | 60 | `result-track:1cf741e865d60c53824d623f2936665a07844e478e2481c914138134c4b2f7f7` |
| 5 | `theorem` | [mkAtomCached_le_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variantd164a40a6d9447ac56179d5e4a2b4d688e72117c1cf28e04acfce14c4fddd26a.lean/declarations/mkatomcached-le-size--c4b6d9ec679422514c54b5dc.md) | 77 | `result-track:c4b6d9ec679422514c54b5dc39f19af5052d18ade67783f6a64ae5d9456a187f` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variantd164a40a6d9447ac56179d5e4a2b4d688e72117c1cf28e04acfce14c4fddd26a.lean/declarations/instance--8dc8da106cd5c796cda85057.md) | 84 | `declaration-track:8dc8da106cd5c796cda8505759e95defdc2d7259db7184861d0027975de33b68` |
| 7 | `theorem` | [mkAtomCached_eval_eq_mkAtom_eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variantd164a40a6d9447ac56179d5e4a2b4d688e72117c1cf28e04acfce14c4fddd26a.lean/declarations/mkatomcached-eval-eq-mkatom-eval--3e038609d53b56874c90fcc9.md) | 92 | `result-track:3e038609d53b56874c90fcc950803d163779fd543795b2c98a046e117f1cdd1f` |
| 8 | `theorem` | [denote_mkConstCached](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variantd164a40a6d9447ac56179d5e4a2b4d688e72117c1cf28e04acfce14c4fddd26a.lean/declarations/denote-mkconstcached--2f2be1204e5dd76e2c79a97a.md) | 104 | `result-track:2f2be1204e5dd76e2c79a97abb922b5ede4207d20aaae367ca4551c359b7a332` |
| 9 | `theorem` | [denote_mkGate_cached](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variantd164a40a6d9447ac56179d5e4a2b4d688e72117c1cf28e04acfce14c4fddd26a.lean/declarations/denote-mkgate-cached--80c7459d1a601f8fb3dd8941.md) | 116 | `result-track:80c7459d1a601f8fb3dd8941bc680a091ac0217f7630d3923c4e42c95557ac3b` |
| 10 | `theorem` | [mkGateCached.go_le_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variantd164a40a6d9447ac56179d5e4a2b4d688e72117c1cf28e04acfce14c4fddd26a.lean/declarations/mkgatecached-go-le-size--944309563ec89896225efe67.md) | 130 | `result-track:944309563ec89896225efe6731fa3aef3329221b8d57a76d0ebff67762d3d06b` |
| 11 | `theorem` | [mkGateCached_le_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variantd164a40a6d9447ac56179d5e4a2b4d688e72117c1cf28e04acfce14c4fddd26a.lean/declarations/mkgatecached-le-size--95dd57d9c997ff5434cac209.md) | 143 | `result-track:95dd57d9c997ff5434cac209727a7b1d7dc5c9bf9e57758ed9c7a1c80a413f52` |
| 12 | `theorem` | [mkGateCached.go_decl_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variantd164a40a6d9447ac56179d5e4a2b4d688e72117c1cf28e04acfce14c4fddd26a.lean/declarations/mkgatecached-go-decl-eq--079ab2df38827b6ffc02250d.md) | 150 | `result-track:079ab2df38827b6ffc02250d50fb31dc9f0a381ae903e2d2fd85677fc79a533c` |
| 13 | `theorem` | [mkGateCached_decl_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variantd164a40a6d9447ac56179d5e4a2b4d688e72117c1cf28e04acfce14c4fddd26a.lean/declarations/mkgatecached-decl-eq--55c3fea2fc711396ccebe3b7.md) | 188 | `result-track:55c3fea2fc711396ccebe3b7234f9df5b9a18127211582e2e55fcd0cad3125f3` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variantd164a40a6d9447ac56179d5e4a2b4d688e72117c1cf28e04acfce14c4fddd26a.lean/declarations/instance--f9b829fd5f0fbac2294297e4.md) | 199 | `declaration-track:f9b829fd5f0fbac2294297e437c691363e1af60e16bfd6fcc9b37103f174e9a5` |
| 15 | `theorem` | [mkGateCached.go_eval_eq_mkGate_eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variantd164a40a6d9447ac56179d5e4a2b4d688e72117c1cf28e04acfce14c4fddd26a.lean/declarations/mkgatecached-go-eval-eq-mkgate-eval--5d3f5f9f9be6d381c5be4d11.md) | 205 | `result-track:5d3f5f9f9be6d381c5be4d118c2dd3b68a51634e933a94e241b00823cb7241b4` |
| 16 | `theorem` | [mkGateCached_eval_eq_mkGate_eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variantd164a40a6d9447ac56179d5e4a2b4d688e72117c1cf28e04acfce14c4fddd26a.lean/declarations/mkgatecached-eval-eq-mkgate-eval--d181ab4d87c15fd8fde76720.md) | 230 | `result-track:d181ab4d87c15fd8fde7672033e659bb77d9f2c03985ba8a4f1b8606fd791336` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
