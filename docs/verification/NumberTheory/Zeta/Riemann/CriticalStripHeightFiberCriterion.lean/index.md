# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripHeightFiberCriterion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de9ddee70a349711bcff2758b97c1f3080691378",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de9ddee70a349711bcff2758b97c1f3080691378`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMirrorIsolation`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorIsolation.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [carrier](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/carrier--50d36dfb1d0d89088e1c2090.md) | 27 | `declaration-track:50d36dfb1d0d89088e1c2090c13dc43727205d34e3293c177ed422c278a58fc2` |
| 2 | `def` | [TargetCapacity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/targetcapacity--9d108de9f66de320bbf27549.md) | 31 | `declaration-track:9d108de9f66de320bbf27549251fff3e08677298b72752eae7690a9b4daed879` |
| 3 | `def` | [SourceCapacity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/sourcecapacity--529f9128cbcebbf2e9c6e199.md) | 35 | `declaration-track:529f9128cbcebbf2e9c6e199d38ca8676a947d249fc51368c65084a03169ef25` |
| 4 | `def` | [TargetHeightInjective](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/targetheightinjective--de12f9934743a810328f786f.md) | 39 | `declaration-track:de12f9934743a810328f786f3b0dcba44f2619a2427477612a3ff7578694bd85` |
| 5 | `lemma` | [carrier_subset](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/carrier-subset--ed8557ad5071c7be540a3d2b.md) | 43 | `result-track:ed8557ad5071c7be540a3d2ba718c40a2ca8c83406c2cd0a9c8e9f174e95120d` |
| 6 | `lemma` | [carrier_mirror_stable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/carrier-mirror-stable--e054c4c8d7d24968da335bee.md) | 45 | `result-track:e054c4c8d7d24968da335beee364e6d6eeca6ce8be0ddc495dd42fdd5c750985` |
| 7 | `lemma` | [targetCapacity_restrict](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/targetcapacity-restrict--5123f8343798c4e8618e275e.md) | 50 | `result-track:5123f8343798c4e8618e275ef7fe9814f0a32524029e583f3073e997bf11ad63` |
| 8 | `lemma` | [targetCapacity_of_capacity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/targetcapacity-of-capacity--9335d9cd7f0256bee679955f.md) | 55 | `result-track:9335d9cd7f0256bee679955f9682f9b51213b13f81aba2647d82d74e282a7b46` |
| 9 | `lemma` | [targetCapacity_of_source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/targetcapacity-of-source--8603742a4ddb7058cce1453e.md) | 59 | `result-track:8603742a4ddb7058cce1453ee5842048276fec64713c795aedf5aded2e9fc18d` |
| 10 | `theorem` | [capacity_iff_height_injective](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/capacity-iff-height-injective--d7d340e26367f7d98fe0ef8d.md) | 63 | `result-track:d7d340e26367f7d98fe0ef8d5b358eea98d4419e6246ead6677dee566b274c5e` |
| 11 | `theorem` | [targetCapacity_of_rhOn](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/targetcapacity-of-rhon--b08fd834c2c86952b0eaab68.md) | 72 | `result-track:b08fd834c2c86952b0eaab682c1812e4c69da00957958f163ac14c3b809363f4` |
| 12 | `theorem` | [rhOn_of_targetCapacity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/rhon-of-targetcapacity--2aac27324d3349fd1d882775.md) | 81 | `result-track:2aac27324d3349fd1d882775fc7b89c9eb81f00b5ebad9bb6b31a0015d099412` |
| 13 | `theorem` | [rhOn_iff_targetCapacity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/rhon-iff-targetcapacity--0fc800e363ec1e355c6540a9.md) | 88 | `result-track:0fc800e363ec1e355c6540a9240bf998e9a8c2737fc452dd67fa49c68eece46d` |
| 14 | `theorem` | [rhOn_iff_height_injective](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/rhon-iff-height-injective--e56c29d46d0e486c88e37e4a.md) | 92 | `result-track:e56c29d46d0e486c88e37e4abb19665d2466988cc9e975a2bf78b827ad13346c` |
| 15 | `lemma` | [window_mirror_stable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/window-mirror-stable--1b3d2afcc4d701f1feeea822.md) | 96 | `result-track:1b3d2afcc4d701f1feeea82270f504a9062aa80da65da0daaedd6a1bbb4321ed` |
| 16 | `lemma` | [upperShell_mirror_stable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/uppershell-mirror-stable--ac279201b4973b0e3197bfee.md) | 100 | `result-track:ac279201b4973b0e3197bfeec8c97a0e8186f3f95fd1d9d9a488635aa7d48cc6` |
| 17 | `theorem` | [window_iff_targetCapacity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/window-iff-targetcapacity--b1104b7dc2013efbbcdb76f2.md) | 105 | `result-track:b1104b7dc2013efbbcdb76f2510767db10537b2b3d5c5817ef19382a50b8a1aa` |
| 18 | `theorem` | [shell_iff_upper_fiber_capacity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/shell-iff-upper-fiber-capacity--82dbac46c59bdbb49927d3fc.md) | 110 | `result-track:82dbac46c59bdbb49927d3fcf4415579bbe94a1f2f8336960cd0fbbd9cc322c9` |
| 19 | `theorem` | [all_window_fibers_iff_rh](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/all-window-fibers-iff-rh--d38fb121e8e5407cd9517199.md) | 115 | `result-track:d38fb121e8e5407cd95171999b7cb80289a4c258581ba9d7dc446ae9ddf1205b` |
| 20 | `lemma` | [rhOn_univ_iff_rh](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/rhon-univ-iff-rh--e77a443d0dedcd3f283dc987.md) | 123 | `result-track:e77a443d0dedcd3f283dc987d9ca21255ac7eb7c66c44b8188462824cf7c7330` |
| 21 | `theorem` | [global_height_injective_iff_rh](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/global-height-injective-iff-rh--1998b62e1db7a024983c2561.md) | 133 | `result-track:1998b62e1db7a024983c25616e135d6a189c211b5e809a37ac9dabe3b7494261` |
| 22 | `def` | [criticalCarrier](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/criticalcarrier--97a48b64029aee6d4dd78605.md) | 139 | `declaration-track:97a48b64029aee6d4dd78605a664587d4c6dd0ce1f63952e86fbd14b0b736d25` |
| 23 | `lemma` | [criticalCarrier_mirror_stable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/criticalcarrier-mirror-stable--e5bd452b4b4dada1cd2ef03c.md) | 141 | `result-track:e5bd452b4b4dada1cd2ef03c484876e4a62b8e31153c7eee44c7d9a3b5fbe57b` |
| 24 | `lemma` | [rhOn_criticalCarrier_iff_rh](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/rhon-criticalcarrier-iff-rh--ded10fa854932ef9136c2808.md) | 147 | `result-track:ded10fa854932ef9136c28085597b6bd66596cb01c47d4d2e8d608cd22701421` |
| 25 | `theorem` | [all_strip_fibers_iff_rh](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/all-strip-fibers-iff-rh--b1c7de1d8991d6072b42262e.md) | 156 | `result-track:b1c7de1d8991d6072b42262e4b4906836d2e289f3060c35c3fa80f0d3b6cea3e` |
| 26 | `def` | [globalHeightProfile](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/globalheightprofile--98bae85a7f13f3a41001b8d7.md) | 160 | `declaration-track:98bae85a7f13f3a41001b8d7e7caa93f3ce34acb1dbda7a59cbf71fbfc0ff0f1` |
| 27 | `def` | [windowFiberProfile](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/windowfiberprofile--c50a8bfb544e0b162efd0329.md) | 163 | `declaration-track:c50a8bfb544e0b162efd0329ceb1959313c9b3cd9625350e153339c75def22ab` |
| 28 | `theorem` | [globalHeightProfile_status](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/globalheightprofile-status--4e06634e7e539787f1b8f553.md) | 166 | `result-track:4e06634e7e539787f1b8f55391a809729c1abae6f172814b704a34e5d6090bc8` |
| 29 | `theorem` | [windowFiberProfile_status](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/windowfiberprofile-status--c3f65d4c69770a14113e5af6.md) | 167 | `result-track:c3f65d4c69770a14113e5af6e81f69923674de9cbf3a348c0f9f0126c7b8af63` |
| 30 | `theorem` | [targetCapacity_of_zero_cover](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/targetcapacity-of-zero-cover--5199144a1b88b16455714882.md) | 171 | `result-track:5199144a1b88b16455714882a62da902913761c5a63ede881d6c9f87f9bd61ee` |
| 31 | `lemma` | [carrier_convex](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/carrier-convex--86f19e8b22366bc03edd0103.md) | 183 | `result-track:86f19e8b22366bc03edd01038eea76fd488971c11c863b6240d47c0f15e24ece` |
| 32 | `def` | [restrictDerivativeDisk](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/restrictderivativedisk--afa2bca4b01c8408c765b8a8.md) | 196 | `declaration-track:afa2bca4b01c8408c765b8a888fb5242b466175eed2d8ecf73d4f75835518453` |
| 33 | `theorem` | [targetCapacity_of_derivativeDisks](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/targetcapacity-of-derivativedisks--bf2cefc6b55a9d204db0e05a.md) | 201 | `result-track:bf2cefc6b55a9d204db0e05a5e4d8cc5d4d771bf0f1bd518738d2cf06cb49bc9` |
| 34 | `theorem` | [rhOn_of_derivativeDisks](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/rhon-of-derivativedisks--f5786dd3de93e0ba202d4a1a.md) | 205 | `result-track:f5786dd3de93e0ba202d4a1afa416f43148d297918f7a738e8aaa6f49593eb11` |
| 35 | `theorem` | [rh_of_strip_derivativeFibers](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/rh-of-strip-derivativefibers--5cf0f111327dc127829fc253.md) | 211 | `result-track:5cf0f111327dc127829fc253968d43c44b423664e66a40bf3f64905e393b9ba4` |
| 36 | `def` | [derivativeFiberProfile](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/derivativefiberprofile--11a60cc8505fa567ec78b883.md) | 216 | `declaration-track:11a60cc8505fa567ec78b88327757628a920a9cdfd5e802c71a4724a72b35316` |
| 37 | `theorem` | [derivativeFiberProfile_status](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/derivativefiberprofile-status--54d7a35c22669df6799b4ea9.md) | 222 | `result-track:54d7a35c22669df6799b4ea98078ad83ff1f01940d74f7337698f92b1a22cd0c` |
| 38 | `theorem` | [mirror_pair_separation](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/mirror-pair-separation--6a72d3d5dc315b59881441fe.md) | 226 | `result-track:6a72d3d5dc315b59881441fef1187f8967ef6d2ee570d653efc07460e742e576` |
| 39 | `def` | [derivativeDisksOfModels](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/derivativedisksofmodels--5f9b0579b80a59ac3f98bffe.md) | 240 | `declaration-track:5f9b0579b80a59ac3f98bffe58737f07957469b9cb2f41e6be2cf98b13fc7d2a` |
| 40 | `theorem` | [positive_gaps_without_uniform_lower_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/declarations/positive-gaps-without-uniform-lower-bound--e42483f2064122660dbe7024.md) | 256 | `result-track:e42483f2064122660dbe7024b246724ffc3708a50b017291f54ed31d5cecd181` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
