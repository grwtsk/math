# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SOM.Variant9fd1ad315e24b968f36066c0f38d92336b1fb0dc382f85f5e1c473ad6f2bdc03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "350d3b7f54050be848a4c3c748ac89e180810ab7",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant9fd1ad315e24b968f36066c0f38d92336b1fb0dc382f85f5e1c473ad6f2bdc03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant9fd1ad315e24b968f36066c0f38d92336b1fb0dc382f85f5e1c473ad6f2bdc03.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant9fd1ad315e24b968f36066c0f38d92336b1fb0dc382f85f5e1c473ad6f2bdc03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `350d3b7f54050be848a4c3c748ac89e180810ab7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant9fd1ad315e24b968f36066c0f38d92336b1fb0dc382f85f5e1c473ad6f2bdc03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant9fd1ad315e24b968f36066c0f38d92336b1fb0dc382f85f5e1c473ad6f2bdc03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 9; external provider; requires a separately pinned dependency.
- `Init.Data.List.BasicAux` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Meta` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Expr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant9fd1ad315e24b968f36066c0f38d92336b1fb0dc382f85f5e1c473ad6f2bdc03.lean/declarations/expr--ad6ecf779dd470b713b94439.md) | 18 | `declaration-track:ad6ecf779dd470b713b944397b48ac5bb1d79773516538dcd80a3668729b1ee4` |
| 2 | `abbrev` | [Expr.denote](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant9fd1ad315e24b968f36066c0f38d92336b1fb0dc382f85f5e1c473ad6f2bdc03.lean/declarations/expr-denote--9ed5a5a7c399b186a4553536.md) | 27 | `declaration-track:9ed5a5a7c399b186a45535366977bb24ee3af421bb09987ac80d990a5b3c9e22` |
| 3 | `abbrev` | [Mon](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant9fd1ad315e24b968f36066c0f38d92336b1fb0dc382f85f5e1c473ad6f2bdc03.lean/declarations/mon--0cb77542985a0abff0c907c9.md) | 33 | `declaration-track:0cb77542985a0abff0c907c987fdd6e3ef9180552521f31a602c7c0d99f0a6f3` |
| 4 | `abbrev` | [Mon.denote](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant9fd1ad315e24b968f36066c0f38d92336b1fb0dc382f85f5e1c473ad6f2bdc03.lean/declarations/mon-denote--dd258e26c54a69999f320b17.md) | 35 | `declaration-track:dd258e26c54a69999f320b1764dcc4b116d894e533f10eee56430e4fa8cf832e` |
| 5 | `def` | [Mon.mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant9fd1ad315e24b968f36066c0f38d92336b1fb0dc382f85f5e1c473ad6f2bdc03.lean/declarations/mon-mul--a25918ffe70cb8581b9de2cd.md) | 41 | `declaration-track:a25918ffe70cb8581b9de2cdcaf9397546074cae9b9abab87bc2774eaa878aea` |
| 6 | `abbrev` | [Poly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant9fd1ad315e24b968f36066c0f38d92336b1fb0dc382f85f5e1c473ad6f2bdc03.lean/declarations/poly--a3d45296b9a6998da51f724f.md) | 59 | `declaration-track:a3d45296b9a6998da51f724ffece3cb378368d7872a3873e194eedc56f93629b` |
| 7 | `abbrev` | [Poly.denote](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant9fd1ad315e24b968f36066c0f38d92336b1fb0dc382f85f5e1c473ad6f2bdc03.lean/declarations/poly-denote--191e0c0fd9b9de33dabffe10.md) | 61 | `declaration-track:191e0c0fd9b9de33dabffe105cd8d617b7e647d211a1e2e33d341ab0132da866` |
| 8 | `def` | [Poly.add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant9fd1ad315e24b968f36066c0f38d92336b1fb0dc382f85f5e1c473ad6f2bdc03.lean/declarations/poly-add--a0417706964f0e0b54566612.md) | 67 | `declaration-track:a0417706964f0e0b54566612ef5d09559c7079e247f561f955080c3b524a4903` |
| 9 | `def` | [Poly.insertSorted](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant9fd1ad315e24b968f36066c0f38d92336b1fb0dc382f85f5e1c473ad6f2bdc03.lean/declarations/poly-insertsorted--0b2730941b57c175ad5fc72b.md) | 87 | `declaration-track:0b2730941b57c175ad5fc72b501b2329e41c5724ba5750d5b4331b49fa89160e` |
| 10 | `def` | [Poly.mulMon](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant9fd1ad315e24b968f36066c0f38d92336b1fb0dc382f85f5e1c473ad6f2bdc03.lean/declarations/poly-mulmon--4f4af1cca133a18f769c671d.md) | 92 | `declaration-track:4f4af1cca133a18f769c671dc3d6604a4598af3e3b459c4e324d516e9b373fe5` |
| 11 | `def` | [Poly.mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant9fd1ad315e24b968f36066c0f38d92336b1fb0dc382f85f5e1c473ad6f2bdc03.lean/declarations/poly-mul--e6caabd918322186d4da96c6.md) | 100 | `declaration-track:e6caabd918322186d4da96c6a9e2bb44321ec22b6bd88802d9864805b66fa08c` |
| 12 | `def` | [Expr.toPoly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant9fd1ad315e24b968f36066c0f38d92336b1fb0dc382f85f5e1c473ad6f2bdc03.lean/declarations/expr-topoly--7c11aad946b0ae95c98ae038.md) | 108 | `declaration-track:7c11aad946b0ae95c98ae0382e6fbcb619ead4f29bed636629db570ac563049c` |
| 13 | `theorem` | [Mon.append_denote](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant9fd1ad315e24b968f36066c0f38d92336b1fb0dc382f85f5e1c473ad6f2bdc03.lean/declarations/mon-append-denote--f6b0413083256e983e5f5c38.md) | 114 | `result-track:f6b0413083256e983e5f5c386daca0447416f730db2a87f5afb21c6bdc063916` |
| 14 | `theorem` | [Mon.mul_denote](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant9fd1ad315e24b968f36066c0f38d92336b1fb0dc382f85f5e1c473ad6f2bdc03.lean/declarations/mon-mul-denote--2a5619befceb9b236c5f6aad.md) | 119 | `result-track:2a5619befceb9b236c5f6aad017024be8976f40368954e8fd68ed1860a381a9d` |
| 15 | `theorem` | [Poly.append_denote](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant9fd1ad315e24b968f36066c0f38d92336b1fb0dc382f85f5e1c473ad6f2bdc03.lean/declarations/poly-append-denote--041093edd8971a70d4cf25c5.md) | 132 | `result-track:041093edd8971a70d4cf25c55a86f34355b1e3acbf2e1c365bf899ebd3001712` |
| 16 | `theorem` | [Poly.add_denote](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant9fd1ad315e24b968f36066c0f38d92336b1fb0dc382f85f5e1c473ad6f2bdc03.lean/declarations/poly-add-denote--e046237e6bc356cbc5895cba.md) | 137 | `result-track:e046237e6bc356cbc5895cbaa2e0aee83e6b7d53270808c6a0a12d123b58ba52` |
| 17 | `theorem` | [Poly.denote_insertSorted](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant9fd1ad315e24b968f36066c0f38d92336b1fb0dc382f85f5e1c473ad6f2bdc03.lean/declarations/poly-denote-insertsorted--33141def67138d8127e48ad8.md) | 155 | `result-track:33141def67138d8127e48ad8c641b49634454f670cc9c50c41107f630cc24e30` |
| 18 | `theorem` | [Poly.mulMon_denote](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant9fd1ad315e24b968f36066c0f38d92336b1fb0dc382f85f5e1c473ad6f2bdc03.lean/declarations/poly-mulmon-denote--a7dd64218c68782f1ecbd886.md) | 161 | `result-track:a7dd64218c68782f1ecbd886d48e52bc513685eab4e55b63536cc43f2bcc22d4` |
| 19 | `theorem` | [Poly.mul_denote](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant9fd1ad315e24b968f36066c0f38d92336b1fb0dc382f85f5e1c473ad6f2bdc03.lean/declarations/poly-mul-denote--bf7a9fdebe60cc8060d31348.md) | 170 | `result-track:bf7a9fdebe60cc8060d3134804bcdd7f1c166d4f3054fca690e3beb198bed03b` |
| 20 | `theorem` | [Expr.toPoly_denote](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant9fd1ad315e24b968f36066c0f38d92336b1fb0dc382f85f5e1c473ad6f2bdc03.lean/declarations/expr-topoly-denote--2140b4f739b220d7e1a062b6.md) | 181 | `result-track:2140b4f739b220d7e1a062b6d4b91e88930e298b07dbe32897a5ad10496a798d` |
| 21 | `theorem` | [Expr.eq_of_toPoly_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant9fd1ad315e24b968f36066c0f38d92336b1fb0dc382f85f5e1c473ad6f2bdc03.lean/declarations/expr-eq-of-topoly-eq--88dd20dbdeb050ef2c77cae1.md) | 190 | `result-track:88dd20dbdeb050ef2c77cae1f5280ef851fe495eee8b3dbf5a917b0b259ca70a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
