# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HtmlDisplay.Variant5e9d5b4b6eadb6fc9620626a684c9520679e061d1c2fcf1914e810d90ec6e128

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "534dbb8e4c8909baecbffede0c766800bcfed989",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HtmlDisplay/Variant5e9d5b4b6eadb6fc9620626a684c9520679e061d1c2fcf1914e810d90ec6e128.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HtmlDisplay/Variant5e9d5b4b6eadb6fc9620626a684c9520679e061d1c2fcf1914e810d90ec6e128.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HtmlDisplay/Variant5e9d5b4b6eadb6fc9620626a684c9520679e061d1c2fcf1914e810d90ec6e128.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `534dbb8e4c8909baecbffede0c766800bcfed989`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HtmlDisplay/Variant5e9d5b4b6eadb6fc9620626a684c9520679e061d1c2fcf1914e810d90ec6e128.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HtmlDisplay/Variant5e9d5b4b6eadb6fc9620626a684c9520679e061d1c2fcf1914e810d90ec6e128.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Server.Rpc.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `ProofWidgets.Data.Html` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HtmlDisplayProps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HtmlDisplay/Variant5e9d5b4b6eadb6fc9620626a684c9520679e061d1c2fcf1914e810d90ec6e128.lean/declarations/htmldisplayprops--c020b8b5e2ac59ece4320b8e.md) | 8 | `declaration-track:c020b8b5e2ac59ece4320b8e5e45e809e88bf30ff100ef2e531c87813e7f5999` |
| 2 | `def` | [HtmlDisplay](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HtmlDisplay/Variant5e9d5b4b6eadb6fc9620626a684c9520679e061d1c2fcf1914e810d90ec6e128.lean/declarations/htmldisplay--b4e6a464e879d2805fef0110.md) | 14 | `declaration-track:b4e6a464e879d2805fef01101fed51da5122157320cc1920a62aa3a819d5eacf` |
| 3 | `def` | [HtmlDisplayPanel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HtmlDisplay/Variant5e9d5b4b6eadb6fc9620626a684c9520679e061d1c2fcf1914e810d90ec6e128.lean/declarations/htmldisplaypanel--667adb624d69afeaa00e3daa.md) | 18 | `declaration-track:667adb624d69afeaa00e3daa57e15284b7d992a1d66e027225a065f50b44ca63` |
| 4 | `def` | [evalHtmlUnsafe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HtmlDisplay/Variant5e9d5b4b6eadb6fc9620626a684c9520679e061d1c2fcf1914e810d90ec6e128.lean/declarations/evalhtmlunsafe--4b86999bfdf544474465ee52.md) | 22 | `declaration-track:4b86999bfdf544474465ee528505e89eb37e9f9b7e1433711917ee0cdb7b2388` |
| 5 | `opaque` | [evalHtml](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HtmlDisplay/Variant5e9d5b4b6eadb6fc9620626a684c9520679e061d1c2fcf1914e810d90ec6e128.lean/declarations/evalhtml--4d4dc83c1ea2ca278f2db2f6.md) | 28 | `declaration-track:4d4dc83c1ea2ca278f2db2f6173c4ccc7323ce2a97518e8826223ccbb628444a` |
| 6 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HtmlDisplay/Variant5e9d5b4b6eadb6fc9620626a684c9520679e061d1c2fcf1914e810d90ec6e128.lean/declarations/syntax--00a2f99a950a1d4a6685cce2.md) | 30 | `declaration-track:00a2f99a950a1d4a6685cce2ea5113d6f5d01ac2a46214032fb1224bc72e6a0f` |
| 7 | `def` | [elabHtmlCmd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HtmlDisplay/Variant5e9d5b4b6eadb6fc9620626a684c9520679e061d1c2fcf1914e810d90ec6e128.lean/declarations/elabhtmlcmd--358a2561d352b1e6b241a3e0.md) | 34 | `declaration-track:358a2561d352b1e6b241a3e0ed69b88438152e3e3476e3d6b96e532bdda7bccf` |
| 8 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HtmlDisplay/Variant5e9d5b4b6eadb6fc9620626a684c9520679e061d1c2fcf1914e810d90ec6e128.lean/declarations/syntax--7917667c9f9c330a26b577d9.md) | 42 | `declaration-track:7917667c9f9c330a26b577d94acacd48aa86befdcaadf98d275e68fea65d873a` |
| 9 | `def` | [elabHtmlTac](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HtmlDisplay/Variant5e9d5b4b6eadb6fc9620626a684c9520679e061d1c2fcf1914e810d90ec6e128.lean/declarations/elabhtmltac--ed054543a6b78dac91e0ac6e.md) | 46 | `declaration-track:ed054543a6b78dac91e0ac6e220624d9a5aedfbef1d0384cef9c493c0ba5d73a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
