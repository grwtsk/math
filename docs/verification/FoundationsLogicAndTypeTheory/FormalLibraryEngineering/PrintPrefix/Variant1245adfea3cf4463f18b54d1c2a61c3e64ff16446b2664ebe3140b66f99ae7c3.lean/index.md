# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrintPrefix.Variant1245adfea3cf4463f18b54d1c2a61c3e64ff16446b2664ebe3140b66f99ae7c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29fa51d8345e615b93bd4a24af5615265af318cb",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1245adfea3cf4463f18b54d1c2a61c3e64ff16446b2664ebe3140b66f99ae7c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1245adfea3cf4463f18b54d1c2a61c3e64ff16446b2664ebe3140b66f99ae7c3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1245adfea3cf4463f18b54d1c2a61c3e64ff16446b2664ebe3140b66f99ae7c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29fa51d8345e615b93bd4a24af5615265af318cb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1245adfea3cf4463f18b54d1c2a61c3e64ff16446b2664ebe3140b66f99ae7c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1245adfea3cf4463f18b54d1c2a61c3e64ff16446b2664ebe3140b66f99ae7c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Lean.Name` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Lean.Util.EnvSearch` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Config` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrintPrefixConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1245adfea3cf4463f18b54d1c2a61c3e64ff16446b2664ebe3140b66f99ae7c3.lean/declarations/printprefixconfig--9fc34dcbf595a34db92d7a37.md) | 15 | `declaration-track:9fc34dcbf595a34db92d7a3762a809a50c3dcbea08cd05677f60ebe4048475b1` |
| 2 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1245adfea3cf4463f18b54d1c2a61c3e64ff16446b2664ebe3140b66f99ae7c3.lean/declarations/syntax--2cb46867105090b42c3e39b8.md) | 59 | `declaration-track:2cb46867105090b42c3e39b848e879ad4b49a721bf5229086c0d629a188e4f42` |
| 3 | `def` | [reverseName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1245adfea3cf4463f18b54d1c2a61c3e64ff16446b2664ebe3140b66f99ae7c3.lean/declarations/reversename--789305f1e1ef30f04ebfef41.md) | 64 | `declaration-track:789305f1e1ef30f04ebfef412f32ef98593b0ec012e01ccc1cb4f12d2e21f7f3` |
| 4 | `def` | [takeNameSuffix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1245adfea3cf4463f18b54d1c2a61c3e64ff16446b2664ebe3140b66f99ae7c3.lean/declarations/takenamesuffix--3ead4175abdf9446cc43bb96.md) | 73 | `declaration-track:3ead4175abdf9446cc43bb96d85bfe7011ef58011803ac26c9ea49b147858a43` |
| 5 | `def` | [matchName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1245adfea3cf4463f18b54d1c2a61c3e64ff16446b2664ebe3140b66f99ae7c3.lean/declarations/matchname--f104251f148bf7b92a41535f.md) | 82 | `declaration-track:f104251f148bf7b92a41535fe934f5a78809539d3c7a2225ec5f1c9fc7f203cc` |
| 6 | `def` | [lexNameLt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1245adfea3cf4463f18b54d1c2a61c3e64ff16446b2664ebe3140b66f99ae7c3.lean/declarations/lexnamelt--16b4aadd119fba9998517f20.md) | 98 | `declaration-track:16b4aadd119fba9998517f20c8bd96e3c313a478eb6d028fe053bd69f0437da1` |
| 7 | `def` | [appendMatchingConstants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1245adfea3cf4463f18b54d1c2a61c3e64ff16446b2664ebe3140b66f99ae7c3.lean/declarations/appendmatchingconstants--2545a149dddddc99135387d5.md) | 106 | `declaration-track:2545a149dddddc99135387d5d9a05a8c0c5cb65ec3e138c056bef5f152901ce2` |
| 8 | `def` | [elabPrintPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant1245adfea3cf4463f18b54d1c2a61c3e64ff16446b2664ebe3140b66f99ae7c3.lean/declarations/elabprintprefix--e15b022b14835e780c4f64e8.md) | 123 | `declaration-track:e15b022b14835e780c4f64e876c1928fd97576f726d9ccf0cd6c1efcab01a03b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
