# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.TorsionEquivariance.Variantca9e06e0ab041da533b7f4a1235239ce957cd4c1a14dd2bc5d66ec362903dc91

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f0d6ba193750605bedf5d55ba51e8e0e5a476a5",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TorsionEquivariance/Variantca9e06e0ab041da533b7f4a1235239ce957cd4c1a14dd2bc5d66ec362903dc91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TorsionEquivariance/Variantca9e06e0ab041da533b7f4a1235239ce957cd4c1a14dd2bc5d66ec362903dc91.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TorsionEquivariance/Variantca9e06e0ab041da533b7f4a1235239ce957cd4c1a14dd2bc5d66ec362903dc91.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f0d6ba193750605bedf5d55ba51e8e0e5a476a5`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TorsionEquivariance/Variantca9e06e0ab041da533b7f4a1235239ce957cd4c1a14dd2bc5d66ec362903dc91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/TorsionEquivariance/Variantca9e06e0ab041da533b7f4a1235239ce957cd4c1a14dd2bc5d66ec362903dc91.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [TorsionFamily](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TorsionEquivariance/Variantca9e06e0ab041da533b7f4a1235239ce957cd4c1a14dd2bc5d66ec362903dc91.lean/declarations/torsionfamily--1048700b069a75bc5d4c8dfc.md) | 23 | `declaration-track:1048700b069a75bc5d4c8dfc8802902dbd8a3f1b126ed9a22a2126aa3a35c80a` |
| 2 | `structure` | [TorsionFamilyCertificate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TorsionEquivariance/Variantca9e06e0ab041da533b7f4a1235239ce957cd4c1a14dd2bc5d66ec362903dc91.lean/declarations/torsionfamilycertificate--9ef18c81cd04c2ef5b102a8f.md) | 36 | `declaration-track:9ef18c81cd04c2ef5b102a8f7e4993d24ee16c0cc99ea7789da366434e17d1da` |
| 3 | `def` | [TorsionFamilyCertificate.sound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TorsionEquivariance/Variantca9e06e0ab041da533b7f4a1235239ce957cd4c1a14dd2bc5d66ec362903dc91.lean/declarations/torsionfamilycertificate-sound--ea3f95ca0d30569b0e042d56.md) | 52 | `declaration-track:ea3f95ca0d30569b0e042d56cd4a0aaede7dbb001878e20f4cfed37bd3e26f9a` |
| 4 | `theorem` | [torsion_family_certificate_sound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TorsionEquivariance/Variantca9e06e0ab041da533b7f4a1235239ce957cd4c1a14dd2bc5d66ec362903dc91.lean/declarations/torsion-family-certificate-sound--8601f991df450ea01465c9bb.md) | 63 | `result-track:8601f991df450ea01465c9bbd455a79f6d6c79a6d2c65d12ade8b0aca7a7caf0` |
| 5 | `structure` | [TorsionEquivarianceCertificate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TorsionEquivariance/Variantca9e06e0ab041da533b7f4a1235239ce957cd4c1a14dd2bc5d66ec362903dc91.lean/declarations/torsionequivariancecertificate--d5e44a8aacec91c92f7ccc0c.md) | 75 | `declaration-track:d5e44a8aacec91c92f7ccc0c5c2996f82d3716efd11f0c854b1a534975b41355` |
| 6 | `def` | [TorsionEquivarianceCertificate.sound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TorsionEquivariance/Variantca9e06e0ab041da533b7f4a1235239ce957cd4c1a14dd2bc5d66ec362903dc91.lean/declarations/torsionequivariancecertificate-sound--c113311d21d5bb3c5d2dd664.md) | 96 | `declaration-track:c113311d21d5bb3c5d2dd664950fe4cbda8316397dfefd98f0f00a8cbf573fdb` |
| 7 | `theorem` | [torsion_equivariance_certificate_sound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TorsionEquivariance/Variantca9e06e0ab041da533b7f4a1235239ce957cd4c1a14dd2bc5d66ec362903dc91.lean/declarations/torsion-equivariance-certificate-sound--24a65201d9eb7adbb1899cee.md) | 115 | `result-track:24a65201d9eb7adbb1899cee907ad7878b0b9520b17b090971b4a925b7872cdc` |
| 8 | `theorem` | [torsion_equivariance_through_boundary_calculus](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TorsionEquivariance/Variantca9e06e0ab041da533b7f4a1235239ce957cd4c1a14dd2bc5d66ec362903dc91.lean/declarations/torsion-equivariance-through-boundary-calculus--18ffc3f0c5e6b1c7bea888b3.md) | 134 | `result-track:18ffc3f0c5e6b1c7bea888b3962a43410351b81bf1d64f06fcaaba7987b8dd51` |
| 9 | `def` | [FiniteTorsionBooleanOwnsEquivariance](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TorsionEquivariance/Variantca9e06e0ab041da533b7f4a1235239ce957cd4c1a14dd2bc5d66ec362903dc91.lean/declarations/finitetorsionbooleanownsequivariance--fabd4eb20d1e1e4d5b8425ae.md) | 140 | `declaration-track:fabd4eb20d1e1e4d5b8425ae7a8f1ca11ab6f6314e5b28f598ca5839a92551ad` |
| 10 | `theorem` | [finite_torsion_boolean_authority_attempt_fails](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TorsionEquivariance/Variantca9e06e0ab041da533b7f4a1235239ce957cd4c1a14dd2bc5d66ec362903dc91.lean/declarations/finite-torsion-boolean-authority-attempt-fails--209c64c8e8288cc288ccb5b5.md) | 145 | `result-track:209c64c8e8288cc288ccb5b547f971b7c74d4c89fbcad321206481ab8459468d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
