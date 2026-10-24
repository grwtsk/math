# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b1c68c42667208b70bdd54be4c2e50646d48b5f",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b1c68c42667208b70bdd54be4c2e50646d48b5f`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.Pow` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.ZeroLEOne` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.InjSurj` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [inhabited](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/inhabited--6e9b09e0ede0ea55d54fc09d.md) | 44 | `declaration-track:6e9b09e0ede0ea55d54fc09d0c442dab4dc4b177fa05a5417b30a76fec2466bc` |
| 2 | `instance` | [zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/zero--6b1c304a66b3ab017587eb15.md) | 47 | `declaration-track:6b1c304a66b3ab017587eb159ac7c97712a3c6fd6b7109be867af432edc9c598` |
| 3 | `theorem` | [coe_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/coe-zero--27d5772a07d895333188f47b.md) | 51 | `result-track:27d5772a07d895333188f47bd01f07504e49e551bdbd5c3cddb3effd94095ee6` |
| 4 | `theorem` | [mk_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/mk-eq-zero--b3a0288ca2e926f34c84b2da.md) | 55 | `result-track:b3a0288ca2e926f34c84b2da8314b5d89bb9dd1b5b412049b64a2c51b69a21f0` |
| 5 | `instance` | [add](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/add--fbca085b4a5293d6726a64fe.md) | 59 | `declaration-track:fbca085b4a5293d6726a64fe08e78730ad3a7c8efaf1aabb37052cb6c87adc10` |
| 6 | `theorem` | [mk_add_mk](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/mk-add-mk--313a59ac026f53aa5bfbe865.md) | 63 | `result-track:313a59ac026f53aa5bfbe8654ed6f66157be177c8ee8a9b8419c33071407f76a` |
| 7 | `theorem` | [coe_add](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/coe-add--52c8f28e83a4c824cd6f1c9a.md) | 69 | `result-track:52c8f28e83a4c824cd6f1c9a13f908d2a7e6a2331d9486ce3b194bd4c03eab24` |
| 8 | `instance` | [nsmul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/nsmul--d8d5fffcc0c6a74c4a2f4f5c.md) | 73 | `declaration-track:d8d5fffcc0c6a74c4a2f4f5cb538d2142ab97c4b52f700133b577ddef776fa17` |
| 9 | `theorem` | [nsmul_mk](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/nsmul-mk--03bf7430af3e652ac7cabda5.md) | 77 | `result-track:03bf7430af3e652ac7cabda5711c028d5140124ce7796bde013617616f98017d` |
| 10 | `theorem` | [coe_nsmul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/coe-nsmul--efd94f4241d4a01937303dda.md) | 82 | `result-track:efd94f4241d4a01937303dda881682662f0070277955995d3cb929a580a69e92` |
| 11 | `instance` | [one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/one--352aee1a4493c386734c4e22.md) | 90 | `declaration-track:352aee1a4493c386734c4e228efa5d4f0e7263955542a2e9f0925a7ef3b851d4` |
| 12 | `theorem` | [coe_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/coe-one--891fea3149e22ac881ad5081.md) | 94 | `result-track:891fea3149e22ac881ad508175b0c93c9f7243bb14408aa1368518940b42b115` |
| 13 | `theorem` | [mk_eq_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/mk-eq-one--22a790a38ff9210823ea3277.md) | 98 | `result-track:22a790a38ff9210823ea3277203ca613e28c23a14d2c2a8698d44d69b2ee458e` |
| 14 | `instance` | [mul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/mul--cac8abee425ed73ead753e43.md) | 108 | `declaration-track:cac8abee425ed73ead753e4347f28954957cfd2b3b1b5141e226962a73c2f4bb` |
| 15 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/coe-mul--4b3853009e8f530eaee253db.md) | 112 | `result-track:4b3853009e8f530eaee253db4081e23e48e6010dfa320191073789b11b94034b` |
| 16 | `theorem` | [mk_mul_mk](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/mk-mul-mk--f509a1613a69a0d234cd5741.md) | 117 | `result-track:f509a1613a69a0d234cd5741ffe0828273c9515d6018a77f52fd3f81af641364` |
| 17 | `instance` | [addMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/addmonoid--fe84ec044315dafaf8bd667b.md) | 127 | `declaration-track:fe84ec044315dafaf8bd667b069509d8fe6ab8de4e3a1e4acf09774511ecfc37` |
| 18 | `def` | [coeAddMonoidHom](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/coeaddmonoidhom--5631b76e58cfc4042d61b1ef.md) | 132 | `declaration-track:5631b76e58cfc4042d61b1efdd18304ac44680d1ec9b640af0768d700256b771` |
| 19 | `theorem` | [nsmul_coe](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/nsmul-coe--773a772627bb7f6db6f3451c.md) | 138 | `result-track:773a772627bb7f6db6f3451c9b6ded7eec866d81477bc019d471a23a6b558330` |
| 20 | `instance` | [addCommMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/addcommmonoid--781fc00d8e5ecf84f3e7afca.md) | 148 | `declaration-track:781fc00d8e5ecf84f3e7afca2268193ef3d570392942a904426d4f8e3b32eb1b` |
| 21 | `instance` | [natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/natcast--1d33e7e5201a843413580f2a.md) | 157 | `declaration-track:1d33e7e5201a843413580f2a4b5d6a78b656a95da12f8dbe3b4291089ca8e49b` |
| 22 | `theorem` | [coe_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/coe-natcast--b95ab78ca04d1c768dc2cfb3.md) | 161 | `result-track:b95ab78ca04d1c768dc2cfb38a9e46f605b32bce5f003876f59a1396445fe239` |
| 23 | `theorem` | [mk_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/mk-natcast--27c633e3341b4403f814ae97.md) | 165 | `result-track:27c633e3341b4403f814ae976fbc11e7f7e935386b64bf51b87b345b44c5ab9a` |
| 24 | `instance` | [addMonoidWithOne](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/addmonoidwithone--02d0c9cbf9e186fd2b12c456.md) | 168 | `declaration-track:02d0c9cbf9e186fd2b12c456cd0905998fdc1d69dbd1118a10fa434d180b28e3` |
| 25 | `instance` | [pow](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/pow--4b8cc62f0543db9f54c28dc0.md) | 180 | `declaration-track:4b8cc62f0543db9f54c28dc043165b2beda1fef4908f1e9761879822162b0c6a` |
| 26 | `theorem` | [coe_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/coe-pow--2662ca572b771f4923b0945d.md) | 184 | `result-track:2662ca572b771f4923b0945d8a5e5d19362e91e69b6d0b6728ddeaf30b6da027` |
| 27 | `theorem` | [mk_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/mk-pow--f8dbbb620bd9dc066c961196.md) | 189 | `result-track:f8dbbb620bd9dc066c96119620a846fe16e2b2c643ca195fe2b7d77c981e8ea8` |
| 28 | `instance` | [semiring](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/semiring--522bb74510bb157a1187916e.md) | 202 | `declaration-track:522bb74510bb157a1187916e3188da90f007de51285938bcf1f3bac2426f51c0` |
| 29 | `instance` | [monoidWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/monoidwithzero--921ccfd098dbdf3e7065e989.md) | 207 | `declaration-track:921ccfd098dbdf3e7065e9892161d79e971598cb485d6c1c3453713789299203` |
| 30 | `def` | [coeRingHom](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/coeringhom--35112cc6c0da3b7a869e9b7d.md) | 210 | `declaration-track:35112cc6c0da3b7a869e9b7dacb2e3126e23794243fb57f1ba87864f630e4a15` |
| 31 | `instance` | [commSemiring](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/commsemiring--e2cc29fdaa8ec57f10a46606.md) | 224 | `declaration-track:e2cc29fdaa8ec57f10a46606b1d4379986570e86222599a3afed6b5f57c0c407` |
| 32 | `instance` | [commMonoidWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/commmonoidwithzero--3614632d384406d17772f824.md) | 229 | `declaration-track:3614632d384406d17772f824f187a118be8acac38e3f3824a50769ed145cce53` |
| 33 | `def` | [toNonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/tononneg--ece9ab3300685318765ae223.md) | 237 | `declaration-track:ece9ab3300685318765ae2238236724c6f9c19cbf8085078fe60f5be9bb4ade4` |
| 34 | `theorem` | [coe_toNonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/coe-tononneg--9fb60daa489186182c18cd6f.md) | 241 | `result-track:9fb60daa489186182c18cd6ff7084fa3e60b45abb2c8c3c9d924def4aeacea73` |
| 35 | `theorem` | [toNonneg_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/tononneg-of-nonneg--d69255d37d214dc06a9f0a1b.md) | 245 | `result-track:d69255d37d214dc06a9f0a1ba3f99cb4c87643e012d221736b61b1ad33aa52bd` |
| 36 | `theorem` | [toNonneg_coe](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/tononneg-coe--e2f967588cde8328ce173ae5.md) | 248 | `result-track:e2f967588cde8328ce173ae541967560e46e65ce84c8339e47c032dfb67e01b7` |
| 37 | `theorem` | [toNonneg_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/tononneg-le--726546de71848deb1026e512.md) | 252 | `result-track:726546de71848deb1026e5124e15bfbe4d428a77d2267a73b88ff16b883e0a17` |
| 38 | `instance` | [sub](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/sub--c0981f92c177e89d1fd0a156.md) | 256 | `declaration-track:c0981f92c177e89d1fd0a156383957636e1bbac454c1cc4bd731f6f5b1ea100f` |
| 39 | `theorem` | [mk_sub_mk](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/mk-sub-mk--53bc80f9fd6c85aabe27f4d3.md) | 260 | `result-track:53bc80f9fd6c85aabe27f4d3bbd9ffe024253721e01ce1e81f81bddb3784cdb4` |
| 40 | `theorem` | [toNonneg_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant9b458ae86c3d70ebf896b9bbee08998600727f9499d61eb673acfe6882151263.lean/declarations/tononneg-lt--465b6df18ab432e93b0a8826.md) | 270 | `result-track:465b6df18ab432e93b0a882675cb24deaa54626c8c543465ce8d782ff0d36065` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
