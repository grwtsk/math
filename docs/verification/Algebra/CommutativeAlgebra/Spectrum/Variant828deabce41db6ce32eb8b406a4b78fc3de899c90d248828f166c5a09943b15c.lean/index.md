# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Spectrum.Variant828deabce41db6ce32eb8b406a4b78fc3de899c90d248828f166c5a09943b15c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2e56bea9ed36db909526904dc9d6b57158e46a4",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Spectrum/Variant828deabce41db6ce32eb8b406a4b78fc3de899c90d248828f166c5a09943b15c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectrum/Variant828deabce41db6ce32eb8b406a4b78fc3de899c90d248828f166c5a09943b15c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectrum/Variant828deabce41db6ce32eb8b406a4b78fc3de899c90d248828f166c5a09943b15c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2e56bea9ed36db909526904dc9d6b57158e46a4`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Spectrum/Variant828deabce41db6ce32eb8b406a4b78fc3de899c90d248828f166c5a09943b15c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Spectrum/Variant828deabce41db6ce32eb8b406a4b78fc3de899c90d248828f166c5a09943b15c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Spectrum.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_mem_of_not_isUnit_aeval_prod](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectrum/Variant828deabce41db6ce32eb8b406a4b78fc3de899c90d248828f166c5a09943b15c.lean/declarations/exists-mem-of-not-isunit-aeval-prod--e9436f5034e6dba461ec4e31.md) | 60 | `result-track:e9436f5034e6dba461ec4e31960228ef23f5a91a25efe0fd451ad085a2f5b4dc` |
| 2 | `theorem` | [subset_polynomial_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectrum/Variant828deabce41db6ce32eb8b406a4b78fc3de899c90d248828f166c5a09943b15c.lean/declarations/subset-polynomial-aeval--25fade47f6deb5c7676ebcdc.md) | 85 | `result-track:25fade47f6deb5c7676ebcdcee020dd7723914f3d987f6b0e31aabab0827a103` |
| 3 | `theorem` | [map_polynomial_aeval_of_degree_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectrum/Variant828deabce41db6ce32eb8b406a4b78fc3de899c90d248828f166c5a09943b15c.lean/declarations/map-polynomial-aeval-of-degree-pos--c858b715604179b3060739da.md) | 100 | `result-track:c858b715604179b3060739da1371293b2e94379b672c3664abeae474ecfebbf8` |
| 4 | `theorem` | [map_polynomial_aeval_of_nonempty](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectrum/Variant828deabce41db6ce32eb8b406a4b78fc3de899c90d248828f166c5a09943b15c.lean/declarations/map-polynomial-aeval-of-nonempty--514bbbfbec09cfed0330024a.md) | 122 | `result-track:514bbbfbec09cfed0330024aff2f080d7db95cc820de51fec17e6969271c5ff9` |
| 5 | `theorem` | [pow_image_subset](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectrum/Variant828deabce41db6ce32eb8b406a4b78fc3de899c90d248828f166c5a09943b15c.lean/declarations/pow-image-subset--409995400eac3855e06d5042.md) | 130 | `result-track:409995400eac3855e06d50422abe69566c3690500dddd0696dc3e5982e71b5c7` |
| 6 | `theorem` | [map_pow_of_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectrum/Variant828deabce41db6ce32eb8b406a4b78fc3de899c90d248828f166c5a09943b15c.lean/declarations/map-pow-of-pos--24616a15f00349d4add87842.md) | 135 | `result-track:24616a15f00349d4add878420ad8bb5933c598b96776a8c7e1c82bbf172b56f1` |
| 7 | `theorem` | [map_pow_of_nonempty](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectrum/Variant828deabce41db6ce32eb8b406a4b78fc3de899c90d248828f166c5a09943b15c.lean/declarations/map-pow-of-nonempty--6cf6f7f02eb01808b88b78b4.md) | 142 | `result-track:6cf6f7f02eb01808b88b78b4342934d49e52f865d8b8fe254c130ec8cb8ef6f0` |
| 8 | `theorem` | [nonempty_of_isAlgClosed_of_finiteDimensional](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectrum/Variant828deabce41db6ce32eb8b406a4b78fc3de899c90d248828f166c5a09943b15c.lean/declarations/nonempty-of-isalgclosed-of-finitedimensional--894095425a1e22d2796693a5.md) | 151 | `result-track:894095425a1e22d2796693a51bd02c29f3983e01b317f755684c68242c7542a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
