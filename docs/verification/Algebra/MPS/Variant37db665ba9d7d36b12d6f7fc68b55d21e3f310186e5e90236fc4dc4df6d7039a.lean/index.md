# Verification target: GRWTSK.Algebra.MPS.Variant37db665ba9d7d36b12d6f7fc68b55d21e3f310186e5e90236fc4dc4df6d7039a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b7600a1f31bd85a3baa6ecbc7235af86d46ceea",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/MPS/Variant37db665ba9d7d36b12d6f7fc68b55d21e3f310186e5e90236fc4dc4df6d7039a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/MPS/Variant37db665ba9d7d36b12d6f7fc68b55d21e3f310186e5e90236fc4dc4df6d7039a.lean/index.md) · [Full source](../../../../mathematics/Algebra/MPS/Variant37db665ba9d7d36b12d6f7fc68b55d21e3f310186e5e90236fc4dc4df6d7039a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b7600a1f31bd85a3baa6ecbc7235af86d46ceea`.

Source path: `GRWTSK/Algebra/MPS/Variant37db665ba9d7d36b12d6f7fc68b55d21e3f310186e5e90236fc4dc4df6d7039a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/MPS/Variant37db665ba9d7d36b12d6f7fc68b55d21e3f310186e5e90236fc4dc4df6d7039a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.TensorNetwork.State` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OpenMPS](../../../../mathematics/Algebra/MPS/Variant37db665ba9d7d36b12d6f7fc68b55d21e3f310186e5e90236fc4dc4df6d7039a.lean/declarations/openmps--8a2d198212ddd419500c8a45.md) | 25 | `declaration-track:8a2d198212ddd419500c8a45dd3346b74810e3e3cba89d3c3befdfce7e43e9fa` |
| 2 | `def` | [OpenMPS.contract](../../../../mathematics/Algebra/MPS/Variant37db665ba9d7d36b12d6f7fc68b55d21e3f310186e5e90236fc4dc4df6d7039a.lean/declarations/openmps-contract--10d9b2564a8860b23724e502.md) | 35 | `declaration-track:10d9b2564a8860b23724e50209f7936eb61ed38e79b3ea1fa247420f2709f527` |
| 3 | `def` | [ExactMPSRepresentation](../../../../mathematics/Algebra/MPS/Variant37db665ba9d7d36b12d6f7fc68b55d21e3f310186e5e90236fc4dc4df6d7039a.lean/declarations/exactmpsrepresentation--eccf5081f525f74977a345c0.md) | 47 | `declaration-track:eccf5081f525f74977a345c0772edff5b95546f31a61f7377f48c1e993190aa4` |
| 4 | `def` | [tensorL1Distance](../../../../mathematics/Algebra/MPS/Variant37db665ba9d7d36b12d6f7fc68b55d21e3f310186e5e90236fc4dc4df6d7039a.lean/declarations/tensorl1distance--a13163027adbc6bac143a080.md) | 53 | `declaration-track:a13163027adbc6bac143a0806b40affd6146390ff624715397ef0170ccef0d7a` |
| 5 | `structure` | [ApproxMPSRepresentation](../../../../mathematics/Algebra/MPS/Variant37db665ba9d7d36b12d6f7fc68b55d21e3f310186e5e90236fc4dc4df6d7039a.lean/declarations/approxmpsrepresentation--24d3e6bef88874a6b5425119.md) | 59 | `declaration-track:24d3e6bef88874a6b54251193bc06e0f1cf45b61ac9050c895b646bc5c27a6da` |
| 6 | `inductive` | [MPSRepresentationCertificate](../../../../mathematics/Algebra/MPS/Variant37db665ba9d7d36b12d6f7fc68b55d21e3f310186e5e90236fc4dc4df6d7039a.lean/declarations/mpsrepresentationcertificate--fabf0be671f750f5794f0539.md) | 68 | `declaration-track:fabf0be671f750f5794f0539589201b91c0b8eab61538b48059c62a4fd638e62` |
| 7 | `def` | [ExactMPSRepresentation.toApprox](../../../../mathematics/Algebra/MPS/Variant37db665ba9d7d36b12d6f7fc68b55d21e3f310186e5e90236fc4dc4df6d7039a.lean/declarations/exactmpsrepresentation-toapprox--4effbfc829135698bf8b67d1.md) | 75 | `declaration-track:4effbfc829135698bf8b67d17d3c2cfbccfe410ab31c2dda6329654a3c8d186e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
