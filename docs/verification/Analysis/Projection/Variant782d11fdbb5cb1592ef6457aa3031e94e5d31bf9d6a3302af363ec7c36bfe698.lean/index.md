# Verification target: GRWTSK.Analysis.Projection.Variant782d11fdbb5cb1592ef6457aa3031e94e5d31bf9d6a3302af363ec7c36bfe698

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f1432e06c6d93079428c5e98a05f95a141639d9",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Projection/Variant782d11fdbb5cb1592ef6457aa3031e94e5d31bf9d6a3302af363ec7c36bfe698.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Projection/Variant782d11fdbb5cb1592ef6457aa3031e94e5d31bf9d6a3302af363ec7c36bfe698.lean/index.md) · [Full source](../../../../mathematics/Analysis/Projection/Variant782d11fdbb5cb1592ef6457aa3031e94e5d31bf9d6a3302af363ec7c36bfe698.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f1432e06c6d93079428c5e98a05f95a141639d9`.

Source path: `GRWTSK/Analysis/Projection/Variant782d11fdbb5cb1592ef6457aa3031e94e5d31bf9d6a3302af363ec7c36bfe698.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Projection/Variant782d11fdbb5cb1592ef6457aa3031e94e5d31bf9d6a3302af363ec7c36bfe698.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Projection` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isStarProjection_iff_quasispectrum_subset_and_isSelfAdjoint](../../../../mathematics/Analysis/Projection/Variant782d11fdbb5cb1592ef6457aa3031e94e5d31bf9d6a3302af363ec7c36bfe698.lean/declarations/isstarprojection-iff-quasispectrum-subset-and-isselfadjoint--21badd14921ed4d55e98641f.md) | 46 | `result-track:21badd14921ed4d55e98641f21325fc3add58547236b4a4ad97b3d27e67f084e` |
| 2 | `theorem` | [IsIdempotentElem.isSelfAdjoint_iff_isStarNormal](../../../../mathematics/Analysis/Projection/Variant782d11fdbb5cb1592ef6457aa3031e94e5d31bf9d6a3302af363ec7c36bfe698.lean/declarations/isidempotentelem-isselfadjoint-iff-isstarnormal--a13e3adf2842683e763f9a05.md) | 57 | `result-track:a13e3adf2842683e763f9a05d81567bdf30b82cc65418e8bb50cea4fd8cd05ca` |
| 3 | `theorem` | [isStarProjection_iff_isIdempotentElem_and_isStarNormal](../../../../mathematics/Analysis/Projection/Variant782d11fdbb5cb1592ef6457aa3031e94e5d31bf9d6a3302af363ec7c36bfe698.lean/declarations/isstarprojection-iff-isidempotentelem-and-isstarnormal--ebd6792e0d832caa7788a569.md) | 66 | `result-track:ebd6792e0d832caa7788a56925db647ca58a89c8a91e99a643f78f467bd18fa1` |
| 4 | `theorem` | [isStarProjection_iff_quasispectrum_subset_and_isStarNormal](../../../../mathematics/Analysis/Projection/Variant782d11fdbb5cb1592ef6457aa3031e94e5d31bf9d6a3302af363ec7c36bfe698.lean/declarations/isstarprojection-iff-quasispectrum-subset-and-isstarnormal--597fc08975c2255b46ab7e8b.md) | 70 | `result-track:597fc08975c2255b46ab7e8b1e6f108ac301f0a7a9d38af56bfe01dba08dfae7` |
| 5 | `lemma` | [isStarProjection_iff_spectrum_subset_and_isSelfAdjoint](../../../../mathematics/Analysis/Projection/Variant782d11fdbb5cb1592ef6457aa3031e94e5d31bf9d6a3302af363ec7c36bfe698.lean/declarations/isstarprojection-iff-spectrum-subset-and-isselfadjoint--5f86f994725a3ffd9c4e579c.md) | 81 | `result-track:5f86f994725a3ffd9c4e579c7714772ae06170d31965495246759615eb672a97` |
| 6 | `theorem` | [isStarProjection_iff_spectrum_subset_and_isStarNormal](../../../../mathematics/Analysis/Projection/Variant782d11fdbb5cb1592ef6457aa3031e94e5d31bf9d6a3302af363ec7c36bfe698.lean/declarations/isstarprojection-iff-spectrum-subset-and-isstarnormal--fdda946dabafa4c8f2efbdf5.md) | 87 | `result-track:fdda946dabafa4c8f2efbdf5c6e80948ebe220333f75f1a7d7c22b58d9c604bc` |
| 7 | `lemma` | [le_tfae](../../../../mathematics/Analysis/Projection/Variant782d11fdbb5cb1592ef6457aa3031e94e5d31bf9d6a3302af363ec7c36bfe698.lean/declarations/le-tfae--656d00333e156d6246f0f389.md) | 100 | `result-track:656d00333e156d6246f0f389356504b8f9d4a663ad110f1587076cd397f11d85` |
| 8 | `lemma` | [le_iff_mul_eq_right](../../../../mathematics/Analysis/Projection/Variant782d11fdbb5cb1592ef6457aa3031e94e5d31bf9d6a3302af363ec7c36bfe698.lean/declarations/le-iff-mul-eq-right--d60e4dc9a490b34fcda28474.md) | 115 | `result-track:d60e4dc9a490b34fcda284740f585c8c58f2ec78122bc93a5573241595e39c84` |
| 9 | `lemma` | [le_iff_mul_eq_left](../../../../mathematics/Analysis/Projection/Variant782d11fdbb5cb1592ef6457aa3031e94e5d31bf9d6a3302af363ec7c36bfe698.lean/declarations/le-iff-mul-eq-left--72d12f2e249d937c3479ed82.md) | 119 | `result-track:72d12f2e249d937c3479ed82ff4baf5f4119b362b56c165a041479276a397152` |
| 10 | `lemma` | [le_iff_sub](../../../../mathematics/Analysis/Projection/Variant782d11fdbb5cb1592ef6457aa3031e94e5d31bf9d6a3302af363ec7c36bfe698.lean/declarations/le-iff-sub--82e838fd3bbfc5ad56211e4e.md) | 123 | `result-track:82e838fd3bbfc5ad56211e4ed1850ab34fbe36f98f0fd453a7f57ff7d2666ef6` |
| 11 | `lemma` | [le_iff_idempotent_sub](../../../../mathematics/Analysis/Projection/Variant782d11fdbb5cb1592ef6457aa3031e94e5d31bf9d6a3302af363ec7c36bfe698.lean/declarations/le-iff-idempotent-sub--f34fdebf752a4904545241ad.md) | 127 | `result-track:f34fdebf752a4904545241adab74519eeff482874094bd9e4fd042335e2504e3` |
| 12 | `lemma` | [commute_of_le](../../../../mathematics/Analysis/Projection/Variant782d11fdbb5cb1592ef6457aa3031e94e5d31bf9d6a3302af363ec7c36bfe698.lean/declarations/commute-of-le--b6f0233c55bf8269ccac8a15.md) | 131 | `result-track:b6f0233c55bf8269ccac8a1575f80eff0b408e4f125480ea144eed86dc134add` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
