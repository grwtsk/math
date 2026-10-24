# Verification target: GRWTSK.Algebra.CylinderTrace.Variant8f364078bc55dafd7bfbfe1a01117276716cdb3c6e59db5e6b512dc9e74c5c68

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f66b8a8ceb2e06a0843602c5e028385fede5c4d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CylinderTrace/Variant8f364078bc55dafd7bfbfe1a01117276716cdb3c6e59db5e6b512dc9e74c5c68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/CylinderTrace/Variant8f364078bc55dafd7bfbfe1a01117276716cdb3c6e59db5e6b512dc9e74c5c68.lean/index.md) · [Full source](../../../../mathematics/Algebra/CylinderTrace/Variant8f364078bc55dafd7bfbfe1a01117276716cdb3c6e59db5e6b512dc9e74c5c68.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f66b8a8ceb2e06a0843602c5e028385fede5c4d`.

Source path: `GRWTSK/Algebra/CylinderTrace/Variant8f364078bc55dafd7bfbfe1a01117276716cdb3c6e59db5e6b512dc9e74c5c68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CylinderTrace/Variant8f364078bc55dafd7bfbfe1a01117276716cdb3c6e59db5e6b512dc9e74c5c68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.StratifiedBoundary.Trace.SuccessorTrace` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CylinderPresentation](../../../../mathematics/Algebra/CylinderTrace/Variant8f364078bc55dafd7bfbfe1a01117276716cdb3c6e59db5e6b512dc9e74c5c68.lean/declarations/cylinderpresentation--14bc53e3a498182383c1b31e.md) | 26 | `declaration-track:14bc53e3a498182383c1b31eced43baea547c6a7e951d0ff29ec29d3cd179182` |
| 2 | `structure` | [CylinderEquivalenceCertificate](../../../../mathematics/Algebra/CylinderTrace/Variant8f364078bc55dafd7bfbfe1a01117276716cdb3c6e59db5e6b512dc9e74c5c68.lean/declarations/cylinderequivalencecertificate--1f7aa5373ee7c4de511663c9.md) | 40 | `declaration-track:1f7aa5373ee7c4de511663c946b7e024073d15e799837ec4c7cbc02f4656f8f9` |
| 3 | `def` | [CylinderEquivalenceCertificate.setoid](../../../../mathematics/Algebra/CylinderTrace/Variant8f364078bc55dafd7bfbfe1a01117276716cdb3c6e59db5e6b512dc9e74c5c68.lean/declarations/cylinderequivalencecertificate-setoid--469d5d94678c9ed99746ead7.md) | 89 | `declaration-track:469d5d94678c9ed99746ead76dad83970e4a8f6974a7f9b422718dbcd25384fb` |
| 4 | `abbrev` | [CylinderObservable](../../../../mathematics/Algebra/CylinderTrace/Variant8f364078bc55dafd7bfbfe1a01117276716cdb3c6e59db5e6b512dc9e74c5c68.lean/declarations/cylinderobservable--dd665edacbc818462c16c871.md) | 108 | `declaration-track:dd665edacbc818462c16c871a38bb6ff70f545c07be4392c38782a1d1f893de5` |
| 5 | `def` | [limitTrace](../../../../mathematics/Algebra/CylinderTrace/Variant8f364078bc55dafd7bfbfe1a01117276716cdb3c6e59db5e6b512dc9e74c5c68.lean/declarations/limittrace--a1983aa3a578eb8d1c2f8fc5.md) | 122 | `declaration-track:a1983aa3a578eb8d1c2f8fc52e5e7c28c67b8207c4625b912fbaba7f9fca06e9` |
| 6 | `theorem` | [limitTrace_mk](../../../../mathematics/Algebra/CylinderTrace/Variant8f364078bc55dafd7bfbfe1a01117276716cdb3c6e59db5e6b512dc9e74c5c68.lean/declarations/limittrace-mk--361768e55df4a6094adf2ac5.md) | 144 | `result-track:361768e55df4a6094adf2ac5d4a4e408dc7b0972a49bbf2eaad4dea1f6e7bed5` |
| 7 | `structure` | [CylinderTraceLawCertificate](../../../../mathematics/Algebra/CylinderTrace/Variant8f364078bc55dafd7bfbfe1a01117276716cdb3c6e59db5e6b512dc9e74c5c68.lean/declarations/cylindertracelawcertificate--09c915cb2835b7109970bef7.md) | 166 | `declaration-track:09c915cb2835b7109970bef7451bdc336e9140216b03034f86e6ebbcb56aa0f9` |
| 8 | `theorem` | [cylinder_trace_well_defined](../../../../mathematics/Algebra/CylinderTrace/Variant8f364078bc55dafd7bfbfe1a01117276716cdb3c6e59db5e6b512dc9e74c5c68.lean/declarations/cylinder-trace-well-defined--b774262097dd2efcaf2e0687.md) | 211 | `result-track:b774262097dd2efcaf2e06879baa17c7131e11c95f036e491292ec468d385d17` |
| 9 | `theorem` | [limit_trace_tracial](../../../../mathematics/Algebra/CylinderTrace/Variant8f364078bc55dafd7bfbfe1a01117276716cdb3c6e59db5e6b512dc9e74c5c68.lean/declarations/limit-trace-tracial--0a527235879be644f2e499d3.md) | 235 | `result-track:0a527235879be644f2e499d30b268e161d8f2d7a4631265338ace9344c8c0e8b` |
| 10 | `theorem` | [limit_trace_positive](../../../../mathematics/Algebra/CylinderTrace/Variant8f364078bc55dafd7bfbfe1a01117276716cdb3c6e59db5e6b512dc9e74c5c68.lean/declarations/limit-trace-positive--2e3cddb41f527b5db60eaf74.md) | 257 | `result-track:2e3cddb41f527b5db60eaf742dcfb9c8f548584d57f9c23e93dc52c47f95441f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
