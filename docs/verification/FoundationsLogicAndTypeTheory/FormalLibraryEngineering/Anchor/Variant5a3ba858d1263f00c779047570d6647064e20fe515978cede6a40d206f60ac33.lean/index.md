# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Anchor.Variant5a3ba858d1263f00c779047570d6647064e20fe515978cede6a40d206f60ac33

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "317d38961c2dff8e488cb338248cb15f6d809c60",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant5a3ba858d1263f00c779047570d6647064e20fe515978cede6a40d206f60ac33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant5a3ba858d1263f00c779047570d6647064e20fe515978cede6a40d206f60ac33.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant5a3ba858d1263f00c779047570d6647064e20fe515978cede6a40d206f60ac33.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `317d38961c2dff8e488cb338248cb15f6d809c60`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant5a3ba858d1263f00c779047570d6647064e20fe515978cede6a40d206f60ac33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant5a3ba858d1263f00c779047570d6647064e20fe515978cede6a40d206f60ac33.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.TensorNetwork.Decoder` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.TensorNetwork.Factorization` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AnchorKey](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant5a3ba858d1263f00c779047570d6647064e20fe515978cede6a40d206f60ac33.lean/declarations/anchorkey--056fb6f33e6e9d139f3ffcdb.md) | 16 | `declaration-track:056fb6f33e6e9d139f3ffcdbe47e3ecd3acb552ecaca42cd3347f04129d4a023` |
| 2 | `structure` | [AnchorErrorBudget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant5a3ba858d1263f00c779047570d6647064e20fe515978cede6a40d206f60ac33.lean/declarations/anchorerrorbudget--e8ed488d19e5a2a1488be8be.md) | 26 | `declaration-track:e8ed488d19e5a2a1488be8be9b7e7a369abbd601b84259f72e436c205a419f49` |
| 3 | `def` | [AnchorErrorBudget.total](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant5a3ba858d1263f00c779047570d6647064e20fe515978cede6a40d206f60ac33.lean/declarations/anchorerrorbudget-total--bd87abd67bc3c39080a3e56e.md) | 41 | `declaration-track:bd87abd67bc3c39080a3e56eaa441dce388ade236cccd4576a6008dc9b34fc34` |
| 4 | `theorem` | [AnchorErrorBudget.total_nonnegative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant5a3ba858d1263f00c779047570d6647064e20fe515978cede6a40d206f60ac33.lean/declarations/anchorerrorbudget-total-nonnegative--21d3d67bbe4e758b1578854d.md) | 50 | `result-track:21d3d67bbe4e758b1578854dcd6a617e2ceac0260519fc474fccc099c1002e7b` |
| 5 | `structure` | [ReproductiveAnchorCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant5a3ba858d1263f00c779047570d6647064e20fe515978cede6a40d206f60ac33.lean/declarations/reproductiveanchorcertificate--2d524e324b15d92826ed29cd.md) | 59 | `declaration-track:2d524e324b15d92826ed29cda65df70e525b335f564d302da65c3802597b4be3` |
| 6 | `theorem` | [ReproductiveAnchorCertificate.eligible](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant5a3ba858d1263f00c779047570d6647064e20fe515978cede6a40d206f60ac33.lean/declarations/reproductiveanchorcertificate-eligible--1c530fcbe4ead8641559c8e8.md) | 97 | `result-track:1c530fcbe4ead8641559c8e8a534024ffdc10bb95b08a5e55e0ceb90b3042375` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
