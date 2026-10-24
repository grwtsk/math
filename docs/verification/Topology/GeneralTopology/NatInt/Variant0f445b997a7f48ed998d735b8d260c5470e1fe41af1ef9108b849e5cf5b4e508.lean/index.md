# Verification target: GRWTSK.Topology.GeneralTopology.NatInt.Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5071414aef3e355f531ae4bd3ccdb26cca49c783",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5071414aef3e355f531ae4bd3ccdb26cca49c783`.

Source path: `GRWTSK/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Encodable.Lattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Finset` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Group` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasProd.tendsto_prod_nat](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/hasprod-tendsto-prod-nat--6290c805f437e326fb9f0f77.md) | 52 | `result-track:6290c805f437e326fb9f0f77de4236c5fcff103a1bf3ee22cc678bd1bf44e467` |
| 2 | `theorem` | [Multipliable.tendsto_prod_tprod_nat](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/multipliable-tendsto-prod-tprod-nat--ef6c5ebb1dedb9abc4554d5f.md) | 60 | `result-track:ef6c5ebb1dedb9abc4554d5f07d211a73c59695e0b5fd915238f3051104b559f` |
| 3 | `theorem` | [prod_range_mul](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/prod-range-mul--b88921b768c5dee1c56741f0.md) | 77 | `result-track:b88921b768c5dee1c56741f0548d47f725e203dd7cf5c704f9846a87e8e314dd` |
| 4 | `theorem` | [zero_mul](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/zero-mul--4cfeb86894c05a0cae98ac68.md) | 83 | `result-track:4cfeb86894c05a0cae98ac682b06d9e06955e35dbc52a2a08afcdf27488a80f1` |
| 5 | `theorem` | [even_mul_odd](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/even-mul-odd--c6a6445d8b42a21c6c413c3e.md) | 88 | `result-track:c6a6445d8b42a21c6c413c3e5c13b06af7f029653a7f84a9a63dec0dd828ba14` |
| 6 | `theorem` | [hasProd_iff_tendsto_nat](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/hasprod-iff-tendsto-nat--15df8b5dc195bade8270c813.md) | 102 | `result-track:15df8b5dc195bade8270c813bb29a516998868ef20110605ab752d0ba3f7e974` |
| 7 | `theorem` | [comp_nat_add](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/comp-nat-add--4c9c3005a321cb4b8b69bd77.md) | 113 | `result-track:4c9c3005a321cb4b8b69bd77b0b355b04b27c20e6d7c1efc9fcb8aabd1125ed0` |
| 8 | `theorem` | [even_mul_odd](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/even-mul-odd--99d0f6cae2cfc75391b46b45.md) | 117 | `result-track:99d0f6cae2cfc75391b46b45ac7e594f4c4f22fb7218bf39e1e5efb99a165f44` |
| 9 | `theorem` | [tprod_iSup_decode₂](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/tprod-isup-decode--9e17cbaf44bb7170d3f47ab7.md) | 137 | `result-track:9e17cbaf44bb7170d3f47ab70b7f6edd5ef2d59ed90051ff1c30e3c677cec894` |
| 10 | `theorem` | [tprod_iUnion_decode₂](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/tprod-iunion-decode--99301afc7d0d55e67914e432.md) | 149 | `result-track:99301afc7d0d55e67914e4320134a7651fe09f98ac2452de11be0c1f5da0ac00` |
| 11 | `theorem` | [rel_iSup_tprod](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/rel-isup-tprod--e886b9c95b837479f23ea9a8.md) | 166 | `result-track:e886b9c95b837479f23ea9a819a9d6851531d27c572544ad8b80655edf9a72dc` |
| 12 | `theorem` | [rel_iSup_prod](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/rel-isup-prod--bc0c563db90879e244d6a265.md) | 175 | `result-track:bc0c563db90879e244d6a2656d34ea8743ac0cee6a3921dbba00430d18a9bfd5` |
| 13 | `theorem` | [rel_sup_mul](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/rel-sup-mul--9c31d9ddb6f24a4052272b58.md) | 183 | `result-track:9c31d9ddb6f24a4052272b58e683ddc9aa3a30fa68b60a51314466b1ceedc0e5` |
| 14 | `theorem` | [Multipliable.prod_mul_tprod_nat_mul'](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/multipliable-prod-mul-tprod-nat-mul--1cdb52a07e6767844948dd44.md) | 197 | `result-track:1cdb52a07e6767844948dd44bdd037ed21af67c70b1f94b96cf373f173562ff5` |
| 15 | `theorem` | [tprod_eq_zero_mul'](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/tprod-eq-zero-mul--aeaf51fe9939e4287538283a.md) | 207 | `result-track:aeaf51fe9939e4287538283ae937c9ae7993780f818ca7d010f351187492fad1` |
| 16 | `theorem` | [tprod_even_mul_odd](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/tprod-even-mul-odd--cab43265a650512eb8a12d54.md) | 213 | `result-track:cab43265a650512eb8a12d5448ad30c5272f07fb72b89d2e61f48d9a15a8c0b3` |
| 17 | `theorem` | [hasProd_nat_add_iff](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/hasprod-nat-add-iff--cb16a01bc1cd7371cf24b9b7.md) | 229 | `result-track:cb16a01bc1cd7371cf24b9b7cc6060d9a3d1275b9ee19fce85f90c56fa2cd460` |
| 18 | `theorem` | [multipliable_nat_add_iff](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/multipliable-nat-add-iff--feea03aad2827fb82f6846b5.md) | 235 | `result-track:feea03aad2827fb82f6846b5380a6654fdc23ebc84fe00cc891f2cb5648d0474` |
| 19 | `theorem` | [hasProd_nat_add_iff'](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/hasprod-nat-add-iff--24a719bf0aa406af6a878ad3.md) | 242 | `result-track:24a719bf0aa406af6a878ad3a94507f21fe92893b83849b09249a0bb73890580` |
| 20 | `theorem` | [Multipliable.prod_mul_tprod_nat_add](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/multipliable-prod-mul-tprod-nat-add--d288872811f85bd05f4b3ddc.md) | 247 | `result-track:d288872811f85bd05f4b3ddc5307a3da92dd1f4bf500816da76ad1a4d5943d13` |
| 21 | `theorem` | [Multipliable.tprod_eq_zero_mul](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/multipliable-tprod-eq-zero-mul--c7523efc5829e6a743da0f8d.md) | 257 | `result-track:c7523efc5829e6a743da0f8dced304eb02d05cff8369d99f71a81ac989aab831` |
| 22 | `theorem` | [tendsto_prod_nat_add](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/tendsto-prod-nat-add--08622630d1d24764900066ee.md) | 269 | `result-track:08622630d1d24764900066ee795355aca675a207a4d3abe358228327f341e63a` |
| 23 | `theorem` | [cauchySeq_finset_iff_nat_tprod_vanishing](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/cauchyseq-finset-iff-nat-tprod-vanishing--14e2df3fb85d7d502075a77f.md) | 287 | `result-track:14e2df3fb85d7d502075a77f7ed96236ba4745b3e9d3e4b147fe17014a64be00` |
| 24 | `theorem` | [multipliable_iff_nat_tprod_vanishing](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/multipliable-iff-nat-tprod-vanishing--17c8f6bf60d3426f35a24b79.md) | 304 | `result-track:17c8f6bf60d3426f35a24b792104cb297e52d2c3f351e8f530cf0ba530caefd8` |
| 25 | `theorem` | [Multipliable.nat_tprod_vanishing](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/multipliable-nat-tprod-vanishing--7fc0329439724baf3a6b5795.md) | 315 | `result-track:7fc0329439724baf3a6b57957710b7833e66f6074d766f03c4f8a667c673569d` |
| 26 | `theorem` | [Multipliable.tendsto_atTop_one](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/multipliable-tendsto-attop-one--8a4dd44351819256c1d85696.md) | 322 | `result-track:8a4dd44351819256c1d856961b4fe8161e58232948371057ff1415eb7999f9b5` |
| 27 | `lemma` | [HasProd.nat_mul_neg_add_one](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/hasprod-nat-mul-neg-add-one--9db912d382e4be313a0b352e.md) | 342 | `result-track:9db912d382e4be313a0b352efacff03315a7340cecb66888bb5671059e03d407` |
| 28 | `lemma` | [Multipliable.nat_mul_neg_add_one](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/multipliable-nat-mul-neg-add-one--875cd1d1329800a4556d1a0b.md) | 359 | `result-track:875cd1d1329800a4556d1a0bbcbfae806af426185879c128eb1f911eb673cba1` |
| 29 | `lemma` | [tprod_nat_mul_neg_add_one](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/tprod-nat-mul-neg-add-one--98aea8402aed34dd268cc34e.md) | 364 | `result-track:98aea8402aed34dd268cc34e719954818c86757981ca8ee33293b0a805bfdfe2` |
| 30 | `lemma` | [HasProd.of_nat_of_neg_add_one](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/hasprod-of-nat-of-neg-add-one--b758ea62cd73c9de065bf8dc.md) | 373 | `result-track:b758ea62cd73c9de065bf8dc94f7fccda1791671f71bb3805037795b08e5a2e6` |
| 31 | `lemma` | [Multipliable.of_nat_of_neg_add_one](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/multipliable-of-nat-of-neg-add-one--d8504d0655ebbca88764d01c.md) | 388 | `result-track:d8504d0655ebbca88764d01cb2715e739f53104ce143641fe1d5c7719eceb7c6` |
| 32 | `lemma` | [tprod_of_nat_of_neg_add_one](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/tprod-of-nat-of-neg-add-one--e728d8e3b398929363f53d02.md) | 394 | `result-track:e728d8e3b398929363f53d02b8a631b4aa39813b717467b5afc4079135f2e7fa` |
| 33 | `lemma` | [HasProd.int_rec](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/hasprod-int-rec--db46dabb100815d14e7a5757.md) | 405 | `result-track:db46dabb100815d14e7a575724bbd631b185196f812fdfe67d0b2d496c6623d3` |
| 34 | `lemma` | [Multipliable.int_rec](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/multipliable-int-rec--6833377c6bc73635b16c669b.md) | 413 | `result-track:6833377c6bc73635b16c669b4a925c79c654d98b31c08d41f2285e13c3e888ec` |
| 35 | `lemma` | [tprod_int_rec](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/tprod-int-rec--30e12c95534448ee3fb5b56d.md) | 423 | `result-track:30e12c95534448ee3fb5b56d3b7adfb82bcc6ba3f27b0a10c4f5e3069dcdb7c6` |
| 36 | `theorem` | [HasProd.nat_mul_neg](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/hasprod-nat-mul-neg--b19aa357e86336a0411ff882.md) | 428 | `result-track:b19aa357e86336a0411ff8822a1d1fee0a03ad938d73857eb14b33623d1bb404` |
| 37 | `theorem` | [Multipliable.nat_mul_neg](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/multipliable-nat-mul-neg--507067ca7bcd53ad5e5576a3.md) | 465 | `result-track:507067ca7bcd53ad5e5576a31144149d4ef756403b9f64c0326a1df0055f2167` |
| 38 | `lemma` | [tprod_nat_mul_neg](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/tprod-nat-mul-neg--d88ca270b0f64141865abe0e.md) | 470 | `result-track:d88ca270b0f64141865abe0eeb33df23f8207ec9afee883b262f119a4f456c18` |
| 39 | `theorem` | [HasProd.of_add_one_of_neg_add_one](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/hasprod-of-add-one-of-neg-add-one--9e7e91f4abd2fceee963b030.md) | 475 | `result-track:9e7e91f4abd2fceee963b03017c714d1bb637553d6592eb6c2f67b29f6b0345b` |
| 40 | `lemma` | [Multipliable.of_add_one_of_neg_add_one](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/multipliable-of-add-one-of-neg-add-one--81d077c7e52c7d203ea63c9c.md) | 481 | `result-track:81d077c7e52c7d203ea63c9c4d0b75a96418b96d5630ebb05d0e8ab13b270ba3` |
| 41 | `lemma` | [tprod_of_add_one_of_neg_add_one](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/tprod-of-add-one-of-neg-add-one--dd78423b0220cd2718476838.md) | 487 | `result-track:dd78423b0220cd2718476838ec2ce83501bb01bb331d2abff0f9f84f5a9307b0` |
| 42 | `lemma` | [HasProd.of_nat_of_neg](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/hasprod-of-nat-of-neg--26d847880fd6690b7ad5f9e4.md) | 501 | `result-track:26d847880fd6690b7ad5f9e4ceec585b313c96c49a26c52e96132cfd74d08dd3` |
| 43 | `lemma` | [Multipliable.of_nat_of_neg](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/multipliable-of-nat-of-neg--c3e3419bfbb3a3fd4b8397fc.md) | 507 | `result-track:c3e3419bfbb3a3fd4b8397fc51699dd2a8345b16b8f28e19763080986a920327` |
| 44 | `lemma` | [Multipliable.tprod_of_nat_of_neg](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/multipliable-tprod-of-nat-of-neg--72ebb7de6efde21d83019221.md) | 512 | `result-track:72ebb7de6efde21d83019221af60f329cd1263dcc519379eb11c82101c765b32` |
| 45 | `lemma` | [multipliable_int_iff_multipliable_nat_and_neg_add_one](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/multipliable-int-iff-multipliable-nat-and-neg-add-one--38c081824f7538ce49633185.md) | 530 | `result-track:38c081824f7538ce49633185870a152d5465ee4d76c98834329cee068c7c66aa` |
| 46 | `lemma` | [multipliable_int_iff_multipliable_nat_and_neg](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/multipliable-int-iff-multipliable-nat-and-neg--a06f752b1e4a1897e4c17e5e.md) | 538 | `result-track:a06f752b1e4a1897e4c17e5e591dff8bcac97b693573decf38c53c2d15a05dda` |
| 47 | `theorem` | [pnat_multipliable_iff_multipliable_succ](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/pnat-multipliable-iff-multipliable-succ--3bc08bf799a6d0a8b749f729.md) | 551 | `result-track:3bc08bf799a6d0a8b749f72960dcbb89334023ec4ae7fc7fb77cb874afdabbde` |
| 48 | `theorem` | [tprod_pnat_eq_tprod_succ](../../../../../mathematics/Topology/GeneralTopology/NatInt/Variant0f445b997a7f48ed998d735b8d260c5470e1fe41af1ef9108b849e5cf5b4e508.lean/declarations/tprod-pnat-eq-tprod-succ--6a0684283a559a706405e9e5.md) | 556 | `result-track:6a0684283a559a706405e9e545be45362ec9b9a3fe615f2a3684b821ffe2f925` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
