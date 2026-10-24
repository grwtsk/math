# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "302fb13120ebe1febb26135ae389260e780897ac",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `302fb13120ebe1febb26135ae389260e780897ac`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [TensorPower](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/declarations/tensorpower--cd6eec5d51d547c51db05b27.md) | 38 | `declaration-track:cd6eec5d51d547c51db05b27968782df345ade1a386ccacfe0cfca7d2c9c1005` |
| 2 | `theorem` | [gradedMonoid_eq_of_reindex_cast](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/declarations/gradedmonoid-eq-of-reindex-cast--bea8da585ed99f54e30c1987.md) | 52 | `result-track:bea8da585ed99f54e30c198774dc1ee8df6a19db29ab644e3c2a9fe7c717d67f` |
| 3 | `instance` | [gOne](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/declarations/gone--aea27c3ea289b065e5848fc1.md) | 68 | `declaration-track:aea27c3ea289b065e5848fc12e8274727cd3afd406a12393710fb5889eed4913` |
| 4 | `theorem` | [gOne_def](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/declarations/gone-def--ce8550dbe57615d2140f9a0f.md) | 72 | `result-track:ce8550dbe57615d2140f9a0f16f293bd2ca345da9159ac3ae5992ad5099d3f1f` |
| 5 | `def` | [mulEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/declarations/mulequiv--57d0d194785d5e0fde5f01bf.md) | 76 | `declaration-track:57d0d194785d5e0fde5f01bf4409391dc204315e096ae48f2a01beca8ef809dd` |
| 6 | `instance` | [gMul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/declarations/gmul--9c52b7162123a84c98963d7c.md) | 80 | `declaration-track:9c52b7162123a84c98963d7cd03d2b424e81be1de24048df20f674d8080fe93d` |
| 7 | `theorem` | [gMul_def](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/declarations/gmul-def--c2f460b6e38e3a873a9c9658.md) | 86 | `result-track:c2f460b6e38e3a873a9c9658bc0ed8dcc2cec9687df44cd26034f5992d2579ea` |
| 8 | `theorem` | [gMul_eq_coe_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/declarations/gmul-eq-coe-linearmap--aa67d74071f458c33ba545e1.md) | 90 | `result-track:aa67d74071f458c33ba545e1ee27e0bc7acd50b9a215886180719f115600e249` |
| 9 | `def` | [cast](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/declarations/cast--f06d5945a0143b50bca865a7.md) | 98 | `declaration-track:f06d5945a0143b50bca865a738d6919b77ea8024f2ccb339574f4489a638b903` |
| 10 | `theorem` | [cast_tprod](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/declarations/cast-tprod--20327b0cab608522189ac7f9.md) | 100 | `result-track:20327b0cab608522189ac7f969b58a1cc0fe5cd700383b95c25400ce5318c5d7` |
| 11 | `theorem` | [cast_refl](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/declarations/cast-refl--e90afdf97d4b29dc9b156a86.md) | 105 | `result-track:e90afdf97d4b29dc9b156a86449139e4a11265f5cf89479244eea1436b1a6e7d` |
| 12 | `theorem` | [cast_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/declarations/cast-symm--5a62af8fab7338f5e94a763b.md) | 109 | `result-track:5a62af8fab7338f5e94a763b9a3106c020c85d90ad8f5ec2176a2d76a7039a4a` |
| 13 | `theorem` | [cast_trans](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/declarations/cast-trans--f8f97cead823e996b7793b67.md) | 113 | `result-track:f8f97cead823e996b7793b67b931aab9086adc5f9363ecbc6732dc3e0f457af7` |
| 14 | `theorem` | [cast_cast](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/declarations/cast-cast--93c5e26fd753e4384096fadf.md) | 120 | `result-track:93c5e26fd753e4384096fadf9cd744d99bd99c6836fb083ef75517d29ffd507a` |
| 15 | `theorem` | [gradedMonoid_eq_of_cast](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/declarations/gradedmonoid-eq-of-cast--d3f8dda93856dd53d79841cd.md) | 125 | `result-track:d3f8dda93856dd53d79841cdb2bcb9fa9220383d9bf8b91a8e2bb73b40af127c` |
| 16 | `theorem` | [cast_eq_cast](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/declarations/cast-eq-cast--15e0c38d882581c52d990054.md) | 131 | `result-track:15e0c38d882581c52d9900544a361365cbb71a4a06632ffd64e9cdd07b630bdc` |
| 17 | `theorem` | [tprod_mul_tprod](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/declarations/tprod-mul-tprod--8fc1f868a11fcac09aa740a4.md) | 138 | `result-track:8fc1f868a11fcac09aa740a4a2b3dc26dea79fdbc0df2091f10c09c028ededd1` |
| 18 | `theorem` | [one_mul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/declarations/one-mul--027f37c4e481afebc6390151.md) | 148 | `result-track:027f37c4e481afebc6390151343ccc33b0d170ec337770b269cd25c398d107df` |
| 19 | `theorem` | [mul_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/declarations/mul-one--e6e0d767a92f021c8653409c.md) | 160 | `result-track:e6e0d767a92f021c8653409ca740e55c1aa510063c4c670fe6c7bebd522c2bd1` |
| 20 | `theorem` | [mul_assoc](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/declarations/mul-assoc--88bcb477d965c112efc52341.md) | 170 | `result-track:88bcb477d965c112efc52341de35871ecf182a58d18a2541ebdf4a4b95faf5e1` |
| 21 | `instance` | [gmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/declarations/gmonoid--00cf7cdaa3f108b6139c4380.md) | 194 | `declaration-track:00cf7cdaa3f108b6139c43804004732c86cd84d23fc1e6fc96365874807ce92a` |
| 22 | `def` | [algebraMap₀](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/declarations/algebramap--08674137d2c8cc974eda98e2.md) | 202 | `declaration-track:08674137d2c8cc974eda98e21760e5bdcc0c84d42743be6c7648f1a6b9c949fa` |
| 23 | `theorem` | [algebraMap₀_eq_smul_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/declarations/algebramap-eq-smul-one--6428824a5d66a4c13283086c.md) | 205 | `result-track:6428824a5d66a4c13283086c060b8ab2874e3fbcd71516e5a0c525eecefbacb4` |
| 24 | `theorem` | [algebraMap₀_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/declarations/algebramap-one--a5fa81c8f205062b69d1cbbe.md) | 208 | `result-track:a5fa81c8f205062b69d1cbbe29cb7843f2eac23b04bc48682e8ae0cf8d440bb2` |
| 25 | `theorem` | [algebraMap₀_mul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/declarations/algebramap-mul--58d2c1c547796ba783d382d6.md) | 211 | `result-track:58d2c1c547796ba783d382d60fa6fde875b332b556e83ba33fba2000f25305cb` |
| 26 | `theorem` | [mul_algebraMap₀](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/declarations/mul-algebramap--5cf5f2203818cbf96b329fb4.md) | 216 | `result-track:5cf5f2203818cbf96b329fb469ef7a47fc6b84a3c28dd2ff3c77748c03b8ccdc` |
| 27 | `theorem` | [algebraMap₀_mul_algebraMap₀](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/declarations/algebramap-mul-algebramap--952c58f07bc18e476fedbe07.md) | 221 | `result-track:952c58f07bc18e476fedbe07e642acd647f64e0bad3c82e176df254c8fd92764` |
| 28 | `instance` | [gsemiring](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/declarations/gsemiring--8705fcd42be54369b59f742a.md) | 226 | `declaration-track:8705fcd42be54369b59f742a847f985e49e0804899839d8099033429b138d3df` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/declarations/example--91e45fd8c0744dcf7615240b.md) | 236 | `declaration-track:91e45fd8c0744dcf7615240ba90912f1fccb0ce145a73d38f44649048b06a5c9` |
| 30 | `instance` | [galgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/declarations/galgebra--1d27c79344bd6b3c76528ab1.md) | 242 | `declaration-track:1d27c79344bd6b3c76528ab1528e61040e4494093c634d1e89d488f627d13a91` |
| 31 | `theorem` | [galgebra_toFun_def](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/declarations/galgebra-tofun-def--eaf35466ae4c4631abc2827c.md) | 258 | `result-track:eaf35466ae4c4631abc2827c1c6eb9ace21ac642b9ae82d40a6a39bb13fd1483` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/declarations/example--627aea4705a467d014a15393.md) | 262 | `declaration-track:627aea4705a467d014a1539360a0165ef38751e2f5528177432b25676d09d078` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
