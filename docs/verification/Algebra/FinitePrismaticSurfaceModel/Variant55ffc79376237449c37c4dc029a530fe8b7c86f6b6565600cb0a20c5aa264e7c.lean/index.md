# Verification target: GRWTSK.Algebra.FinitePrismaticSurfaceModel.Variant55ffc79376237449c37c4dc029a530fe8b7c86f6b6565600cb0a20c5aa264e7c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3537078c8c6ebb6688d406a90952cea79950f0e2",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FinitePrismaticSurfaceModel/Variant55ffc79376237449c37c4dc029a530fe8b7c86f6b6565600cb0a20c5aa264e7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FinitePrismaticSurfaceModel/Variant55ffc79376237449c37c4dc029a530fe8b7c86f6b6565600cb0a20c5aa264e7c.lean/index.md) · [Full source](../../../../mathematics/Algebra/FinitePrismaticSurfaceModel/Variant55ffc79376237449c37c4dc029a530fe8b7c86f6b6565600cb0a20c5aa264e7c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3537078c8c6ebb6688d406a90952cea79950f0e2`.

Source path: `GRWTSK/Algebra/FinitePrismaticSurfaceModel/Variant55ffc79376237449c37c4dc029a530fe8b7c86f6b6565600cb0a20c5aa264e7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FinitePrismaticSurfaceModel/Variant55ffc79376237449c37c4dc029a530fe8b7c86f6b6565600cb0a20c5aa264e7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Homology.FiniteOS.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.Prismatic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Homology.DeltaRingCertificate](../../../../mathematics/Algebra/FinitePrismaticSurfaceModel/Variant55ffc79376237449c37c4dc029a530fe8b7c86f6b6565600cb0a20c5aa264e7c.lean/declarations/homology-deltaringcertificate--968b4bef77c103e49053a746.md) | 37 | `declaration-track:968b4bef77c103e49053a74666b06bd852af2e6743cb382e2603396d641de5dd` |
| 2 | `structure` | [Homology.BoundedPrismCertificate](../../../../mathematics/Algebra/FinitePrismaticSurfaceModel/Variant55ffc79376237449c37c4dc029a530fe8b7c86f6b6565600cb0a20c5aa264e7c.lean/declarations/homology-boundedprismcertificate--c957506c162f7b9c0692c1b5.md) | 42 | `declaration-track:c957506c162f7b9c0692c1b54a2d1aaa846c4cc589eeb59755fd9d5ef45fce58` |
| 3 | `structure` | [Homology.DistinguishedElementCertificate](../../../../mathematics/Algebra/FinitePrismaticSurfaceModel/Variant55ffc79376237449c37c4dc029a530fe8b7c86f6b6565600cb0a20c5aa264e7c.lean/declarations/homology-distinguishedelementcertificate--609b3b0ea05a3e22347750e0.md) | 47 | `declaration-track:609b3b0ea05a3e22347750e02f57c914d1d742b7118c0ca1526e0ba0e3137412` |
| 4 | `structure` | [Homology.FrobeniusLiftCertificate](../../../../mathematics/Algebra/FinitePrismaticSurfaceModel/Variant55ffc79376237449c37c4dc029a530fe8b7c86f6b6565600cb0a20c5aa264e7c.lean/declarations/homology-frobeniusliftcertificate--4b6bffe2c104c9387d32161a.md) | 54 | `declaration-track:4b6bffe2c104c9387d32161abc9040ab5b31a0454d4d734ab9c2715a62552bc1` |
| 5 | `structure` | [Homology.FiltrationCertificate](../../../../mathematics/Algebra/FinitePrismaticSurfaceModel/Variant55ffc79376237449c37c4dc029a530fe8b7c86f6b6565600cb0a20c5aa264e7c.lean/declarations/homology-filtrationcertificate--d02a3f97fac224f1d5f65c51.md) | 67 | `declaration-track:d02a3f97fac224f1d5f65c510a2b7c62b6f548c0fae52f55f454a2d4165b9514` |
| 6 | `structure` | [Homology.RefinedFinitePrismaticSurfaceModel](../../../../mathematics/Algebra/FinitePrismaticSurfaceModel/Variant55ffc79376237449c37c4dc029a530fe8b7c86f6b6565600cb0a20c5aa264e7c.lean/declarations/homology-refinedfiniteprismaticsurfacemodel--b19341e459bd208f2a13a1d9.md) | 80 | `declaration-track:b19341e459bd208f2a13a1d9f3673de9c38627721ebc05463539829e6646a2e2` |
| 7 | `theorem` | [Homology.RefinedFinitePrismaticSurfaceModel.frob_bound](../../../../mathematics/Algebra/FinitePrismaticSurfaceModel/Variant55ffc79376237449c37c4dc029a530fe8b7c86f6b6565600cb0a20c5aa264e7c.lean/declarations/homology-refinedfiniteprismaticsurfacemodel-frob-bound--02e7fb70d92928370f61d2db.md) | 97 | `result-track:02e7fb70d92928370f61d2db035232b73cb882c0dcc1c4c68e568dee49b12c44` |
| 8 | `def` | [Homology.RefinedFinitePrismaticSurfaceModel.prismReady](../../../../mathematics/Algebra/FinitePrismaticSurfaceModel/Variant55ffc79376237449c37c4dc029a530fe8b7c86f6b6565600cb0a20c5aa264e7c.lean/declarations/homology-refinedfiniteprismaticsurfacemodel-prismready--d661c6e7abcd48b7193a675e.md) | 105 | `declaration-track:d661c6e7abcd48b7193a675e6011054560049150c9a5dbe4401ff18d5678a59f` |
| 9 | `def` | [Homology.standardFinitePrismaticSurfaceModel2Refined](../../../../mathematics/Algebra/FinitePrismaticSurfaceModel/Variant55ffc79376237449c37c4dc029a530fe8b7c86f6b6565600cb0a20c5aa264e7c.lean/declarations/homology-standardfiniteprismaticsurfacemodel2refined--a7a93091a82f89a0896330f2.md) | 112 | `declaration-track:a7a93091a82f89a0896330f26fb3742e9fa8937576fd2bafa07daf9de358b933` |
| 10 | `theorem` | [Homology.standardFinitePrismaticSurfaceModel2Refined_not_prismReady](../../../../mathematics/Algebra/FinitePrismaticSurfaceModel/Variant55ffc79376237449c37c4dc029a530fe8b7c86f6b6565600cb0a20c5aa264e7c.lean/declarations/homology-standardfiniteprismaticsurfacemodel2refined-not-prismready--bf5f56e32a9dc1e5bc23d81b.md) | 164 | `result-track:bf5f56e32a9dc1e5bc23d81b9821beed6e4cf173a303ae85f7d966efb62beccc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
