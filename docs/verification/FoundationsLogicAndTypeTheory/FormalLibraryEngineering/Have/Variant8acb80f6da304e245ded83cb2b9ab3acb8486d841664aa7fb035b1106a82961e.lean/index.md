# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Have.Variant8acb80f6da304e245ded83cb2b9ab3acb8486d841664aa7fb035b1106a82961e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6316f77e6ee58a759663dc1c705ff6a9caa1f388",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant8acb80f6da304e245ded83cb2b9ab3acb8486d841664aa7fb035b1106a82961e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant8acb80f6da304e245ded83cb2b9ab3acb8486d841664aa7fb035b1106a82961e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant8acb80f6da304e245ded83cb2b9ab3acb8486d841664aa7fb035b1106a82961e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6316f77e6ee58a759663dc1c705ff6a9caa1f388`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant8acb80f6da304e245ded83cb2b9ab3acb8486d841664aa7fb035b1106a82961e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant8acb80f6da304e245ded83cb2b9ab3acb8486d841664aa7fb035b1106a82961e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Array.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hygieneInfoFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant8acb80f6da304e245ded83cb2b9ab3acb8486d841664aa7fb035b1106a82961e.lean/declarations/hygieneinfofn--63b5483869273d66383e7245.md) | 14 | `declaration-track:63b5483869273d66383e7245e9b94ecdac5217877198f42e006d5658fc038ff7` |
| 2 | `def` | [hygieneInfoNoAntiquot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant8acb80f6da304e245ded83cb2b9ab3acb8486d841664aa7fb035b1106a82961e.lean/declarations/hygieneinfonoantiquot--24b517e7529736f1d4df06a8.md) | 32 | `declaration-track:24b517e7529736f1d4df06a87d97ee6da681a1bad3b537549370a0fa9908f0f6` |
| 3 | `def` | [hygieneInfoNoAntiquot.formatter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant8acb80f6da304e245ded83cb2b9ab3acb8486d841664aa7fb035b1106a82961e.lean/declarations/hygieneinfonoantiquot-formatter--5749a59a614647ab88054971.md) | 38 | `declaration-track:5749a59a614647ab880549717b45975dd5e847d4245d567b1afb7fcea90980b7` |
| 4 | `def` | [hygieneInfoNoAntiquot.parenthesizer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant8acb80f6da304e245ded83cb2b9ab3acb8486d841664aa7fb035b1106a82961e.lean/declarations/hygieneinfonoantiquot-parenthesizer--922f4be74240d7fddb7e8c53.md) | 40 | `declaration-track:922f4be74240d7fddb7e8c53bf667037d9d837935fdbb19906d3346fb3b368e8` |
| 5 | `def` | [hygieneInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant8acb80f6da304e245ded83cb2b9ab3acb8486d841664aa7fb035b1106a82961e.lean/declarations/hygieneinfo--8b3ee29eaad46f145d8294dc.md) | 41 | `declaration-track:8b3ee29eaad46f145d8294dce6e9af428a6c13e83cbb8eb2aee6cc767c183510` |
| 6 | `def` | [optBinderIdent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant8acb80f6da304e245ded83cb2b9ab3acb8486d841664aa7fb035b1106a82961e.lean/declarations/optbinderident--a0b876e77f616d9278543610.md) | 46 | `declaration-track:a0b876e77f616d92785436107541c1e2a5270e1385b2d3696180dfe5769b0d52` |
| 7 | `def` | [optBinderIdent.name](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant8acb80f6da304e245ded83cb2b9ab3acb8486d841664aa7fb035b1106a82961e.lean/declarations/optbinderident-name--92f96af00a863c66977dd1ba.md) | 51 | `declaration-track:92f96af00a863c66977dd1ba7b33eb39cebd1ceb1b0ef3515ef9ccfe350ea749` |
| 8 | `def` | [haveIdLhs'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant8acb80f6da304e245ded83cb2b9ab3acb8486d841664aa7fb035b1106a82961e.lean/declarations/haveidlhs--8fad854e69bd7520f73c0abd.md) | 68 | `declaration-track:8fad854e69bd7520f73c0abdbb8b2b21ac34a27a5ccf2cd04d58082642423f29` |
| 9 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant8acb80f6da304e245ded83cb2b9ab3acb8486d841664aa7fb035b1106a82961e.lean/declarations/syntax--0698cbceb77088f3055204a1.md) | 72 | `declaration-track:0698cbceb77088f3055204a1d9fc70bdb3dc2b1f2e89aae1ea193d89628defe6` |
| 10 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant8acb80f6da304e245ded83cb2b9ab3acb8486d841664aa7fb035b1106a82961e.lean/declarations/syntax--150aaa6972e4158d31bac059.md) | 73 | `declaration-track:150aaa6972e4158d31bac0598486b482a7bfa94318d06f8dd7cf15d945da3485` |
| 11 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant8acb80f6da304e245ded83cb2b9ab3acb8486d841664aa7fb035b1106a82961e.lean/declarations/syntax--aa7b8f3f40d6d83b13863337.md) | 74 | `declaration-track:aa7b8f3f40d6d83b13863337671ea63077f796b2fbe1f8173126138dc6df5796` |
| 12 | `def` | [haveLetCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant8acb80f6da304e245ded83cb2b9ab3acb8486d841664aa7fb035b1106a82961e.lean/declarations/haveletcore--8dca4fb5b7599e7de7540f34.md) | 77 | `declaration-track:8dca4fb5b7599e7de7540f34d9151ac919bdee562c3cd34933444d8c700df544` |
| 13 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant8acb80f6da304e245ded83cb2b9ab3acb8486d841664aa7fb035b1106a82961e.lean/declarations/elab-rules--ee4d17bb8ed6abe83e6c9f7b.md) | 98 | `declaration-track:ee4d17bb8ed6abe83e6c9f7b46553ef053094c76fe2420bbdce06b3b4f1fa46b` |
| 14 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant8acb80f6da304e245ded83cb2b9ab3acb8486d841664aa7fb035b1106a82961e.lean/declarations/elab-rules--6af0f282d8dd87f4b430b590.md) | 103 | `declaration-track:6af0f282d8dd87f4b430b590d068623b7474f33a6e58436e84c099b760cb69cd` |
| 15 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant8acb80f6da304e245ded83cb2b9ab3acb8486d841664aa7fb035b1106a82961e.lean/declarations/elab-rules--f0e6b2a323d7392d3650b997.md) | 108 | `declaration-track:f0e6b2a323d7392d3650b997d7a714ceaa40bc3f0d1de006b3aa7268c3a04df4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
