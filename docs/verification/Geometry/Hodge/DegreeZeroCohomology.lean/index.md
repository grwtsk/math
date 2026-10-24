# Verification target: GRWTSK.Geometry.Hodge.DegreeZeroCohomology

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be628449f9aa7149d8b8d4e8f34d5c491881580a",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/Hodge/DegreeZeroCohomology.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Geometry/Hodge/DegreeZeroCohomology.lean/index.md) · [Full source](../../../../mathematics/Geometry/Hodge/DegreeZeroCohomology.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be628449f9aa7149d8b8d4e8f34d5c491881580a`.

Source path: `GRWTSK/Geometry/Hodge/DegreeZeroCohomology.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/Hodge/DegreeZeroCohomology.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Geometry.Hodge.FiniteEdgeRealization`](../../../../mathematics/Geometry/Hodge/FiniteEdgeRealization.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Cocycle0](../../../../mathematics/Geometry/Hodge/DegreeZeroCohomology.lean/declarations/cocycle0--3143f440d7a83e187f35998d.md) | 15 | `declaration-track:3143f440d7a83e187f35998dc4d248d63b4ff4982763b9b345c0cc187db0cfb1` |
| 2 | `def` | [representative](../../../../mathematics/Geometry/Hodge/DegreeZeroCohomology.lean/declarations/representative--b2975449d6f8ef7eebb08b82.md) | 22 | `declaration-track:b2975449d6f8ef7eebb08b82606950dcf0136d5f385c3113e8a4b946bfbc188a` |
| 3 | `theorem` | [representative_apply](../../../../mathematics/Geometry/Hodge/DegreeZeroCohomology.lean/declarations/representative-apply--cd5e948a09191ffe1c2750e2.md) | 25 | `result-track:cd5e948a09191ffe1c2750e2555c54d7574f5a54d2ed443dd76081bc83f46da9` |
| 4 | `theorem` | [delta_representative](../../../../mathematics/Geometry/Hodge/DegreeZeroCohomology.lean/declarations/delta-representative--42c81e3eb1d5f9f135b8f718.md) | 29 | `result-track:42c81e3eb1d5f9f135b8f718d2b7eecdafa7f81bd363e56341675b7f3571f2a1` |
| 5 | `structure` | [HarmonicKernelExact](../../../../mathematics/Geometry/Hodge/DegreeZeroCohomology.lean/declarations/harmonickernelexact--3f3bbd0820a5eb992d0d5ba9.md) | 38 | `declaration-track:3f3bbd0820a5eb992d0d5ba97e8216e92bb4fc4cbe0bedd87322bb05c27a50b0` |
| 6 | `theorem` | [representative_harmonic](../../../../mathematics/Geometry/Hodge/DegreeZeroCohomology.lean/declarations/representative-harmonic--8cd255b3f22db6da14aee2ba.md) | 46 | `result-track:8cd255b3f22db6da14aee2ba9032cc2e208640ea807d2ea7053c5646ed7c1d5a` |
| 7 | `structure` | [HZeroModel](../../../../mathematics/Geometry/Hodge/DegreeZeroCohomology.lean/declarations/hzeromodel--954ecfe624dbd23ad3a755ef.md) | 57 | `declaration-track:954ecfe624dbd23ad3a755efe3722b455d3b3dbcb8acafbde4a8d7cccbf61ca7` |
| 8 | `def` | [representative](../../../../mathematics/Geometry/Hodge/DegreeZeroCohomology.lean/declarations/representative--d8e01dbcdb6414ffd2e94eb8.md) | 68 | `declaration-track:d8e01dbcdb6414ffd2e94eb80e20f5d3174c7a582c3090763d4c89bc1bc90000` |
| 9 | `theorem` | [delta_representative](../../../../mathematics/Geometry/Hodge/DegreeZeroCohomology.lean/declarations/delta-representative--e797984ab56762c63c6b7a1e.md) | 72 | `result-track:e797984ab56762c63c6b7a1e7f267d4023e0b6b4e415f826efcfdffdd7428276` |
| 10 | `theorem` | [representative_harmonic](../../../../mathematics/Geometry/Hodge/DegreeZeroCohomology.lean/declarations/representative-harmonic--53d0dc0cb2ac8b3dc0506e38.md) | 77 | `result-track:53d0dc0cb2ac8b3dc0506e380a56a027c9c4f366e1da4deb47cd00bb9f918906` |
| 11 | `structure` | [CycleHZeroComparison](../../../../mathematics/Geometry/Hodge/DegreeZeroCohomology.lean/declarations/cyclehzerocomparison--e331bd8cedda38ab63d8bd9f.md) | 101 | `declaration-track:e331bd8cedda38ab63d8bd9f14b4aa5d2093e8bb27cb0ede4d790ec11f6a9fea` |
| 12 | `theorem` | [cycleToCocycle_apply](../../../../mathematics/Geometry/Hodge/DegreeZeroCohomology.lean/declarations/cycletococycle-apply--f25d59aa1cb6af3264f1c30f.md) | 112 | `result-track:f25d59aa1cb6af3264f1c30f9cb8123cf4ccc90678df7378ea413c1de9d378da` |
| 13 | `structure` | [RationalHodgeHZeroAdapter](../../../../mathematics/Geometry/Hodge/DegreeZeroCohomology.lean/declarations/rationalhodgehzeroadapter--ac4316f18a609693271a7b46.md) | 122 | `declaration-track:ac4316f18a609693271a7b46f07cd0786ce4f0c5db8ccd31fc30b47514c2412f` |
| 14 | `theorem` | [exists_cycle_cocycle_harmonic](../../../../mathematics/Geometry/Hodge/DegreeZeroCohomology.lean/declarations/exists-cycle-cocycle-harmonic--7e7f0f74e5549d2dbdf8179a.md) | 133 | `result-track:7e7f0f74e5549d2dbdf8179a71991b41962815eed5a26163ac19cc42a1b93f71` |
| 15 | `def` | [constantCocycle](../../../../mathematics/Geometry/Hodge/DegreeZeroCohomology.lean/declarations/constantcocycle--8e46f137cb8d65c1385f87d6.md) | 154 | `declaration-track:8e46f137cb8d65c1385f87d650823bab98584d2630a036688406a34668d76bcd` |
| 16 | `def` | [constantCocycleEquiv](../../../../mathematics/Geometry/Hodge/DegreeZeroCohomology.lean/declarations/constantcocycleequiv--aec3de0080baf1b1723e935f.md) | 164 | `declaration-track:aec3de0080baf1b1723e935fcec87d6e36994a05a835082799419120dce1ff54` |
| 17 | `theorem` | [edge_harmonic_iff_cocycle](../../../../mathematics/Geometry/Hodge/DegreeZeroCohomology.lean/declarations/edge-harmonic-iff-cocycle--43744fb6256bcd863481d8ba.md) | 183 | `result-track:43744fb6256bcd863481d8bade48f94a84bc4b3b0712e60120f176ab9dbd2495` |
| 18 | `theorem` | [edgeKernelExact](../../../../mathematics/Geometry/Hodge/DegreeZeroCohomology.lean/declarations/edgekernelexact--9a375ab382944e332f3242c6.md) | 199 | `result-track:9a375ab382944e332f3242c6be1156dc4051d08d37b0cdca15831f87a5610ce6` |
| 19 | `def` | [edgeHZeroModel](../../../../mathematics/Geometry/Hodge/DegreeZeroCohomology.lean/declarations/edgehzeromodel--ea1cc0a08d54db722ab2c303.md) | 203 | `declaration-track:ea1cc0a08d54db722ab2c3031a52b24a4ca9be22717ca43805d5b93370aed4ed` |
| 20 | `def` | [pointHZeroComparison](../../../../mathematics/Geometry/Hodge/DegreeZeroCohomology.lean/declarations/pointhzerocomparison--e8328c299142a23fb32b9d04.md) | 207 | `declaration-track:e8328c299142a23fb32b9d04c180f4b9f3ef46090245770f4bcf295e3c096d4d` |
| 21 | `def` | [pointHZeroAdapter](../../../../mathematics/Geometry/Hodge/DegreeZeroCohomology.lean/declarations/pointhzeroadapter--4391d930bd71e940e23d3296.md) | 213 | `declaration-track:4391d930bd71e940e23d329634949370b94dfd9ddbe2bab7fca3176fe18115fc` |
| 22 | `theorem` | [pointHZeroAdapter_realizes](../../../../mathematics/Geometry/Hodge/DegreeZeroCohomology.lean/declarations/pointhzeroadapter-realizes--6201c13c8a2b046e036069c1.md) | 220 | `result-track:6201c13c8a2b046e036069c143b8c8f273cacdbb0c866313f160eb966da49466` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
