# Verification target: GRWTSK.Algebra.RingTheory.Partition.Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd3803481cce58398a936482e24df9e892c5ef87",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd3803481cce58398a936482e24df9e892c5ef87`.

Source path: `GRWTSK/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.PowerSeries.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Partition` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Parity` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.NatAntidiagonal` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Tuple.NatAntidiagonal` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [partialOddGF](../../../../../mathematics/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean/declarations/partialoddgf--9e05a50adb87f25f09a99ab1.md) | 86 | `declaration-track:9e05a50adb87f25f09a99ab11dec1ca5d2f9beacb614739eb41820ab135f1c00` |
| 2 | `def` | [partialDistinctGF](../../../../../mathematics/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean/declarations/partialdistinctgf--64d24dc788ac834ce6f2c7cd.md) | 98 | `declaration-track:64d24dc788ac834ce6f2c7cd0854d146b1337466d357bab915066f5877f78945` |
| 3 | `def` | [cut](../../../../../mathematics/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean/declarations/cut--7f330ff8132e0199498e5c9a.md) | 108 | `declaration-track:7f330ff8132e0199498e5c9a520cd27279160011a3589c3251fbf191f601f206` |
| 4 | `theorem` | [mem_cut](../../../../../mathematics/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean/declarations/mem-cut--8c7194ee900de3a952a7b41e.md) | 115 | `result-track:8c7194ee900de3a952a7b41e763b02b7e6e06a9d59a180dedec3d260dcad59e3` |
| 5 | `theorem` | [cut_equiv_antidiag](../../../../../mathematics/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean/declarations/cut-equiv-antidiag--ef8a4ff4bfe2cf08fcead103.md) | 133 | `result-track:ef8a4ff4bfe2cf08fcead1036eed35c5f958c2d08654d11b40080a12c695b23b` |
| 6 | `theorem` | [cut_univ_fin_eq_antidiagonalTuple](../../../../../mathematics/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean/declarations/cut-univ-fin-eq-antidiagonaltuple--5f38094435d19720016df09b.md) | 141 | `result-track:5f38094435d19720016df09b311ad692c97842a444da99203febfa5be383e1f0` |
| 7 | `theorem` | [cut_zero](../../../../../mathematics/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean/declarations/cut-zero--ab30882cb6e2be7f8464eb3a.md) | 147 | `result-track:ab30882cb6e2be7f8464eb3a14cd4073a2aa18c6fb0ca4972d29a85e8fead3d9` |
| 8 | `theorem` | [cut_empty_succ](../../../../../mathematics/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean/declarations/cut-empty-succ--d09968b481b05a153fe73d7f.md) | 159 | `result-track:d09968b481b05a153fe73d7f86f5ed8ff48c0c07af316b888eaf2e2c31ab6d1c` |
| 9 | `theorem` | [cut_insert](../../../../../mathematics/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean/declarations/cut-insert--9a06b6b41ccc5f9252b1c6e4.md) | 166 | `result-track:9a06b6b41ccc5f9252b1c6e42942d0dfcdfef1c686386fcdbf75435ff25d1fbd` |
| 10 | `theorem` | [coeff_prod_range](../../../../../mathematics/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean/declarations/coeff-prod-range--cc02bee9125c8d1c39554796.md) | 203 | `result-track:cc02bee9125c8d1c39554796216ae84fc12c265cfc260f1dbac6562b65efc06a` |
| 11 | `def` | [indicatorSeries](../../../../../mathematics/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean/declarations/indicatorseries--601e2ba065fc8ead2d25db52.md) | 238 | `declaration-track:601e2ba065fc8ead2d25db5265923bdf660123adfe5f433d1ac5d68db7bfb8dd` |
| 12 | `theorem` | [coeff_indicator](../../../../../mathematics/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean/declarations/coeff-indicator--c8c64bfda3c9ac0a824df78a.md) | 242 | `result-track:c8c64bfda3c9ac0a824df78a8ca7c3111069ae47977716945f4e28bc419f25a7` |
| 13 | `theorem` | [coeff_indicator_pos](../../../../../mathematics/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean/declarations/coeff-indicator-pos--ed9d26efa3b6806fc339f683.md) | 247 | `result-track:ed9d26efa3b6806fc339f683ddc18d302169446984c8a6b6b91cacca87c52a98` |
| 14 | `theorem` | [coeff_indicator_neg](../../../../../mathematics/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean/declarations/coeff-indicator-neg--87b1ba80ca3e5bb98261558c.md) | 251 | `result-track:87b1ba80ca3e5bb98261558cef4d4961d960013c60a6afe553abaa287137c68f` |
| 15 | `theorem` | [constantCoeff_indicator](../../../../../mathematics/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean/declarations/constantcoeff-indicator--e46e6125990ec31120e003f9.md) | 255 | `result-track:e46e6125990ec31120e003f9188a38ebad735b0c78a0d0f7392410a689626883` |
| 16 | `theorem` | [two_series](../../../../../mathematics/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean/declarations/two-series--85986d8b76cfe56109ca9783.md) | 260 | `result-track:85986d8b76cfe56109ca97839bc51edb3712dd06423f19d244fc75f27278133c` |
| 17 | `theorem` | [num_series'](../../../../../mathematics/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean/declarations/num-series--094c14ae049594e6a214a894.md) | 270 | `result-track:094c14ae049594e6a214a894217fef1c7015b365e5dda177eb6bfb654a106b31` |
| 18 | `def` | [mkOdd](../../../../../mathematics/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean/declarations/mkodd--95cd192adf02f3cf5b0d51f0.md) | 315 | `declaration-track:95cd192adf02f3cf5b0d51f0b51abc926759ae5a9283a7deaea265dedf33f3fb` |
| 19 | `theorem` | [partialGF_prop](../../../../../mathematics/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean/declarations/partialgf-prop--1eb81e13bfc3179c82fe9a7b.md) | 320 | `result-track:1eb81e13bfc3179c82fe9a7b5bcaea250613b66303164a7411e21bef265243ae` |
| 20 | `theorem` | [partialOddGF_prop](../../../../../mathematics/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean/declarations/partialoddgf-prop--14ec5000404e1c565ea6f967.md) | 388 | `result-track:14ec5000404e1c565ea6f967cbc8ef39d6a9a7a45bbeb15689324276fc09206e` |
| 21 | `theorem` | [oddGF_prop](../../../../../mathematics/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean/declarations/oddgf-prop--ee26e1c8d4f3cb8f23c906fb.md) | 420 | `result-track:ee26e1c8d4f3cb8f23c906fb43b550064788772e5795a3515e96ebc5545ca4db` |
| 22 | `theorem` | [partialDistinctGF_prop](../../../../../mathematics/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean/declarations/partialdistinctgf-prop--55ee3559cbb75cd14295d158.md) | 442 | `result-track:55ee3559cbb75cd14295d158fe949ff7931117fedb1a8fab34b76a82a4ba9ec1` |
| 23 | `theorem` | [distinctGF_prop](../../../../../mathematics/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean/declarations/distinctgf-prop--7215beed3796a1103862cf16.md) | 470 | `result-track:7215beed3796a1103862cf1691c32c639c4cf70c5b67c96e853cb1bf47640a92` |
| 24 | `theorem` | [same_gf](../../../../../mathematics/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean/declarations/same-gf--1d605673561f1647c6eab747.md) | 488 | `result-track:1d605673561f1647c6eab7476be4ac1794db6027abb86112d7197026e146e164` |
| 25 | `theorem` | [same_coeffs](../../../../../mathematics/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean/declarations/same-coeffs--dfa4725bbbe0b059da87cd81.md) | 527 | `result-track:dfa4725bbbe0b059da87cd81821970020feaa42c3173ea768778276a9c0f84c6` |
| 26 | `theorem` | [partition_theorem](../../../../../mathematics/Algebra/RingTheory/Partition/Variant3c1bec8337d034bd4e048940206d2a13ded69e79b761b375abe0451398ca486d.lean/declarations/partition-theorem--fb704018413a9bb877d0eb1e.md) | 535 | `result-track:fb704018413a9bb877d0eb1e422583219de8a5ba5950e6dba230cdd69951a87e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
