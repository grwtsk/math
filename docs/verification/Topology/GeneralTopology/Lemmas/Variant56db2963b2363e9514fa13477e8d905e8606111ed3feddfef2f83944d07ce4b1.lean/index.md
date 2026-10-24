# Verification target: GRWTSK.Topology.GeneralTopology.Lemmas.Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b53364ecfaad1e515142b03cb51d946897adfc8d",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b53364ecfaad1e515142b03cb51d946897adfc8d`.

Source path: `GRWTSK/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.AddChar` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.TypeTags.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.GroupWithZero.Finset` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Bounded` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Int` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Uniform` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OrderOfElement` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Dilation` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Filter.Tendsto.zero_mul_isBoundedUnder_le](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean/declarations/filter-tendsto-zero-mul-isboundedunder-le--b61269372baf41a87999e23e.md) | 31 | `result-track:b61269372baf41a87999e23e0a6f008d9f980529a79258c3113360c23466e341` |
| 2 | `theorem` | [Filter.isBoundedUnder_le_mul_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean/declarations/filter-isboundedunder-le-mul-tendsto-zero--0e2df56d4ef43d5547270b34.md) | 36 | `result-track:0e2df56d4ef43d5547270b34f662a91a4a915d5068556d3bf44b38cf77df7e3e` |
| 3 | `instance` | [Pi.nonUnitalSeminormedRing](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean/declarations/pi-nonunitalseminormedring--280d46406ea4fa682ed7728a.md) | 45 | `declaration-track:280d46406ea4fa682ed7728a87e2db9bface6331c483f2e36701bf461886b6d9` |
| 4 | `instance` | [Pi.seminormedRing](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean/declarations/pi-seminormedring--9ee0e4b0099cfb293ea9a6f0.md) | 62 | `declaration-track:9ee0e4b0099cfb293ea9a6f05901618235065676024582b19eaf0174d9850a23` |
| 5 | `instance` | [Pi.nonUnitalNormedRing](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean/declarations/pi-nonunitalnormedring--56c09c1842ee8f2d013a14aa.md) | 74 | `declaration-track:56c09c1842ee8f2d013a14aad2da0782c8a119b0a3f06f14e1872aa829b43fed` |
| 6 | `instance` | [Pi.normedRing](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean/declarations/pi-normedring--957e259573b1e788e6637971.md) | 85 | `declaration-track:957e259573b1e788e66379715d462c03007c9bf01e493c4f1f8ab6b0723bfae8` |
| 7 | `instance` | [Pi.nonUnitalSeminormedCommRing](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean/declarations/pi-nonunitalseminormedcommring--487c101012b9c3bcf4069fde.md) | 97 | `declaration-track:487c101012b9c3bcf4069fde3679256484227751ef7b10b4b06633f72b09cf60` |
| 8 | `instance` | [Pi.nonUnitalNormedCommRing](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean/declarations/pi-nonunitalnormedcommring--e070619b40d9a5a1f310da4e.md) | 109 | `declaration-track:e070619b40d9a5a1f310da4e22cfa9c2258596e352c4b8360e55fa08e977e935` |
| 9 | `instance` | [Pi.seminormedCommRing](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean/declarations/pi-seminormedcommring--0f111b7425dbfcb9833ab943.md) | 121 | `declaration-track:0f111b7425dbfcb9833ab943db1fe54fd108a5254a97b8d6e0f53d27fed9bc94` |
| 10 | `instance` | [Pi.normedCommutativeRing](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean/declarations/pi-normedcommutativering--48bdddc9addc547254902cff.md) | 133 | `declaration-track:48bdddc9addc547254902cff1d9d90da8e044706d6915a66ab6925e35444d773` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean/declarations/instance--e3ec05553551cf415c95da1d.md) | 140 | `declaration-track:e3ec05553551cf415c95da1d2b13a6a3541a10b5f84b01bfc29f72d42b6eba95` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean/declarations/instance--a3dc80ae4714ec67b4bc5cd0.md) | 165 | `declaration-track:a3dc80ae4714ec67b4bc5cd0b836b8d2625bfbdccdca631cf9db929b05e7af66` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean/declarations/instance--a3b56c186e11e2d5b07de707.md) | 170 | `declaration-track:a3b56c186e11e2d5b07de7074ded0f9abf265074daf238378631a68d8fe840ac` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean/declarations/instance--ac1923c58306ca41a6d2f237.md) | 175 | `declaration-track:ac1923c58306ca41a6d2f237ac187bb2f9101efe79f27a2d12516899ab08b72f` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean/declarations/instance--012f42b1a5b71ca7f020d658.md) | 180 | `declaration-track:012f42b1a5b71ca7f020d658ce78fac1f2ce15d257786406bab3b3e67bb4907f` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean/declarations/instance--2b006d884e6dae051159f899.md) | 185 | `declaration-track:2b006d884e6dae051159f89969be492d968802ca677d3c237becdc6ff3a02846` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean/declarations/instance--2e46026562e5f67bd734ed1c.md) | 190 | `declaration-track:2e46026562e5f67bd734ed1c5c958cd3bc2336f57b99504ec7d624ec08486a06` |
| 18 | `lemma` | [lipschitzWith_sub](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean/declarations/lipschitzwith-sub--1ccf1e6469c4ab76840ce612.md) | 198 | `result-track:1ccf1e6469c4ab76840ce6124eac14eafa092211254c14a24a9c66be0e311dcc` |
| 19 | `instance` | [Int.instNormedCommRing](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean/declarations/int-instnormedcommring--7c39ccdbcaea94baab06d0e6.md) | 208 | `declaration-track:7c39ccdbcaea94baab06d0e6ada431db2af53cbafa4417624e3c8ef54c2f578b` |
| 20 | `instance` | [Int.instNormOneClass](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean/declarations/int-instnormoneclass--c4796f5c91cd93c4a6fb9ab8.md) | 213 | `declaration-track:c4796f5c91cd93c4a6fb9ab87e2e3a1dcfc2229da3d2e04978244b4d987741dc` |
| 21 | `instance` | [Int.instNormMulClass](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean/declarations/int-instnormmulclass--49cb59f9352bd0020ec77b7c.md) | 216 | `declaration-track:49cb59f9352bd0020ec77b7ced4992eab96bb660958c256b315f006c6dabb06f` |
| 22 | `lemma` | [antilipschitzWith_mul_left](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean/declarations/antilipschitzwith-mul-left--0f1a53607312d730a1ab6733.md) | 222 | `result-track:0f1a53607312d730a1ab673324745e40a0da8c8bb7a54afa25dd21ecbe280ded` |
| 23 | `lemma` | [antilipschitzWith_mul_right](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean/declarations/antilipschitzwith-mul-right--37f62ca6256090479ad34d7a.md) | 225 | `result-track:37f62ca6256090479ad34d7a1a1818a71b9c40f7ff97be873332f53e84d7021f` |
| 24 | `def` | [Dilation.mulLeft](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean/declarations/dilation-mulleft--07cb13b418e261affe602a43.md) | 231 | `declaration-track:07cb13b418e261affe602a4379fc7fb0941d9500deefa22312496993a51e61d9` |
| 25 | `def` | [Dilation.mulRight](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean/declarations/dilation-mulright--a68d32846c2eaf33cfcfb6b1.md) | 239 | `declaration-track:a68d32846c2eaf33cfcfb6b1d61f884dcefc4e8b0319d2878fd20bc5efc6ce7a` |
| 26 | `lemma` | [comap_mul_left_cobounded](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean/declarations/comap-mul-left-cobounded--960c847a4475a30b7d4b1111.md) | 247 | `result-track:960c847a4475a30b7d4b1111ea34126d529e12b30a5c8d8c39c7851f29a0baec` |
| 27 | `lemma` | [comap_mul_right_cobounded](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean/declarations/comap-mul-right-cobounded--912f2fa1d5d61dc41dbf0c23.md) | 252 | `result-track:912f2fa1d5d61dc41dbf0c23cabb38964a101cccf619c46f2c6e835f310a69b3` |
| 28 | `lemma` | [IsOfFinOrder.norm_eq_one](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean/declarations/isoffinorder-norm-eq-one--7f98a5a031c2e9a94ce3afc8.md) | 263 | `result-track:7f98a5a031c2e9a94ce3afc8ea78c3b6521d4efc80a5eaba8c28b9eda7dbdf45` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean/declarations/example--5d7b3b6e7f8bede021b52781.md) | 266 | `declaration-track:5d7b3b6e7f8bede021b52781fc8a9199933bad0b1b91d10254ce9bdb2e90fac2` |
| 30 | `lemma` | [AddChar.norm_apply](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean/declarations/addchar-norm-apply--c1c30e3473105a0be37fcc6a.md) | 269 | `result-track:c1c30e3473105a0be37fcc6ac07d5282905caf1d382821b1cd528da36365cc70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
