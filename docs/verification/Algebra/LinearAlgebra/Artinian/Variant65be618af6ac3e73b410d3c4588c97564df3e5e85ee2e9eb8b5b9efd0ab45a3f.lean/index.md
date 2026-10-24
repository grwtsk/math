# Verification target: GRWTSK.Algebra.LinearAlgebra.Artinian.Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e724beaa9986d7122091e6906db8b3c3be9a6233",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e724beaa9986d7122091e6906db8b3c3be9a6233`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Nakayama` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.SetLike.Fintype` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.RSuffices` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsArtinian](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/isartinian--fda0293058c57aa3a75a0616.md) | 48 | `declaration-track:fda0293058c57aa3a75a061628772b8dc7f990380d98080969c68c2fd098b583` |
| 2 | `theorem` | [IsArtinian.wellFounded_submodule_lt](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/isartinian-wellfounded-submodule-lt--0ad9f9748aafeb9fd65130bc.md) | 64 | `result-track:0ad9f9748aafeb9fd65130bc09eabb60123bf0f87bdfab0f5f7dba97183c4704` |
| 3 | `theorem` | [isArtinian_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/isartinian-of-injective--b68808590aaa547f47353302.md) | 69 | `result-track:b68808590aaa547f473533025993917feb104369fe0e751b4cc598e259b08ce4` |
| 4 | `instance` | [isArtinian_submodule'](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/isartinian-submodule--ce1e5154a5e1e99ca17bd243.md) | 76 | `declaration-track:ce1e5154a5e1e99ca17bd24304ee3d48d1551bd53f9f41b6cdbba945796e089c` |
| 5 | `theorem` | [isArtinian_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/isartinian-of-le--7360aa92ebaf42900503b3f0.md) | 80 | `result-track:7360aa92ebaf42900503b3f0c8f07e67fbac2a75d1cf63e176f4e1cdf012f6d3` |
| 6 | `theorem` | [isArtinian_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/isartinian-of-surjective--f33c4dbf4e6431ef4f73ee7b.md) | 86 | `result-track:f33c4dbf4e6431ef4f73ee7b7d3a991d3e2a18c23b0fec5a54361745cd87f76f` |
| 7 | `theorem` | [isArtinian_of_linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/isartinian-of-linearequiv--7dd754741c4d6613dc472ed1.md) | 96 | `result-track:7dd754741c4d6613dc472ed1c2bee31f8310342080ed38d504ac567a19ea6141` |
| 8 | `theorem` | [isArtinian_of_range_eq_ker](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/isartinian-of-range-eq-ker--641ba73da574d1e2091e3a83.md) | 100 | `result-track:641ba73da574d1e2091e3a837d8b91e6e0a0a4a045b34a96a875b0cd4d565587` |
| 9 | `instance` | [isArtinian_prod](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/isartinian-prod--5890606ff29714df2d39fab3.md) | 110 | `declaration-track:5890606ff29714df2d39fab39f20fd48486e6ade571d16d731ceff4fb0dbb98a` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/instance--bbcdf2f2831f2acb124fcc89.md) | 115 | `declaration-track:bbcdf2f2831f2acb124fcc8979b5c6cd646e2d829870c8afdb4e07699fe88311` |
| 11 | `instance` | [isArtinian_pi](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/isartinian-pi--60e60268c3a0130069281a8c.md) | 122 | `declaration-track:60e60268c3a0130069281a8c98e56f8f70b71089811965f8cfb72d6c93798d6b` |
| 12 | `instance` | [isArtinian_pi'](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/isartinian-pi--78e72f4918cadd43c228872c.md) | 139 | `declaration-track:78e72f4918cadd43c228872c5878788f0056c6380a2b07fd8686371a8355b9ab` |
| 13 | `instance` | [isArtinian_finsupp](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/isartinian-finsupp--fb0ea7a9efec73169945a951.md) | 145 | `declaration-track:fb0ea7a9efec73169945a951c0580a1d711aa68cae831f7ac05002a39144b783` |
| 14 | `theorem` | [isArtinian_iff_wellFounded](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/isartinian-iff-wellfounded--1ecc49e139ef604d9537e426.md) | 157 | `result-track:1ecc49e139ef604d9537e426421462e5bfea9bd259e2e8a64498e1742b6e502d` |
| 15 | `theorem` | [IsArtinian.finite_of_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/isartinian-finite-of-linearindependent--5ac4957550e8429b6d8bc816.md) | 162 | `result-track:5ac4957550e8429b6d8bc8167a01998e42e8b9c93a8a7c0984c1aa7d9d6ee8d4` |
| 16 | `theorem` | [set_has_minimal_iff_artinian](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/set-has-minimal-iff-artinian--37079898c7038a922e6be89d.md) | 185 | `result-track:37079898c7038a922e6be89d5f4b682755704c989c2d55a1e33e8826525a3d40` |
| 17 | `theorem` | [IsArtinian.set_has_minimal](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/isartinian-set-has-minimal--5996fa194e2a363b9daa95cf.md) | 190 | `result-track:5996fa194e2a363b9daa95cf2de55cc7da95581e4be1c62d2db179eba869b4f6` |
| 18 | `theorem` | [monotone_stabilizes_iff_artinian](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/monotone-stabilizes-iff-artinian--94cd40da1f33c58b0dc304a6.md) | 196 | `result-track:94cd40da1f33c58b0dc304a6a9c0b627a5b4cee194adc80aa46a94525c6d615d` |
| 19 | `theorem` | [monotone_stabilizes](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/monotone-stabilizes--82086077b19eaad34de049d7.md) | 206 | `result-track:82086077b19eaad34de049d736a7921bd20e392f482fb5373e7250836f8805ec` |
| 20 | `theorem` | [induction](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/induction--ef0f152d7522610e76c745a9.md) | 211 | `result-track:ef0f152d7522610e76c745a9a0392770d608955acdaa21780df4f917566239a7` |
| 21 | `theorem` | [exists_endomorphism_iterate_ker_sup_range_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/exists-endomorphism-iterate-ker-sup-range-eq-top--a0a8c937ca369b7b81d206ae.md) | 218 | `result-track:a0a8c937ca369b7b81d206aebb04723a9e0011f9d1e9c5c3653ae7fc4b372362` |
| 22 | `theorem` | [surjective_of_injective_endomorphism](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/surjective-of-injective-endomorphism--d5f1fd37e58afb73d55a4fac.md) | 240 | `result-track:d5f1fd37e58afb73d55a4facece5be77b67e72771a3f64cae06d5688e8a5608c` |
| 23 | `theorem` | [bijective_of_injective_endomorphism](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/bijective-of-injective-endomorphism--6765f7958a30069a21423e90.md) | 248 | `result-track:6765f7958a30069a21423e90e7ce7d553f6619369ee8bdad143275949d070703` |
| 24 | `theorem` | [disjoint_partial_infs_eventually_top](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/disjoint-partial-infs-eventually-top--b6a4f89573c0bef64cd260d3.md) | 255 | `result-track:b6a4f89573c0bef64cd260d3ef78ea0b356ff8df0071e432d59f83eeba8f606e` |
| 25 | `theorem` | [range_smul_pow_stabilizes](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/range-smul-pow-stabilizes--53831c582c7cd6c885dd3786.md) | 280 | `result-track:53831c582c7cd6c885dd37862fe5c7a290db9a9598c4f5469b404604b38d389f` |
| 26 | `theorem` | [exists_pow_succ_smul_dvd](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/exists-pow-succ-smul-dvd--7a2194e00bed519bb02ba964.md) | 293 | `result-track:7a2194e00bed519bb02ba964aa356927d5a495724d8f0e05f802bb632a49d1a0` |
| 27 | `def` | [IsArtinianRing](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/isartinianring--c607fa6e37f6c74583663005.md) | 309 | `declaration-track:c607fa6e37f6c7458366300544de6792791f9c91bc03a0a8bf02182d80828dcf` |
| 28 | `theorem` | [isArtinianRing_iff](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/isartinianring-iff--02c88222165e45c890f1cf39.md) | 313 | `result-track:02c88222165e45c890f1cf399805b6344634d45a4c6df66b1d85f876580666c3` |
| 29 | `theorem` | [Ring.isArtinian_of_zero_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/ring-isartinian-of-zero-eq-one--71199704db8bbf3c85aa77ae.md) | 316 | `result-track:71199704db8bbf3c85aa77ae537d38172deb59ed62a13c0c174939a7d8ae504e` |
| 30 | `theorem` | [isArtinian_of_submodule_of_artinian](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/isartinian-of-submodule-of-artinian--4bbabc97e85124f99d05f647.md) | 321 | `result-track:4bbabc97e85124f99d05f647d5c3216ef1f4b785272c1a3ed18800c7ba8f5bb0` |
| 31 | `instance` | [isArtinian_of_quotient_of_artinian](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/isartinian-of-quotient-of-artinian--bd742ce4a566dab6797871bb.md) | 325 | `declaration-track:bd742ce4a566dab6797871bbcec2214c5505f130a2cb614ed35549b03cd24380` |
| 32 | `theorem` | [isArtinian_of_tower](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/isartinian-of-tower--41cfb9dd9abef4c3d90f5fd0.md) | 331 | `result-track:41cfb9dd9abef4c3d90f5fd0f169ddaf21fe7fa37955e6afccb4dcad623ee029` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/instance--82135ca5760097c76917da97.md) | 337 | `declaration-track:82135ca5760097c76917da97454f48bbb1a1b272cd30907a6ffbf8bee456fbe4` |
| 34 | `theorem` | [isArtinian_of_fg_of_artinian](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/isartinian-of-fg-of-artinian--655e551d83f598e37412b641.md) | 340 | `result-track:655e551d83f598e37412b641071272834e4cf428434bac54f59bec183c3e566a` |
| 35 | `theorem` | [isArtinian_of_fg_of_artinian'](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/isartinian-of-fg-of-artinian--49418ffea446231c3c6a4c56.md) | 358 | `result-track:49418ffea446231c3c6a4c56969cde55959fcab2f1bc0f5686a631a92d36ff5d` |
| 36 | `theorem` | [isArtinian_span_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/isartinian-span-of-finite--ca86ed0e28a1fca8c0c04465.md) | 366 | `result-track:ca86ed0e28a1fca8c0c0446552b3448baf9667b37bdb417c29d8bbab8d396d64` |
| 37 | `theorem` | [Function.Surjective.isArtinianRing](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/function-surjective-isartinianring--76161d21b2e39404b35b8c97.md) | 371 | `result-track:76161d21b2e39404b35b8c97aac3ccce8ee34bc3e18d038c38523f89b1100c1e` |
| 38 | `instance` | [isArtinianRing_range](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/isartinianring-range--42cd300a966119a7be2338be.md) | 377 | `declaration-track:42cd300a966119a7be2338bebbb1a89d5413c8aa82846f3cc4f6bc9650e5c39d` |
| 39 | `theorem` | [isNilpotent_jacobson_bot](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/isnilpotent-jacobson-bot--c346559e829553b7b8381dbd.md) | 388 | `result-track:c346559e829553b7b8381dbdfa14390ff52fa97a3d9b556ab6231c9eda975dd4` |
| 40 | `theorem` | [localization_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/localization-surjective--8993a24a794813898504e3b5.md) | 429 | `result-track:8993a24a794813898504e3b50e9ed294e4ec1a70c86e73eec315a95972877f4e` |
| 41 | `theorem` | [localization_artinian](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/localization-artinian--628b152b04f0f2ef51c054d4.md) | 444 | `result-track:628b152b04f0f2ef51c054d4d5091d891ee62751b1e8977a6e0408f85a443555` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/instance--950d78582c76e54a9dbcd72c.md) | 450 | `declaration-track:950d78582c76e54a9dbcd72c141f71b6f9feb32d57b76a59460d599f95dccc6f` |
| 43 | `instance` | [isMaximal_of_isPrime](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/declarations/ismaximal-of-isprime--dfdaad7733e1506626254137.md) | 455 | `declaration-track:dfdaad7733e1506626254137cf09dd9033ea8c6c44f90ed25c36e9049ef2843d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
