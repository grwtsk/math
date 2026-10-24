# Verification target: GRWTSK.Algebra.FinitePrismaticSurfaceModel.Variant86078d8324fc4553ef3aaac2b9c80e1377d469b2ae1e7c682c87464359f690c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d504eaa827ba73bab26e5e3659dad1a7f543a3d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FinitePrismaticSurfaceModel/Variant86078d8324fc4553ef3aaac2b9c80e1377d469b2ae1e7c682c87464359f690c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FinitePrismaticSurfaceModel/Variant86078d8324fc4553ef3aaac2b9c80e1377d469b2ae1e7c682c87464359f690c8.lean/index.md) · [Full source](../../../../mathematics/Algebra/FinitePrismaticSurfaceModel/Variant86078d8324fc4553ef3aaac2b9c80e1377d469b2ae1e7c682c87464359f690c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d504eaa827ba73bab26e5e3659dad1a7f543a3d`.

Source path: `GRWTSK/Algebra/FinitePrismaticSurfaceModel/Variant86078d8324fc4553ef3aaac2b9c80e1377d469b2ae1e7c682c87464359f690c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FinitePrismaticSurfaceModel/Variant86078d8324fc4553ef3aaac2b9c80e1377d469b2ae1e7c682c87464359f690c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Homology.FiniteOS.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.Prismatic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Homology.DeltaRingCertificate](../../../../mathematics/Algebra/FinitePrismaticSurfaceModel/Variant86078d8324fc4553ef3aaac2b9c80e1377d469b2ae1e7c682c87464359f690c8.lean/declarations/homology-deltaringcertificate--6c76b3fbe0ef3a2be37d15f2.md) | 29 | `declaration-track:6c76b3fbe0ef3a2be37d15f28642f469b2ad5b46df2500a0f2f31c1ab1b8d759` |
| 2 | `structure` | [Homology.BoundedPrismCertificate](../../../../mathematics/Algebra/FinitePrismaticSurfaceModel/Variant86078d8324fc4553ef3aaac2b9c80e1377d469b2ae1e7c682c87464359f690c8.lean/declarations/homology-boundedprismcertificate--e4ed48fd280c414af6eba5e2.md) | 34 | `declaration-track:e4ed48fd280c414af6eba5e2b48fbc26cc6b9420a710bcde2396d1b181d3c431` |
| 3 | `structure` | [Homology.DistinguishedElementCertificate](../../../../mathematics/Algebra/FinitePrismaticSurfaceModel/Variant86078d8324fc4553ef3aaac2b9c80e1377d469b2ae1e7c682c87464359f690c8.lean/declarations/homology-distinguishedelementcertificate--a13889484daab5786e1bbe3c.md) | 39 | `declaration-track:a13889484daab5786e1bbe3cdc5779b9fba610f2d4638cadf66af80580cce541` |
| 4 | `structure` | [Homology.FrobeniusLiftCertificate](../../../../mathematics/Algebra/FinitePrismaticSurfaceModel/Variant86078d8324fc4553ef3aaac2b9c80e1377d469b2ae1e7c682c87464359f690c8.lean/declarations/homology-frobeniusliftcertificate--1b0988d9131397e255c23ed7.md) | 46 | `declaration-track:1b0988d9131397e255c23ed7fd2276d49a3fb6f828609ca0eb64238ce42686c2` |
| 5 | `structure` | [Homology.FiltrationCertificate](../../../../mathematics/Algebra/FinitePrismaticSurfaceModel/Variant86078d8324fc4553ef3aaac2b9c80e1377d469b2ae1e7c682c87464359f690c8.lean/declarations/homology-filtrationcertificate--06a3de79d560d4c9bcbce477.md) | 59 | `declaration-track:06a3de79d560d4c9bcbce477294f55859f4138f19621c6bfa250463f042ea8fc` |
| 6 | `structure` | [Homology.RefinedFinitePrismaticSurfaceModel](../../../../mathematics/Algebra/FinitePrismaticSurfaceModel/Variant86078d8324fc4553ef3aaac2b9c80e1377d469b2ae1e7c682c87464359f690c8.lean/declarations/homology-refinedfiniteprismaticsurfacemodel--c45e6b02070e247d96a8fbd4.md) | 72 | `declaration-track:c45e6b02070e247d96a8fbd497ab33a667f28ebc3062568033dbb52cc4ec76b7` |
| 7 | `theorem` | [Homology.RefinedFinitePrismaticSurfaceModel.frob_bound](../../../../mathematics/Algebra/FinitePrismaticSurfaceModel/Variant86078d8324fc4553ef3aaac2b9c80e1377d469b2ae1e7c682c87464359f690c8.lean/declarations/homology-refinedfiniteprismaticsurfacemodel-frob-bound--4abaddc4c53d0c702c48d9c9.md) | 89 | `result-track:4abaddc4c53d0c702c48d9c94b759bdffe033bee5fb5cb062d2bf0747a3bb69b` |
| 8 | `def` | [Homology.RefinedFinitePrismaticSurfaceModel.prismReady](../../../../mathematics/Algebra/FinitePrismaticSurfaceModel/Variant86078d8324fc4553ef3aaac2b9c80e1377d469b2ae1e7c682c87464359f690c8.lean/declarations/homology-refinedfiniteprismaticsurfacemodel-prismready--f741aa252d2651b305fe03a0.md) | 97 | `declaration-track:f741aa252d2651b305fe03a0824bff0229ce97948738f51f67144f4466c2b67c` |
| 9 | `def` | [Homology.standardFinitePrismaticSurfaceModel2Refined](../../../../mathematics/Algebra/FinitePrismaticSurfaceModel/Variant86078d8324fc4553ef3aaac2b9c80e1377d469b2ae1e7c682c87464359f690c8.lean/declarations/homology-standardfiniteprismaticsurfacemodel2refined--bc7274242b101ea52a6971b7.md) | 104 | `declaration-track:bc7274242b101ea52a6971b737c04188064781a2f176756e37a1f4552f880d73` |
| 10 | `theorem` | [Homology.standardFinitePrismaticSurfaceModel2Refined_not_prismReady](../../../../mathematics/Algebra/FinitePrismaticSurfaceModel/Variant86078d8324fc4553ef3aaac2b9c80e1377d469b2ae1e7c682c87464359f690c8.lean/declarations/homology-standardfiniteprismaticsurfacemodel2refined-not-prismready--ebd9c244da5dac50e2e7dc2a.md) | 156 | `result-track:ebd9c244da5dac50e2e7dc2ad42762b368843307ccd53519a0d2abd7df8095b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
