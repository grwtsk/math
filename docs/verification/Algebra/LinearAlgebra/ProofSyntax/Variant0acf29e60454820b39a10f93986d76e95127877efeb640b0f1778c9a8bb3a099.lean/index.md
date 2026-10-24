# Verification target: GRWTSK.Algebra.LinearAlgebra.ProofSyntax.Variant0acf29e60454820b39a10f93986d76e95127877efeb640b0f1778c9a8bb3a099

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4247a3b0b4839ff02528668a2eeadadf33f933d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ProofSyntax/Variant0acf29e60454820b39a10f93986d76e95127877efeb640b0f1778c9a8bb3a099.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ProofSyntax/Variant0acf29e60454820b39a10f93986d76e95127877efeb640b0f1778c9a8bb3a099.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ProofSyntax/Variant0acf29e60454820b39a10f93986d76e95127877efeb640b0f1778c9a8bb3a099.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4247a3b0b4839ff02528668a2eeadadf33f933d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ProofSyntax/Variant0acf29e60454820b39a10f93986d76e95127877efeb640b0f1778c9a8bb3a099.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ProofSyntax/Variant0acf29e60454820b39a10f93986d76e95127877efeb640b0f1778c9a8bb3a099.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Core` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ProofTerm](../../../../../mathematics/Algebra/LinearAlgebra/ProofSyntax/Variant0acf29e60454820b39a10f93986d76e95127877efeb640b0f1778c9a8bb3a099.lean/declarations/proofterm--11b8e76532291c1a69536765.md) | 5 | `declaration-track:11b8e76532291c1a69536765c829b084038a0ed3ff39c02667fc9d50133465f5` |
| 2 | `structure` | [ProofTermMatrixCode](../../../../../mathematics/Algebra/LinearAlgebra/ProofSyntax/Variant0acf29e60454820b39a10f93986d76e95127877efeb640b0f1778c9a8bb3a099.lean/declarations/prooftermmatrixcode--422b52aa4eb652640383a458.md) | 13 | `declaration-track:422b52aa4eb652640383a45864d4a75c1f98221285fbd9481a93187566356f90` |
| 3 | `def` | [encodeProofTerm](../../../../../mathematics/Algebra/LinearAlgebra/ProofSyntax/Variant0acf29e60454820b39a10f93986d76e95127877efeb640b0f1778c9a8bb3a099.lean/declarations/encodeproofterm--371f0d0f7d3c26a93b94a970.md) | 17 | `declaration-track:371f0d0f7d3c26a93b94a970205640cfcfcbeb07e330c5d8e9c18fc404d4bf71` |
| 4 | `def` | [decodeProofTerm?](../../../../../mathematics/Algebra/LinearAlgebra/ProofSyntax/Variant0acf29e60454820b39a10f93986d76e95127877efeb640b0f1778c9a8bb3a099.lean/declarations/decodeproofterm--715e7857c6959f4062efd6de.md) | 21 | `declaration-track:715e7857c6959f4062efd6ded38c7cb4195fc156ba9dab204c6b71fcbb5276fe` |
| 5 | `theorem` | [proofTerm_roundTrip](../../../../../mathematics/Algebra/LinearAlgebra/ProofSyntax/Variant0acf29e60454820b39a10f93986d76e95127877efeb640b0f1778c9a8bb3a099.lean/declarations/proofterm-roundtrip--78779f4c73d145e3238c6dcc.md) | 24 | `result-track:78779f4c73d145e3238c6dcc6a3354cf52e8f8a1a1c0306879a1eb3470e7f68f` |
| 6 | `def` | [RepresentsProofTerm](../../../../../mathematics/Algebra/LinearAlgebra/ProofSyntax/Variant0acf29e60454820b39a10f93986d76e95127877efeb640b0f1778c9a8bb3a099.lean/declarations/representsproofterm--ce9740f1942938b572487b79.md) | 28 | `declaration-track:ce9740f1942938b572487b79123d26addc056abff543578c67db74c1b38b978c` |
| 7 | `theorem` | [finite_proofTerm_blm_representable](../../../../../mathematics/Algebra/LinearAlgebra/ProofSyntax/Variant0acf29e60454820b39a10f93986d76e95127877efeb640b0f1778c9a8bb3a099.lean/declarations/finite-proofterm-blm-representable--df094fe9f55ec90b6c871c07.md) | 31 | `result-track:df094fe9f55ec90b6c871c0772175e398308f77a145189fba5e895608ef4cbf9` |
| 8 | `structure` | [ProofAuthorityBoundary](../../../../../mathematics/Algebra/LinearAlgebra/ProofSyntax/Variant0acf29e60454820b39a10f93986d76e95127877efeb640b0f1778c9a8bb3a099.lean/declarations/proofauthorityboundary--87666eecbb56e4e0a5470985.md) | 35 | `declaration-track:87666eecbb56e4e0a5470985d2e6c15452d39f10896568bf9efa3d8a0b42f5dc` |
| 9 | `theorem` | [proofAuthorityBoundary_projects](../../../../../mathematics/Algebra/LinearAlgebra/ProofSyntax/Variant0acf29e60454820b39a10f93986d76e95127877efeb640b0f1778c9a8bb3a099.lean/declarations/proofauthorityboundary-projects--87162564429d2756c3f7f228.md) | 40 | `result-track:87162564429d2756c3f7f2287f489deea39e5b31195240ea7fb984e74993dea9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
