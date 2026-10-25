# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LawfulOperator.Variant65125e89383043c624c41969b6ea2f882632f8d27d2c732446510f48852d42eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10bc040f2d3509171353899ae9361723f4d86125",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulOperator/Variant65125e89383043c624c41969b6ea2f882632f8d27d2c732446510f48852d42eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulOperator/Variant65125e89383043c624c41969b6ea2f882632f8d27d2c732446510f48852d42eb.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulOperator/Variant65125e89383043c624c41969b6ea2f882632f8d27d2c732446510f48852d42eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10bc040f2d3509171353899ae9361723f4d86125`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulOperator/Variant65125e89383043c624c41969b6ea2f882632f8d27d2c732446510f48852d42eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulOperator/Variant65125e89383043c624c41969b6ea2f882632f8d27d2c732446510f48852d42eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulOperator/Variant65125e89383043c624c41969b6ea2f882632f8d27d2c732446510f48852d42eb.lean/declarations/isprefix--ef0e3d71a4baa9ba4e979b25.md) | 27 | `declaration-track:ef0e3d71a4baa9ba4e979b25142ef8d63651b04c0c52abd72d17d1675f93a9be` |
| 2 | `theorem` | [IsPrefix.rfl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulOperator/Variant65125e89383043c624c41969b6ea2f882632f8d27d2c732446510f48852d42eb.lean/declarations/isprefix-rfl--a5243f189efbc852a1dfdcfd.md) | 38 | `result-track:a5243f189efbc852a1dfdcfd623489a0fe3192e8d46cf631654be3fe1f34394f` |
| 3 | `theorem` | [IsPrefix_push](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulOperator/Variant65125e89383043c624c41969b6ea2f882632f8d27d2c732446510f48852d42eb.lean/declarations/isprefix-push--42ac112a531d0c3c942e641f.md) | 44 | `result-track:42ac112a531d0c3c942e641f55d34685de730d9e1eb372b451725778d0d46bbb` |
| 4 | `theorem` | [denote.go_eq_of_isPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulOperator/Variant65125e89383043c624c41969b6ea2f882632f8d27d2c732446510f48852d42eb.lean/declarations/denote-go-eq-of-isprefix--97f3a640ed2f3a9ad3b7e4bb.md) | 54 | `result-track:97f3a640ed2f3a9ad3b7e4bb4df858ad80b5fb807b1286dea2e3d0f225c9fb84` |
| 5 | `theorem` | [denote.eq_of_isPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulOperator/Variant65125e89383043c624c41969b6ea2f882632f8d27d2c732446510f48852d42eb.lean/declarations/denote-eq-of-isprefix--f817a5e8d01212b5b702ab0d.md) | 87 | `result-track:f817a5e8d01212b5b702ab0d5fc5a27e0fce6527ea13475739a309159a9480a2` |
| 6 | `abbrev` | [ExtendingEntrypoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulOperator/Variant65125e89383043c624c41969b6ea2f882632f8d27d2c732446510f48852d42eb.lean/declarations/extendingentrypoint--0d1f25308a2b3ab0b5e3a88a.md) | 98 | `declaration-track:0d1f25308a2b3ab0b5e3a88a73cc5284bbef6c94c13b9211ad9c672771dd1491` |
| 7 | `abbrev` | [ExtendingRefVecEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulOperator/Variant65125e89383043c624c41969b6ea2f882632f8d27d2c732446510f48852d42eb.lean/declarations/extendingrefvecentry--ded9bd4df698fe88ddd4bef1.md) | 101 | `declaration-track:ded9bd4df698fe88ddd4bef15dfc543a04e0a4919a7e8d6f3e47546efa9588ab` |
| 8 | `class` | [LawfulOperator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulOperator/Variant65125e89383043c624c41969b6ea2f882632f8d27d2c732446510f48852d42eb.lean/declarations/lawfuloperator--481cce35ff61eb830a77fe12.md) | 111 | `declaration-track:481cce35ff61eb830a77fe1221c7b4adc194f9a5228668b489009ad24c65566b` |
| 9 | `theorem` | [isPrefix_aig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulOperator/Variant65125e89383043c624c41969b6ea2f882632f8d27d2c732446510f48852d42eb.lean/declarations/isprefix-aig--bb43937fdab4ef09f9936863.md) | 122 | `result-track:bb43937fdab4ef09f99368636018adfcd9bddcdede9bbd1775fe50c0d936079f` |
| 10 | `theorem` | [lt_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulOperator/Variant65125e89383043c624c41969b6ea2f882632f8d27d2c732446510f48852d42eb.lean/declarations/lt-size--5b65461d7871a84bfc5684fa.md) | 129 | `result-track:5b65461d7871a84bfc5684faffc2eb54d6ddc0c946e7d005db4f0bb1d6534c59` |
| 11 | `theorem` | [lt_size_of_lt_aig_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulOperator/Variant65125e89383043c624c41969b6ea2f882632f8d27d2c732446510f48852d42eb.lean/declarations/lt-size-of-lt-aig-size--061d390d4b241dfa2d79bb69.md) | 136 | `result-track:061d390d4b241dfa2d79bb69cd8b23250185bf8707b8729d85e412b60ac4dccf` |
| 12 | `theorem` | [le_size_of_le_aig_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulOperator/Variant65125e89383043c624c41969b6ea2f882632f8d27d2c732446510f48852d42eb.lean/declarations/le-size-of-le-aig-size--ee6dd8b3ab180fd84b02b9aa.md) | 142 | `result-track:ee6dd8b3ab180fd84b02b9aa3e79679c0bb6e72b68a5ed3bb4b234bb7b4c8c1d` |
| 13 | `theorem` | [denote_input_entry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulOperator/Variant65125e89383043c624c41969b6ea2f882632f8d27d2c732446510f48852d42eb.lean/declarations/denote-input-entry--e425950a02f1293c0e3cd8e7.md) | 149 | `result-track:e425950a02f1293c0e3cd8e7cd4b501e8691d2da68df6257d90cab352ce600f4` |
| 14 | `theorem` | [denote_cast_entry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulOperator/Variant65125e89383043c624c41969b6ea2f882632f8d27d2c732446510f48852d42eb.lean/declarations/denote-cast-entry--b9e1bcf646c5c0d131a0d605.md) | 157 | `result-track:b9e1bcf646c5c0d131a0d60520933a4864f6ae778a83981f780e535df4b3a938` |
| 15 | `theorem` | [denote_mem_prefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulOperator/Variant65125e89383043c624c41969b6ea2f882632f8d27d2c732446510f48852d42eb.lean/declarations/denote-mem-prefix--424a7b785928f7df046b081f.md) | 163 | `result-track:424a7b785928f7df046b081fe05169ff31145f91f34432870e44aad49fef8bbb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
