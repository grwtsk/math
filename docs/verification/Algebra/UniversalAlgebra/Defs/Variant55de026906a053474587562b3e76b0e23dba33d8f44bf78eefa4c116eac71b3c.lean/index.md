# Verification target: GRWTSK.Algebra.UniversalAlgebra.Defs.Variant55de026906a053474587562b3e76b0e23dba33d8f44bf78eefa4c116eac71b3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9cafd1005562915092417d2a38afb9b91f3ccbe",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Defs/Variant55de026906a053474587562b3e76b0e23dba33d8f44bf78eefa4c116eac71b3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant55de026906a053474587562b3e76b0e23dba33d8f44bf78eefa4c116eac71b3c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant55de026906a053474587562b3e76b0e23dba33d8f44bf78eefa4c116eac71b3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9cafd1005562915092417d2a38afb9b91f3ccbe`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Defs/Variant55de026906a053474587562b3e76b0e23dba33d8f44bf78eefa4c116eac71b3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Defs/Variant55de026906a053474587562b3e76b0e23dba33d8f44bf78eefa4c116eac71b3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Unbundled.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AssertExists` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OrderedAddCommGroup](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant55de026906a053474587562b3e76b0e23dba33d8f44bf78eefa4c116eac71b3c.lean/declarations/orderedaddcommgroup--7c0c8f8f3839c647123f650d.md) | 38 | `declaration-track:7c0c8f8f3839c647123f650d99542d87b6a72a08032dca89aadecb5f93e71e7a` |
| 2 | `structure` | [OrderedCommGroup](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant55de026906a053474587562b3e76b0e23dba33d8f44bf78eefa4c116eac71b3c.lean/declarations/orderedcommgroup--4f03e7760c03563822b67fd9.md) | 48 | `declaration-track:4f03e7760c03563822b67fd9b4a230ea235b0e25fe5bcdf9b19ad7b7aafdca95` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant55de026906a053474587562b3e76b0e23dba33d8f44bf78eefa4c116eac71b3c.lean/declarations/instance--8b09d2fc17452623be5bc664.md) | 66 | `declaration-track:8b09d2fc17452623be5bc6647dd7970e88bfd09da11239b8240fe083504e1792` |
| 4 | `structure` | [LinearOrderedAddCommGroup](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant55de026906a053474587562b3e76b0e23dba33d8f44bf78eefa4c116eac71b3c.lean/declarations/linearorderedaddcommgroup--796114ca67c699a2e46b84cc.md) | 83 | `declaration-track:796114ca67c699a2e46b84ccdd99ba6ecd577eb17f6d02956a1102d34de1e70c` |
| 5 | `structure` | [LinearOrderedCommGroup](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant55de026906a053474587562b3e76b0e23dba33d8f44bf78eefa4c116eac71b3c.lean/declarations/linearorderedcommgroup--f8e6bfa532cff9b55ed63548.md) | 93 | `declaration-track:f8e6bfa532cff9b55ed6354868a17fcd14266a90841c08588305c813b98a5c39` |
| 6 | `theorem` | [LinearOrderedCommGroup.mul_lt_mul_left'](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant55de026906a053474587562b3e76b0e23dba33d8f44bf78eefa4c116eac71b3c.lean/declarations/linearorderedcommgroup-mul-lt-mul-left--c08446395916bf806d6f719d.md) | 103 | `result-track:c08446395916bf806d6f719d2d25f11861902b25095974fdb2d7fc842cec51c1` |
| 7 | `theorem` | [eq_one_of_inv_eq'](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant55de026906a053474587562b3e76b0e23dba33d8f44bf78eefa4c116eac71b3c.lean/declarations/eq-one-of-inv-eq--919b97160b4bfc693e65ecc1.md) | 107 | `result-track:919b97160b4bfc693e65ecc17a5c5c57666ca5a029cc11ff1520dc11b8b23fcb` |
| 8 | `theorem` | [exists_one_lt'](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant55de026906a053474587562b3e76b0e23dba33d8f44bf78eefa4c116eac71b3c.lean/declarations/exists-one-lt--75c1c81610ac9bd38a935a09.md) | 118 | `result-track:75c1c81610ac9bd38a935a09da31d3fd9829a375edc3c4cb3dd2bd6613a68440` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant55de026906a053474587562b3e76b0e23dba33d8f44bf78eefa4c116eac71b3c.lean/declarations/instance--53abdfa22b877d228911ecba.md) | 126 | `declaration-track:53abdfa22b877d228911ecba6a01e05cbf9ca576c65d63eceef6e2ac5c2dc075` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant55de026906a053474587562b3e76b0e23dba33d8f44bf78eefa4c116eac71b3c.lean/declarations/instance--370d97cb11f1a513d24515d6.md) | 133 | `declaration-track:370d97cb11f1a513d24515d6c8daa1db971e6ccafad7f84cf12a85a9baa8fbd1` |
| 11 | `theorem` | [inv_le_self_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant55de026906a053474587562b3e76b0e23dba33d8f44bf78eefa4c116eac71b3c.lean/declarations/inv-le-self-iff--10c9f9a2b2b1371a10a49a77.md) | 139 | `result-track:10c9f9a2b2b1371a10a49a77dd881997dad732fcb91eb9da0dd124863024afcd` |
| 12 | `theorem` | [inv_lt_self_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant55de026906a053474587562b3e76b0e23dba33d8f44bf78eefa4c116eac71b3c.lean/declarations/inv-lt-self-iff--ddeef03513e2ad0a556572bf.md) | 142 | `result-track:ddeef03513e2ad0a556572bf028d718141fa9e97722baeaa35ca692f0ba9cc1b` |
| 13 | `theorem` | [le_inv_self_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant55de026906a053474587562b3e76b0e23dba33d8f44bf78eefa4c116eac71b3c.lean/declarations/le-inv-self-iff--4827f494c6135f35326ee013.md) | 145 | `result-track:4827f494c6135f35326ee013826f36d010769f992f087628b73ee5dc307decce` |
| 14 | `theorem` | [lt_inv_self_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant55de026906a053474587562b3e76b0e23dba33d8f44bf78eefa4c116eac71b3c.lean/declarations/lt-inv-self-iff--2cad2d1b09b895e273093a0f.md) | 148 | `result-track:2cad2d1b09b895e273093a0f60839c7e9d8999a42c2fa4ddf39add3fac76f771` |
| 15 | `theorem` | [inv_le_inv'](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant55de026906a053474587562b3e76b0e23dba33d8f44bf78eefa4c116eac71b3c.lean/declarations/inv-le-inv--19cb3e929c75d667822a60ab.md) | 159 | `result-track:19cb3e929c75d667822a60abdb574c7b8165851afe3a1588638e552b6f4ff1f3` |
| 16 | `theorem` | [inv_lt_inv'](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant55de026906a053474587562b3e76b0e23dba33d8f44bf78eefa4c116eac71b3c.lean/declarations/inv-lt-inv--100ae924d36eeae425635941.md) | 163 | `result-track:100ae924d36eeae425635941212a21eb2ef4f8af95fb7f286024905537258349` |
| 17 | `theorem` | [inv_lt_one_of_one_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant55de026906a053474587562b3e76b0e23dba33d8f44bf78eefa4c116eac71b3c.lean/declarations/inv-lt-one-of-one-lt--0708dce04c01fb71d5d14321.md) | 168 | `result-track:0708dce04c01fb71d5d14321b6f24022679050db3d7b0212b7a72a12bde9e62a` |
| 18 | `theorem` | [inv_le_one_of_one_le](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant55de026906a053474587562b3e76b0e23dba33d8f44bf78eefa4c116eac71b3c.lean/declarations/inv-le-one-of-one-le--df6362d9f0507f5f62bc4399.md) | 173 | `result-track:df6362d9f0507f5f62bc439973ef1ac786b6ba388c1ca45d019106e8ecfb6efa` |
| 19 | `theorem` | [one_le_inv_of_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant55de026906a053474587562b3e76b0e23dba33d8f44bf78eefa4c116eac71b3c.lean/declarations/one-le-inv-of-le-one--5919e847f55ca15f4ec8fb58.md) | 177 | `result-track:5919e847f55ca15f4ec8fb58806d572f1214394ca3c55861bcd70fb9e6b00846` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
