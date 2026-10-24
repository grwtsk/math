# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.PythagoreanTriples.Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5be1ba662c7674a80f7812d8e40933b02bd9c4d5",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5be1ba662c7674a80f7812d8e40933b02bd9c4d5`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Int.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.NatPrime` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sq_ne_two_fin_zmod_four](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/sq-ne-two-fin-zmod-four--d59a4260e05a553e83315032.md) | 30 | `result-track:d59a4260e05a553e8331503277ebb991499c3a3c1d686a93e8d118b218e6053c` |
| 2 | `theorem` | [Int.sq_ne_two_mod_four](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/int-sq-ne-two-mod-four--ca7d0d0f553f3e2bc37cc3af.md) | 35 | `result-track:ca7d0d0f553f3e2bc37cc3af225343b2626a400ede0a8e051614ce9d22fdcb5b` |
| 3 | `def` | [PythagoreanTriple](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/pythagoreantriple--389552dca3b9dfc29692dd7d.md) | 46 | `declaration-track:389552dca3b9dfc29692dd7d181125073d51e10f0228605d24328d2c3b8388b2` |
| 4 | `theorem` | [pythagoreanTriple_comm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/pythagoreantriple-comm--5de40284704fc1707a7ba01b.md) | 52 | `result-track:5de40284704fc1707a7ba01b21ef43ed126e3d71313d622b922410e04d5aade1` |
| 5 | `theorem` | [PythagoreanTriple.zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/pythagoreantriple-zero--53ae81b392d6963051e45329.md) | 58 | `result-track:53ae81b392d6963051e453296b8d867f74188f3ed2fb9d4cc8b47c2a322559b4` |
| 6 | `theorem` | [eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/eq--b4e7bd4412316714128a8ca8.md) | 66 | `result-track:b4e7bd4412316714128a8ca895d507a8a17b3e8a5e305e332789ed6e23ea3261` |
| 7 | `theorem` | [symm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/symm--bf149a3e140efd42db40aeff.md) | 71 | `result-track:bf149a3e140efd42db40aeff37b5b12d81677a8d9125ab4b74a30c053486413c` |
| 8 | `theorem` | [mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/mul--5c97e0e55ee1a257ce499918.md) | 76 | `result-track:5c97e0e55ee1a257ce4999186811d5aac761ec05ad4d3f1ddc382ba4eca860de` |
| 9 | `theorem` | [mul_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/mul-iff--274966b8ee9d763a35fdbe0f.md) | 85 | `result-track:274966b8ee9d763a35fdbe0f3e2adf2f6a34671c0e3390e9a8cb82f12704f693` |
| 10 | `def` | [IsClassified](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/isclassified--b551894d7916975aca85a6f6.md) | 99 | `declaration-track:b551894d7916975aca85a6f6748f26ac4e9326aacfe889310f4ee1760c646ed7` |
| 11 | `def` | [IsPrimitiveClassified](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/isprimitiveclassified--a47a309e578b21a2e7c1319e.md) | 112 | `declaration-track:a47a309e578b21a2e7c1319e1137541b9645a103c12b49fd78b5a16ce2539894` |
| 12 | `theorem` | [mul_isClassified](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/mul-isclassified--955fee636cbd9c8e83e93d85.md) | 118 | `result-track:955fee636cbd9c8e83e93d85057009af5cc33912f8283c375ff8c573d59b5558` |
| 13 | `theorem` | [even_odd_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/even-odd-of-coprime--174b467890ef5674cfa3c023.md) | 130 | `result-track:174b467890ef5674cfa3c023f5a9fcf50060214aa7ca36caa4d8f6feb530aa04` |
| 14 | `theorem` | [gcd_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/gcd-dvd--6ea22f6cdb8f14bc172d74ab.md) | 161 | `result-track:6ea22f6cdb8f14bc172d74ab392ce32024a4d3125d92590232caf23cad3ce367` |
| 15 | `theorem` | [normalize](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/normalize--beabf3183d1acd2824d331d1.md) | 182 | `result-track:beabf3183d1acd2824d331d1d5ee126600313b4f3c787493bf7762f448de4070` |
| 16 | `theorem` | [isClassified_of_isPrimitiveClassified](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/isclassified-of-isprimitiveclassified--0bc4d9467403772ea997b4ac.md) | 207 | `result-track:0bc4d9467403772ea997b4aca2ed0c01640388d3b10ebc0b0ed5fb7563ec986c` |
| 17 | `theorem` | [isClassified_of_normalize_isPrimitiveClassified](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/isclassified-of-normalize-isprimitiveclassified--258cdef129a8443f111b394c.md) | 215 | `result-track:258cdef129a8443f111b394c855c0c978cca97cac2670b42ccd3e05ee54d6b24` |
| 18 | `theorem` | [ne_zero_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/ne-zero-of-coprime--efa6be3ccacd923a3aab4693.md) | 225 | `result-track:efa6be3ccacd923a3aab469360e334a296b65655cfd0b4548372810228c1a288` |
| 19 | `theorem` | [isPrimitiveClassified_of_coprime_of_zero_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/isprimitiveclassified-of-coprime-of-zero-left--021b8b0965d4df96e6e80446.md) | 238 | `result-track:021b8b0965d4df96e6e80446c89becb8c419289748cffbca5d78d5e3b3259711` |
| 20 | `theorem` | [coprime_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/coprime-of-coprime--42e23ff3daaf3ddd06004148.md) | 252 | `result-track:42e23ff3daaf3ddd060041489026369e0e820de503d7e90af7a446728f4c8a52` |
| 21 | `def` | [circleEquivGen](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/circleequivgen--6d8499a9b98fc8da8c2cd375.md) | 278 | `declaration-track:6d8499a9b98fc8da8c2cd375e42510bb4503678d1a88ae94a30281fc0760eaa9` |
| 22 | `theorem` | [circleEquivGen_apply](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/circleequivgen-apply--72aca4bd33c17b22eac724f1.md) | 313 | `result-track:72aca4bd33c17b22eac724f12fa7973172784f6efa5ba684e4aaccf7b9202c99` |
| 23 | `theorem` | [circleEquivGen_symm_apply](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/circleequivgen-symm-apply--3a08feecc54fb2e51fc06ade.md) | 319 | `result-track:3a08feecc54fb2e51fc06ade558f81d979b42a5c788a37efe388e68be3739283` |
| 24 | `theorem` | [coprime_sq_sub_sq_add_of_even_odd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/coprime-sq-sub-sq-add-of-even-odd--9d19cf0bdb5cd5a83cb7a085.md) | 327 | `result-track:9d19cf0bdb5cd5a83cb7a0853bb9923486022d879e66eaec5885468bf3c454c2` |
| 25 | `theorem` | [coprime_sq_sub_sq_add_of_odd_even](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/coprime-sq-sub-sq-add-of-odd-even--0ddd98309669d56ba5975bd1.md) | 352 | `result-track:0ddd98309669d56ba5975bd14141e673feb03a07f87770c26b58bda37ab6c8a4` |
| 26 | `theorem` | [coprime_sq_sub_mul_of_even_odd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/coprime-sq-sub-mul-of-even-odd--d98dd1d7b1395556fed06c9a.md) | 358 | `result-track:d98dd1d7b1395556fed06c9a74ce9e0977ff908c4829b25a018771bd655445ee` |
| 27 | `theorem` | [coprime_sq_sub_mul_of_odd_even](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/coprime-sq-sub-mul-of-odd-even--bb20b495e87ef573efb0081f.md) | 389 | `result-track:bb20b495e87ef573efb0081fed4dd6e891c0b9e32f434697cf79db6c532f851a` |
| 28 | `theorem` | [coprime_sq_sub_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/coprime-sq-sub-mul--da90771be95a1176f0b64398.md) | 395 | `result-track:da90771be95a1176f0b64398098b4d0162a708467cdb5d49b590484a31b01346` |
| 29 | `theorem` | [coprime_sq_sub_sq_sum_of_odd_odd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/coprime-sq-sub-sq-sum-of-odd-odd--6a94dc8c129b200d00cf03f6.md) | 402 | `result-track:6a94dc8c129b200d00cf03f6b4b780f8f97c19242e05bdd70b8bf13305a0dfca` |
| 30 | `theorem` | [isPrimitiveClassified_aux](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/isprimitiveclassified-aux--bd5f85010eb824066d929fb2.md) | 438 | `result-track:bd5f85010eb824066d929fb2cb76c85eb87d4a0501a0a2d00cf1f3bd063270b6` |
| 31 | `theorem` | [isPrimitiveClassified_of_coprime_of_odd_of_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/isprimitiveclassified-of-coprime-of-odd-of-pos--af0a68a2f2602ebc2b07ebe4.md) | 457 | `result-track:af0a68a2f2602ebc2b07ebe481c0a626cb264f2bd973c485cfee2a68f849696e` |
| 32 | `theorem` | [isPrimitiveClassified_of_coprime_of_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/isprimitiveclassified-of-coprime-of-pos--b5d3f957b729e23b94df94e6.md) | 558 | `result-track:b5d3f957b729e23b94df94e63bb07e11df7b99bafdfd2d96edfc2de31f39c923` |
| 33 | `theorem` | [isPrimitiveClassified_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/isprimitiveclassified-of-coprime--2099c797b3759699dea5b181.md) | 567 | `result-track:2099c797b3759699dea5b1816e86d7ff9eaf5aa0c50985da65485ec60638dcc4` |
| 34 | `theorem` | [classified](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/classified--20406951ac024f726baec499.md) | 576 | `result-track:20406951ac024f726baec499f6ba8bdc6c2899f678f4965626acdb38c7a2a313` |
| 35 | `theorem` | [coprime_classification](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/coprime-classification--6ada5c24496e2d907b2d3876.md) | 591 | `result-track:6ada5c24496e2d907b2d387633168dc9dff0b7f0462e465c23849416e14d9e49` |
| 36 | `theorem` | [coprime_classification'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/coprime-classification--7f52c280194194f02a887b6c.md) | 622 | `result-track:7f52c280194194f02a887b6c2bd74ad39979f6b07b6ee2c8c8aaadedce6ad240` |
| 37 | `theorem` | [classification](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/declarations/classification--c830a5cf36528bbb8f735292.md) | 674 | `result-track:c830a5cf36528bbb8f73529212e5767278bb7ced2a19b40b0f9a13ff70d4103b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
