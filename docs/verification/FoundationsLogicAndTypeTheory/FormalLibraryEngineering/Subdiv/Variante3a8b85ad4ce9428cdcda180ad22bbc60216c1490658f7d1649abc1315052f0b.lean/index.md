# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Subdiv.Variante3a8b85ad4ce9428cdcda180ad22bbc60216c1490658f7d1649abc1315052f0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df36a42712a59d31fdd088b7c2b92e5101a7c272",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subdiv/Variante3a8b85ad4ce9428cdcda180ad22bbc60216c1490658f7d1649abc1315052f0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subdiv/Variante3a8b85ad4ce9428cdcda180ad22bbc60216c1490658f7d1649abc1315052f0b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subdiv/Variante3a8b85ad4ce9428cdcda180ad22bbc60216c1490658f7d1649abc1315052f0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df36a42712a59d31fdd088b7c2b92e5101a7c272`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subdiv/Variante3a8b85ad4ce9428cdcda180ad22bbc60216c1490658f7d1649abc1315052f0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subdiv/Variante3a8b85ad4ce9428cdcda180ad22bbc60216c1490658f7d1649abc1315052f0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Tactic.IntervalAuto.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.IntervalAuto.Bound` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Validity.Bounds` — import line 13; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimization.BoundVerify` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [proveUpperBoundWithSubdiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subdiv/Variante3a8b85ad4ce9428cdcda180ad22bbc60216c1490658f7d1649abc1315052f0b.lean/declarations/proveupperboundwithsubdiv--a7f7f46a92efca5eba513781.md) | 35 | `declaration-track:a7f7f46a92efca5eba5137816a0891f32fc86419273f7f98205dcfb4b1b5ea4b` |
| 2 | `def` | [proveLowerBoundWithSubdiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subdiv/Variante3a8b85ad4ce9428cdcda180ad22bbc60216c1490658f7d1649abc1315052f0b.lean/declarations/provelowerboundwithsubdiv--1a052d71a0cd78c89e6b2edc.md) | 110 | `declaration-track:1a052d71a0cd78c89e6b2edc6aad95244418845bd62e97bfcf2571bfe22cf3d7` |
| 3 | `def` | [proveStrictUpperBoundWithSubdiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subdiv/Variante3a8b85ad4ce9428cdcda180ad22bbc60216c1490658f7d1649abc1315052f0b.lean/declarations/provestrictupperboundwithsubdiv--b279fcd05a8bedda177c4fbf.md) | 185 | `declaration-track:b279fcd05a8bedda177c4fbf588cd77c4c8de02a314b5a35ab1448e0d6189742` |
| 4 | `def` | [proveStrictLowerBoundWithSubdiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subdiv/Variante3a8b85ad4ce9428cdcda180ad22bbc60216c1490658f7d1649abc1315052f0b.lean/declarations/provestrictlowerboundwithsubdiv--5bbf52b0e7a9da518970a1cb.md) | 260 | `declaration-track:5bbf52b0e7a9da518970a1cb8ca6ca162c0b2006aa39406c9d67063210cfee05` |
| 5 | `def` | [proveForallLeSubdiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subdiv/Variante3a8b85ad4ce9428cdcda180ad22bbc60216c1490658f7d1649abc1315052f0b.lean/declarations/proveforalllesubdiv--53c5e7b24d1df53e2049a605.md) | 335 | `declaration-track:53c5e7b24d1df53e2049a6050afdccad7fe3ffe12552f3b6c09640afbc043b10` |
| 6 | `def` | [proveForallGeSubdiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subdiv/Variante3a8b85ad4ce9428cdcda180ad22bbc60216c1490658f7d1649abc1315052f0b.lean/declarations/proveforallgesubdiv--89e8557af5abaecfd4a20b64.md) | 379 | `declaration-track:89e8557af5abaecfd4a20b641732797bfdcb7e289efa9e1942128750ecc00d2c` |
| 7 | `def` | [proveForallLtSubdiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subdiv/Variante3a8b85ad4ce9428cdcda180ad22bbc60216c1490658f7d1649abc1315052f0b.lean/declarations/proveforallltsubdiv--e0bdb56bf5d87f11a80851ab.md) | 423 | `declaration-track:e0bdb56bf5d87f11a80851ab9075c04cd403bd47264f4c61ea4b17c7de362787` |
| 8 | `def` | [proveForallGtSubdiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subdiv/Variante3a8b85ad4ce9428cdcda180ad22bbc60216c1490658f7d1649abc1315052f0b.lean/declarations/proveforallgtsubdiv--5f35ca02937e2d80f27d98e9.md) | 469 | `declaration-track:5f35ca02937e2d80f27d98e94a6643717bfee3575b3ea3e9f9e70c482bb9fe8f` |
| 9 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subdiv/Variante3a8b85ad4ce9428cdcda180ad22bbc60216c1490658f7d1649abc1315052f0b.lean/declarations/elab--265deea33e77757d9de28f89.md) | 513 | `declaration-track:265deea33e77757d9de28f893284b7e8541dc15d38a1f2e30d7c9f426367dc59` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
