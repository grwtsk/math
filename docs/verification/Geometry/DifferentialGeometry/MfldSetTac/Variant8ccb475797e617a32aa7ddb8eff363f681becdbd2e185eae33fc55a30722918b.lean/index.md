# Verification target: GRWTSK.Geometry.DifferentialGeometry.MfldSetTac.Variant8ccb475797e617a32aa7ddb8eff363f681becdbd2e185eae33fc55a30722918b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "682fcb23175516723baa123fd2c749f8d041c825",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/MfldSetTac/Variant8ccb475797e617a32aa7ddb8eff363f681becdbd2e185eae33fc55a30722918b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant8ccb475797e617a32aa7ddb8eff363f681becdbd2e185eae33fc55a30722918b.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant8ccb475797e617a32aa7ddb8eff363f681becdbd2e185eae33fc55a30722918b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `682fcb23175516723baa123fd2c749f8d041c825`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/MfldSetTac/Variant8ccb475797e617a32aa7ddb8eff363f681becdbd2e185eae33fc55a30722918b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/MfldSetTac/Variant8ccb475797e617a32aa7ddb8eff363f681becdbd2e185eae33fc55a30722918b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.PartialEquiv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `axiom` | [test_sorry](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant8ccb475797e617a32aa7ddb8eff363f681becdbd2e185eae33fc55a30722918b.lean/declarations/test-sorry--842eedc0b2901d503cdd6b5c.md) | 17 | `declaration-track:842eedc0b2901d503cdd6b5c254451e6de78240c02463daf1266d5f546b23ba4` |
| 2 | `structure` | [PartialHomeomorph](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant8ccb475797e617a32aa7ddb8eff363f681becdbd2e185eae33fc55a30722918b.lean/declarations/partialhomeomorph--4d644a40cc52dd45d73f1e41.md) | 32 | `declaration-track:4d644a40cc52dd45d73f1e415dc27d2b3d4e5bf479facafd5d88d253931da951` |
| 3 | `instance` | [PartialHomeomorph.has_coe_to_fun](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant8ccb475797e617a32aa7ddb8eff363f681becdbd2e185eae33fc55a30722918b.lean/declarations/partialhomeomorph-has-coe-to-fun--4b85e9dc538bdd6f3f83c02f.md) | 35 | `declaration-track:4b85e9dc538bdd6f3f83c02fdae61269cf9675405e33c3d444dc149430932ab7` |
| 4 | `def` | [PartialHomeomorph.symm](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant8ccb475797e617a32aa7ddb8eff363f681becdbd2e185eae33fc55a30722918b.lean/declarations/partialhomeomorph-symm--84cd05da7d20a07988337e5b.md) | 39 | `declaration-track:84cd05da7d20a07988337e5bf00f3f573cc29dc2ddbd027fb21c7ed1df9bd0d0` |
| 5 | `lemma` | [PartialHomeomorph.left_inv](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant8ccb475797e617a32aa7ddb8eff363f681becdbd2e185eae33fc55a30722918b.lean/declarations/partialhomeomorph-left-inv--8de537669e743a62b13fc23c.md) | 41 | `result-track:8de537669e743a62b13fc23c63293cbb867a66bfc68a07e35b26728c994a2681` |
| 6 | `theorem` | [PartialHomeomorph.symm_to_PartialEquiv](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant8ccb475797e617a32aa7ddb8eff363f681becdbd2e185eae33fc55a30722918b.lean/declarations/partialhomeomorph-symm-to-partialequiv--f946566ebaee5eaef4b25b6f.md) | 46 | `result-track:f946566ebaee5eaef4b25b6f4e58bd8593b11c1db43910f547ff5c4f50f98b0b` |
| 7 | `lemma` | [PartialHomeomorph.coe_coe](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant8ccb475797e617a32aa7ddb8eff363f681becdbd2e185eae33fc55a30722918b.lean/declarations/partialhomeomorph-coe-coe--4bcd5ee0ef6ad313cff927c5.md) | 50 | `result-track:4bcd5ee0ef6ad313cff927c564216334d2b4df22fe195cfb47d62ef7f0aeacc3` |
| 8 | `lemma` | [PartialHomeomorph.coe_coe_symm](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant8ccb475797e617a32aa7ddb8eff363f681becdbd2e185eae33fc55a30722918b.lean/declarations/partialhomeomorph-coe-coe-symm--d4323273161373e6472642d4.md) | 54 | `result-track:d4323273161373e6472642d4eb35e48b266d68e765c405272cd3d0d05d0fbd02` |
| 9 | `structure` | [ModelWithCorners](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant8ccb475797e617a32aa7ddb8eff363f681becdbd2e185eae33fc55a30722918b.lean/declarations/modelwithcorners--0c762ae321a4a92e79d6deae.md) | 58 | `declaration-track:0c762ae321a4a92e79d6deaed829600dfbacb75bcfd98e7e89d3e2db84bc0502` |
| 10 | `def` | [ModelWithCorners.symm](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant8ccb475797e617a32aa7ddb8eff363f681becdbd2e185eae33fc55a30722918b.lean/declarations/modelwithcorners-symm--a1cbb2b197ca00e199604f58.md) | 64 | `declaration-track:a1cbb2b197ca00e199604f58c733b0dd4a6007f42b5ebccac884a247b9e4a118` |
| 11 | `instance` | [ModelWithCorners.has_coe_to_fun](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant8ccb475797e617a32aa7ddb8eff363f681becdbd2e185eae33fc55a30722918b.lean/declarations/modelwithcorners-has-coe-to-fun--4bce90ffd65df424323772a2.md) | 67 | `declaration-track:4bce90ffd65df424323772a2ed8a617e72cddd4ff43dc1d133ca95be8cca6e9a` |
| 12 | `lemma` | [ModelWithCorners.left_inv](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant8ccb475797e617a32aa7ddb8eff363f681becdbd2e185eae33fc55a30722918b.lean/declarations/modelwithcorners-left-inv--578ead835ab6c14c7481e903.md) | 70 | `result-track:578ead835ab6c14c7481e9031b31cfb459bcd516f19ddf50e06a17d07aaa9bda` |
| 13 | `lemma` | [ModelWithCorners.to_local_equiv_coe](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant8ccb475797e617a32aa7ddb8eff363f681becdbd2e185eae33fc55a30722918b.lean/declarations/modelwithcorners-to-local-equiv-coe--fdbb56f46c6b93cd9323f790.md) | 74 | `result-track:fdbb56f46c6b93cd9323f790ff62f3881003bcd25974eb3e26675561849e360d` |
| 14 | `lemma` | [ModelWithCorners.to_local_equiv_coe_symm](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant8ccb475797e617a32aa7ddb8eff363f681becdbd2e185eae33fc55a30722918b.lean/declarations/modelwithcorners-to-local-equiv-coe-symm--8d979d7a147316d6a7b55cff.md) | 78 | `result-track:8d979d7a147316d6a7b55cfff2eb58fa68dc1bf5709a670565b17a53c5a69a84` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant8ccb475797e617a32aa7ddb8eff363f681becdbd2e185eae33fc55a30722918b.lean/declarations/example--55376cc86a1c4dfb74ae5519.md) | 88 | `declaration-track:55376cc86a1c4dfb74ae5519bd82e48a1a9b015759941763b9a7c9b4c4ea3ca9` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant8ccb475797e617a32aa7ddb8eff363f681becdbd2e185eae33fc55a30722918b.lean/declarations/example--cf3bc63c5710c9cbe4268a5d.md) | 92 | `declaration-track:cf3bc63c5710c9cbe4268a5d9950a1ca850ee2dfb1a77706ed99f3a02fae6636` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant8ccb475797e617a32aa7ddb8eff363f681becdbd2e185eae33fc55a30722918b.lean/declarations/example--2a754b763cd9ad5a954bbb9b.md) | 94 | `declaration-track:2a754b763cd9ad5a954bbb9be0bfb1972988896f56f6257bf3f9cc0d28ab3f2b` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant8ccb475797e617a32aa7ddb8eff363f681becdbd2e185eae33fc55a30722918b.lean/declarations/example--afc1c713c61df7805fbf0504.md) | 98 | `declaration-track:afc1c713c61df7805fbf05046328411e42c5e070e11d496516929c8192a64406` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
