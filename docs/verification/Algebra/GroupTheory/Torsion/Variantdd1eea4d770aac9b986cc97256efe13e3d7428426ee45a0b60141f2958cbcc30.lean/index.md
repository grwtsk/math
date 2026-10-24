# Verification target: GRWTSK.Algebra.GroupTheory.Torsion.Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31cb5ce84d4edc5b1ce6323731dbad06571835d2",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31cb5ce84d4edc5b1ce6323731dbad06571835d2`.

Source path: `GRWTSK/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.PGroup` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsTorsion](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/istorsion--9e8489e1bad938fd7ac3bbe2.md) | 58 | `declaration-track:9e8489e1bad938fd7ac3bbe2ba08ccab85130b8cdb7f574e2b27488201df7385` |
| 2 | `theorem` | [not_isTorsion_iff](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/not-istorsion-iff--869f190f7cd07e02d0c1521b.md) | 64 | `result-track:869f190f7cd07e02d0c1521b6686fbfcc7932323315329d01608fd50e4708cc1` |
| 3 | `def` | [IsTorsion.group](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/istorsion-group--1ba5f0c1f572b1f4a0282974.md) | 73 | `declaration-track:1ba5f0c1f572b1f4a0282974f330a429cd88719550d37367ee94a381064fb5f3` |
| 4 | `theorem` | [IsTorsion.subgroup](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/istorsion-subgroup--a5e3ff376fa4fad505ac7b1e.md) | 86 | `result-track:a5e3ff376fa4fad505ac7b1ef8037bdae60cb906c45fe28a32b7bdce03554717` |
| 5 | `theorem` | [IsTorsion.of_surjective](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/istorsion-of-surjective--3f2eb4ccba84e5960cb1797b.md) | 92 | `result-track:3f2eb4ccba84e5960cb1797b41a62575654b376edb720dd30694f275f2f42e10` |
| 6 | `theorem` | [IsTorsion.extension_closed](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/istorsion-extension-closed--ff230d2aa5ed556533cad473.md) | 100 | `result-track:ff230d2aa5ed556533cad473f1b5c043c454cea0a3e99208d8dbaf5d226899ee` |
| 7 | `theorem` | [IsTorsion.quotient_iff](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/istorsion-quotient-iff--d65c52b334ff1aef03c4e716.md) | 112 | `result-track:d65c52b334ff1aef03c4e716761d34c697d6a80aec85bf65517c818ababb31cd` |
| 8 | `theorem` | [ExponentExists.isTorsion](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/exponentexists-istorsion--671177bcb0093eba7042966a.md) | 119 | `result-track:671177bcb0093eba7042966aabe1db84d557c5acac1a728213fae1db710570c0` |
| 9 | `theorem` | [IsTorsion.exponentExists](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/istorsion-exponentexists--8662b66b317e8982723876ed.md) | 126 | `result-track:8662b66b317e8982723876eddcf69976c5e9a356056ddec78bd456406d85031a` |
| 10 | `theorem` | [isTorsion_of_finite](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/istorsion-of-finite--2426159a6de9afcfbc7d930f.md) | 133 | `result-track:2426159a6de9afcfbc7d930f831357926212e971239ad169ca8bdf95bd704e3b` |
| 11 | `lemma` | [not_isMulTorsionFree_of_isTorsion](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/not-ismultorsionfree-of-istorsion--7b26430a0ae77a47a6976b60.md) | 143 | `result-track:7b26430a0ae77a47a6976b60bc2ce28133e022fa05011148abff666fa2575fe7` |
| 12 | `lemma` | [not_isTorsion_of_isMulTorsionFree](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/not-istorsion-of-ismultorsionfree--82a09294b079a5e4691a2e0a.md) | 148 | `result-track:82a09294b079a5e4691a2e0a8e64d482ae335c182e8fccbbbd3a50c7eb4d1bc6` |
| 13 | `theorem` | [IsTorsion.module_of_torsion](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/istorsion-module-of-torsion--eee9a04649ea0a761fdc23c8.md) | 161 | `result-track:eee9a04649ea0a761fdc23c82aed6c4020e41e5779d732bfbc00c6ffff376c16` |
| 14 | `theorem` | [IsTorsion.module_of_finite](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/istorsion-module-of-finite--5114351ab7429f07494a351a.md) | 168 | `result-track:5114351ab7429f07494a351a9495afffd57de26b68f7cd234ede8d5bf0776db8` |
| 15 | `def` | [torsion](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/torsion--c232af929f0a473573a4ab6e.md) | 186 | `declaration-track:c232af929f0a473573a4ab6ee6ce224c25d898b6b66c1f3a182aed1997ae1b2f` |
| 16 | `theorem` | [torsion.isTorsion](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/torsion-istorsion--9df124a604041ba71a194277.md) | 195 | `result-track:9df124a604041ba71a194277eaa1541ae4b9c0ad843479b0d5f96ad82e572644` |
| 17 | `def` | [primaryComponent](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/primarycomponent--6f3152f40a7391d96d011c0e.md) | 210 | `declaration-track:6f3152f40a7391d96d011c0ed4148c1074002d539ade0a44296c6d9e5c26d1a4` |
| 18 | `theorem` | [primaryComponent.exists_orderOf_eq_prime_pow](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/primarycomponent-exists-orderof-eq-prime-pow--23703501f974493921639ac4.md) | 227 | `result-track:23703501f974493921639ac40431487f772c0de050a97f21c20a3cbcd7303db4` |
| 19 | `theorem` | [primaryComponent.disjoint](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/primarycomponent-disjoint--161a25c16799a703f2779d14.md) | 235 | `result-track:161a25c16799a703f2779d14778ff2272c836d705a52fccdc4a4d761ec9989e4` |
| 20 | `theorem` | [torsion_eq_top](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/torsion-eq-top--829bc3f631e7c8d61efa607a.md) | 253 | `result-track:829bc3f631e7c8d61efa607a514df9320a97d5117586d5d6cbe269555cad2c7f` |
| 21 | `def` | [torsionMulEquiv](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/torsionmulequiv--5989b807ee178bf0208a22f0.md) | 257 | `declaration-track:5989b807ee178bf0208a22f0f27c60583641ea40d00c67626c978b062f1eb5b5` |
| 22 | `theorem` | [torsionMulEquiv_apply](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/torsionmulequiv-apply--14ac84987ff7aff896189d69.md) | 261 | `result-track:14ac84987ff7aff896189d693d91c308c1c44d49b792de51a5e035ac02487f9b` |
| 23 | `theorem` | [torsionMulEquiv_symm_apply_coe](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/torsionmulequiv-symm-apply-coe--af2abb14981bd43f084031e6.md) | 266 | `result-track:af2abb14981bd43f084031e6a6d5c7883579b52cdc5e8ed3e8dedbb3f536522e` |
| 24 | `def` | [Torsion.ofTorsion](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/torsion-oftorsion--c52e14fc1b738141950bd59f.md) | 276 | `declaration-track:c52e14fc1b738141950bd59f21208a60e0bfb51856cd3f2a633a366b974c5b44` |
| 25 | `def` | [torsion](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/torsion--d43ce873574634f60b069dc7.md) | 289 | `declaration-track:d43ce873574634f60b069dc78b1ac7eec5d3462e3fd3ced23d42b330e3ef02df` |
| 26 | `theorem` | [torsion_eq_torsion_submonoid](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/torsion-eq-torsion-submonoid--077ebc8a8351802b0ea0c86a.md) | 296 | `result-track:077ebc8a8351802b0ea0c86a69b2ed963fb5055b7cd3a2a681163762c7642016` |
| 27 | `theorem` | [mem_torsion](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/mem-torsion--986d494e18c8ed27a4eea1fa.md) | 300 | `result-track:986d494e18c8ed27a4eea1fa2b80749bf3d81025ed748d87f49406f5f4a42044` |
| 28 | `lemma` | [isMulTorsionFree_iff_torsion_eq_bot](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/ismultorsionfree-iff-torsion-eq-bot--3b4cf3f46e593b963b612682.md) | 303 | `result-track:3b4cf3f46e593b963b61268252c90a2df62bd7d532c24e50d0be579b26710dd7` |
| 29 | `def` | [primaryComponent](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/primarycomponent--6f0293e43428650693cd5071.md) | 313 | `declaration-track:6f0293e43428650693cd507194400b856b49496060005e614e66110999e1ba4d` |
| 30 | `theorem` | [primaryComponent.isPGroup](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/primarycomponent-ispgroup--a2b34730aa37a2ce5b2708bb.md) | 320 | `result-track:a2b34730aa37a2ce5b2708bbcac7aec7d09393599b02fe2a6cb91149fd0a5deb` |
| 31 | `def` | [IsTorsionFree](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/istorsionfree--56fcadd80dc6d4743e418e23.md) | 340 | `declaration-track:56fcadd80dc6d4743e418e2341bd27c3258e7428fa65b2a087d45078ba32b2ba` |
| 32 | `theorem` | [not_isTorsionFree_iff](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/not-istorsionfree-iff--6eb6f350162d3c9dd55ab05f.md) | 348 | `result-track:6eb6f350162d3c9dd55ab05f7acacec0b54f105bd022746f535b79f979de739f` |
| 33 | `lemma` | [isTorsionFree_of_subsingleton](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/istorsionfree-of-subsingleton--d07a3bd40d4087bdb70be208.md) | 352 | `result-track:d07a3bd40d4087bdb70be208ce470e51d155f05ae8b65b3753b86f76546393bf` |
| 34 | `lemma` | [isTorsionFree_iff_torsion_eq_bot](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/istorsionfree-iff-torsion-eq-bot--79e3ba5339e4bb64b1514a70.md) | 356 | `result-track:79e3ba5339e4bb64b1514a702d59459314de8157fc100c18dc8e0979b2c85d39` |
| 35 | `theorem` | [IsTorsion.not_torsion_free](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/istorsion-not-torsion-free--57f6335a9121047b63a5729d.md) | 368 | `result-track:57f6335a9121047b63a5729dbfb016437bb15b8a75da2c8e9ec90fa11b7bcfb0` |
| 36 | `theorem` | [IsTorsionFree.not_torsion](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/istorsionfree-not-torsion--99dfdd9f1942df0eb93c614c.md) | 375 | `result-track:99dfdd9f1942df0eb93c614ce62e049be8c405346383bdfd9d7df8dc59eaa698` |
| 37 | `theorem` | [IsTorsionFree.subgroup](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/istorsionfree-subgroup--f6479c3c28841581cfce5d7b.md) | 382 | `result-track:f6479c3c28841581cfce5d7bb8b465871a6e312590e52ab801bcfa3c7ae8b089` |
| 38 | `theorem` | [IsTorsionFree.prod](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/istorsionfree-prod--fdd4fc5fecbff430088b221d.md) | 388 | `result-track:fdd4fc5fecbff430088b221d769ac700a99d1c4a3396a40c61f660fb9bb71087` |
| 39 | `instance` | [_root_.GRWTSK.Algebra.GroupTheory.IsTorsion.Variantb55399a48923a9b643283ebfdf05ce6face278bcb8e5fa00c4b7d42096cea4c4.QuotientGroup.instIsMulTorsionFree](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/root-grwtsk-algebra-grouptheory-istorsion-variantb55399a48923a9b643283eb--6e6162d8ad7a3712bd3ec68c.md) | 406 | `declaration-track:6e6162d8ad7a3712bd3ec68ca7cf84feededaa8237c2fa0bd90a1d587eb0e1d6` |
| 40 | `theorem` | [IsTorsionFree.quotient_torsion](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/istorsionfree-quotient-torsion--f0d4ecc96cbf82ab0095643d.md) | 417 | `result-track:f0d4ecc96cbf82ab0095643dddcde7ce080daa52c1c5ec44e87d443f5e66b18c` |
| 41 | `lemma` | [isTorsionFree_iff_noZeroSMulDivisors_nat](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/istorsionfree-iff-nozerosmuldivisors-nat--3473659db4e868335c049530.md) | 431 | `result-track:3473659db4e868335c049530208a0101d24a223db80101cd964cfad2d3b50f7d` |
| 42 | `lemma` | [isTorsionFree_iff_noZeroSMulDivisors_int](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/istorsionfree-iff-nozerosmuldivisors-int--a85b2a74624d679cd2d29b71.md) | 437 | `result-track:a85b2a74624d679cd2d29b7137cd7360747decefb92ed7b18d6a55ae3ecc4cf6` |
| 43 | `lemma` | [IsTorsionFree.of_noZeroSMulDivisors](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/istorsionfree-of-nozerosmuldivisors--8735fe1e298b2b109ca6abde.md) | 443 | `result-track:8735fe1e298b2b109ca6abde92b370ecb70696b0a12e263a201154ad24bbbc0d` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/instance--9ef83adb25d9107b515513d0.md) | 453 | `declaration-track:9ef83adb25d9107b515513d0642fb0743a1f5c1ba2d8816322feb7082c509f57` |
| 45 | `theorem` | [neg_one_mem_torsion](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/declarations/neg-one-mem-torsion--cd98b2258a46b4dfdf40b483.md) | 466 | `result-track:cd98b2258a46b4dfdf40b483ed579f1661bc045bd616bf55f3374c8937bf0bb0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
