# Verification target: GRWTSK.Algebra.SubmatrixSurgery.Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5545b6c2fd7f36fcf88195f347457f52678025c",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean/index.md) · [Full source](../../../../mathematics/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5545b6c2fd7f36fcf88195f347457f52678025c`.

Source path: `GRWTSK/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Surgery.Submatrix` — import line 6; external provider; requires a separately pinned dependency.
- `BitMatrix.Network.IntegralPermutationLift` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sampleMatrix](../../../../mathematics/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean/declarations/samplematrix--6894552c531fb17e796f7460.md) | 25 | `declaration-track:6894552c531fb17e796f7460edf32c75862d2b0884e1d50047f2472c2ebc1fa5` |
| 2 | `def` | [sampleLocus](../../../../mathematics/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean/declarations/samplelocus--999cb9d79af783007a9310e9.md) | 28 | `declaration-track:999cb9d79af783007a9310e93d046c6790bd542d9c82d8104696580389c4185e` |
| 3 | `def` | [replacement](../../../../mathematics/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean/declarations/replacement--a17b34358d23e91b77186362.md) | 32 | `declaration-track:a17b34358d23e91b7718636219437b13da3263fb42b231782aefc11de60ae7d5` |
| 4 | `def` | [sampleSurgery](../../../../mathematics/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean/declarations/samplesurgery--d8ed4e244db881dc1df37f22.md) | 36 | `declaration-track:d8ed4e244db881dc1df37f22c041212f91e1df882c4400ec55010c4201915c66` |
| 5 | `example` | [(anonymous)](../../../../mathematics/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean/declarations/example--87220be05336abddaf78b37b.md) | 39 | `declaration-track:87220be05336abddaf78b37b86b1da19a1f9587c3c96392cf28b0761af14cb37` |
| 6 | `example` | [(anonymous)](../../../../mathematics/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean/declarations/example--8dd01bfebf7759971bf6831e.md) | 41 | `declaration-track:8dd01bfebf7759971bf6831e5a8eb90d7d8f0104bd81493751bfec77feebb5d5` |
| 7 | `example` | [(anonymous)](../../../../mathematics/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean/declarations/example--84c80eb30ea548916d7f4b60.md) | 43 | `declaration-track:84c80eb30ea548916d7f4b60c7b103bf29d5a837ca624e528ad59d6ecef1413e` |
| 8 | `example` | [(anonymous)](../../../../mathematics/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean/declarations/example--5454490a5aec87ccfea108c3.md) | 45 | `declaration-track:5454490a5aec87ccfea108c33f074cec22e6b7e372f3edbeeac035638244d545` |
| 9 | `example` | [(anonymous)](../../../../mathematics/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean/declarations/example--93a9525326e15444afcb13ca.md) | 47 | `declaration-track:93a9525326e15444afcb13ca51d1e138fac36bc65f2507142c60af62fbac5ec0` |
| 10 | `example` | [(anonymous)](../../../../mathematics/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean/declarations/example--7d463c21e464c7da56cd0b34.md) | 49 | `declaration-track:7d463c21e464c7da56cd0b34adde55c6406cf9e74109696f72b66c374ee67f12` |
| 11 | `example` | [(anonymous)](../../../../mathematics/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean/declarations/example--1ce7faa5541805e1e1d60d0e.md) | 51 | `declaration-track:1ce7faa5541805e1e1d60d0e3f707c8fbc83631da27eb7b361174b482baf7520` |
| 12 | `example` | [(anonymous)](../../../../mathematics/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean/declarations/example--f71ed01c82862b1e764bcfb3.md) | 55 | `declaration-track:f71ed01c82862b1e764bcfb3f1d155908f026276ef040ddf7c20eb18c608bfad` |
| 13 | `example` | [(anonymous)](../../../../mathematics/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean/declarations/example--457fbeb2f3f5630b642fada2.md) | 57 | `declaration-track:457fbeb2f3f5630b642fada2b147e69357155ddfbdb5b4ae36d25ef00b33e56f` |
| 14 | `example` | [(anonymous)](../../../../mathematics/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean/declarations/example--0b2cf8a9c2c855fd5c9e7bb1.md) | 59 | `declaration-track:0b2cf8a9c2c855fd5c9e7bb1710a92a8d85a5ca7898c6d8d65060e9325a95fc8` |
| 15 | `example` | [(anonymous)](../../../../mathematics/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean/declarations/example--21614d3b7896ddf130dfb356.md) | 61 | `declaration-track:21614d3b7896ddf130dfb35686f07f17dcb7991e2f35e0055cc952298eb708b2` |
| 16 | `example` | [(anonymous)](../../../../mathematics/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean/declarations/example--ace3d1d4dc0018467ef96928.md) | 63 | `declaration-track:ace3d1d4dc0018467ef9692883ef87dbb365f3aa520a8e1585a6d74a820a06c5` |
| 17 | `example` | [(anonymous)](../../../../mathematics/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean/declarations/example--6ff8ddc4579aaa6d7d35f517.md) | 66 | `declaration-track:6ff8ddc4579aaa6d7d35f51730fedac5474e99e3e9e49367396c640a6c6df0fa` |
| 18 | `example` | [(anonymous)](../../../../mathematics/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean/declarations/example--615e727713dea9baa8d43bb1.md) | 71 | `declaration-track:615e727713dea9baa8d43bb1c3490d3a859258ecf68176a3635ff6dc8288bab9` |
| 19 | `def` | [sampleMatrixArrayBacked](../../../../mathematics/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean/declarations/samplematrixarraybacked--36b3941bcc7c899a01d878e6.md) | 78 | `declaration-track:36b3941bcc7c899a01d878e6083911331282ab11d1fdd6a767416c00c88f5fbd` |
| 20 | `def` | [replacementArrayBacked](../../../../mathematics/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean/declarations/replacementarraybacked--40ae36281134a2de7fcc6d3d.md) | 81 | `declaration-track:40ae36281134a2de7fcc6d3d38a1a8c38cfa558e332f175d93e31cd8293d1fc5` |
| 21 | `def` | [sampleRuntimeSurgery](../../../../mathematics/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean/declarations/sampleruntimesurgery--ee32a4a1a033b0ad76883d1b.md) | 85 | `declaration-track:ee32a4a1a033b0ad76883d1b101019f1e01f0582770d5a3c58ab133a6359f860` |
| 22 | `example` | [(anonymous)](../../../../mathematics/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean/declarations/example--a7eba7bc9d7eb5a8b843138d.md) | 90 | `declaration-track:a7eba7bc9d7eb5a8b843138d7331ad80e7a9ced00cbbc863c9e9f1fd39dd3986` |
| 23 | `example` | [(anonymous)](../../../../mathematics/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean/declarations/example--c11b25943d4a790757c70a52.md) | 92 | `declaration-track:c11b25943d4a790757c70a52fcbf33f1c371a740e181491be68359a0d8b29306` |
| 24 | `example` | [(anonymous)](../../../../mathematics/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean/declarations/example--7aa1a6efdc3a03e4a1a280d6.md) | 94 | `declaration-track:7aa1a6efdc3a03e4a1a280d677d96adffe70d59ca9019763563732467366a7e2` |
| 25 | `example` | [(anonymous)](../../../../mathematics/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean/declarations/example--f8682ab3065df422203cd617.md) | 107 | `declaration-track:f8682ab3065df422203cd617bd7d8773e7b3871f9a0b0ee1eae4a36c2b3c2b94` |
| 26 | `example` | [(anonymous)](../../../../mathematics/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean/declarations/example--64fec5d53486c790a0a8ebd5.md) | 112 | `declaration-track:64fec5d53486c790a0a8ebd5ad98b86c897946d93279859628adc819ea803cd3` |
| 27 | `example` | [(anonymous)](../../../../mathematics/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean/declarations/example--2b462bd67081bc70747459b1.md) | 117 | `declaration-track:2b462bd67081bc70747459b1bab055923b4fa94e515de5c3c1c0087f38541f05` |
| 28 | `def` | [boolFinTwo](../../../../mathematics/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean/declarations/boolfintwo--6a9a99415efff8d4224085ab.md) | 124 | `declaration-track:6a9a99415efff8d4224085abf850e786528d01efa3b27305b2eca3428657ceec` |
| 29 | `def` | [boolNotInvolution](../../../../mathematics/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean/declarations/boolnotinvolution--a93d841ed06de803d86eee32.md) | 132 | `declaration-track:a93d841ed06de803d86eee32c2643f7970a7928bbc33873dd1395b9b24ca927c` |
| 30 | `def` | [boolProjection](../../../../mathematics/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean/declarations/boolprojection--5b0b7fcf022b6a27d7e1c274.md) | 139 | `declaration-track:5b0b7fcf022b6a27d7e1c274870cc70b76da3e0489cc2cdc407f12b8817b071f` |
| 31 | `example` | [(anonymous)](../../../../mathematics/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean/declarations/example--8dd1a63d097ceede2883d72f.md) | 142 | `declaration-track:8dd1a63d097ceede2883d72f7056f6e2f89b3ba55a7430dbcc8dd51944e8ce61` |
| 32 | `example` | [(anonymous)](../../../../mathematics/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean/declarations/example--e8163fbec94ceec40593cafb.md) | 144 | `declaration-track:e8163fbec94ceec40593cafb7f547552b0cd0286cf0d3d2c5720a60ba246824f` |
| 33 | `example` | [(anonymous)](../../../../mathematics/Algebra/SubmatrixSurgery/Variant6d53527f0486156fd1a2b316b5a594b8483125c4983a82408dfdd204d683df5f.lean/declarations/example--36291c8c0d37a27a956b1cb6.md) | 147 | `declaration-track:36291c8c0d37a27a956b1cb63deaf8b3d1ad4921f4b40a091012b032b945bf5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
