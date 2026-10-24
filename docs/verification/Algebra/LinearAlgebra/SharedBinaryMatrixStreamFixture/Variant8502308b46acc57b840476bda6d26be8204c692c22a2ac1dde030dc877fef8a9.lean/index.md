# Verification target: GRWTSK.Algebra.LinearAlgebra.SharedBinaryMatrixStreamFixture.Variant8502308b46acc57b840476bda6d26be8204c692c22a2ac1dde030dc877fef8a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "826628c0a4d034b6c0f9f244c0f490945a7b7657",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SharedBinaryMatrixStreamFixture/Variant8502308b46acc57b840476bda6d26be8204c692c22a2ac1dde030dc877fef8a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SharedBinaryMatrixStreamFixture/Variant8502308b46acc57b840476bda6d26be8204c692c22a2ac1dde030dc877fef8a9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SharedBinaryMatrixStreamFixture/Variant8502308b46acc57b840476bda6d26be8204c692c22a2ac1dde030dc877fef8a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `826628c0a4d034b6c0f9f244c0f490945a7b7657`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SharedBinaryMatrixStreamFixture/Variant8502308b46acc57b840476bda6d26be8204c692c22a2ac1dde030dc877fef8a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SharedBinaryMatrixStreamFixture/Variant8502308b46acc57b840476bda6d26be8204c692c22a2ac1dde030dc877fef8a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Core.SharedBinaryMatrixStream` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [generatedLayout](../../../../../mathematics/Algebra/LinearAlgebra/SharedBinaryMatrixStreamFixture/Variant8502308b46acc57b840476bda6d26be8204c692c22a2ac1dde030dc877fef8a9.lean/declarations/generatedlayout--de871df9568198734d2a16e1.md) | 15 | `declaration-track:de871df9568198734d2a16e1a0a5117df7214f848e9d53205b9fa131b1e148a7` |
| 2 | `theorem` | [generatedLayout_valid](../../../../../mathematics/Algebra/LinearAlgebra/SharedBinaryMatrixStreamFixture/Variant8502308b46acc57b840476bda6d26be8204c692c22a2ac1dde030dc877fef8a9.lean/declarations/generatedlayout-valid--014a1d4bcad663e1232074c4.md) | 18 | `result-track:014a1d4bcad663e1232074c4e2bf368040fa385a03b663a5c5add31b977f83d3` |
| 3 | `def` | [generatedFrame](../../../../../mathematics/Algebra/LinearAlgebra/SharedBinaryMatrixStreamFixture/Variant8502308b46acc57b840476bda6d26be8204c692c22a2ac1dde030dc877fef8a9.lean/declarations/generatedframe--f457cf60713d58505b46f342.md) | 21 | `declaration-track:f457cf60713d58505b46f342a4c83102d47c8e0a801dd8ae1e4d91f8b4f00eec` |
| 4 | `theorem` | [generatedFrame_predicted](../../../../../mathematics/Algebra/LinearAlgebra/SharedBinaryMatrixStreamFixture/Variant8502308b46acc57b840476bda6d26be8204c692c22a2ac1dde030dc877fef8a9.lean/declarations/generatedframe-predicted--fdac209d6cdc94a13be2f382.md) | 24 | `result-track:fdac209d6cdc94a13be2f382cbd449776931ba8a6a99dfe81fb60d1cf2315c8b` |
| 5 | `def` | [generatedEdit](../../../../../mathematics/Algebra/LinearAlgebra/SharedBinaryMatrixStreamFixture/Variant8502308b46acc57b840476bda6d26be8204c692c22a2ac1dde030dc877fef8a9.lean/declarations/generatededit--4907ec66d32db2f216e03225.md) | 28 | `declaration-track:4907ec66d32db2f216e03225d7d4220eb94c945de66787e27083113cdf0f97af` |
| 6 | `theorem` | [generatedEdit_valid](../../../../../mathematics/Algebra/LinearAlgebra/SharedBinaryMatrixStreamFixture/Variant8502308b46acc57b840476bda6d26be8204c692c22a2ac1dde030dc877fef8a9.lean/declarations/generatededit-valid--d6ff8ed0bbaf613ea9ea4982.md) | 33 | `result-track:d6ff8ed0bbaf613ea9ea4982f655b91d4c17c5738eb52431905db4fa94b01973` |
| 7 | `theorem` | [generatedEdit_preserves_prediction](../../../../../mathematics/Algebra/LinearAlgebra/SharedBinaryMatrixStreamFixture/Variant8502308b46acc57b840476bda6d26be8204c692c22a2ac1dde030dc877fef8a9.lean/declarations/generatededit-preserves-prediction--ba0cc7fdfce36d65252c2117.md) | 36 | `result-track:ba0cc7fdfce36d65252c21175bba5c9ac47079ae54e8258111a157c7560854f5` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SharedBinaryMatrixStreamFixture/Variant8502308b46acc57b840476bda6d26be8204c692c22a2ac1dde030dc877fef8a9.lean/declarations/example--ce19c79bab5d00ce87f3c995.md) | 41 | `declaration-track:ce19c79bab5d00ce87f3c9951191e8de9834b6baff5743dbb59cd195f271ce91` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SharedBinaryMatrixStreamFixture/Variant8502308b46acc57b840476bda6d26be8204c692c22a2ac1dde030dc877fef8a9.lean/declarations/example--45e8c21c22f2a8b12d70e0cc.md) | 42 | `declaration-track:45e8c21c22f2a8b12d70e0ccb7f4ab5959f4d7f1f5ebe68e3d75a5ee24509051` |
| 10 | `def` | [generatedHostNetwork](../../../../../mathematics/Algebra/LinearAlgebra/SharedBinaryMatrixStreamFixture/Variant8502308b46acc57b840476bda6d26be8204c692c22a2ac1dde030dc877fef8a9.lean/declarations/generatedhostnetwork--37d7032950b37f6586490cc4.md) | 47 | `declaration-track:37d7032950b37f6586490cc474603c25da94ffc8565fb306545c94991f545662` |
| 11 | `theorem` | [generatedHostNetwork_valid](../../../../../mathematics/Algebra/LinearAlgebra/SharedBinaryMatrixStreamFixture/Variant8502308b46acc57b840476bda6d26be8204c692c22a2ac1dde030dc877fef8a9.lean/declarations/generatedhostnetwork-valid--856a118cd72eec4789c79bf8.md) | 54 | `result-track:856a118cd72eec4789c79bf8dcf1a66d53e720a75e57437fc79f87f4ddfb1e55` |
| 12 | `theorem` | [generatedHostNetwork_selection](../../../../../mathematics/Algebra/LinearAlgebra/SharedBinaryMatrixStreamFixture/Variant8502308b46acc57b840476bda6d26be8204c692c22a2ac1dde030dc877fef8a9.lean/declarations/generatedhostnetwork-selection--4a29bc2a63f072cc49ad690a.md) | 59 | `result-track:4a29bc2a63f072cc49ad690aaa577dc0f38ce21bf73b960b18a262ce88683cea` |
| 13 | `def` | [generatedColorState](../../../../../mathematics/Algebra/LinearAlgebra/SharedBinaryMatrixStreamFixture/Variant8502308b46acc57b840476bda6d26be8204c692c22a2ac1dde030dc877fef8a9.lean/declarations/generatedcolorstate--38ecd49cc9fee7acaddb0c77.md) | 64 | `declaration-track:38ecd49cc9fee7acaddb0c77e44a1ebec75f280f2ee6b62811fc9afa84c12284` |
| 14 | `theorem` | [generatedColorState_bounded](../../../../../mathematics/Algebra/LinearAlgebra/SharedBinaryMatrixStreamFixture/Variant8502308b46acc57b840476bda6d26be8204c692c22a2ac1dde030dc877fef8a9.lean/declarations/generatedcolorstate-bounded--0496583eb92e2bbfc4306c36.md) | 72 | `result-track:0496583eb92e2bbfc4306c36f9d27d230ad2ccc3afd5ceadd2e729338dc70d7c` |
| 15 | `def` | [generatedColorProposal](../../../../../mathematics/Algebra/LinearAlgebra/SharedBinaryMatrixStreamFixture/Variant8502308b46acc57b840476bda6d26be8204c692c22a2ac1dde030dc877fef8a9.lean/declarations/generatedcolorproposal--3803c5a0c4b91a2bad74249a.md) | 75 | `declaration-track:3803c5a0c4b91a2bad74249a825a8b296aaee23541c10e0519e6aa397405f13f` |
| 16 | `theorem` | [generatedColorProposal_valid](../../../../../mathematics/Algebra/LinearAlgebra/SharedBinaryMatrixStreamFixture/Variant8502308b46acc57b840476bda6d26be8204c692c22a2ac1dde030dc877fef8a9.lean/declarations/generatedcolorproposal-valid--adf85949c18febb1cf410bb3.md) | 83 | `result-track:adf85949c18febb1cf410bb333098eb3bd148843c8edcd0c6bc373aca62af7f8` |
| 17 | `theorem` | [generatedColorProposal_preserves_bounds](../../../../../mathematics/Algebra/LinearAlgebra/SharedBinaryMatrixStreamFixture/Variant8502308b46acc57b840476bda6d26be8204c692c22a2ac1dde030dc877fef8a9.lean/declarations/generatedcolorproposal-preserves-bounds--1c9a5f975146d2421c07484a.md) | 87 | `result-track:1c9a5f975146d2421c07484ab4cb754dc7280966f41f892193fef868e152dc26` |
| 18 | `def` | [generatedColorEdit](../../../../../mathematics/Algebra/LinearAlgebra/SharedBinaryMatrixStreamFixture/Variant8502308b46acc57b840476bda6d26be8204c692c22a2ac1dde030dc877fef8a9.lean/declarations/generatedcoloredit--997250834858e0e05727f27f.md) | 92 | `declaration-track:997250834858e0e05727f27f3fc0b4fcea87e682c6f275217f50a9543a38db78` |
| 19 | `theorem` | [generatedColorEdit_valid](../../../../../mathematics/Algebra/LinearAlgebra/SharedBinaryMatrixStreamFixture/Variant8502308b46acc57b840476bda6d26be8204c692c22a2ac1dde030dc877fef8a9.lean/declarations/generatedcoloredit-valid--7b9dfbafbaae879bf0aebf66.md) | 98 | `result-track:7b9dfbafbaae879bf0aebf66517de5ce2dd98da641fe74643535eea95238c7ff` |
| 20 | `theorem` | [generatedColorEdit_preserves_bounds](../../../../../mathematics/Algebra/LinearAlgebra/SharedBinaryMatrixStreamFixture/Variant8502308b46acc57b840476bda6d26be8204c692c22a2ac1dde030dc877fef8a9.lean/declarations/generatedcoloredit-preserves-bounds--87d8f1291a8c25173f423298.md) | 102 | `result-track:87d8f1291a8c25173f423298232d3c48d344ef810d50e3049e48fbcc2d2a0ff5` |
| 21 | `def` | [generatedStaleColorEdit](../../../../../mathematics/Algebra/LinearAlgebra/SharedBinaryMatrixStreamFixture/Variant8502308b46acc57b840476bda6d26be8204c692c22a2ac1dde030dc877fef8a9.lean/declarations/generatedstalecoloredit--5ca635dbe44b9717e7d9d13e.md) | 107 | `declaration-track:5ca635dbe44b9717e7d9d13ed434677dd8390b3f68bddf4d1d6d98df9a6a4c86` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SharedBinaryMatrixStreamFixture/Variant8502308b46acc57b840476bda6d26be8204c692c22a2ac1dde030dc877fef8a9.lean/declarations/example--a38e55bfe4a9caac8db37e3d.md) | 110 | `declaration-track:a38e55bfe4a9caac8db37e3d2cc520fd56c9589148a3126ddae61a62ac1e0dc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
