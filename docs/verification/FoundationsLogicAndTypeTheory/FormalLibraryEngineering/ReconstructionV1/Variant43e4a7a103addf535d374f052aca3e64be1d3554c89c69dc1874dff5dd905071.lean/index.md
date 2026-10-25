# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReconstructionV1.Variant43e4a7a103addf535d374f052aca3e64be1d3554c89c69dc1874dff5dd905071

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31471f9f9b6e87534388b1f52ab27c8490dd9a02",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReconstructionV1/Variant43e4a7a103addf535d374f052aca3e64be1d3554c89c69dc1874dff5dd905071.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReconstructionV1/Variant43e4a7a103addf535d374f052aca3e64be1d3554c89c69dc1874dff5dd905071.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReconstructionV1/Variant43e4a7a103addf535d374f052aca3e64be1d3554c89c69dc1874dff5dd905071.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31471f9f9b6e87534388b1f52ab27c8490dd9a02`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReconstructionV1/Variant43e4a7a103addf535d374f052aca3e64be1d3554c89c69dc1874dff5dd905071.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReconstructionV1/Variant43e4a7a103addf535d374f052aca3e64be1d3554c89c69dc1874dff5dd905071.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `formal.c2.ValueInverse` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [unsigned_reconstruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReconstructionV1/Variant43e4a7a103addf535d374f052aca3e64be1d3554c89c69dc1874dff5dd905071.lean/declarations/unsigned-reconstruct--735147a622f02b3170bdbed7.md) | 5 | `result-track:735147a622f02b3170bdbed75d1b47c6db2044171ce395811b657e1526a33f5a` |
| 2 | `theorem` | [integer_reconstruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReconstructionV1/Variant43e4a7a103addf535d374f052aca3e64be1d3554c89c69dc1874dff5dd905071.lean/declarations/integer-reconstruct--847221139d0ada2c51917fe0.md) | 16 | `result-track:847221139d0ada2c51917fe0ccf3c7175fe59383f25556df96d138c98c38da52` |
| 3 | `theorem` | [readUntil_reconstruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReconstructionV1/Variant43e4a7a103addf535d374f052aca3e64be1d3554c89c69dc1874dff5dd905071.lean/declarations/readuntil-reconstruct--eef8bf148b4eb0e3cea742e2.md) | 41 | `result-track:eef8bf148b4eb0e3cea742e2f6c3850b14e6b199a7594db090ab11a26b38563a` |
| 4 | `theorem` | [readNat_reconstruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReconstructionV1/Variant43e4a7a103addf535d374f052aca3e64be1d3554c89c69dc1874dff5dd905071.lean/declarations/readnat-reconstruct--d559dab035ae87d469db0bd0.md) | 59 | `result-track:d559dab035ae87d469db0bd0833956c56159738c1107d68fb45c09cf13046472` |
| 5 | `theorem` | [splitAt_length](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReconstructionV1/Variant43e4a7a103addf535d374f052aca3e64be1d3554c89c69dc1874dff5dd905071.lean/declarations/splitat-length--5490ae2682c3daef72e7f226.md) | 72 | `result-track:5490ae2682c3daef72e7f2264cc7166cf7823a8972075f2c0a8ce23d10b6c1fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
