# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Parser.Variant5eb168a2bb3181bed4c62fa219dd718392de148a650ddb1e09ec0fbb748209dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "931c55b498bade448473a27e80ed0c704435239f",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant5eb168a2bb3181bed4c62fa219dd718392de148a650ddb1e09ec0fbb748209dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant5eb168a2bb3181bed4c62fa219dd718392de148a650ddb1e09ec0fbb748209dc.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant5eb168a2bb3181bed4c62fa219dd718392de148a650ddb1e09ec0fbb748209dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `931c55b498bade448473a27e80ed0c704435239f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant5eb168a2bb3181bed4c62fa219dd718392de148a650ddb1e09ec0fbb748209dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant5eb168a2bb3181bed4c62fa219dd718392de148a650ddb1e09ec0fbb748209dc.lean.json)

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
| 1 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant5eb168a2bb3181bed4c62fa219dd718392de148a650ddb1e09ec0fbb748209dc.lean/declarations/builtin-initialize--1e6f26fa985d8a26b28a018e.md) | 27 | `declaration-track:1e6f26fa985d8a26b28a018e8822de9f214dd6097a251c2f31ddd7f2fe0cdaa9` |
| 2 | `def` | [mkAntiquot.parenthesizer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant5eb168a2bb3181bed4c62fa219dd718392de148a650ddb1e09ec0fbb748209dc.lean/declarations/mkantiquot-parenthesizer--d7d64b6974720855e3c7b2a0.md) | 71 | `declaration-track:d7d64b6974720855e3c7b2a01730a1173d24495d786577ba1aaf402d85cba573` |
| 3 | `def` | [ident.parenthesizer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant5eb168a2bb3181bed4c62fa219dd718392de148a650ddb1e09ec0fbb748209dc.lean/declarations/ident-parenthesizer--897ca55b7d861e4baa3583d0.md) | 76 | `declaration-track:897ca55b7d861e4baa3583d0ef122c81ff45f832161e138e0889dcbf379ec676` |
| 4 | `def` | [numLit.parenthesizer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant5eb168a2bb3181bed4c62fa219dd718392de148a650ddb1e09ec0fbb748209dc.lean/declarations/numlit-parenthesizer--eb92ee210c5a93f7a663ead0.md) | 77 | `declaration-track:eb92ee210c5a93f7a663ead0c67521159ad721520151c193128c5aec5b3eacc2` |
| 5 | `def` | [scientificLit.parenthesizer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant5eb168a2bb3181bed4c62fa219dd718392de148a650ddb1e09ec0fbb748209dc.lean/declarations/scientificlit-parenthesizer--28d8cca5049ea70f96103c18.md) | 78 | `declaration-track:28d8cca5049ea70f96103c1881cfdf7a569e04c4cdf7a32cbb20d9cde8f8e053` |
| 6 | `def` | [charLit.parenthesizer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant5eb168a2bb3181bed4c62fa219dd718392de148a650ddb1e09ec0fbb748209dc.lean/declarations/charlit-parenthesizer--1ad316b401db1c68a41da773.md) | 79 | `declaration-track:1ad316b401db1c68a41da7731c8c91412610c2b89792cf1089ed5c585a4906da` |
| 7 | `def` | [strLit.parenthesizer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant5eb168a2bb3181bed4c62fa219dd718392de148a650ddb1e09ec0fbb748209dc.lean/declarations/strlit-parenthesizer--756d134debbf25777b0364b6.md) | 80 | `declaration-track:756d134debbf25777b0364b6d7a4796e12712a50b265c5b0d5f371c401297b33` |
| 8 | `def` | [interpretParserDescr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant5eb168a2bb3181bed4c62fa219dd718392de148a650ddb1e09ec0fbb748209dc.lean/declarations/interpretparserdescr--507bce70bbadc498140e1442.md) | 86 | `declaration-track:507bce70bbadc498140e1442cac4bc455a3f03d2d81b56b91038ce8245a78ec2` |
| 9 | `def` | [mkAntiquot.formatter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant5eb168a2bb3181bed4c62fa219dd718392de148a650ddb1e09ec0fbb748209dc.lean/declarations/mkantiquot-formatter--126a3e525730e2ffff746ffc.md) | 108 | `declaration-track:126a3e525730e2ffff746ffca27b6db42d7a3aceb98d708cf7e8bfe4a698b7e6` |
| 10 | `def` | [ident.formatter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant5eb168a2bb3181bed4c62fa219dd718392de148a650ddb1e09ec0fbb748209dc.lean/declarations/ident-formatter--c990b6c5b300280dfdc77411.md) | 111 | `declaration-track:c990b6c5b300280dfdc774111d7686417acb35ed58308ac58c18e1e2b6e96882` |
| 11 | `def` | [numLit.formatter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant5eb168a2bb3181bed4c62fa219dd718392de148a650ddb1e09ec0fbb748209dc.lean/declarations/numlit-formatter--15c28b83c131baffa4d8b79a.md) | 112 | `declaration-track:15c28b83c131baffa4d8b79ad99b6d60eab2f67f84a9291d5c5581604870a0c8` |
| 12 | `def` | [scientificLit.formatter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant5eb168a2bb3181bed4c62fa219dd718392de148a650ddb1e09ec0fbb748209dc.lean/declarations/scientificlit-formatter--361a24a5a6a9a7255ee2a39c.md) | 113 | `declaration-track:361a24a5a6a9a7255ee2a39cc5ff7ebc1794f04e8e330814b1a5bf5282c2db6f` |
| 13 | `def` | [charLit.formatter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant5eb168a2bb3181bed4c62fa219dd718392de148a650ddb1e09ec0fbb748209dc.lean/declarations/charlit-formatter--ce933cc32a88e8d3334aae39.md) | 114 | `declaration-track:ce933cc32a88e8d3334aae3909c1d3cd3945af80d0f3d0770f34b64f55cb11f5` |
| 14 | `def` | [strLit.formatter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant5eb168a2bb3181bed4c62fa219dd718392de148a650ddb1e09ec0fbb748209dc.lean/declarations/strlit-formatter--9a7a3de86f27910052ebaf1c.md) | 115 | `declaration-track:9a7a3de86f27910052ebaf1cba0716056a699751f9388c728a1b05e59da3e09b` |
| 15 | `def` | [interpretParserDescr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant5eb168a2bb3181bed4c62fa219dd718392de148a650ddb1e09ec0fbb748209dc.lean/declarations/interpretparserdescr--f0f97b59efb2a43f274f0fac.md) | 121 | `declaration-track:f0f97b59efb2a43f274f0fac7723d867cedc624a55de1b2259d2535eb76b65fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
