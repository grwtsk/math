# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Frontend.Variant383034f6a166f4de8487681221d49eb99461fe3ce3fe10a22872f73ff4f04d14

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c21d8124f3ae00250dd3fde4f555acf6ab07f80",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant383034f6a166f4de8487681221d49eb99461fe3ce3fe10a22872f73ff4f04d14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant383034f6a166f4de8487681221d49eb99461fe3ce3fe10a22872f73ff4f04d14.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant383034f6a166f4de8487681221d49eb99461fe3ce3fe10a22872f73ff4f04d14.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c21d8124f3ae00250dd3fde4f555acf6ab07f80`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant383034f6a166f4de8487681221d49eb99461fe3ce3fe10a22872f73ff4f04d14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant383034f6a166f4de8487681221d49eb99461fe3ce3fe10a22872f73ff4f04d14.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Util.Paths` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.Command` — import line 12; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Lint.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.OpenPrivate` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [LintVerbosity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant383034f6a166f4de8487681221d49eb99461fe3ce3fe10a22872f73ff4f04d14.lean/declarations/lintverbosity--b0a2d4a29b67c646e3a05a57.md) | 67 | `declaration-track:b0a2d4a29b67c646e3a05a57533509f708e324330c358747796274274bbcd0db` |
| 2 | `def` | [getChecks](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant383034f6a166f4de8487681221d49eb99461fe3ce3fe10a22872f73ff4f04d14.lean/declarations/getchecks--eaba6658f677f6880b6719dc.md) | 84 | `declaration-track:eaba6658f677f6880b6719dc5861b842997cab1cc1a5be7281184fb219736df5` |
| 3 | `def` | [lintCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant383034f6a166f4de8487681221d49eb99461fe3ce3fe10a22872f73ff4f04d14.lean/declarations/lintcore--7e56ccb3c325e834f7b2e4a5.md) | 104 | `declaration-track:7e56ccb3c325e834f7b2e4a543d6444884a3cc40f2677264925d25f4c45cc8ce` |
| 4 | `def` | [sortResults](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant383034f6a166f4de8487681221d49eb99461fe3ce3fe10a22872f73ff4f04d14.lean/declarations/sortresults--b61f1e11cdedd964b6919993.md) | 129 | `declaration-track:b61f1e11cdedd964b691999347717c44d3d106c1abe81b4679d279bfb07a08a5` |
| 5 | `def` | [printWarning](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant383034f6a166f4de8487681221d49eb99461fe3ce3fe10a22872f73ff4f04d14.lean/declarations/printwarning--da60afa10bb5814414875947.md) | 137 | `declaration-track:da60afa10bb58144148759475756d54d3134306fbd4b23d4f0139ae27dbaaecf` |
| 6 | `def` | [printWarnings](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant383034f6a166f4de8487681221d49eb99461fe3ce3fe10a22872f73ff4f04d14.lean/declarations/printwarnings--5b494ee314f5033dfad7f3a5.md) | 148 | `declaration-track:5b494ee314f5033dfad7f3a5ebe224652db4ca3f8e5d15c22f10bf71fe531c16` |
| 7 | `def` | [groupedByFilename](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant383034f6a166f4de8487681221d49eb99461fe3ce3fe10a22872f73ff4f04d14.lean/declarations/groupedbyfilename--1936f3203951573a0e2a9f8d.md) | 158 | `declaration-track:1936f3203951573a0e2a9f8deb558eda6f8a032b90abbfccb29a89ef2515031d` |
| 8 | `def` | [formatLinterResults](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant383034f6a166f4de8487681221d49eb99461fe3ce3fe10a22872f73ff4f04d14.lean/declarations/formatlinterresults--e1aec58a66a1e27425e6a864.md) | 181 | `declaration-track:e1aec58a66a1e27425e6a864e8e7c06c1b3257bd311a199a1748a8a0526e89e1` |
| 9 | `def` | [getDeclsInCurrModule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant383034f6a166f4de8487681221d49eb99461fe3ce3fe10a22872f73ff4f04d14.lean/declarations/getdeclsincurrmodule--ada82b003934dbf05cb265f6.md) | 212 | `declaration-track:ada82b003934dbf05cb265f6183dc7f667df60f8a3307783458f91cf3daca2a7` |
| 10 | `def` | [getAllDecls](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant383034f6a166f4de8487681221d49eb99461fe3ce3fe10a22872f73ff4f04d14.lean/declarations/getalldecls--0ed9086a94c169f2e6103dcd.md) | 216 | `declaration-track:0ed9086a94c169f2e6103dcd28531e3199e76f9288b390cc323dcdfea9bb9530` |
| 11 | `def` | [getDeclsInPackage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant383034f6a166f4de8487681221d49eb99461fe3ce3fe10a22872f73ff4f04d14.lean/declarations/getdeclsinpackage--d813c3da8bc794c8bf13ccef.md) | 220 | `declaration-track:d813c3da8bc794c8bf13ccef7fae778f14c502525c968af0fbf4f0b7eb8a1890` |
| 12 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant383034f6a166f4de8487681221d49eb99461fe3ce3fe10a22872f73ff4f04d14.lean/declarations/syntax--aaee9fb8053d13ebf48dd695.md) | 230 | `declaration-track:aaee9fb8053d13ebf48dd695d28c30e672b8f14445cd27ddd2f75fe64c6f947b` |
| 13 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant383034f6a166f4de8487681221d49eb99461fe3ce3fe10a22872f73ff4f04d14.lean/declarations/elab--deaf478247e40d9cc29e5c96.md) | 236 | `declaration-track:deaf478247e40d9cc29e5c96eb0fde342a34941aa417cc294da277c5a5b1a108` |
| 14 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant383034f6a166f4de8487681221d49eb99461fe3ce3fe10a22872f73ff4f04d14.lean/declarations/elab--9e90712edb121e8d324efdfd.md) | 279 | `declaration-track:9e90712edb121e8d324efdfdf46cca6e30a22e75268f321aab542e0f5fb3bd2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
