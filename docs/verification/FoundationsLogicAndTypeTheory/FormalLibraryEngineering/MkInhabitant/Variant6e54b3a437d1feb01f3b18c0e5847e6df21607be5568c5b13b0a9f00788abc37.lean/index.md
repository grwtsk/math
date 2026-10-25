# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkInhabitant.Variant6e54b3a437d1feb01f3b18c0e5847e6df21607be5568c5b13b0a9f00788abc37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a994c53e9c587c591551771eb3cc7ad3ce79e30d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkInhabitant/Variant6e54b3a437d1feb01f3b18c0e5847e6df21607be5568c5b13b0a9f00788abc37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkInhabitant/Variant6e54b3a437d1feb01f3b18c0e5847e6df21607be5568c5b13b0a9f00788abc37.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkInhabitant/Variant6e54b3a437d1feb01f3b18c0e5847e6df21607be5568c5b13b0a9f00788abc37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a994c53e9c587c591551771eb3cc7ad3ce79e30d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkInhabitant/Variant6e54b3a437d1feb01f3b18c0e5847e6df21607be5568c5b13b0a9f00788abc37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkInhabitant/Variant6e54b3a437d1feb01f3b18c0e5847e6df21607be5568c5b13b0a9f00788abc37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [withInhabitedInstances](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkInhabitant/Variant6e54b3a437d1feb01f3b18c0e5847e6df21607be5568c5b13b0a9f00788abc37.lean/declarations/withinhabitedinstances--9bc5fdafa1da2afc5a28b696.md) | 25 | `declaration-track:9bc5fdafa1da2afc5a28b69627b27dac0c9933afaf22f9e0ca29068415f597c7` |
| 2 | `def` | [mkInhabitant?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkInhabitant/Variant6e54b3a437d1feb01f3b18c0e5847e6df21607be5568c5b13b0a9f00788abc37.lean/declarations/mkinhabitant--5507024143799c132dda3591.md) | 39 | `declaration-track:5507024143799c132dda35915d18a8dc7d4beb0490e05dad4765539f832c2c14` |
| 3 | `def` | [mkInhabitantForAux?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkInhabitant/Variant6e54b3a437d1feb01f3b18c0e5847e6df21607be5568c5b13b0a9f00788abc37.lean/declarations/mkinhabitantforaux--cd91fd08138eed77a864e0c7.md) | 51 | `declaration-track:cd91fd08138eed77a864e0c704d58306b4c323d8f2f9ab8ba4a7895219dde825` |
| 4 | `def` | [mkInhabitantFor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkInhabitant/Variant6e54b3a437d1feb01f3b18c0e5847e6df21607be5568c5b13b0a9f00788abc37.lean/declarations/mkinhabitantfor--f6e89ab8719c5c1a16f8095a.md) | 66 | `declaration-track:f6e89ab8719c5c1a16f8095a6733a672deb781f150b4e56624a17232aa6441d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
