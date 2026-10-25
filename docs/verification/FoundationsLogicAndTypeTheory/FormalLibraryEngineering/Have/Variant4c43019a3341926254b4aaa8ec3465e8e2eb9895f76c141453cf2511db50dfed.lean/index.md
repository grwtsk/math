# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Have.Variant4c43019a3341926254b4aaa8ec3465e8e2eb9895f76c141453cf2511db50dfed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19cff0a0e85de28de9d911c090d5528b8c849753",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant4c43019a3341926254b4aaa8ec3465e8e2eb9895f76c141453cf2511db50dfed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant4c43019a3341926254b4aaa8ec3465e8e2eb9895f76c141453cf2511db50dfed.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant4c43019a3341926254b4aaa8ec3465e8e2eb9895f76c141453cf2511db50dfed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19cff0a0e85de28de9d911c090d5528b8c849753`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant4c43019a3341926254b4aaa8ec3465e8e2eb9895f76c141453cf2511db50dfed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant4c43019a3341926254b4aaa8ec3465e8e2eb9895f76c141453cf2511db50dfed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Array.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hygieneInfoFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant4c43019a3341926254b4aaa8ec3465e8e2eb9895f76c141453cf2511db50dfed.lean/declarations/hygieneinfofn--0d502439716dfde0f07be164.md) | 22 | `declaration-track:0d502439716dfde0f07be164366a3b71a06990955f6ea48d7cb556bc39ca70ff` |
| 2 | `def` | [hygieneInfoNoAntiquot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant4c43019a3341926254b4aaa8ec3465e8e2eb9895f76c141453cf2511db50dfed.lean/declarations/hygieneinfonoantiquot--356378f9fca2aa68bfb7aa1a.md) | 40 | `declaration-track:356378f9fca2aa68bfb7aa1a073628fb77e9ec8c04172e06be2db43edd5b655d` |
| 3 | `def` | [hygieneInfoNoAntiquot.formatter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant4c43019a3341926254b4aaa8ec3465e8e2eb9895f76c141453cf2511db50dfed.lean/declarations/hygieneinfonoantiquot-formatter--382e819c990290b608b2a588.md) | 46 | `declaration-track:382e819c990290b608b2a5888f8793a5f75d0d71cdbe61ed788bcb57628ed573` |
| 4 | `def` | [hygieneInfoNoAntiquot.parenthesizer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant4c43019a3341926254b4aaa8ec3465e8e2eb9895f76c141453cf2511db50dfed.lean/declarations/hygieneinfonoantiquot-parenthesizer--48572b14cafa7c2362aca626.md) | 48 | `declaration-track:48572b14cafa7c2362aca62667d95545a3b8fe51071c90cddfadc8c775ab1c16` |
| 5 | `def` | [hygieneInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant4c43019a3341926254b4aaa8ec3465e8e2eb9895f76c141453cf2511db50dfed.lean/declarations/hygieneinfo--72a1d205b14be79da0fbc41c.md) | 49 | `declaration-track:72a1d205b14be79da0fbc41c5760101966f83e17523e62b38d562b4568aa6328` |
| 6 | `def` | [optBinderIdent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant4c43019a3341926254b4aaa8ec3465e8e2eb9895f76c141453cf2511db50dfed.lean/declarations/optbinderident--a34d04d8420b9c49ab32139a.md) | 54 | `declaration-track:a34d04d8420b9c49ab32139a8bce13000f5bc18a0af3a3267c7e0b56d655474b` |
| 7 | `def` | [optBinderIdent.name](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant4c43019a3341926254b4aaa8ec3465e8e2eb9895f76c141453cf2511db50dfed.lean/declarations/optbinderident-name--42858c362ba4cc9b86801396.md) | 59 | `declaration-track:42858c362ba4cc9b8680139647d893f35d416498bd5be784619cab60f0371f8e` |
| 8 | `def` | [haveIdLhs'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant4c43019a3341926254b4aaa8ec3465e8e2eb9895f76c141453cf2511db50dfed.lean/declarations/haveidlhs--98bb98b16c5da17bf85590a9.md) | 76 | `declaration-track:98bb98b16c5da17bf85590a95c335d2a59357b58e068ddddb7cabd63e201802f` |
| 9 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant4c43019a3341926254b4aaa8ec3465e8e2eb9895f76c141453cf2511db50dfed.lean/declarations/syntax--33c589c2243badc3540d2f94.md) | 80 | `declaration-track:33c589c2243badc3540d2f946bbcbdf6f09db54deb11408b262bd3c5f5c16b12` |
| 10 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant4c43019a3341926254b4aaa8ec3465e8e2eb9895f76c141453cf2511db50dfed.lean/declarations/syntax--d0fd0c7672553d1080d42f26.md) | 81 | `declaration-track:d0fd0c7672553d1080d42f26b7472680d75ceca03cc674558d6660199f0bf9a4` |
| 11 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant4c43019a3341926254b4aaa8ec3465e8e2eb9895f76c141453cf2511db50dfed.lean/declarations/syntax--1234191815ea2c883fc9a243.md) | 82 | `declaration-track:1234191815ea2c883fc9a2433d0428af5dc6e22ffaeb44b9c5fc5828d7e6a1c3` |
| 12 | `def` | [haveLetCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant4c43019a3341926254b4aaa8ec3465e8e2eb9895f76c141453cf2511db50dfed.lean/declarations/haveletcore--315d342d54f873a5e7562474.md) | 85 | `declaration-track:315d342d54f873a5e7562474b4db18e181547a4187f69270146d6ca932c36380` |
| 13 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant4c43019a3341926254b4aaa8ec3465e8e2eb9895f76c141453cf2511db50dfed.lean/declarations/elab-rules--a1b3463e8578f14daa78c1cd.md) | 106 | `declaration-track:a1b3463e8578f14daa78c1cd69bb664b560758a4ada0e393d039337f34728ac7` |
| 14 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant4c43019a3341926254b4aaa8ec3465e8e2eb9895f76c141453cf2511db50dfed.lean/declarations/elab-rules--8ded24cac45cef7b5ff7e842.md) | 111 | `declaration-track:8ded24cac45cef7b5ff7e84271b277e111d22f3cfb0ce362bef583f6ee82ed9d` |
| 15 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant4c43019a3341926254b4aaa8ec3465e8e2eb9895f76c141453cf2511db50dfed.lean/declarations/elab-rules--36c6c2f10607335ac182292a.md) | 116 | `declaration-track:36c6c2f10607335ac182292af42ec1e1930d559e5bf6dd31d10e53a0ddd9240a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
