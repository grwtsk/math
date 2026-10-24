# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Affine.Variant0a78e17843e073a584901d4ae7cc29228cb9e6e670391124ed5b437cb5c837ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc410520e81544570336dffb40dd36b7ec26a815",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Affine/Variant0a78e17843e073a584901d4ae7cc29228cb9e6e670391124ed5b437cb5c837ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Affine/Variant0a78e17843e073a584901d4ae7cc29228cb9e6e670391124ed5b437cb5c837ee.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Affine/Variant0a78e17843e073a584901d4ae7cc29228cb9e6e670391124ed5b437cb5c837ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc410520e81544570336dffb40dd36b7ec26a815`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Affine/Variant0a78e17843e073a584901d4ae7cc29228cb9e6e670391124ed5b437cb5c837ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Affine/Variant0a78e17843e073a584901d4ae7cc29228cb9e6e670391124ed5b437cb5c837ee.lean.json)

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
| 1 | `theorem` | [hasFDerivAtFilter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Affine/Variant0a78e17843e073a584901d4ae7cc29228cb9e6e670391124ed5b437cb5c837ee.lean/declarations/hasfderivatfilter--1df3ee8d6cf3a39254ed6ba1.md) | 37 | `result-track:1df3ee8d6cf3a39254ed6ba1b1053e59c6560fb71a1b470ea2e2e1d4513b8fd2` |
| 2 | `theorem` | [hasStrictFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Affine/Variant0a78e17843e073a584901d4ae7cc29228cb9e6e670391124ed5b437cb5c837ee.lean/declarations/hasstrictfderivat--3a025dc26ae20a1eb0e17a9d.md) | 42 | `result-track:3a025dc26ae20a1eb0e17a9d3ff2f332d75d55cd499154bf497872315d816e2c` |
| 3 | `theorem` | [hasFDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Affine/Variant0a78e17843e073a584901d4ae7cc29228cb9e6e670391124ed5b437cb5c837ee.lean/declarations/hasfderivwithinat--a4e37cdef4e7ef2c6751d129.md) | 46 | `result-track:a4e37cdef4e7ef2c6751d1299e623c4ab54f0f372ee54827f4d1787aa5c0a930` |
| 4 | `theorem` | [hasFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Affine/Variant0a78e17843e073a584901d4ae7cc29228cb9e6e670391124ed5b437cb5c837ee.lean/declarations/hasfderivat--10139edfac77a2ab43e44565.md) | 50 | `result-track:10139edfac77a2ab43e445653b5bd36f2eac2c782f803b7a99008fff996a4200` |
| 5 | `theorem` | [differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Affine/Variant0a78e17843e073a584901d4ae7cc29228cb9e6e670391124ed5b437cb5c837ee.lean/declarations/differentiableat--05c6adac5a46965b4d7efdd9.md) | 54 | `result-track:05c6adac5a46965b4d7efdd93714909be2a1f97d9adf484ba27f19552975d90f` |
| 6 | `theorem` | [differentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Affine/Variant0a78e17843e073a584901d4ae7cc29228cb9e6e670391124ed5b437cb5c837ee.lean/declarations/differentiablewithinat--ef5e56acb383b1b65f745d14.md) | 58 | `result-track:ef5e56acb383b1b65f745d148df5c14517aa4ecd5c73191beaebbdf5820547bb` |
| 7 | `theorem` | [fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Affine/Variant0a78e17843e073a584901d4ae7cc29228cb9e6e670391124ed5b437cb5c837ee.lean/declarations/fderiv--770d788bd2f461eb570581d5.md) | 62 | `result-track:770d788bd2f461eb570581d5d0a8ee7768e371ad4ef9d288d1756513dd3069bd` |
| 8 | `theorem` | [fderivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Affine/Variant0a78e17843e073a584901d4ae7cc29228cb9e6e670391124ed5b437cb5c837ee.lean/declarations/fderivwithin--6c021f957720a2d4773d1d5d.md) | 65 | `result-track:6c021f957720a2d4773d1d5d5dcace4aaaa0180cdca076efc84ef824aacaac1c` |
| 9 | `theorem` | [differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Affine/Variant0a78e17843e073a584901d4ae7cc29228cb9e6e670391124ed5b437cb5c837ee.lean/declarations/differentiable--a4b6b96a92ec36276a6a362c.md) | 71 | `result-track:a4b6b96a92ec36276a6a362cdd34bc26e6b384d7f2c4337ed3e789dd228ee6c3` |
| 10 | `theorem` | [differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Affine/Variant0a78e17843e073a584901d4ae7cc29228cb9e6e670391124ed5b437cb5c837ee.lean/declarations/differentiableon--51ec0e745c78609b44c20da4.md) | 75 | `result-track:51ec0e745c78609b44c20da4420b98b6f5f51ecc1ed41f9e8e9b977c7c062554` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
