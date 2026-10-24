# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LintStyle.Variant9026d0730e48d31316535f213d399accf63c772859e52aea9d8568d6250e6218

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbebb11ba1907c4f84ceadb3f716161efd21c712",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9026d0730e48d31316535f213d399accf63c772859e52aea9d8568d6250e6218.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9026d0730e48d31316535f213d399accf63c772859e52aea9d8568d6250e6218.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9026d0730e48d31316535f213d399accf63c772859e52aea9d8568d6250e6218.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbebb11ba1907c4f84ceadb3f716161efd21c712`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9026d0730e48d31316535f213d399accf63c772859e52aea9d8568d6250e6218.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9026d0730e48d31316535f213d399accf63c772859e52aea9d8568d6250e6218.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lake.CLI.Main` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Elab.ParseImportsFast` — import line 13; external provider; requires a separately pinned dependency.
- `Batteries.Data.String.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linter.TextBased` — import line 15; external provider; requires a separately pinned dependency.
- `Cli.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [findImports](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9026d0730e48d31316535f213d399accf63c772859e52aea9d8568d6250e6218.lean/declarations/findimports--a467631f6e63ee8bed35a0ca.md) | 37 | `declaration-track:a467631f6e63ee8bed35a0cacd820e2d5d61b8a84ff699ab8223d6eab090612c` |
| 2 | `def` | [explicitImports](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9026d0730e48d31316535f213d399accf63c772859e52aea9d8568d6250e6218.lean/declarations/explicitimports--c7e0ed66b17b917e2dd2c384.md) | 42 | `declaration-track:c7e0ed66b17b917e2dd2c384d73a0183ff491242c07fd3e68e76972e1bd0a7e5` |
| 3 | `def` | [eraseExplicitImports](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9026d0730e48d31316535f213d399accf63c772859e52aea9d8568d6250e6218.lean/declarations/eraseexplicitimports--3fde68d39cb3d4056c5704be.md) | 45 | `declaration-track:3fde68d39cb3d4056c5704be6b2e61b5b7a1ea02619402df9b726e3607a2d0e5` |
| 4 | `def` | [getWorkspaceRoot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9026d0730e48d31316535f213d399accf63c772859e52aea9d8568d6250e6218.lean/declarations/getworkspaceroot--513c9e52756a0805a145df9f.md) | 49 | `declaration-track:513c9e52756a0805a145df9f4fda7aef0c8fdcbfef15a1d208ad8a5002efa2fa` |
| 5 | `def` | [toLeanOptions](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9026d0730e48d31316535f213d399accf63c772859e52aea9d8568d6250e6218.lean/declarations/toleanoptions--60b0f8a7659db3c0aa185264.md) | 57 | `declaration-track:60b0f8a7659db3c0aa185264c2960e630896112ce2604752de5270d489c70096` |
| 6 | `def` | [getLakefileLeanOptions](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9026d0730e48d31316535f213d399accf63c772859e52aea9d8568d6250e6218.lean/declarations/getlakefileleanoptions--ecdb45e46f921108af03558d.md) | 73 | `declaration-track:ecdb45e46f921108af03558d5e6cb910cb066109f9544317da79402091d8dd29` |
| 7 | `register_option` | [linter.checkInitImports](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9026d0730e48d31316535f213d399accf63c772859e52aea9d8568d6250e6218.lean/declarations/linter-checkinitimports--35d9c98e405337dc63e549dd.md) | 89 | `declaration-track:35d9c98e405337dc63e549ddc442994394eda969bd2cbc6d450ac81ef90430bf` |
| 8 | `def` | [missingInitImports](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9026d0730e48d31316535f213d399accf63c772859e52aea9d8568d6250e6218.lean/declarations/missinginitimports--d14623eb36ea900dd2015350.md) | 96 | `declaration-track:d14623eb36ea900dd2015350c085a57431275ecb9d52d10957e05cd33d0b9a87` |
| 9 | `register_option` | [linter.allScriptsDocumented](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9026d0730e48d31316535f213d399accf63c772859e52aea9d8568d6250e6218.lean/declarations/linter-allscriptsdocumented--880fb4dd147800ac382bb75c.md) | 140 | `declaration-track:880fb4dd147800ac382bb75cd0e000fe70de6f5e91cf5ac932474e59947e414a` |
| 10 | `def` | [undocumentedScripts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9026d0730e48d31316535f213d399accf63c772859e52aea9d8568d6250e6218.lean/declarations/undocumentedscripts--c20855267c18cc37a83cd201.md) | 144 | `declaration-track:c20855267c18cc37a83cd201fb41880542d07cc7cf719203ed8ea7ba0ab8182f` |
| 11 | `def` | [lintStyleCli](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9026d0730e48d31316535f213d399accf63c772859e52aea9d8568d6250e6218.lean/declarations/lintstylecli--cdfbac8db7d8c01a9affcdcf.md) | 165 | `declaration-track:cdfbac8db7d8c01a9affcdcf2cd6d1c756a8094c456cf7dde7a03b5c7b7cbe36` |
| 12 | `def` | [lintStyle](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9026d0730e48d31316535f213d399accf63c772859e52aea9d8568d6250e6218.lean/declarations/lintstyle--9005fa730a85a9c8f30959b0.md) | 228 | `declaration-track:9005fa730a85a9c8f30959b0952dea9af77c73ca9c732be495ffccf11abdcbf3` |
| 13 | `def` | [main](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9026d0730e48d31316535f213d399accf63c772859e52aea9d8568d6250e6218.lean/declarations/main--a2649d6e90ad9c8a332eca2d.md) | 244 | `declaration-track:a2649d6e90ad9c8a332eca2dffc49532de38e7c9f9e4d2c40756828c49370429` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
