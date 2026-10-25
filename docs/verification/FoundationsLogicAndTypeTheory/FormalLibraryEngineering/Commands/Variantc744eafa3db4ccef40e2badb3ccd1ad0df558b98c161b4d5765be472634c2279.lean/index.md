# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Commands.Variantc744eafa3db4ccef40e2badb3ccd1ad0df558b98c161b4d5765be472634c2279

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9aadc742e79f5bcd809f36ce3f944a0bf7412fc4",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantc744eafa3db4ccef40e2badb3ccd1ad0df558b98c161b4d5765be472634c2279.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantc744eafa3db4ccef40e2badb3ccd1ad0df558b98c161b4d5765be472634c2279.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantc744eafa3db4ccef40e2badb3ccd1ad0df558b98c161b4d5765be472634c2279.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9aadc742e79f5bcd809f36ce3f944a0bf7412fc4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantc744eafa3db4ccef40e2badb3ccd1ad0df558b98c161b4d5765be472634c2279.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantc744eafa3db4ccef40e2badb3ccd1ad0df558b98c161b4d5765be472634c2279.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Discovery.Find` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Meta.ToExpr` — import line 8; external provider; requires a separately pinned dependency.
- `LeanCert.Meta.ProveSupported` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantc744eafa3db4ccef40e2badb3ccd1ad0df558b98c161b4d5765be472634c2279.lean/declarations/lexpr--fdfa3ed53926406eae0a5b05.md) | 55 | `declaration-track:fdfa3ed53926406eae0a5b051153ccf39e6ce623123e8ea465e237c725faf9dc` |
| 2 | `def` | [parseRatUnsafe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantc744eafa3db4ccef40e2badb3ccd1ad0df558b98c161b4d5765be472634c2279.lean/declarations/parseratunsafe--05037e22664619973b2f7008.md) | 60 | `declaration-track:05037e22664619973b2f7008ab094ea3052b1957f2f0aab2b497dccc3c16309e` |
| 3 | `def` | [parseRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantc744eafa3db4ccef40e2badb3ccd1ad0df558b98c161b4d5765be472634c2279.lean/declarations/parserat--d46cce1930ed7f7c7bcdc9ee.md) | 85 | `declaration-track:d46cce1930ed7f7c7bcdc9ee295b16f7abbbbdca247876cc077c6834501f7053` |
| 4 | `def` | [parseIntFromExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantc744eafa3db4ccef40e2badb3ccd1ad0df558b98c161b4d5765be472634c2279.lean/declarations/parseintfromexpr--7058a8d86938300454f160eb.md) | 110 | `declaration-track:7058a8d86938300454f160eb6f431a35cf10cf475da690421dd41b8d0a7bf93f` |
| 5 | `def` | [parseIntFromSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantc744eafa3db4ccef40e2badb3ccd1ad0df558b98c161b4d5765be472634c2279.lean/declarations/parseintfromsyntax--d77cdbfd28ae24e7c9f3653a.md) | 152 | `declaration-track:d77cdbfd28ae24e7c9f3653a0742e2efda0ff46c1a9b0f9ae877eb631e8b0cd7` |
| 6 | `def` | [parseInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantc744eafa3db4ccef40e2badb3ccd1ad0df558b98c161b4d5765be472634c2279.lean/declarations/parseinterval--b6c40fd3e2c598c3736fe007.md) | 163 | `declaration-track:b6c40fd3e2c598c3736fe0078c2d350687509490f2789697ae4d0579b9136592` |
| 7 | `def` | [parseBox](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantc744eafa3db4ccef40e2badb3ccd1ad0df558b98c161b4d5765be472634c2279.lean/declarations/parsebox--4e4c62907cbcb0990e3ba108.md) | 178 | `declaration-track:4e4c62907cbcb0990e3ba108bf99481adaffabcbcf0a5de884ed6d125adc4031` |
| 8 | `def` | [formatRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantc744eafa3db4ccef40e2badb3ccd1ad0df558b98c161b4d5765be472634c2279.lean/declarations/formatrat--53c31e914d0e610c1a8d3e78.md) | 194 | `declaration-track:53c31e914d0e610c1a8d3e78fb29210e47630640dc6806d0d00bfeca32a257cd` |
| 9 | `def` | [formatInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantc744eafa3db4ccef40e2badb3ccd1ad0df558b98c161b4d5765be472634c2279.lean/declarations/formatinterval--610bcae9352b813d9cf4f988.md) | 213 | `declaration-track:610bcae9352b813d9cf4f9886399d02dcf9816b7a7ee8c8c81621d81a0ed531f` |
| 10 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantc744eafa3db4ccef40e2badb3ccd1ad0df558b98c161b4d5765be472634c2279.lean/declarations/syntax--8f98a1f5b43f715a2a698e95.md) | 219 | `declaration-track:8f98a1f5b43f715a2a698e95c493cd7f2fa2610831584d75bbef38c65dba7551` |
| 11 | `def` | [elabFindMin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantc744eafa3db4ccef40e2badb3ccd1ad0df558b98c161b4d5765be472634c2279.lean/declarations/elabfindmin--4a12361ebbfe4a0aa8f70eee.md) | 223 | `declaration-track:4a12361ebbfe4a0aa8f70eee596c3dba2f66062710a5a5f4e4063352001d8ba6` |
| 12 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantc744eafa3db4ccef40e2badb3ccd1ad0df558b98c161b4d5765be472634c2279.lean/declarations/syntax--a7dd0be0562044e7ff97d575.md) | 265 | `declaration-track:a7dd0be0562044e7ff97d5755184f43a34b0c7ae3e9ef2c4202fbcc7f83bc546` |
| 13 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantc744eafa3db4ccef40e2badb3ccd1ad0df558b98c161b4d5765be472634c2279.lean/declarations/macro-rules--435bb2d48aae9a47ec07c07a.md) | 266 | `declaration-track:435bb2d48aae9a47ec07c07aee4ac8d7cb8ae7a379c4786c77b471737133f7e4` |
| 14 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantc744eafa3db4ccef40e2badb3ccd1ad0df558b98c161b4d5765be472634c2279.lean/declarations/syntax--d96f59f2883cd8cddb80fb0d.md) | 273 | `declaration-track:d96f59f2883cd8cddb80fb0d06c7ab41fa5834c937569e4263f4c1396d1a0ce3` |
| 15 | `def` | [elabFindMax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantc744eafa3db4ccef40e2badb3ccd1ad0df558b98c161b4d5765be472634c2279.lean/declarations/elabfindmax--b0a1832f57c9478618311141.md) | 277 | `declaration-track:b0a1832f57c9478618311141b7d06d52199883f09e439fb2f574553284827abf` |
| 16 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantc744eafa3db4ccef40e2badb3ccd1ad0df558b98c161b4d5765be472634c2279.lean/declarations/syntax--8e2bacbb34eceaf3137a5ab4.md) | 310 | `declaration-track:8e2bacbb34eceaf3137a5ab431e29d1cca7577139c1343d0f217d794b59306af` |
| 17 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantc744eafa3db4ccef40e2badb3ccd1ad0df558b98c161b4d5765be472634c2279.lean/declarations/macro-rules--a642b9a6ab1ef8433e8b6ed0.md) | 311 | `declaration-track:a642b9a6ab1ef8433e8b6ed0a38096669d05f454adaf20978e27e88cc1e2661d` |
| 18 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantc744eafa3db4ccef40e2badb3ccd1ad0df558b98c161b4d5765be472634c2279.lean/declarations/syntax--b87b5d2e6ec2722dcae86149.md) | 318 | `declaration-track:b87b5d2e6ec2722dcae86149632036faa6e9b2b6c514cb577804a3a05faa64a0` |
| 19 | `def` | [elabBounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantc744eafa3db4ccef40e2badb3ccd1ad0df558b98c161b4d5765be472634c2279.lean/declarations/elabbounds--3020dfde8a44eb1d771ed7b7.md) | 322 | `declaration-track:3020dfde8a44eb1d771ed7b71a4717a30919f72af04ead1090621ec24bbcf9a7` |
| 20 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantc744eafa3db4ccef40e2badb3ccd1ad0df558b98c161b4d5765be472634c2279.lean/declarations/syntax--8b8da90a6006e23c25cd9254.md) | 361 | `declaration-track:8b8da90a6006e23c25cd9254b47901cbc18810b7138a938ec6e26dd4f42d063c` |
| 21 | `def` | [elabEvalInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantc744eafa3db4ccef40e2badb3ccd1ad0df558b98c161b4d5765be472634c2279.lean/declarations/elabevalinterval--4509297ad2bddb2e922d09db.md) | 365 | `declaration-track:4509297ad2bddb2e922d09dbb6c9eaa04916f2a7c72dd828b58d2726e276841b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
