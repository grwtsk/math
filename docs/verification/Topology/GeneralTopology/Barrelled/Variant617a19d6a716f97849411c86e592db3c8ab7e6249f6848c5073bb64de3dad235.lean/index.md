# Verification target: GRWTSK.Topology.GeneralTopology.Barrelled.Variant617a19d6a716f97849411c86e592db3c8ab7e6249f6848c5073bb64de3dad235

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f5074a6a5cf074ba4b8538147898cd70f4ba7b8",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Barrelled/Variant617a19d6a716f97849411c86e592db3c8ab7e6249f6848c5073bb64de3dad235.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variant617a19d6a716f97849411c86e592db3c8ab7e6249f6848c5073bb64de3dad235.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variant617a19d6a716f97849411c86e592db3c8ab7e6249f6848c5073bb64de3dad235.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f5074a6a5cf074ba4b8538147898cd70f4ba7b8`.

Source path: `GRWTSK/Topology/GeneralTopology/Barrelled/Variant617a19d6a716f97849411c86e592db3c8ab7e6249f6848c5073bb64de3dad235.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Barrelled/Variant617a19d6a716f97849411c86e592db3c8ab7e6249f6848c5073bb64de3dad235.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.WithSeminorms` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Semicontinuous` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Baire.Lemmas` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [BarrelledSpace](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variant617a19d6a716f97849411c86e592db3c8ab7e6249f6848c5073bb64de3dad235.lean/declarations/barrelledspace--c60eb95fc5d411142e02d76a.md) | 91 | `declaration-track:c60eb95fc5d411142e02d76a12764b0754c7f71776c6bc5bdc0df41f9dc7a743` |
| 2 | `theorem` | [Seminorm.continuous_of_lowerSemicontinuous](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variant617a19d6a716f97849411c86e592db3c8ab7e6249f6848c5073bb64de3dad235.lean/declarations/seminorm-continuous-of-lowersemicontinuous--4b1306b4163fd0a21df35e0e.md) | 96 | `result-track:4b1306b4163fd0a21df35e0eb08281759d03e145aca003ac9eabe532e1a999ef` |
| 3 | `theorem` | [Seminorm.continuous_iSup](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variant617a19d6a716f97849411c86e592db3c8ab7e6249f6848c5073bb64de3dad235.lean/declarations/seminorm-continuous-isup--84ee1bea2f383317a53e8751.md) | 101 | `result-track:84ee1bea2f383317a53e8751ac545c37bf2a3a73b767405d45eafeb2393e7a57` |
| 4 | `instance` | [BaireSpace.instBarrelledSpace](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variant617a19d6a716f97849411c86e592db3c8ab7e6249f6848c5073bb64de3dad235.lean/declarations/bairespace-instbarrelledspace--3ffe3a5da3d937535350caec.md) | 123 | `declaration-track:3ffe3a5da3d937535350caec97562d5ec3264a1d3fbcffaca6561872b9d0ab31` |
| 5 | `theorem` | [banach_steinhaus](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variant617a19d6a716f97849411c86e592db3c8ab7e6249f6848c5073bb64de3dad235.lean/declarations/banach-steinhaus--271fa3b3a967ee8b8752f91e.md) | 165 | `result-track:271fa3b3a967ee8b8752f91e6fbb25c2e57724805a2214213a2fab9642cf97e9` |
| 6 | `def` | [continuousLinearMapOfTendsto](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variant617a19d6a716f97849411c86e592db3c8ab7e6249f6848c5073bb64de3dad235.lean/declarations/continuouslinearmapoftendsto--91c7dca7640c06303a7b7158.md) | 190 | `declaration-track:91c7dca7640c06303a7b7158151c3b9b4bc0df596f68bf04d7a3d6de02033997` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
