# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Frontend.Variantf1d74d7fc96d9243c55538ce79e401d3ed8911222c07867e542a0d5300bffa3e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79aac6bb16a2744c6841a9575ee4a20ab117bc39",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantf1d74d7fc96d9243c55538ce79e401d3ed8911222c07867e542a0d5300bffa3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantf1d74d7fc96d9243c55538ce79e401d3ed8911222c07867e542a0d5300bffa3e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantf1d74d7fc96d9243c55538ce79e401d3ed8911222c07867e542a0d5300bffa3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79aac6bb16a2744c6841a9575ee4a20ab117bc39`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantf1d74d7fc96d9243c55538ce79e401d3ed8911222c07867e542a0d5300bffa3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantf1d74d7fc96d9243c55538ce79e401d3ed8911222c07867e542a0d5300bffa3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Util.Paths` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Tactic.Lint.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [LintVerbosity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantf1d74d7fc96d9243c55538ce79e401d3ed8911222c07867e542a0d5300bffa3e.lean/declarations/lintverbosity--1695b672b15d67c2ea1452e0.md) | 56 | `declaration-track:1695b672b15d67c2ea1452e0031a2c00675401c0c13d7f3784bc22c7323ca045` |
| 2 | `def` | [getChecks](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantf1d74d7fc96d9243c55538ce79e401d3ed8911222c07867e542a0d5300bffa3e.lean/declarations/getchecks--a3ab0d3915fb6680cbea91c5.md) | 70 | `declaration-track:a3ab0d3915fb6680cbea91c5ebdb74d925a800009f3dc6cf8a35e12b484cd5a3` |
| 3 | `def` | [lintCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantf1d74d7fc96d9243c55538ce79e401d3ed8911222c07867e542a0d5300bffa3e.lean/declarations/lintcore--35fe90c28ed9f803a57ca47d.md) | 85 | `declaration-track:35fe90c28ed9f803a57ca47da0d690cfc12e05937162de28c7421b3ea58e7fb7` |
| 4 | `def` | [sortResults](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantf1d74d7fc96d9243c55538ce79e401d3ed8911222c07867e542a0d5300bffa3e.lean/declarations/sortresults--594bbb1c0e76807971dc408a.md) | 109 | `declaration-track:594bbb1c0e76807971dc408a77b519d3195467ac96924fd8d7c0670c14cc55bd` |
| 5 | `def` | [printWarning](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantf1d74d7fc96d9243c55538ce79e401d3ed8911222c07867e542a0d5300bffa3e.lean/declarations/printwarning--d2f404caff186fd190db0331.md) | 117 | `declaration-track:d2f404caff186fd190db0331196b66a295bb04ca37afb94eea84271b57143ee4` |
| 6 | `def` | [printWarnings](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantf1d74d7fc96d9243c55538ce79e401d3ed8911222c07867e542a0d5300bffa3e.lean/declarations/printwarnings--1afa39177b25854b2a8d28ba.md) | 126 | `declaration-track:1afa39177b25854b2a8d28bafd68839046fd6fc128d82bc7a775db29f886ac22` |
| 7 | `def` | [groupedByFilename](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantf1d74d7fc96d9243c55538ce79e401d3ed8911222c07867e542a0d5300bffa3e.lean/declarations/groupedbyfilename--f6d4eb82c0c202655580faab.md) | 136 | `declaration-track:f6d4eb82c0c202655580faaba420e594b83cc85ffb99a66bbc111fda4cf65a6c` |
| 8 | `def` | [formatLinterResults](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantf1d74d7fc96d9243c55538ce79e401d3ed8911222c07867e542a0d5300bffa3e.lean/declarations/formatlinterresults--dcad7d0abfb1059cb7ecf476.md) | 159 | `declaration-track:dcad7d0abfb1059cb7ecf4765d318732caf1796a620d5366e18050d7e3956656` |
| 9 | `def` | [getDeclsInCurrModule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantf1d74d7fc96d9243c55538ce79e401d3ed8911222c07867e542a0d5300bffa3e.lean/declarations/getdeclsincurrmodule--4918db92fbf54bae2f8faafb.md) | 190 | `declaration-track:4918db92fbf54bae2f8faafb96b3cb0c8a5420d85e0304d39df3ddd394ed8970` |
| 10 | `def` | [getAllDecls](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantf1d74d7fc96d9243c55538ce79e401d3ed8911222c07867e542a0d5300bffa3e.lean/declarations/getalldecls--afa13aa66f4a10d37c5f1943.md) | 194 | `declaration-track:afa13aa66f4a10d37c5f19430471fabb5fc8a9df5fd1e6d7bf429703e443ef9e` |
| 11 | `def` | [getDeclsInPackage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantf1d74d7fc96d9243c55538ce79e401d3ed8911222c07867e542a0d5300bffa3e.lean/declarations/getdeclsinpackage--a4539fc2842391503660af74.md) | 198 | `declaration-track:a4539fc2842391503660af74cb743e91776f64d842e4dd1758127b6023734804` |
| 12 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantf1d74d7fc96d9243c55538ce79e401d3ed8911222c07867e542a0d5300bffa3e.lean/declarations/syntax--bed7bc6bb616756f4643e295.md) | 208 | `declaration-track:bed7bc6bb616756f4643e295637a9c919a69079b6a0ed47fa01b547f396e7990` |
| 13 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantf1d74d7fc96d9243c55538ce79e401d3ed8911222c07867e542a0d5300bffa3e.lean/declarations/elab--3c72fe3562538e65cf75f7c2.md) | 214 | `declaration-track:3c72fe3562538e65cf75f7c260cb6c0d59065e3e06b5b3a9c5a0d20eb96ef25b` |
| 14 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantf1d74d7fc96d9243c55538ce79e401d3ed8911222c07867e542a0d5300bffa3e.lean/declarations/elab--fdbecde4cb97759a0ccca10c.md) | 255 | `declaration-track:fdbecde4cb97759a0ccca10cdf5a5e763db775db3fb1dca7d869b2275e7dd505` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
