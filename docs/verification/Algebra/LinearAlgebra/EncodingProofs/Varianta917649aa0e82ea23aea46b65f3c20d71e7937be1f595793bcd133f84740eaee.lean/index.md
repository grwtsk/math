# Verification target: GRWTSK.Algebra.LinearAlgebra.EncodingProofs.Varianta917649aa0e82ea23aea46b65f3c20d71e7937be1f595793bcd133f84740eaee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "995df55754a7266334c5598a93b07e46a672325c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/EncodingProofs/Varianta917649aa0e82ea23aea46b65f3c20d71e7937be1f595793bcd133f84740eaee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/EncodingProofs/Varianta917649aa0e82ea23aea46b65f3c20d71e7937be1f595793bcd133f84740eaee.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/EncodingProofs/Varianta917649aa0e82ea23aea46b65f3c20d71e7937be1f595793bcd133f84740eaee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `995df55754a7266334c5598a93b07e46a672325c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/EncodingProofs/Varianta917649aa0e82ea23aea46b65f3c20d71e7937be1f595793bcd133f84740eaee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/EncodingProofs/Varianta917649aa0e82ea23aea46b65f3c20d71e7937be1f595793bcd133f84740eaee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.EMLCircuit` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.Legacy.BinaryLogicMatrix.ElementaryCatalogue` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [EncodingData](../../../../../mathematics/Algebra/LinearAlgebra/EncodingProofs/Varianta917649aa0e82ea23aea46b65f3c20d71e7937be1f595793bcd133f84740eaee.lean/declarations/encodingdata--0d9bd787ce015293aa5fac15.md) | 14 | `declaration-track:0d9bd787ce015293aa5fac15daba2ac4333308f384848ee5d4cfc2bf93d5d6fb` |
| 2 | `structure` | [CertifiedEncoding](../../../../../mathematics/Algebra/LinearAlgebra/EncodingProofs/Varianta917649aa0e82ea23aea46b65f3c20d71e7937be1f595793bcd133f84740eaee.lean/declarations/certifiedencoding--7494d0f3c073020702e3eeae.md) | 22 | `declaration-track:7494d0f3c073020702e3eeaebfd5b1115af0f5a95a30e924ec3c32eddc2270c3` |
| 3 | `def` | [semanticStatus](../../../../../mathematics/Algebra/LinearAlgebra/EncodingProofs/Varianta917649aa0e82ea23aea46b65f3c20d71e7937be1f595793bcd133f84740eaee.lean/declarations/semanticstatus--f82487ad8d9320f23109d10a.md) | 29 | `declaration-track:f82487ad8d9320f23109d10a9c20081d68eaa0bdad0ab3981f0cd3a4add88ea7` |
| 4 | `def` | [proofStatus](../../../../../mathematics/Algebra/LinearAlgebra/EncodingProofs/Varianta917649aa0e82ea23aea46b65f3c20d71e7937be1f595793bcd133f84740eaee.lean/declarations/proofstatus--88068f79d183100dd673a3b1.md) | 30 | `declaration-track:88068f79d183100dd673a3b1b572ad945892be74b57798dce19133973fa630d2` |
| 5 | `def` | [certifiedOne](../../../../../mathematics/Algebra/LinearAlgebra/EncodingProofs/Varianta917649aa0e82ea23aea46b65f3c20d71e7937be1f595793bcd133f84740eaee.lean/declarations/certifiedone--82ee9519e5730fb4eae5d021.md) | 32 | `declaration-track:82ee9519e5730fb4eae5d02143602ad4a40159292bc82fd3325140c5ddfa2741` |
| 6 | `def` | [certifiedVar](../../../../../mathematics/Algebra/LinearAlgebra/EncodingProofs/Varianta917649aa0e82ea23aea46b65f3c20d71e7937be1f595793bcd133f84740eaee.lean/declarations/certifiedvar--9da1a20ec2a4c72b77c3ff18.md) | 48 | `declaration-track:9da1a20ec2a4c72b77c3ff18e825febbbc4c6653b278365bdf724d6096edc45f` |
| 7 | `def` | [certifiedExp](../../../../../mathematics/Algebra/LinearAlgebra/EncodingProofs/Varianta917649aa0e82ea23aea46b65f3c20d71e7937be1f595793bcd133f84740eaee.lean/declarations/certifiedexp--fc3b337c78226645521c741f.md) | 64 | `declaration-track:fc3b337c78226645521c741febfbef4baa0c4586f711f57665e7e2489ff38e47` |
| 8 | `def` | [certifiedLog](../../../../../mathematics/Algebra/LinearAlgebra/EncodingProofs/Varianta917649aa0e82ea23aea46b65f3c20d71e7937be1f595793bcd133f84740eaee.lean/declarations/certifiedlog--b2b56c7e63e66ae58fd2bb60.md) | 80 | `declaration-track:b2b56c7e63e66ae58fd2bb605cc4a2a39e91e678c06fc963a03745d8e551d1bc` |
| 9 | `theorem` | [selectedCatalogue_complete](../../../../../mathematics/Algebra/LinearAlgebra/EncodingProofs/Varianta917649aa0e82ea23aea46b65f3c20d71e7937be1f595793bcd133f84740eaee.lean/declarations/selectedcatalogue-complete--4ee3738b092500030e52bced.md) | 96 | `result-track:4ee3738b092500030e52bced1e70cfe7ef5e379f1dc6274f69e3e2917c193d47` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
