# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PNatToNat.Variant391c0226e972aab6283d390d0e5212def93ee795cd8afa0988c3ccf970f38fb1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26f2b2f2d7928fccea84458fb0ee144f52d63988",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PNatToNat/Variant391c0226e972aab6283d390d0e5212def93ee795cd8afa0988c3ccf970f38fb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PNatToNat/Variant391c0226e972aab6283d390d0e5212def93ee795cd8afa0988c3ccf970f38fb1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PNatToNat/Variant391c0226e972aab6283d390d0e5212def93ee795cd8afa0988c3ccf970f38fb1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26f2b2f2d7928fccea84458fb0ee144f52d63988`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PNatToNat/Variant391c0226e972aab6283d390d0e5212def93ee795cd8afa0988c3ccf970f38fb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PNatToNat/Variant391c0226e972aab6283d390d0e5212def93ee795cd8afa0988c3ccf970f38fb1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.PNat.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PNatToNat/Variant391c0226e972aab6283d390d0e5212def93ee795cd8afa0988c3ccf970f38fb1.lean/declarations/elab--1c2083aecef56e7d1542c501.md) | 35 | `declaration-track:1c2083aecef56e7d1542c501d564466b2d9a3a45447645d5f7c943ba2b43646a` |
| 2 | `lemma` | [coe_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PNatToNat/Variant391c0226e972aab6283d390d0e5212def93ee795cd8afa0988c3ccf970f38fb1.lean/declarations/coe-inj--e51986b15e0182950e6d5c10.md) | 53 | `result-track:e51986b15e0182950e6d5c108c872af69ac5e0aa0578be8fb425b04f9633aa9a` |
| 3 | `lemma` | [coe_le_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PNatToNat/Variant391c0226e972aab6283d390d0e5212def93ee795cd8afa0988c3ccf970f38fb1.lean/declarations/coe-le-coe--387817377a061baaa1db9473.md) | 56 | `result-track:387817377a061baaa1db94737aca3d02dd6b9a83d96e49d9fe75f5ad89bf975c` |
| 4 | `lemma` | [coe_lt_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PNatToNat/Variant391c0226e972aab6283d390d0e5212def93ee795cd8afa0988c3ccf970f38fb1.lean/declarations/coe-lt-coe--847522a5d15e671ccac12cb0.md) | 59 | `result-track:847522a5d15e671ccac12cb01ecea1b033ad8fe2de29c148f8ada15dbdcbc5a4` |
| 5 | `lemma` | [sub_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PNatToNat/Variant391c0226e972aab6283d390d0e5212def93ee795cd8afa0988c3ccf970f38fb1.lean/declarations/sub-coe--27d21ccd517f8db3fb6965e4.md) | 64 | `result-track:27d21ccd517f8db3fb6965e42fd79a535d9f27ade5b1b403a84a82a76b368b34` |
| 6 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PNatToNat/Variant391c0226e972aab6283d390d0e5212def93ee795cd8afa0988c3ccf970f38fb1.lean/declarations/macro--f9daf6c010ae1562e28f3457.md) | 72 | `declaration-track:f9daf6c010ae1562e28f3457da389e70b872fe6668a521537714f8e2259bd0c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
