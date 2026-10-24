# Verification target: GRWTSK.Analysis.OperatorRound4Source.Varianta0bcc88e32fab26829df051f465970927067162c7c887b40d0d72e8b60f731ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd241285f58330fa2c9dcbd5ccecbaddf6c1ebdd",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/OperatorRound4Source/Varianta0bcc88e32fab26829df051f465970927067162c7c887b40d0d72e8b60f731ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/OperatorRound4Source/Varianta0bcc88e32fab26829df051f465970927067162c7c887b40d0d72e8b60f731ec.lean/index.md) · [Full source](../../../../mathematics/Analysis/OperatorRound4Source/Varianta0bcc88e32fab26829df051f465970927067162c7c887b40d0d72e8b60f731ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd241285f58330fa2c9dcbd5ccecbaddf6c1ebdd`.

Source path: `GRWTSK/Analysis/OperatorRound4Source/Varianta0bcc88e32fab26829df051f465970927067162c7c887b40d0d72e8b60f731ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/OperatorRound4Source/Varianta0bcc88e32fab26829df051f465970927067162c7c887b40d0d72e8b60f731ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PivotBounds` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Matrix` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [l2_opNorm_le_one_of_orthonormalRows](../../../../mathematics/Analysis/OperatorRound4Source/Varianta0bcc88e32fab26829df051f465970927067162c7c887b40d0d72e8b60f731ec.lean/declarations/l2-opnorm-le-one-of-orthonormalrows--3352fab01ef0257549feb49c.md) | 24 | `result-track:3352fab01ef0257549feb49c6f4be6cc84b252869148563ea76ed629a13aeaa4` |
| 2 | `theorem` | [l2_opNorm_toEuclideanLin_le](../../../../mathematics/Analysis/OperatorRound4Source/Varianta0bcc88e32fab26829df051f465970927067162c7c887b40d0d72e8b60f731ec.lean/declarations/l2-opnorm-toeuclideanlin-le--1e4a5abab23b70329646516e.md) | 38 | `result-track:1e4a5abab23b70329646516eb272844d9be9f825aef3317b54afe18ab1719bd2` |
| 3 | `theorem` | [euclidean_norm_restrict_le](../../../../mathematics/Analysis/OperatorRound4Source/Varianta0bcc88e32fab26829df051f465970927067162c7c887b40d0d72e8b60f731ec.lean/declarations/euclidean-norm-restrict-le--e340126d56c5d06503149188.md) | 46 | `result-track:e340126d56c5d06503149188cbe086d195a35d1ea9588e1795cd1b2cfdbb0d33` |
| 4 | `theorem` | [l2_opNorm_columnSubmatrix_le](../../../../mathematics/Analysis/OperatorRound4Source/Varianta0bcc88e32fab26829df051f465970927067162c7c887b40d0d72e8b60f731ec.lean/declarations/l2-opnorm-columnsubmatrix-le--ceb4bfbd35f741c99ddc2c75.md) | 61 | `result-track:ceb4bfbd35f741c99ddc2c75b65ae3ea18d07c3fb576c3b45e02e3fe39569b89` |
| 5 | `theorem` | [det_sq_mul_norm_sq_le_image](../../../../mathematics/Analysis/OperatorRound4Source/Varianta0bcc88e32fab26829df051f465970927067162c7c887b40d0d72e8b60f731ec.lean/declarations/det-sq-mul-norm-sq-le-image--43ef13d7334e5fe892bbc0b2.md) | 83 | `result-track:43ef13d7334e5fe892bbc0b2eee10004836af60d4378dffe6ff5aad591230483` |
| 6 | `theorem` | [l2_opNorm_inverse_le_margin](../../../../mathematics/Analysis/OperatorRound4Source/Varianta0bcc88e32fab26829df051f465970927067162c7c887b40d0d72e8b60f731ec.lean/declarations/l2-opnorm-inverse-le-margin--c7dc068c220ccdf736dcfde6.md) | 146 | `result-track:c7dc068c220ccdf736dcfde69ee08d0b07d298b515c86671703e4378374b0922` |
| 7 | `theorem` | [controlled_pivot_operator_bounds](../../../../mathematics/Analysis/OperatorRound4Source/Varianta0bcc88e32fab26829df051f465970927067162c7c887b40d0d72e8b60f731ec.lean/declarations/controlled-pivot-operator-bounds--eccdfd2710aae9693c4b74fc.md) | 174 | `result-track:eccdfd2710aae9693c4b74fc0756d03ad4fdd907b9db6a0ac523a6c1879448ca` |
| 8 | `theorem` | [controlled_transition_operator_bounds](../../../../mathematics/Analysis/OperatorRound4Source/Varianta0bcc88e32fab26829df051f465970927067162c7c887b40d0d72e8b60f731ec.lean/declarations/controlled-transition-operator-bounds--94f951fd691d0bd49e2331cf.md) | 196 | `result-track:94f951fd691d0bd49e2331cf6143bd08afc824876b379989d1d82554bb1ace68` |
| 9 | `theorem` | [controlledCover_normalization_bound](../../../../mathematics/Analysis/OperatorRound4Source/Varianta0bcc88e32fab26829df051f465970927067162c7c887b40d0d72e8b60f731ec.lean/declarations/controlledcover-normalization-bound--0714a7bc44e1729c6bcb84c9.md) | 221 | `result-track:0714a7bc44e1729c6bcb84c96dbd3c754d13a3104319409a9e21b6f48db3474a` |
| 10 | `theorem` | [controlledCover_transition_bounds](../../../../mathematics/Analysis/OperatorRound4Source/Varianta0bcc88e32fab26829df051f465970927067162c7c887b40d0d72e8b60f731ec.lean/declarations/controlledcover-transition-bounds--76b51db8cb9d12f0190f117a.md) | 235 | `result-track:76b51db8cb9d12f0190f117ac2297d9d4f114f2750174392d084bad0656731ed` |
| 11 | `theorem` | [controlledCover_rank_zero](../../../../mathematics/Analysis/OperatorRound4Source/Varianta0bcc88e32fab26829df051f465970927067162c7c887b40d0d72e8b60f731ec.lean/declarations/controlledcover-rank-zero--58b4b1866b34d88a36fc149a.md) | 250 | `result-track:58b4b1866b34d88a36fc149a12af2b052b5139ac49ac4b512e7ddb6311376734` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
