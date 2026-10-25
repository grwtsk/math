# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtractScript.Variant1e29483c438c60bc22cd794bcdb9d4a1363a19c3c35a253ddbedea1e45a6ae54

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61166638f15d143ff43ba647b5809fb29df31148",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant1e29483c438c60bc22cd794bcdb9d4a1363a19c3c35a253ddbedea1e45a6ae54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant1e29483c438c60bc22cd794bcdb9d4a1363a19c3c35a253ddbedea1e45a6ae54.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant1e29483c438c60bc22cd794bcdb9d4a1363a19c3c35a253ddbedea1e45a6ae54.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61166638f15d143ff43ba647b5809fb29df31148`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant1e29483c438c60bc22cd794bcdb9d4a1363a19c3c35a253ddbedea1e45a6ae54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant1e29483c438c60bc22cd794bcdb9d4a1363a19c3c35a253ddbedea1e45a6ae54.lean.json)

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
| 1 | `structure` | [ExtractScriptM.State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant1e29483c438c60bc22cd794bcdb9d4a1363a19c3c35a253ddbedea1e45a6ae54.lean/declarations/extractscriptm-state--4d2e480c2fadcd6519c91cbe.md) | 29 | `declaration-track:4d2e480c2fadcd6519c91cbe89ac77ed69531fe6e78eb0aaca167e67cddc6532` |
| 2 | `abbrev` | [ExtractScriptM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant1e29483c438c60bc22cd794bcdb9d4a1363a19c3c35a253ddbedea1e45a6ae54.lean/declarations/extractscriptm--25575c663bf2c0938326505e.md) | 33 | `declaration-track:25575c663bf2c0938326505e51ed8928e02af4ce8afd64a7281c82125aaa81a9` |
| 3 | `def` | [ExtractScriptM.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant1e29483c438c60bc22cd794bcdb9d4a1363a19c3c35a253ddbedea1e45a6ae54.lean/declarations/extractscriptm-run--2d7a03d5e8a4fd5c3eafa317.md) | 35 | `declaration-track:2d7a03d5e8a4fd5c3eafa317276d1d3e4642b60a6fb22d47c929285d6ec4b9d5` |
| 4 | `def` | [lazyStepToStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant1e29483c438c60bc22cd794bcdb9d4a1363a19c3c35a253ddbedea1e45a6ae54.lean/declarations/lazysteptostep--2c81350847a91599adcd709c.md) | 41 | `declaration-track:2c81350847a91599adcd709cea2ad94dcdabb9df0e2283e0aa4f410829ad3bbb` |
| 5 | `def` | [lazyStepsToSteps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant1e29483c438c60bc22cd794bcdb9d4a1363a19c3c35a253ddbedea1e45a6ae54.lean/declarations/lazystepstosteps--7069e289f5e0407b23fa13ec.md) | 48 | `declaration-track:7069e289f5e0407b23fa13ec0d6ee42a2bacba4dc5ff5f1d18f38659aad095a8` |
| 6 | `def` | [recordStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant1e29483c438c60bc22cd794bcdb9d4a1363a19c3c35a253ddbedea1e45a6ae54.lean/declarations/recordstep--c1c0ba1a1dcfd859ca5969b6.md) | 53 | `declaration-track:c1c0ba1a1dcfd859ca5969b67d76822dc840ddd51061e421aa50b61cd569ae60` |
| 7 | `def` | [recordLazySteps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant1e29483c438c60bc22cd794bcdb9d4a1363a19c3c35a253ddbedea1e45a6ae54.lean/declarations/recordlazysteps--47ae4427855fae2bea1ff0de.md) | 56 | `declaration-track:47ae4427855fae2bea1ff0deb60c0eb1c559ae5a2960d13876265ef2c5cf60c2` |
| 8 | `def` | [visitGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant1e29483c438c60bc22cd794bcdb9d4a1363a19c3c35a253ddbedea1e45a6ae54.lean/declarations/visitgoal--300fdc39cde638010abe9a39.md) | 61 | `declaration-track:300fdc39cde638010abe9a395edecbe2c16b26caa37c36b3ebc3b881b63328c4` |
| 9 | `def` | [visitRapp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant1e29483c438c60bc22cd794bcdb9d4a1363a19c3c35a253ddbedea1e45a6ae54.lean/declarations/visitrapp--3d3d8beba796ef50e43f520c.md) | 72 | `declaration-track:3d3d8beba796ef50e43f520c25f27b556225efb050275fe00ca23ddac517fac2` |
| 10 | `def` | [MVarClusterRef.extractScriptCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant1e29483c438c60bc22cd794bcdb9d4a1363a19c3c35a253ddbedea1e45a6ae54.lean/declarations/mvarclusterref-extractscriptcore--f8440ac0a55cfc1a836ab646.md) | 81 | `declaration-track:f8440ac0a55cfc1a836ab646ceb7154cc8ff206456dddd16f4035c6325b5d8b5` |
| 11 | `def` | [GoalRef.extractScriptCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant1e29483c438c60bc22cd794bcdb9d4a1363a19c3c35a253ddbedea1e45a6ae54.lean/declarations/goalref-extractscriptcore--ec45037dbeaa98dbd0c1a2a5.md) | 88 | `declaration-track:ec45037dbeaa98dbd0c1a2a598ad3fe9ef32e457688137fee590ffd2044f4ac7` |
| 12 | `def` | [RappRef.extractScriptCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant1e29483c438c60bc22cd794bcdb9d4a1363a19c3c35a253ddbedea1e45a6ae54.lean/declarations/rappref-extractscriptcore--a28f01792b0cb5141f679ef3.md) | 96 | `declaration-track:a28f01792b0cb5141f679ef3f162a640e335c44646b14aaf6497e03fb39b0286` |
| 13 | `def` | [extractScript](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant1e29483c438c60bc22cd794bcdb9d4a1363a19c3c35a253ddbedea1e45a6ae54.lean/declarations/extractscript--8eb74c727b06aba9c61044ad.md) | 104 | `declaration-track:8eb74c727b06aba9c61044ad231eae7646190227737c43482a7f97ad6bac815c` |
| 14 | `def` | [MVarClusterRef.extractSafePrefixScriptCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant1e29483c438c60bc22cd794bcdb9d4a1363a19c3c35a253ddbedea1e45a6ae54.lean/declarations/mvarclusterref-extractsafeprefixscriptcore--ec33aa922d4cd12088d9384a.md) | 109 | `declaration-track:ec33aa922d4cd12088d9384a607ebd76bf73bed5959e3327b58f502304eb7ed4` |
| 15 | `def` | [GoalRef.extractSafePrefixScriptCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant1e29483c438c60bc22cd794bcdb9d4a1363a19c3c35a253ddbedea1e45a6ae54.lean/declarations/goalref-extractsafeprefixscriptcore--fa6fb518c1590113b033b528.md) | 113 | `declaration-track:fa6fb518c1590113b033b52815d0920ec18289dbccf3b8eebcf528b13608ff8f` |
| 16 | `def` | [RappRef.extractSafePrefixScriptCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant1e29483c438c60bc22cd794bcdb9d4a1363a19c3c35a253ddbedea1e45a6ae54.lean/declarations/rappref-extractsafeprefixscriptcore--82d9dc7375c7cc740e98aea7.md) | 128 | `declaration-track:82d9dc7375c7cc740e98aea7e0266fb35c1d8c0998dd200abe1300306cabe6bd` |
| 17 | `def` | [extractSafePrefixScript](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant1e29483c438c60bc22cd794bcdb9d4a1363a19c3c35a253ddbedea1e45a6ae54.lean/declarations/extractsafeprefixscript--c3d51443a454088b545ab114.md) | 140 | `declaration-track:c3d51443a454088b545ab1144e5ef0aa825476e163dc20071c9b3ba7bbd8e405` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
