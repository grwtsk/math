# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.WitnessDischarge.Variant9cfda335dd9f9413ed75e9ca32de1b7fcd694099a20e2e9e43ce2d419b83f356

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "669ac2313423c808bbb9eded3295c80b5cda61dd",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/WitnessDischarge/Variant9cfda335dd9f9413ed75e9ca32de1b7fcd694099a20e2e9e43ce2d419b83f356.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/WitnessDischarge/Variant9cfda335dd9f9413ed75e9ca32de1b7fcd694099a20e2e9e43ce2d419b83f356.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/WitnessDischarge/Variant9cfda335dd9f9413ed75e9ca32de1b7fcd694099a20e2e9e43ce2d419b83f356.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `669ac2313423c808bbb9eded3295c80b5cda61dd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/WitnessDischarge/Variant9cfda335dd9f9413ed75e9ca32de1b7fcd694099a20e2e9e43ce2d419b83f356.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ProofTheory/WitnessDischarge/Variant9cfda335dd9f9413ed75e9ca32de1b7fcd694099a20e2e9e43ce2d419b83f356.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.ProofStrategy.CertifiedRoute` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AcceptedSeedRegistry](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/WitnessDischarge/Variant9cfda335dd9f9413ed75e9ca32de1b7fcd694099a20e2e9e43ce2d419b83f356.lean/declarations/acceptedseedregistry--1122d0f11746379fc6791886.md) | 27 | `declaration-track:1122d0f11746379fc6791886bf8612469f0acea5786ea491f42e6b09861684b2` |
| 2 | `inductive` | [Derivation](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/WitnessDischarge/Variant9cfda335dd9f9413ed75e9ca32de1b7fcd694099a20e2e9e43ce2d419b83f356.lean/declarations/derivation--25fb419583363dd75f522eb7.md) | 34 | `declaration-track:25fb419583363dd75f522eb7ea57ae2ee5ead2e18bc48afc66dc1f4b8d5a73a5` |
| 3 | `theorem` | [proves](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/WitnessDischarge/Variant9cfda335dd9f9413ed75e9ca32de1b7fcd694099a20e2e9e43ce2d419b83f356.lean/declarations/proves--32c85b9fa8e1c864efb61d51.md) | 59 | `result-track:32c85b9fa8e1c864efb61d512b359181e38e08d4080d161c1f856056300558b0` |
| 4 | `def` | [Discharged](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/WitnessDischarge/Variant9cfda335dd9f9413ed75e9ca32de1b7fcd694099a20e2e9e43ce2d419b83f356.lean/declarations/discharged--9c5dff645a957ff3d2a00cdc.md) | 79 | `declaration-track:9c5dff645a957ff3d2a00cdc799ca927d2b9c1cac955ad06758c09b9be61fd5c` |
| 5 | `theorem` | [acceptedSeed_discharged](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/WitnessDischarge/Variant9cfda335dd9f9413ed75e9ca32de1b7fcd694099a20e2e9e43ce2d419b83f356.lean/declarations/acceptedseed-discharged--c121b4387f5a2df245ffd95d.md) | 91 | `result-track:c121b4387f5a2df245ffd95d1b12c994aec36dda90d09b6a0b3c0a0156bd7ee0` |
| 6 | `theorem` | [usableRoute_discharged](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/WitnessDischarge/Variant9cfda335dd9f9413ed75e9ca32de1b7fcd694099a20e2e9e43ce2d419b83f356.lean/declarations/usableroute-discharged--5f141c5619c4ded625a0704c.md) | 105 | `result-track:5f141c5619c4ded625a0704c8d14b19cb6397d6e6b0074ee7bbf8f52ae83ae63` |
| 7 | `theorem` | [discharged_proves](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/WitnessDischarge/Variant9cfda335dd9f9413ed75e9ca32de1b7fcd694099a20e2e9e43ce2d419b83f356.lean/declarations/discharged-proves--239b87ca2e57cc9af03226da.md) | 125 | `result-track:239b87ca2e57cc9af03226da2252c8d2fd94df57b39c019c61e67ab0e4bfc2bb` |
| 8 | `theorem` | [rejectedStatement_not_discharged](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/WitnessDischarge/Variant9cfda335dd9f9413ed75e9ca32de1b7fcd694099a20e2e9e43ce2d419b83f356.lean/declarations/rejectedstatement-not-discharged--68459b858a174674d7a76ec5.md) | 140 | `result-track:68459b858a174674d7a76ec566c1bf8de8f07b012838768d8239cc09195af409` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
