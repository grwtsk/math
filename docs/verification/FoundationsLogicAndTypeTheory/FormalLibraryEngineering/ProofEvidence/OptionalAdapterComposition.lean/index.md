# Verification target: GRWTSK.Interfaces.OptionalAdapterComposition

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "412598b63dc6cf0c6e04d53a852c0dd508f9fc36",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Interfaces/OptionalAdapterComposition.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterComposition.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterComposition.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `412598b63dc6cf0c6e04d53a852c0dd508f9fc36`.

Source path: `GRWTSK/Interfaces/OptionalAdapterComposition.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Interfaces/OptionalAdapterComposition.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Interfaces.OptionalAdapterGate`](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterGate.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AcceptedPlan](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterComposition.lean/declarations/acceptedplan--ff627f311bbba62b1e71bb58.md) | 11 | `declaration-track:ff627f311bbba62b1e71bb58aa3bab8e31da32585dd9ffb37ad55d147a58cd71` |
| 2 | `def` | [Touches](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterComposition.lean/declarations/touches--c69dfad62b8194f4ce5d85b8.md) | 25 | `declaration-track:c69dfad62b8194f4ce5d85b8c45116cbdf23e7263b429f7e1b4dc47b2a45aeef` |
| 3 | `def` | [append](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterComposition.lean/declarations/append--f2894ccd47414639c2f8ca90.md) | 30 | `declaration-track:f2894ccd47414639c2f8ca900f86ca25cc98a756c67411bcab7ef7ab48c9e315` |
| 4 | `theorem` | [nil_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterComposition.lean/declarations/nil-append--b8ec696fca11e03a686caed1.md) | 35 | `result-track:b8ec696fca11e03a686caed1083563a0c895f1bc5d4c548cd6dad4bf82e26574` |
| 5 | `theorem` | [append_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterComposition.lean/declarations/append-nil--6dcd643ee4fe47f1edfb735b.md) | 39 | `result-track:6dcd643ee4fe47f1edfb735bd5a33ba2186a4972fe188b4eeea3418c3cf6304f` |
| 6 | `theorem` | [append_assoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterComposition.lean/declarations/append-assoc--9c878f9c4854a7a2f79cf22f.md) | 46 | `result-track:9c878f9c4854a7a2f79cf22f0ac2d99cbcd3871f54ad62fdcd1499d5c2716ce1` |
| 7 | `theorem` | [apply_eq_of_not_touches](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterComposition.lean/declarations/apply-eq-of-not-touches--543e47cc59a408f7455bdae9.md) | 55 | `result-track:543e47cc59a408f7455bdae902fd86689aaf20ba8065bbf93cbf8e6cdd1d1c9c` |
| 8 | `theorem` | [preserves_none_of_not_touches](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterComposition.lean/declarations/preserves-none-of-not-touches--8ebcd0dbe9d491ea8ab07dde.md) | 70 | `result-track:8ebcd0dbe9d491ea8ab07ddefd2cfbee04fb7dfc571836df90d5154f04bd82ab` |
| 9 | `theorem` | [touches_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterComposition.lean/declarations/touches-append--6110b3061b859b9094f9d3c1.md) | 77 | `result-track:6110b3061b859b9094f9d3c11585f053ed568e16ff4ce91ce9c21fe1cabc4010` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
