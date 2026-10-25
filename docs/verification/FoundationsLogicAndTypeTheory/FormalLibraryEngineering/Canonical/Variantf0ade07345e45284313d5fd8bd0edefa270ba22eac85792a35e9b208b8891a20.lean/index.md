# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Canonical.Variantf0ade07345e45284313d5fd8bd0edefa270ba22eac85792a35e9b208b8891a20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f6d9e0ef454786a10e9fe1888ff2ba525087b71",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonical/Variantf0ade07345e45284313d5fd8bd0edefa270ba22eac85792a35e9b208b8891a20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonical/Variantf0ade07345e45284313d5fd8bd0edefa270ba22eac85792a35e9b208b8891a20.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonical/Variantf0ade07345e45284313d5fd8bd0edefa270ba22eac85792a35e9b208b8891a20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f6d9e0ef454786a10e9fe1888ff2ba525087b71`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonical/Variantf0ade07345e45284313d5fd8bd0edefa270ba22eac85792a35e9b208b8891a20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonical/Variantf0ade07345e45284313d5fd8bd0edefa270ba22eac85792a35e9b208b8891a20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.TensorNetwork.Gauge` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LeftCanonicalAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonical/Variantf0ade07345e45284313d5fd8bd0edefa270ba22eac85792a35e9b208b8891a20.lean/declarations/leftcanonicalat--5754ca86390dc7a0b8b00d83.md) | 16 | `declaration-track:5754ca86390dc7a0b8b00d838118c1475b2bdd9d89afcc8e08365db03d94dec1` |
| 2 | `def` | [LeftCanonical](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonical/Variantf0ade07345e45284313d5fd8bd0edefa270ba22eac85792a35e9b208b8891a20.lean/declarations/leftcanonical--cb36343d940a3b9edbdff186.md) | 28 | `declaration-track:cb36343d940a3b9edbdff18680ab96975d1f0b8c53e3c0728a4cc4bc5cacf1a0` |
| 3 | `structure` | [CanonicalizationCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonical/Variantf0ade07345e45284313d5fd8bd0edefa270ba22eac85792a35e9b208b8891a20.lean/declarations/canonicalizationcertificate--5c429f8123ea925b30414a6b.md) | 33 | `declaration-track:5c429f8123ea925b30414a6b17ba37cc441a170882e64d4c0feea3f6dfd21157` |
| 4 | `structure` | [ApproxCanonicalizationCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonical/Variantf0ade07345e45284313d5fd8bd0edefa270ba22eac85792a35e9b208b8891a20.lean/declarations/approxcanonicalizationcertificate--cb47d07f0a56541b1e78b9ea.md) | 43 | `declaration-track:cb47d07f0a56541b1e78b9ea188dce7cece9df5ffba805da3c75964155b59133` |
| 5 | `theorem` | [CanonicalizationCertificate.contract_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonical/Variantf0ade07345e45284313d5fd8bd0edefa270ba22eac85792a35e9b208b8891a20.lean/declarations/canonicalizationcertificate-contract-eq--28a0c00bf857295eb90bd3c6.md) | 55 | `result-track:28a0c00bf857295eb90bd3c6da98c558f5fa66bd8efd69786544f8b9f9417c18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
