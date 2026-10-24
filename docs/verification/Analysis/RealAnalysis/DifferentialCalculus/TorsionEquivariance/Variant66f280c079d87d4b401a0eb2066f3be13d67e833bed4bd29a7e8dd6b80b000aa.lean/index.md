# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.TorsionEquivariance.Variant66f280c079d87d4b401a0eb2066f3be13d67e833bed4bd29a7e8dd6b80b000aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "776cb73e7b78e4e9ed9fccb286422d7a260aa952",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TorsionEquivariance/Variant66f280c079d87d4b401a0eb2066f3be13d67e833bed4bd29a7e8dd6b80b000aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TorsionEquivariance/Variant66f280c079d87d4b401a0eb2066f3be13d67e833bed4bd29a7e8dd6b80b000aa.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TorsionEquivariance/Variant66f280c079d87d4b401a0eb2066f3be13d67e833bed4bd29a7e8dd6b80b000aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `776cb73e7b78e4e9ed9fccb286422d7a260aa952`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TorsionEquivariance/Variant66f280c079d87d4b401a0eb2066f3be13d67e833bed4bd29a7e8dd6b80b000aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/TorsionEquivariance/Variant66f280c079d87d4b401a0eb2066f3be13d67e833bed4bd29a7e8dd6b80b000aa.lean.json)

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
| 1 | `inductive` | [TorsionFamily](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TorsionEquivariance/Variant66f280c079d87d4b401a0eb2066f3be13d67e833bed4bd29a7e8dd6b80b000aa.lean/declarations/torsionfamily--11a09923f983a409e5e0731c.md) | 15 | `declaration-track:11a09923f983a409e5e0731cae27eb7691926522a778f2eb57669654173f4b12` |
| 2 | `structure` | [TorsionFamilyCertificate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TorsionEquivariance/Variant66f280c079d87d4b401a0eb2066f3be13d67e833bed4bd29a7e8dd6b80b000aa.lean/declarations/torsionfamilycertificate--d825b13e92f60525df55346e.md) | 28 | `declaration-track:d825b13e92f60525df55346ebef17f6e1bcac6027f72881f5ac2a9c22478bad7` |
| 3 | `def` | [TorsionFamilyCertificate.sound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TorsionEquivariance/Variant66f280c079d87d4b401a0eb2066f3be13d67e833bed4bd29a7e8dd6b80b000aa.lean/declarations/torsionfamilycertificate-sound--2e3c9b75347bc314c7aa73ca.md) | 44 | `declaration-track:2e3c9b75347bc314c7aa73caf080b82d812295ebf171db4f79dc55d12e72026f` |
| 4 | `theorem` | [torsion_family_certificate_sound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TorsionEquivariance/Variant66f280c079d87d4b401a0eb2066f3be13d67e833bed4bd29a7e8dd6b80b000aa.lean/declarations/torsion-family-certificate-sound--7a43df753d5c0bed6866cd83.md) | 55 | `result-track:7a43df753d5c0bed6866cd832f233b63c12018f954d80b63bc61d233e42bf869` |
| 5 | `structure` | [TorsionEquivarianceCertificate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TorsionEquivariance/Variant66f280c079d87d4b401a0eb2066f3be13d67e833bed4bd29a7e8dd6b80b000aa.lean/declarations/torsionequivariancecertificate--95afed2bf9d6ce9b89e0570d.md) | 67 | `declaration-track:95afed2bf9d6ce9b89e0570dbaaf999ecee66e5fe96f63650cd5cea757fba4d0` |
| 6 | `def` | [TorsionEquivarianceCertificate.sound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TorsionEquivariance/Variant66f280c079d87d4b401a0eb2066f3be13d67e833bed4bd29a7e8dd6b80b000aa.lean/declarations/torsionequivariancecertificate-sound--f704ebd99d4c62556b395fb9.md) | 88 | `declaration-track:f704ebd99d4c62556b395fb9b5b88d55ca3f231088ca63d9dce60084cc777314` |
| 7 | `theorem` | [torsion_equivariance_certificate_sound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TorsionEquivariance/Variant66f280c079d87d4b401a0eb2066f3be13d67e833bed4bd29a7e8dd6b80b000aa.lean/declarations/torsion-equivariance-certificate-sound--ef51b04ba2667f9079a09886.md) | 107 | `result-track:ef51b04ba2667f9079a098868798632d1104e9935caee3143e23304e95ca165c` |
| 8 | `theorem` | [torsion_equivariance_through_boundary_calculus](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TorsionEquivariance/Variant66f280c079d87d4b401a0eb2066f3be13d67e833bed4bd29a7e8dd6b80b000aa.lean/declarations/torsion-equivariance-through-boundary-calculus--daaea50ccf2fca3a0b0fc635.md) | 126 | `result-track:daaea50ccf2fca3a0b0fc635aa9eef67df708fa0a3c5682316f06eb4daba4796` |
| 9 | `def` | [FiniteTorsionBooleanOwnsEquivariance](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TorsionEquivariance/Variant66f280c079d87d4b401a0eb2066f3be13d67e833bed4bd29a7e8dd6b80b000aa.lean/declarations/finitetorsionbooleanownsequivariance--9f66005b877988310b42bf6d.md) | 132 | `declaration-track:9f66005b877988310b42bf6d37e6fb293fd094ee9fa1e03e1b331a0ddb1bef8e` |
| 10 | `theorem` | [finite_torsion_boolean_authority_attempt_fails](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/TorsionEquivariance/Variant66f280c079d87d4b401a0eb2066f3be13d67e833bed4bd29a7e8dd6b80b000aa.lean/declarations/finite-torsion-boolean-authority-attempt-fails--efed819ca34b9bcfa720a91a.md) | 137 | `result-track:efed819ca34b9bcfa720a91a7facd3a92817673a97a17d5625c0de88bae8b675` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
