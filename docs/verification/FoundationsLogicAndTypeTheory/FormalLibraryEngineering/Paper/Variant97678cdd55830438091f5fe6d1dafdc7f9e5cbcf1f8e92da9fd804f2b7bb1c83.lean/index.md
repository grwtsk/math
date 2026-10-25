# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Paper.Variant97678cdd55830438091f5fe6d1dafdc7f9e5cbcf1f8e92da9fd804f2b7bb1c83

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5861a879a0c8885873a4ca4d5fd15440efea8065",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Paper/Variant97678cdd55830438091f5fe6d1dafdc7f9e5cbcf1f8e92da9fd804f2b7bb1c83.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Paper/Variant97678cdd55830438091f5fe6d1dafdc7f9e5cbcf1f8e92da9fd804f2b7bb1c83.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Paper/Variant97678cdd55830438091f5fe6d1dafdc7f9e5cbcf1f8e92da9fd804f2b7bb1c83.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5861a879a0c8885873a4ca4d5fd15440efea8065`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Paper/Variant97678cdd55830438091f5fe6d1dafdc7f9e5cbcf1f8e92da9fd804f2b7bb1c83.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Paper/Variant97678cdd55830438091f5fe6d1dafdc7f9e5cbcf1f8e92da9fd804f2b7bb1c83.lean.json)

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
| 1 | `inductive` | [AccessStatus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Paper/Variant97678cdd55830438091f5fe6d1dafdc7f9e5cbcf1f8e92da9fd804f2b7bb1c83.lean/declarations/accessstatus--030f0e325e370a4a02d40129.md) | 17 | `declaration-track:030f0e325e370a4a02d40129a42bfdbe858c563682b9f2a14c7aca4e0a733842` |
| 2 | `inductive` | [AdaptationGap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Paper/Variant97678cdd55830438091f5fe6d1dafdc7f9e5cbcf1f8e92da9fd804f2b7bb1c83.lean/declarations/adaptationgap--dd0eb6254a1599e20b1a3268.md) | 25 | `declaration-track:dd0eb6254a1599e20b1a3268ec8e5c32643eff4ecca8c6bbaf6180e4ec90cfd8` |
| 3 | `inductive` | [PaperRole](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Paper/Variant97678cdd55830438091f5fe6d1dafdc7f9e5cbcf1f8e92da9fd804f2b7bb1c83.lean/declarations/paperrole--697bb7a244b4f328f171aee4.md) | 35 | `declaration-track:697bb7a244b4f328f171aee41c9029cbd6384c08e3711c8bbbc66af1f96af9ff` |
| 4 | `structure` | [PaperReference](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Paper/Variant97678cdd55830438091f5fe6d1dafdc7f9e5cbcf1f8e92da9fd804f2b7bb1c83.lean/declarations/paperreference--7bbc76fd58316064239948b6.md) | 53 | `declaration-track:7bbc76fd58316064239948b6dc601fb5cafe19b45549712d7cb91dab9682cb8d` |
| 5 | `theorem` | [paper_has_title](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Paper/Variant97678cdd55830438091f5fe6d1dafdc7f9e5cbcf1f8e92da9fd804f2b7bb1c83.lean/declarations/paper-has-title--eee7d4ef9c4d97170ef138e8.md) | 64 | `result-track:eee7d4ef9c4d97170ef138e855a04e6a95bc306afa9e409d63cb6fac6b854a2f` |
| 6 | `theorem` | [paper_has_remaining_gap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Paper/Variant97678cdd55830438091f5fe6d1dafdc7f9e5cbcf1f8e92da9fd804f2b7bb1c83.lean/declarations/paper-has-remaining-gap--23c1d2f0c788f24dcdf0be5a.md) | 69 | `result-track:23c1d2f0c788f24dcdf0be5aa23d1f788836b64c489069f41d202fc5cf9ccc34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
