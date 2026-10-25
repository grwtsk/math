# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Pow.Variant1411dd7db7be2014558b61c145bb28ee832cc2bbffd9bdd093921f1310f35f8d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b573676801c3dda923333f2a7567a082781002b0",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant1411dd7db7be2014558b61c145bb28ee832cc2bbffd9bdd093921f1310f35f8d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant1411dd7db7be2014558b61c145bb28ee832cc2bbffd9bdd093921f1310f35f8d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant1411dd7db7be2014558b61c145bb28ee832cc2bbffd9bdd093921f1310f35f8d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b573676801c3dda923333f2a7567a082781002b0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant1411dd7db7be2014558b61c145bb28ee832cc2bbffd9bdd093921f1310f35f8d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant1411dd7db7be2014558b61c145bb28ee832cc2bbffd9bdd093921f1310f35f8d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 8; external provider; requires a separately pinned dependency.
- `Init.Data.Int.DivMod.Bootstrap` — import line 9; external provider; requires a separately pinned dependency.
- `Init.Data.Int.DivMod.Lemmas` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Int.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Int.Pow` — import line 12; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dvd_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant1411dd7db7be2014558b61c145bb28ee832cc2bbffd9bdd093921f1310f35f8d.lean/declarations/dvd-pow--2f7314c7802935252fe2f124.md) | 21 | `result-track:2f7314c7802935252fe2f12403777664c78dd9bcd5ba2684514b0048da836091` |
| 2 | `theorem` | [ediv_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant1411dd7db7be2014558b61c145bb28ee832cc2bbffd9bdd093921f1310f35f8d.lean/declarations/ediv-pow--fc3667290b32cd1f9d1ac9d5.md) | 26 | `result-track:fc3667290b32cd1f9d1ac9d5eb7cbead3a4d9ec66003401083059b8a3f9aebdf` |
| 3 | `theorem` | [tdiv_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant1411dd7db7be2014558b61c145bb28ee832cc2bbffd9bdd093921f1310f35f8d.lean/declarations/tdiv-pow--0ec6a8f48a6205b82807aa47.md) | 33 | `result-track:0ec6a8f48a6205b82807aa47c2aaf16cc97c630b2177f7837d7d86ca382d5847` |
| 4 | `theorem` | [fdiv_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant1411dd7db7be2014558b61c145bb28ee832cc2bbffd9bdd093921f1310f35f8d.lean/declarations/fdiv-pow--c11611023c173f9531f46363.md) | 37 | `result-track:c11611023c173f9531f46363b3cbbd979bacaeb0a9fd663d21e9ecffa6e90f07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
