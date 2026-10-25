# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BRecOn.Variant47bdde1757c5d6df3d5ae1f5c11768fcc8d382dac65cf402778f0480a49e1616

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb887ec1c026a8c1c24e2c225561ca654801a6d3",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant47bdde1757c5d6df3d5ae1f5c11768fcc8d382dac65cf402778f0480a49e1616.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant47bdde1757c5d6df3d5ae1f5c11768fcc8d382dac65cf402778f0480a49e1616.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant47bdde1757c5d6df3d5ae1f5c11768fcc8d382dac65cf402778f0480a49e1616.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb887ec1c026a8c1c24e2c225561ca654801a6d3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant47bdde1757c5d6df3d5ae1f5c11768fcc8d382dac65cf402778f0480a49e1616.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant47bdde1757c5d6df3d5ae1f5c11768fcc8d382dac65cf402778f0480a49e1616.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.PProdN` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Cases` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Refl` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [buildBelowMinorPremise](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant47bdde1757c5d6df3d5ae1f5c11768fcc8d382dac65cf402778f0480a49e1616.lean/declarations/buildbelowminorpremise--198371a6c53c9bc723a99607.md) | 41 | `declaration-track:198371a6c53c9bc723a996071b00bf35c34649aff0f34f8b0722644d6a020de4` |
| 2 | `def` | [mkBelowFromRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant47bdde1757c5d6df3d5ae1f5c11768fcc8d382dac65cf402778f0480a49e1616.lean/declarations/mkbelowfromrec--8dfc8caccddc1a8553952211.md) | 67 | `declaration-track:8dfc8caccddc1a855395221181af1ecf2fe3b7c6ee60a22c85dd97e116f96431` |
| 3 | `def` | [mkBelow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant47bdde1757c5d6df3d5ae1f5c11768fcc8d382dac65cf402778f0480a49e1616.lean/declarations/mkbelow--ad8d8f6e0ecbd1c0c21719e0.md) | 121 | `declaration-track:ad8d8f6e0ecbd1c0c21719e0eef5202e099655cb1a793600d9e502790134dcad` |
| 4 | `def` | [buildBRecOnMinorPremise](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant47bdde1757c5d6df3d5ae1f5c11768fcc8d382dac65cf402778f0480a49e1616.lean/declarations/buildbreconminorpremise--38377ace53d1c54e429e7162.md) | 157 | `declaration-track:38377ace53d1c54e429e7162679b16dcda62a33a820e4a50cd920fac1f22ff50` |
| 5 | `def` | [mkBRecOnFromRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant47bdde1757c5d6df3d5ae1f5c11768fcc8d382dac65cf402778f0480a49e1616.lean/declarations/mkbreconfromrec--cb636fe397449bed4a97872d.md) | 199 | `declaration-track:cb636fe397449bed4a97872d740ce97c8fd21e95ab0530a7a63226742c002f71` |
| 6 | `def` | [mkBRecOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant47bdde1757c5d6df3d5ae1f5c11768fcc8d382dac65cf402778f0480a49e1616.lean/declarations/mkbrecon--605ecc2abd3dd9ec65ebdbc1.md) | 318 | `declaration-track:605ecc2abd3dd9ec65ebdbc11e68af882b7d0eda8d867ea31f5ff831e4d9a541` |
| 7 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant47bdde1757c5d6df3d5ae1f5c11768fcc8d382dac65cf402778f0480a49e1616.lean/declarations/builtin-initialize--944c7015bf37b603cf125c14.md) | 336 | `declaration-track:944c7015bf37b603cf125c147c8a1f298e3e9cb0737fe9538f1569b879829bb0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
