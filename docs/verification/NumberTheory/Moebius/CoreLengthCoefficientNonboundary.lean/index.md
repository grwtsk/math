# Verification target: GRWTSK.NumberTheory.Moebius.CoreLengthCoefficientNonboundary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "500a733351224a3b1949bd5887283a687a42d364",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreLengthCoefficientNonboundary.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientNonboundary.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientNonboundary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `500a733351224a3b1949bd5887283a687a42d364`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreLengthCoefficientNonboundary.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreLengthCoefficientNonboundary.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreLengthCoefficientBoundaryWitness`](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientBoundaryWitness.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reciprocalFirstDifference](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientNonboundary.lean/declarations/reciprocalfirstdifference--ad875e12e8c1cd3d1c948a26.md) | 20 | `declaration-track:ad875e12e8c1cd3d1c948a26318570125358d96532b1ba3c64d7a7652c2d0e09` |
| 2 | `def` | [reciprocalSecondDifference](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientNonboundary.lean/declarations/reciprocalseconddifference--52d74abacaa8b172b0fdbd56.md) | 24 | `declaration-track:52d74abacaa8b172b0fdbd566d9d6c14a7e26b8d7c018cf0fdf022ae6c7c4636` |
| 3 | `theorem` | [sum_Ico_sub_succ](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientNonboundary.lean/declarations/sum-ico-sub-succ--7ad47d2ed4676fda50fb6d86.md) | 28 | `result-track:7ad47d2ed4676fda50fb6d86831b350a4a2b5816e31001cf2e3aae544a99105e` |
| 4 | `theorem` | [sum_reciprocalSecondDifference_Ico](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientNonboundary.lean/declarations/sum-reciprocalseconddifference-ico--a121f3273ff9c761f9850c30.md) | 41 | `result-track:a121f3273ff9c761f9850c30d424195fe9d2109687f539cbac59cd43de115a5b` |
| 5 | `theorem` | [reciprocalFirstDifference_eq](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientNonboundary.lean/declarations/reciprocalfirstdifference-eq--ee8a8316cf5363a9097ae6c0.md) | 49 | `result-track:ee8a8316cf5363a9097ae6c0a008724aed34fa31e4d4f0bd6cdd50ad85c33dce` |
| 6 | `theorem` | [reciprocalSecondDifference_eq](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientNonboundary.lean/declarations/reciprocalseconddifference-eq--9df9dbbc469bf8bbf003d0a5.md) | 60 | `result-track:9df9dbbc469bf8bbf003d0a5404038f8eb77da7b8ac8e2c24cb0ad4ba34ea697` |
| 7 | `theorem` | [reciprocalFirstDifference_le_inv_sq](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientNonboundary.lean/declarations/reciprocalfirstdifference-le-inv-sq--5d0f2f6d66b3fe7066a2d068.md) | 75 | `result-track:5d0f2f6d66b3fe7066a2d0687c0e7cc8b1ddb640bbd10fe8c2c60ec1bf1b5d1d` |
| 8 | `theorem` | [leftLengthCoefficientMass_eq_nonboundary](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientNonboundary.lean/declarations/leftlengthcoefficientmass-eq-nonboundary--3e1054f9bed9a0ba2ed322bc.md) | 94 | `result-track:3e1054f9bed9a0ba2ed322bcfd5151310bf9877f59dc63e0b99c3fc831457387` |
| 9 | `theorem` | [leftLengthCoefficientMass_le_three_inv_sq](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientNonboundary.lean/declarations/leftlengthcoefficientmass-le-three-inv-sq--925f4118aae40068d77884a3.md) | 134 | `result-track:925f4118aae40068d77884a33d7a4089b14aeb47011572ba1e4c5582833fb6c1` |
| 10 | `def` | [RightLengthCoefficientTelescoping](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientNonboundary.lean/declarations/rightlengthcoefficienttelescoping--bb92191f3f92f2970324b37b.md) | 179 | `declaration-track:bb92191f3f92f2970324b37bf69f7e0812d5d08fca285e8c1c4e975f5c3d8525` |
| 11 | `theorem` | [fullLengthCoefficientMass_le_three_inv_sq_of_rightTelescope](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientNonboundary.lean/declarations/fulllengthcoefficientmass-le-three-inv-sq-of-righttelescope--cc493ab2fe979a881ef949fa.md) | 188 | `result-track:cc493ab2fe979a881ef949fab6514861adea8f3e56b618f765d646bddd5316f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
