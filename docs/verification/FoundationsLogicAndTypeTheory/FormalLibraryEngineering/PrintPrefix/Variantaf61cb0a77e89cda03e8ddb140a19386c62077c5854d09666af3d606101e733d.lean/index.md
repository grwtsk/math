# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrintPrefix.Variantaf61cb0a77e89cda03e8ddb140a19386c62077c5854d09666af3d606101e733d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ec354051ec760edce55b1e8158e9d49e0d3d949",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variantaf61cb0a77e89cda03e8ddb140a19386c62077c5854d09666af3d606101e733d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variantaf61cb0a77e89cda03e8ddb140a19386c62077c5854d09666af3d606101e733d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variantaf61cb0a77e89cda03e8ddb140a19386c62077c5854d09666af3d606101e733d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ec354051ec760edce55b1e8158e9d49e0d3d949`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variantaf61cb0a77e89cda03e8ddb140a19386c62077c5854d09666af3d606101e733d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variantaf61cb0a77e89cda03e8ddb140a19386c62077c5854d09666af3d606101e733d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Command` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FindOptions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variantaf61cb0a77e89cda03e8ddb140a19386c62077c5854d09666af3d606101e733d.lean/declarations/findoptions--9ad17c0cbe3ffe063f3df3b9.md) | 21 | `declaration-track:9ad17c0cbe3ffe063f3df3b95fa00bd05bcf0b3c012d0d9112669d994b37ab54` |
| 2 | `def` | [findCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variantaf61cb0a77e89cda03e8ddb140a19386c62077c5854d09666af3d606101e733d.lean/declarations/findcore--97f492ebc0ac0e7dccff1f92.md) | 25 | `declaration-track:97f492ebc0ac0e7dccff1f9264e0df71f7e5064402f2df49ed7e61a9e80e69f7` |
| 3 | `def` | [find](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variantaf61cb0a77e89cda03e8ddb140a19386c62077c5854d09666af3d606101e733d.lean/declarations/find--9afb8122ae8a8cda0e813930.md) | 36 | `declaration-track:9afb8122ae8a8cda0e813930dac9e7edb7ccd94a04504daf880a9cc994935fe3` |
| 4 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variantaf61cb0a77e89cda03e8ddb140a19386c62077c5854d09666af3d606101e733d.lean/declarations/syntax--0cb3685ee9f06f81aa86b180.md) | 49 | `declaration-track:0cb3685ee9f06f81aa86b180c2cf1491249ff8355350ae4e55c6d54d958187df` |
| 5 | `def` | [elabPrintPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variantaf61cb0a77e89cda03e8ddb140a19386c62077c5854d09666af3d606101e733d.lean/declarations/elabprintprefix--2c36807f4f03e3798d6aa36d.md) | 55 | `declaration-track:2c36807f4f03e3798d6aa36daecdfab3af3230ce1d3e25dde96dc5acb2dfe3f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
