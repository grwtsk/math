# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GeneralizeProofs.Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d34f5eb32aee3e3b197dc9c213c98dc012213b7c",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d34f5eb32aee3e3b197dc9c213c98dc012213b7c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Config` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Location` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Expr.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Batteries.Lean.Expr` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean/declarations/initialize--c8a58e994db6c5df5d56210f.md) | 46 | `declaration-track:c8a58e994db6c5df5d56210fac57e87c30a3cdafd2c184679524fc00d7639792` |
| 2 | `structure` | [Config](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean/declarations/config--d77f90e00e540b09502bd34e.md) | 53 | `declaration-track:d77f90e00e540b09502bd34eef494f158ba1ea09d8330d435662f8656c6732b9` |
| 3 | `structure` | [GState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean/declarations/gstate--992a47175db500016d49bd54.md) | 68 | `declaration-track:992a47175db500016d49bd542d306988813303af2ae92ba53b798464d49d0d6d` |
| 4 | `abbrev` | [MGen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean/declarations/mgen--5e969c40c8202073868b20a3.md) | 74 | `declaration-track:5e969c40c8202073868b20a3beba806bedb1766d39c894658ddc6a397db2587b` |
| 5 | `def` | [MGen.insertFVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean/declarations/mgen-insertfvar--15f5fb57ad4c1397b7e97b6d.md) | 77 | `declaration-track:15f5fb57ad4c1397b7e97b6d24f02ebb9eed7af94f982660c583c7952095f122` |
| 6 | `structure` | [AContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean/declarations/acontext--0810fbc4e89bae42148cd3ff.md) | 81 | `declaration-track:0810fbc4e89bae42148cd3ff6df9e137c306815e5d200b821f04f10693bde910` |
| 7 | `structure` | [AState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean/declarations/astate--efc97d20893a14e6cec0e448.md) | 95 | `declaration-track:efc97d20893a14e6cec0e448b605afeaabe91a4b47f612c12c8768bf44e653e0` |
| 8 | `abbrev` | [MAbs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean/declarations/mabs--a4e47ffa9b432f4276b9fd95.md) | 108 | `declaration-track:a4e47ffa9b432f4276b9fd9503dd782fec3a28a20060242d860b6d1e924b3b32` |
| 9 | `def` | [MGen.runMAbs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean/declarations/mgen-runmabs--d05b4c6ebf37f884c1e3a770.md) | 111 | `declaration-track:d05b4c6ebf37f884c1e3a770560ef82f5925a51970ce0715e9dd393b23c4c356` |
| 10 | `def` | [MAbs.findProof?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean/declarations/mabs-findproof--e29953b217e76d93aede589d.md) | 121 | `declaration-track:e29953b217e76d93aede589d63cae80d186b91cc2e1f03073d9034b32583d2a4` |
| 11 | `def` | [MAbs.insertProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean/declarations/mabs-insertproof--8ce864e1e2bead5160850359.md) | 130 | `declaration-track:8ce864e1e2bead5160850359330b6b9303390fb08dad59417fcbcf8681bf12b7` |
| 12 | `def` | [MAbs.withLocal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean/declarations/mabs-withlocal--9bc25b0e6149e79f3b253743.md) | 146 | `declaration-track:9bc25b0e6149e79f3b2537436257f6adbbfd4785daf2d5564962e418347c5354` |
| 13 | `def` | [MAbs.withRecurse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean/declarations/mabs-withrecurse--0ff8a38e55eee76019b540da.md) | 150 | `declaration-track:0ff8a38e55eee76019b540daf137398692f50f87fdf8d2bf40297aeec11c52d9` |
| 14 | `def` | [appArgExpectedTypes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean/declarations/appargexpectedtypes--340cbc0a4afd885eb05bd483.md) | 159 | `declaration-track:340cbc0a4afd885eb05bd48326383cfbd7895d53b3f0c6d840acbe80c6b5ae2b` |
| 15 | `def` | [mkLambdaFVarsUsedOnly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean/declarations/mklambdafvarsusedonly--9e7663da0802f36a5bc2d7a7.md) | 201 | `declaration-track:9e7663da0802f36a5bc2d7a74c51b860e2ebd1f4c6370b30f58906aa57cdb312` |
| 16 | `def` | [abstractProofs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean/declarations/abstractproofs--81de1aafa6703b24e0a3e991.md) | 232 | `declaration-track:81de1aafa6703b24e0a3e9910828021166f0ee4645724975c506e37c84b78246` |
| 17 | `def` | [initialPropToFVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean/declarations/initialproptofvar--0250bf095a14b3b66f85a360.md) | 335 | `declaration-track:0250bf095a14b3b66f85a360b8cefc6058be7304234ad1b854a131cb02d2374f` |
| 18 | `def` | [withGeneralizedProofs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean/declarations/withgeneralizedproofs--957a1babc21ec10e283b77a1.md) | 354 | `declaration-track:957a1babc21ec10e283b77a1ae6d1dcf8f4d64701ddca649ddf44e843ba38cce` |
| 19 | `def` | [generalizeProofsCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean/declarations/generalizeproofscore--92d5ccc8f0d34a0d0cb8f3bb.md) | 387 | `declaration-track:92d5ccc8f0d34a0d0cb8f3bb13a0944e7abe354ffa565f8753c5d96a1895ea6d` |
| 20 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variant882316608fedc5be854786e5558399094f8774821380bd161dedbaf7ced43511.Lean.MVarId.generalizeProofs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-confi--5ad0d3f910d8c9d72c07c844.md) | 473 | `declaration-track:5ad0d3f910d8c9d72c07c8442bb491efdbb0927229b0bbc2f41e46cc18f4eaba` |
| 21 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean/declarations/elab--02d62e6e0fc4e1893ab7963c.md) | 514 | `declaration-track:02d62e6e0fc4e1893ab7963cab536421d09fb0db985e537783238992455c82d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
