# Verification target: GRWTSK.Algebra.LinearAlgebra.Isocrystal.Variant0dfbc4ee4a95c562c5107f3250b57aceca17e9c6a882c0c51e40d668c0584845

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48517ca488282fd0ee071062f344bfbd525fd606",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Isocrystal/Variant0dfbc4ee4a95c562c5107f3250b57aceca17e9c6a882c0c51e40d668c0584845.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant0dfbc4ee4a95c562c5107f3250b57aceca17e9c6a882c0c51e40d668c0584845.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant0dfbc4ee4a95c562c5107f3250b57aceca17e9c6a882c0c51e40d668c0584845.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48517ca488282fd0ee071062f344bfbd525fd606`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Isocrystal/Variant0dfbc4ee4a95c562c5107f3250b57aceca17e9c6a882c0c51e40d668c0584845.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Isocrystal/Variant0dfbc4ee4a95c562c5107f3250b57aceca17e9c6a882c0c51e40d668c0584845.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.FrobeniusFractionField` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FractionRing.frobenius](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant0dfbc4ee4a95c562c5107f3250b57aceca17e9c6a882c0c51e40d668c0584845.lean/declarations/fractionring-frobenius--c2eec05246b166bbc1c40be7.md) | 83 | `declaration-track:c2eec05246b166bbc1c40be78a2b38979e1b27e0fed743ec421a005a771367cf` |
| 2 | `def` | [FractionRing.frobeniusRingHom](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant0dfbc4ee4a95c562c5107f3250b57aceca17e9c6a882c0c51e40d668c0584845.lean/declarations/fractionring-frobeniusringhom--7733aae3098aaa7a1aed486f.md) | 88 | `declaration-track:7733aae3098aaa7a1aed486f7f5bb2407e4ff99df3f87b89975ce30aa7ca26f4` |
| 3 | `instance` | [inv_pair₁](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant0dfbc4ee4a95c562c5107f3250b57aceca17e9c6a882c0c51e40d668c0584845.lean/declarations/inv-pair--09fece0317ed612b4f7f0009.md) | 94 | `declaration-track:09fece0317ed612b4f7f00095e0b7e8d4faa7cd4a3bed5c1ec7765563b06914e` |
| 4 | `instance` | [inv_pair₂](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant0dfbc4ee4a95c562c5107f3250b57aceca17e9c6a882c0c51e40d668c0584845.lean/declarations/inv-pair--9ed916e1d4880581de407e1c.md) | 97 | `declaration-track:9ed916e1d4880581de407e1c5e57daeedbad926c7ab5a639646de38d55175de2` |
| 5 | `class` | [Isocrystal](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant0dfbc4ee4a95c562c5107f3250b57aceca17e9c6a882c0c51e40d668c0584845.lean/declarations/isocrystal--60319761201563f4b3b9177e.md) | 117 | `declaration-track:60319761201563f4b3b9177e7963d75e1e401eefd78ba8669b02297d5ae19087` |
| 6 | `def` | [Isocrystal.frobenius](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant0dfbc4ee4a95c562c5107f3250b57aceca17e9c6a882c0c51e40d668c0584845.lean/declarations/isocrystal-frobenius--437d57a0cfdf84041d53f157.md) | 129 | `declaration-track:437d57a0cfdf84041d53f157e165cd6441a528e9ee5f8455a23e031e21d58351` |
| 7 | `structure` | [IsocrystalHom](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant0dfbc4ee4a95c562c5107f3250b57aceca17e9c6a882c0c51e40d668c0584845.lean/declarations/isocrystalhom--952cd2a56c21b2f100ba4539.md) | 136 | `declaration-track:952cd2a56c21b2f100ba45397b5e4a7af14a413405af17b1f878d79962c1da6b` |
| 8 | `structure` | [IsocrystalEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant0dfbc4ee4a95c562c5107f3250b57aceca17e9c6a882c0c51e40d668c0584845.lean/declarations/isocrystalequiv--5e6cc6679c90e93a42851127.md) | 142 | `declaration-track:5e6cc6679c90e93a42851127ebfb7effc1ffeff422a291d8b46e7859304750ac` |
| 9 | `def` | [StandardOneDimIsocrystal](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant0dfbc4ee4a95c562c5107f3250b57aceca17e9c6a882c0c51e40d668c0584845.lean/declarations/standardonedimisocrystal--268bef2450fc307a18e67162.md) | 161 | `declaration-track:268bef2450fc307a18e67162c9021405280e7eb555c3cadcc7004d710ba13ba5` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant0dfbc4ee4a95c562c5107f3250b57aceca17e9c6a882c0c51e40d668c0584845.lean/declarations/instance--b0f2bc3092aa8538b04529da.md) | 168 | `declaration-track:b0f2bc3092aa8538b04529daa83121e6d81c534368159b613708dcd534a7023f` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant0dfbc4ee4a95c562c5107f3250b57aceca17e9c6a882c0c51e40d668c0584845.lean/declarations/instance--e99407c12fee7654bb6664ab.md) | 170 | `declaration-track:e99407c12fee7654bb6664abcb1d623b50b8e3b5edfb7979b156a9aaf305bc5c` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant0dfbc4ee4a95c562c5107f3250b57aceca17e9c6a882c0c51e40d668c0584845.lean/declarations/instance--9fce506b1d72d6098e4064d7.md) | 180 | `declaration-track:9fce506b1d72d6098e4064d7c68df7395c7895e60312f759d556d882a2688e52` |
| 13 | `theorem` | [StandardOneDimIsocrystal.frobenius_apply](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant0dfbc4ee4a95c562c5107f3250b57aceca17e9c6a882c0c51e40d668c0584845.lean/declarations/standardonedimisocrystal-frobenius-apply--929f915381694cc3438486b0.md) | 186 | `result-track:929f915381694cc3438486b04922aa0496313f71480ff93300ca81536ac16d42` |
| 14 | `theorem` | [isocrystal_classification](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant0dfbc4ee4a95c562c5107f3250b57aceca17e9c6a882c0c51e40d668c0584845.lean/declarations/isocrystal-classification--97d91b3301d1c437cf6f8c03.md) | 193 | `result-track:97d91b3301d1c437cf6f8c037350f172de2512aa161515880500ac89e0e667bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
