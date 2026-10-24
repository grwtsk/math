# Verification target: GRWTSK.Algebra.UniversalAlgebra.Round.Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2eb8fb70ed9e3fa1dc46cfb8f9c9ce67a6be831",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2eb8fb70ed9e3fa1dc46cfb8f9c9ce67a6be831`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Floor.Ring` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Interval.Set.Group` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [round](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean/declarations/round--4fad43c93610d78b4ab585d9.md) | 41 | `declaration-track:4fad43c93610d78b4ab585d9be428861ec6378a904dbf5d0ed1585213a1d6ac0` |
| 2 | `theorem` | [round_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean/declarations/round-zero--fd12670ec63d174e26ffd83a.md) | 45 | `result-track:fd12670ec63d174e26ffd83aab73cb3e77cec7ead739441d236baf8b9f4b92bc` |
| 3 | `theorem` | [round_one](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean/declarations/round-one--69227b3b58c5f2459df2fe32.md) | 48 | `result-track:69227b3b58c5f2459df2fe321c7f58f84e2aa24af27fde6b6cb69ec47dcb5992` |
| 4 | `theorem` | [round_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean/declarations/round-natcast--55c54c216b95a7e8727b0160.md) | 51 | `result-track:55c54c216b95a7e8727b016058245a8c387ce5f5b48fc706a3db11ed0d6f60b9` |
| 5 | `theorem` | [round_ofNat](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean/declarations/round-ofnat--7637ea52a39f9d5bdeaf2f21.md) | 54 | `result-track:7637ea52a39f9d5bdeaf2f21f7020b18d17603b70371caf59d4aff1991321a2a` |
| 6 | `theorem` | [round_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean/declarations/round-intcast--3bca43318fcb6a1d60385f59.md) | 58 | `result-track:3bca43318fcb6a1d60385f597b479bdbfbe844d757d998a9a794c7eeb5fb61da` |
| 7 | `theorem` | [round_add_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean/declarations/round-add-intcast--76216de3c4d9693398a0363c.md) | 61 | `result-track:76216de3c4d9693398a0363c37e005002216e9b2db358c4bc563316885c76d07` |
| 8 | `theorem` | [round_add_one](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean/declarations/round-add-one--4b3748de08af8750c5359fcd.md) | 69 | `result-track:4b3748de08af8750c5359fcd06815772c1edd9743b2f6b40393fbf16d7519e72` |
| 9 | `theorem` | [round_sub_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean/declarations/round-sub-intcast--ce5f7ce9eea8f88804c85618.md) | 73 | `result-track:ce5f7ce9eea8f88804c85618989976450ec118f60626922573ad5b9ccde256a0` |
| 10 | `theorem` | [round_sub_one](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean/declarations/round-sub-one--3fc55496c8af6efc977c3a59.md) | 82 | `result-track:3fc55496c8af6efc977c3a59e9360b36121bbf9a81be1a140046f7408c7e8111` |
| 11 | `theorem` | [round_add_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean/declarations/round-add-natcast--ccc4b47d5438d5f1edb78dc1.md) | 86 | `result-track:ccc4b47d5438d5f1edb78dc1c03fea23af1630346235f42e53db1a90fe1ab7b3` |
| 12 | `theorem` | [round_add_ofNat](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean/declarations/round-add-ofnat--e3e86cd01587e7b3b143e481.md) | 93 | `result-track:e3e86cd01587e7b3b143e48133119fd84ed8af547a59b4743a15661abae15123` |
| 13 | `theorem` | [round_sub_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean/declarations/round-sub-natcast--b444d7dfbc490e1ac39d98a1.md) | 98 | `result-track:b444d7dfbc490e1ac39d98a1914a7ee05069c06ccfe9bb0e9661602fd9a34279` |
| 14 | `theorem` | [round_sub_ofNat](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean/declarations/round-sub-ofnat--f915f9668df0fbd9ed70a1ae.md) | 105 | `result-track:f915f9668df0fbd9ed70a1aed44cb50d04f2769cee30c3268f7b8a814b2e00db` |
| 15 | `theorem` | [round_intCast_add](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean/declarations/round-intcast-add--2fb35161a8222070304f2a6e.md) | 110 | `result-track:2fb35161a8222070304f2a6ef7776c9dc9cb2b1b9fa72d60aae6d1e7f3a90c0f` |
| 16 | `theorem` | [round_natCast_add](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean/declarations/round-natcast-add--2c2433ea5ba75f6feff9c9f7.md) | 117 | `result-track:2c2433ea5ba75f6feff9c9f79beef8fb537d9afbd9c620b4c577ae9a00fafa41` |
| 17 | `theorem` | [round_ofNat_add](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean/declarations/round-ofnat-add--4015ece656d15dc5edb9bcff.md) | 124 | `result-track:4015ece656d15dc5edb9bcff0bad2d65d32e56831f093c1bb1e89884b36e7c86` |
| 18 | `theorem` | [abs_sub_round_eq_min](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean/declarations/abs-sub-round-eq-min--2a4d939be2242898812834fa.md) | 128 | `result-track:2a4d939be2242898812834facabb8b1fc43a079094a929689af205e4b3f8c4a1` |
| 19 | `theorem` | [round_le](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean/declarations/round-le--3e0f882cbf73b5d4679e37cb.md) | 138 | `result-track:3e0f882cbf73b5d4679e37cbf9203bf65e2ba38730f49cea171e84fcbbd7b12f` |
| 20 | `theorem` | [round_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean/declarations/round-eq--1055986aca17b8bccbc6f38b.md) | 156 | `result-track:1055986aca17b8bccbc6f38beb1ce632d8a30d621761a6ba009f0d3c4af5480a` |
| 21 | `theorem` | [round_two_inv](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean/declarations/round-two-inv--5a569c631af36e3ab1b0ede3.md) | 178 | `result-track:5a569c631af36e3ab1b0ede3d4edef3a9f614c926ddc7849e0a7be7ccc96d924` |
| 22 | `theorem` | [round_neg_two_inv](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean/declarations/round-neg-two-inv--aa2d0bba2d10aed4d25aff4f.md) | 182 | `result-track:aa2d0bba2d10aed4d25aff4f6142961490e1c873786ec605c7f25bef1be6e2e0` |
| 23 | `theorem` | [round_eq_zero_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean/declarations/round-eq-zero-iff--8098fef7d23fe372f122b61c.md) | 186 | `result-track:8098fef7d23fe372f122b61cd9e2924dd03ab30628b6fc3097f10b69c650b43c` |
| 24 | `theorem` | [abs_sub_round](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean/declarations/abs-sub-round--6705c8583e702c5ddb1a976e.md) | 190 | `result-track:6705c8583e702c5ddb1a976e2e5c1e1d237e5d6a3f9338c7feef99db8fa07b0b` |
| 25 | `theorem` | [abs_sub_round_div_natCast_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean/declarations/abs-sub-round-div-natcast-eq--aafba38ea87c7fdc74049dd5.md) | 196 | `result-track:aafba38ea87c7fdc74049dd53f668cd7c3818f5d0483e0ca06622221b44971f7` |
| 26 | `theorem` | [sub_half_lt_round](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean/declarations/sub-half-lt-round--06830422868002b15af1579a.md) | 206 | `result-track:06830422868002b15af1579af64356bc0cfbed3c953373f17ca1775a1c897a41` |
| 27 | `theorem` | [round_le_add_half](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean/declarations/round-le-add-half--56bbe486eb085fe5dbaadb71.md) | 211 | `result-track:56bbe486eb085fe5dbaadb7140261c0783ff1db05108589581ced99e206127c4` |
| 28 | `theorem` | [map_round](../../../../../mathematics/Algebra/UniversalAlgebra/Round/Variant6553bf0b7699b5ba67a470c61323349fd8c5715f7ab1959c05fe01e11809a76c.lean/declarations/map-round--3e1d08bb00a2574b395dbed4.md) | 225 | `result-track:3e1d08bb00a2574b395dbed468b58ad4a914e715c342b0316926980b90a7b6e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
