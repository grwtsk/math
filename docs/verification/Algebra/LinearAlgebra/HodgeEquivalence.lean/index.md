# Verification target: GRWTSK.LinearAlgebra.HodgeEquivalence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17b6a398b5a064a77015408f3634af88e3e86789",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/HodgeEquivalence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/HodgeEquivalence.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/HodgeEquivalence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17b6a398b5a064a77015408f3634af88e3e86789`.

Source path: `GRWTSK/LinearAlgebra/HodgeEquivalence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/HodgeEquivalence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.HodgePortConsequences`](../../../../mathematics/Algebra/LinearAlgebra/HodgePortConsequences.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HodgeEquiv](../../../../mathematics/Algebra/LinearAlgebra/HodgeEquivalence.lean/declarations/hodgeequiv--cddcd147a1c5c000723a8b4f.md) | 22 | `declaration-track:cddcd147a1c5c000723a8b4fb793d49f7bcaf36841647f4ce5e335bccb505368` |
| 2 | `def` | [toPort](../../../../mathematics/Algebra/LinearAlgebra/HodgeEquivalence.lean/declarations/toport--c3cae48b6749a240d0d1f346.md) | 39 | `declaration-track:c3cae48b6749a240d0d1f3461f203e9514e433ba4b045503ecafe9d481031990` |
| 3 | `theorem` | [delta_apply](../../../../mathematics/Algebra/LinearAlgebra/HodgeEquivalence.lean/declarations/delta-apply--9c26344a4235d8f3360ffb9d.md) | 46 | `result-track:9c26344a4235d8f3360ffb9db67da46df3e9c029e2edeeb9e28c449be4ca4cc7` |
| 4 | `theorem` | [deltaStar_apply](../../../../mathematics/Algebra/LinearAlgebra/HodgeEquivalence.lean/declarations/deltastar-apply--97ee787390dfd64bfdd6c8d5.md) | 51 | `result-track:97ee787390dfd64bfdd6c8d55cec5f29c4ec5c95e8597049c1b7aee98b29efaa` |
| 5 | `def` | [refl](../../../../mathematics/Algebra/LinearAlgebra/HodgeEquivalence.lean/declarations/refl--4121fb045536b288c7a67826.md) | 56 | `declaration-track:4121fb045536b288c7a67826b4600cda1fa4c4fde79a4b4ef6e9894dbc0f9a16` |
| 6 | `def` | [symm](../../../../mathematics/Algebra/LinearAlgebra/HodgeEquivalence.lean/declarations/symm--f11c4ae2b21fad5f386433bf.md) | 63 | `declaration-track:f11c4ae2b21fad5f386433bf1bb908e519d81dcfa65307158aa1482c3cf8459f` |
| 7 | `def` | [trans](../../../../mathematics/Algebra/LinearAlgebra/HodgeEquivalence.lean/declarations/trans--85f25c4d593f9dd0d9b8ce60.md) | 76 | `declaration-track:85f25c4d593f9dd0d9b8ce60f2e8b4552d394f75df15cdc58215b299aab7330a` |
| 8 | `theorem` | [harmonic0_iff](../../../../mathematics/Algebra/LinearAlgebra/HodgeEquivalence.lean/declarations/harmonic0-iff--840bbdb4cdbda8b675ae1189.md) | 91 | `result-track:840bbdb4cdbda8b675ae1189c466c85e1281f56439ca7303ca539ded79deb227` |
| 9 | `theorem` | [harmonic1_iff](../../../../mathematics/Algebra/LinearAlgebra/HodgeEquivalence.lean/declarations/harmonic1-iff--0b93db6dddf053a5b3afa31a.md) | 100 | `result-track:0b93db6dddf053a5b3afa31a2f36bb4d888193174b0f4f95a74c6383925efd6e` |
| 10 | `theorem` | [laplacian0_apply](../../../../mathematics/Algebra/LinearAlgebra/HodgeEquivalence.lean/declarations/laplacian0-apply--80c85684de47a967457aeec9.md) | 109 | `result-track:80c85684de47a967457aeec9d0ad43e300bb048cd5037abb0c5680dbe71c57cc` |
| 11 | `theorem` | [laplacian1_apply](../../../../mathematics/Algebra/LinearAlgebra/HodgeEquivalence.lean/declarations/laplacian1-apply--34fdbb282826dcbaf9df35e8.md) | 115 | `result-track:34fdbb282826dcbaf9df35e8548fe31b8a12579b0e1b3e359d52066bd31f5540` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
