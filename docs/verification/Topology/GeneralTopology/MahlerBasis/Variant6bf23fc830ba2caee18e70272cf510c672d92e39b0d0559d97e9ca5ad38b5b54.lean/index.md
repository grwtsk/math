# Verification target: GRWTSK.Topology.GeneralTopology.MahlerBasis.Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "931ff2159c5075009d8814d107a0a0bc1cdd0198",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `931ff2159c5075009d8814d107a0a0bc1cdd0198`.

Source path: `GRWTSK/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.ForwardDiff` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Ultra` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.ProperSpace` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Binomial` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Nonarchimedean` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Polynomial` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.ZeroAtInfty` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Ultra.ContinuousMaps` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [norm_ascPochhammer_le](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean/declarations/norm-ascpochhammer-le--dc04db2b6075bfb53440bd5f.md) | 59 | `result-track:dc04db2b6075bfb53440bd5fc8d92a957d9ecfa79264bec001cb2449c1c905c9` |
| 2 | `instance` | [instBinomialRing](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean/declarations/instbinomialring--4d196130d2467fb2ab531dca.md) | 78 | `declaration-track:4d196130d2467fb2ab531dcab572dedea747cff71bbbf167ec4de4e13c3aba01` |
| 3 | `lemma` | [continuous_multichoose](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean/declarations/continuous-multichoose--b8c402b73210b0ba9475f434.md) | 89 | `result-track:b8c402b73210b0ba9475f434048cf478d5e316a36164617a26e67f6433afe3df` |
| 4 | `lemma` | [continuous_choose](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean/declarations/continuous-choose--057d812a7b256e20b6e344ab.md) | 94 | `result-track:057d812a7b256e20b6e344ab80181d6b61f47c831f473bf7f60bdc8f0d3d4ca2` |
| 5 | `def` | [mahler](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean/declarations/mahler--e134c9e8881cb115b5c731cc.md) | 104 | `declaration-track:e134c9e8881cb115b5c731cc41761228a086c88c70aae354dec445e8ea0bcc9e` |
| 6 | `lemma` | [mahler_apply](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean/declarations/mahler-apply--6d4e5e26511b310e6eb5ad96.md) | 108 | `result-track:6d4e5e26511b310e6eb5ad96c0cbf5aa4b033fa31aec8a385db04f6d5473a8fd` |
| 7 | `lemma` | [mahler_natCast_eq](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean/declarations/mahler-natcast-eq--b55d2b2599fe64ea86469a42.md) | 111 | `result-track:b55d2b2599fe64ea86469a422ce16d2caa9c11c59150ea04bb40ccf0df1c2a90` |
| 8 | `lemma` | [IsUltrametricDist.norm_fwdDiff_iter_apply_le](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean/declarations/isultrametricdist-norm-fwddiff-iter-apply-le--04555bba10e6b2b40349982c.md) | 120 | `result-track:04555bba10e6b2b40349982c21ee41a78abcd1b8755894196111f437d2f24f8f` |
| 9 | `lemma` | [bojanic_mahler_step1](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean/declarations/bojanic-mahler-step1--d1a4caff2d9f7a0d0409c9fa.md) | 132 | `result-track:d1a4caff2d9f7a0d0409c9fa4aca26d1f34d6261ee9db4bef239177bcd81c4ee` |
| 10 | `lemma` | [bojanic_mahler_step2](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean/declarations/bojanic-mahler-step2--8c03144d3610de97494818bd.md) | 164 | `result-track:8c03144d3610de97494818bdf37433f0c6a1828cdca25084737e999a59d7460a` |
| 11 | `lemma` | [fwdDiff_iter_le_of_forall_le](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean/declarations/fwddiff-iter-le-of-forall-le--fbb574b69796d51a4c25005a.md) | 203 | `result-track:fbb574b69796d51a4c25005a21b5882f551f151c670e3b9410b371435ea30daa` |
| 12 | `lemma` | [fwdDiff_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean/declarations/fwddiff-tendsto-zero--f67d0222b64d9d8c5079d7de.md) | 225 | `result-track:f67d0222b64d9d8c5079d7de7ce1e68ab4c49f263e2c9692b9b55697ec00891d` |
| 13 | `def` | [mahlerTerm](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean/declarations/mahlerterm--5d9869f85810a09287d1b004.md) | 255 | `declaration-track:5d9869f85810a09287d1b004da312abec9faa2a6bd66d6027200c2ad2f954da7` |
| 14 | `lemma` | [mahlerTerm_apply](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean/declarations/mahlerterm-apply--2d50dfb5f5f31c78f2f4a25b.md) | 257 | `result-track:2d50dfb5f5f31c78f2f4a25b10e2fbcf9c21b99b62904266d252e8e7ccff05dd` |
| 15 | `lemma` | [norm_mahlerTerm](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean/declarations/norm-mahlerterm--4d76f518d63072d8b1c972e5.md) | 261 | `result-track:4d76f518d63072d8b1c972e5e32363e48b63760a910cf71d8cd82db28dfe61cd` |
| 16 | `lemma` | [mahlerTerm_one](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean/declarations/mahlerterm-one--5cdd61cc63306639f3fba56b.md) | 271 | `result-track:5cdd61cc63306639f3fba56b393c14b36270e3f4a88bbc3db68807595f352c1e` |
| 17 | `lemma` | [norm_mahler_eq](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean/declarations/norm-mahler-eq--88f3e532bf157ba5f802c12f.md) | 277 | `result-track:88f3e532bf157ba5f802c12fccef3b6bf2e97b78a75ca15fd23e8bbedd67e6d4` |
| 18 | `def` | [mahlerSeries](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean/declarations/mahlerseries--398ef15947ef448682e9008a.md) | 281 | `declaration-track:398ef15947ef448682e9008a9b2e034f5d891c1dba490465e33e21d41061b144` |
| 19 | `lemma` | [hasSum_mahlerSeries](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean/declarations/hassum-mahlerseries--edcb0018e6eb6cda305a469c.md) | 286 | `result-track:edcb0018e6eb6cda305a469cdcc56501757197287fa3ae016a274707dff6c809` |
| 20 | `lemma` | [mahlerSeries_apply](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean/declarations/mahlerseries-apply--b1f996c651d6486aa08da2d9.md) | 293 | `result-track:b1f996c651d6486aa08da2d99bbe5126a179c85036933a05207ae805461f13a1` |
| 21 | `lemma` | [mahlerSeries_apply_nat](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean/declarations/mahlerseries-apply-nat--a6ad4649eba94c6980e6abb9.md) | 302 | `result-track:a6ad4649eba94c6980e6abb9d39251a6a670d4f3cb5c7be3bcf5bfdafc6dd2bd` |
| 22 | `lemma` | [fwdDiff_mahlerSeries](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean/declarations/fwddiff-mahlerseries--4fda7e136a40ddea1e019edf.md) | 314 | `result-track:4fda7e136a40ddea1e019edf8fb916f2366ad5ba4696ae29ac7ddd0755ef0915` |
| 23 | `lemma` | [hasSum_mahler](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean/declarations/hassum-mahler--c5eefb047d57c6a5f21f5a0d.md) | 340 | `result-track:c5eefb047d57c6a5f21f5a0d94bb1bdc9ad9841d836bb42811988139d002c7f0` |
| 24 | `def` | [mahlerEquiv](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean/declarations/mahlerequiv--1994b77e7d036e59865b026c.md) | 357 | `declaration-track:1994b77e7d036e59865b026c5323842b82d0feffc1427e34ec0e32e2358947f9` |
| 25 | `lemma` | [mahlerEquiv_apply](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean/declarations/mahlerequiv-apply--627a00864fb948078eddfbd3.md) | 382 | `result-track:627a00864fb948078eddfbd39d709355f608873db0a7a940dbc88b462fdb42c3` |
| 26 | `lemma` | [mahlerEquiv_symm_apply](../../../../../mathematics/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean/declarations/mahlerequiv-symm-apply--851b825bd895fb3f3de91f47.md) | 384 | `result-track:851b825bd895fb3f3de91f474a015b068e70cff2f6b3cd221d9b970f305ff635` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
