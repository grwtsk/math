# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.AD8d6cd8ee9855ec5.Variant794f9ac3c2ba6a7f20488f899e2b190d51d6827c392bd570ebd58270491f4d4f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4fe8c76a85b9c65a4637bc47ca655a8174b61278",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/AD8d6cd8ee9855ec5/Variant794f9ac3c2ba6a7f20488f899e2b190d51d6827c392bd570ebd58270491f4d4f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AD8d6cd8ee9855ec5/Variant794f9ac3c2ba6a7f20488f899e2b190d51d6827c392bd570ebd58270491f4d4f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AD8d6cd8ee9855ec5/Variant794f9ac3c2ba6a7f20488f899e2b190d51d6827c392bd570ebd58270491f4d4f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4fe8c76a85b9c65a4637bc47ca655a8174b61278`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/AD8d6cd8ee9855ec5/Variant794f9ac3c2ba6a7f20488f899e2b190d51d6827c392bd570ebd58270491f4d4f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/AD8d6cd8ee9855ec5/Variant794f9ac3c2ba6a7f20488f899e2b190d51d6827c392bd570ebd58270491f4d4f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MathDiscovery.Oracle.Naming.Cochain` — import line 6; external provider; requires a separately pinned dependency.
- `MathDiscovery.Oracle.Naming.CochainAtoms.A_31aa31c17d4a941d` — import line 8; external provider; requires a separately pinned dependency.
- `MathDiscovery.Oracle.Naming.EventAtoms.A_b4b4c4f2eccc5fbb` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [EventPath](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AD8d6cd8ee9855ec5/Variant794f9ac3c2ba6a7f20488f899e2b190d51d6827c392bd570ebd58270491f4d4f.lean/declarations/eventpath--6f555f4f49fec9eaf8f1e12a.md) | 18 | `declaration-track:6f555f4f49fec9eaf8f1e12a400e64275c9ec81aa03dd4be18eba6ed3fb76f1a` |
| 2 | `structure` | [ExactPathCertificate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AD8d6cd8ee9855ec5/Variant794f9ac3c2ba6a7f20488f899e2b190d51d6827c392bd570ebd58270491f4d4f.lean/declarations/exactpathcertificate--8efb19d64739a528f7b5153d.md) | 23 | `declaration-track:8efb19d64739a528f7b5153d8f7aa4395f7bb48dde565a243f675baf604ce591` |
| 3 | `theorem` | [coboundary_integral_closedWalk_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AD8d6cd8ee9855ec5/Variant794f9ac3c2ba6a7f20488f899e2b190d51d6827c392bd570ebd58270491f4d4f.lean/declarations/coboundary-integral-closedwalk-eq-zero--ba4498888b4f630b55a5378d.md) | 27 | `result-track:ba4498888b4f630b55a5378d6012fd340c5207c60de37289d1c8f3cd3239d211` |
| 4 | `theorem` | [parallel_paths_have_equal_integral_of_exact_cochain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AD8d6cd8ee9855ec5/Variant794f9ac3c2ba6a7f20488f899e2b190d51d6827c392bd570ebd58270491f4d4f.lean/declarations/parallel-paths-have-equal-integral-of-exact-cochain--e61ba61f566958661128f7f3.md) | 35 | `result-track:e61ba61f566958661128f7f304a84b46ff08a901031d529d37cbc695aaaabf65` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
