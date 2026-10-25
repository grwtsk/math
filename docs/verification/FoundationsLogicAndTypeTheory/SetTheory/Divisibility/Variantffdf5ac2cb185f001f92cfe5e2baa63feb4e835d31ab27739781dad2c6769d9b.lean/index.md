# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Divisibility.Variantffdf5ac2cb185f001f92cfe5e2baa63feb4e835d31ab27739781dad2c6769d9b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0cb127333ca0fc98d8f09ebb60f8bbf4b7dbe236",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantffdf5ac2cb185f001f92cfe5e2baa63feb4e835d31ab27739781dad2c6769d9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantffdf5ac2cb185f001f92cfe5e2baa63feb4e835d31ab27739781dad2c6769d9b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantffdf5ac2cb185f001f92cfe5e2baa63feb4e835d31ab27739781dad2c6769d9b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0cb127333ca0fc98d8f09ebb60f8bbf4b7dbe236`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantffdf5ac2cb185f001f92cfe5e2baa63feb4e835d31ab27739781dad2c6769d9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantffdf5ac2cb185f001f92cfe5e2baa63feb4e835d31ab27739781dad2c6769d9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.IsPrimePow` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Ordinal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.WLOG` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isUnit_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantffdf5ac2cb185f001f92cfe5e2baa63feb4e835d31ab27739781dad2c6769d9b.lean/declarations/isunit-iff--4a51f850bd89f767ff03d548.md) | 43 | `result-track:4a51f850bd89f767ff03d548d994d412272594759ad73d0e8f46b74679a7405c` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantffdf5ac2cb185f001f92cfe5e2baa63feb4e835d31ab27739781dad2c6769d9b.lean/declarations/instance--9fa4a6ff0f0d80128dd3707c.md) | 61 | `declaration-track:9fa4a6ff0f0d80128dd3707c6b582a5802f387d1be59d3e340103570f78aba86` |
| 3 | `theorem` | [le_of_dvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantffdf5ac2cb185f001f92cfe5e2baa63feb4e835d31ab27739781dad2c6769d9b.lean/declarations/le-of-dvd--cc000f922b42766e4e136e80.md) | 65 | `result-track:cc000f922b42766e4e136e805d519de81145c7622f40010d9fffb98debb4e705` |
| 4 | `theorem` | [dvd_of_le_of_aleph0_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantffdf5ac2cb185f001f92cfe5e2baa63feb4e835d31ab27739781dad2c6769d9b.lean/declarations/dvd-of-le-of-aleph0-le--f78dfd9d9a4e39ec7a5990fd.md) | 71 | `result-track:f78dfd9d9a4e39ec7a5990fd95dce109aee1b0ae3138a10fbebd974ab2a14390` |
| 5 | `theorem` | [prime_of_aleph0_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantffdf5ac2cb185f001f92cfe5e2baa63feb4e835d31ab27739781dad2c6769d9b.lean/declarations/prime-of-aleph0-le--bd211c50089cef8bd154b125.md) | 76 | `result-track:bd211c50089cef8bd154b1255b148ad18fe0311a91ac6121be8482227f18d150` |
| 6 | `theorem` | [not_irreducible_of_aleph0_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantffdf5ac2cb185f001f92cfe5e2baa63feb4e835d31ab27739781dad2c6769d9b.lean/declarations/not-irreducible-of-aleph0-le--570ac096ec6f1aa498a553df.md) | 91 | `result-track:570ac096ec6f1aa498a553dff030cc2b0e86b713349f47d4e5219b1249114d9f` |
| 7 | `theorem` | [nat_coe_dvd_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantffdf5ac2cb185f001f92cfe5e2baa63feb4e835d31ab27739781dad2c6769d9b.lean/declarations/nat-coe-dvd-iff--8c07b9e7b8b5d99a4bd520c7.md) | 99 | `result-track:8c07b9e7b8b5d99a4bd520c7ce4f07d084770bb9f3c5db27a680ec16514cb116` |
| 8 | `theorem` | [nat_is_prime_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantffdf5ac2cb185f001f92cfe5e2baa63feb4e835d31ab27739781dad2c6769d9b.lean/declarations/nat-is-prime-iff--3b869bc69f136ec2350dbc71.md) | 111 | `result-track:3b869bc69f136ec2350dbc7113d394be9d0367a173169106d692aa8ed56801c2` |
| 9 | `theorem` | [is_prime_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantffdf5ac2cb185f001f92cfe5e2baa63feb4e835d31ab27739781dad2c6769d9b.lean/declarations/is-prime-iff--82098bb3bff59c5778fb8297.md) | 136 | `result-track:82098bb3bff59c5778fb8297d73ff0101b7f9d3ecda685b4795bbf947afba596` |
| 10 | `theorem` | [isPrimePow_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantffdf5ac2cb185f001f92cfe5e2baa63feb4e835d31ab27739781dad2c6769d9b.lean/declarations/isprimepow-iff--a9e6332a67770ac3dbfda305.md) | 143 | `result-track:a9e6332a67770ac3dbfda3057d83832fcdc5f1de50b6cf6540fc8cd64f82301b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
