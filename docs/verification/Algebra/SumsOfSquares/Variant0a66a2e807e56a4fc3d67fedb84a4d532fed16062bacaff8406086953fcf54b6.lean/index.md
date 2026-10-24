# Verification target: GRWTSK.Algebra.SumsOfSquares.Variant0a66a2e807e56a4fc3d67fedb84a4d532fed16062bacaff8406086953fcf54b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4521b56cf8f3960b41d378c5076fa961c1d5fd72",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/SumsOfSquares/Variant0a66a2e807e56a4fc3d67fedb84a4d532fed16062bacaff8406086953fcf54b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/SumsOfSquares/Variant0a66a2e807e56a4fc3d67fedb84a4d532fed16062bacaff8406086953fcf54b6.lean/index.md) · [Full source](../../../../mathematics/Algebra/SumsOfSquares/Variant0a66a2e807e56a4fc3d67fedb84a4d532fed16062bacaff8406086953fcf54b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4521b56cf8f3960b41d378c5076fa961c1d5fd72`.

Source path: `GRWTSK/Algebra/SumsOfSquares/Variant0a66a2e807e56a4fc3d67fedb84a4d532fed16062bacaff8406086953fcf54b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/SumsOfSquares/Variant0a66a2e807e56a4fc3d67fedb84a4d532fed16062bacaff8406086953fcf54b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Even` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subsemiring.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [IsSumSq](../../../../mathematics/Algebra/SumsOfSquares/Variant0a66a2e807e56a4fc3d67fedb84a4d532fed16062bacaff8406086953fcf54b6.lean/declarations/issumsq--5a07cafee538654b749a6a05.md) | 43 | `declaration-track:5a07cafee538654b749a6a059d91eb7d04a27e8738ce80f0587242bb7f9afe73` |
| 2 | `theorem` | [IsSumSq.rec'](../../../../mathematics/Algebra/SumsOfSquares/Variant0a66a2e807e56a4fc3d67fedb84a4d532fed16062bacaff8406086953fcf54b6.lean/declarations/issumsq-rec--c20546466e4a7eefe1176e14.md) | 48 | `result-track:c20546466e4a7eefe1176e14df6a04f96241baf7506e3946e33e2190ff132b9b` |
| 3 | `theorem` | [IsSumSq.add](../../../../mathematics/Algebra/SumsOfSquares/Variant0a66a2e807e56a4fc3d67fedb84a4d532fed16062bacaff8406086953fcf54b6.lean/declarations/issumsq-add--62e72655bcd292e5e9278236.md) | 62 | `result-track:62e72655bcd292e5e9278236c8f1f42cb0954858edf246bae8e93019eb6acc10` |
| 4 | `def` | [sumSq](../../../../mathematics/Algebra/SumsOfSquares/Variant0a66a2e807e56a4fc3d67fedb84a4d532fed16062bacaff8406086953fcf54b6.lean/declarations/sumsq--7534734e74de58e0444cce41.md) | 75 | `declaration-track:7534734e74de58e0444cce4132465ba3b39d8e4d0e41fbc1e69d6dbc0c70966c` |
| 5 | `theorem` | [mem_sumSq](../../../../mathematics/Algebra/SumsOfSquares/Variant0a66a2e807e56a4fc3d67fedb84a4d532fed16062bacaff8406086953fcf54b6.lean/declarations/mem-sumsq--2af6e83355c673e999bc5ad3.md) | 82 | `result-track:2af6e83355c673e999bc5ad3a50fdc9c2fe8d4c434ff2beb413a74953a2a1d76` |
| 6 | `theorem` | [IsSumSq.mul_self](../../../../mathematics/Algebra/SumsOfSquares/Variant0a66a2e807e56a4fc3d67fedb84a4d532fed16062bacaff8406086953fcf54b6.lean/declarations/issumsq-mul-self--8c3ce4642c899c6b9bd6d3b7.md) | 87 | `result-track:8c3ce4642c899c6b9bd6d3b7cf429da1b7219e75318767df9fa4b5734cf91582` |
| 7 | `theorem` | [IsSquare.isSumSq](../../../../mathematics/Algebra/SumsOfSquares/Variant0a66a2e807e56a4fc3d67fedb84a4d532fed16062bacaff8406086953fcf54b6.lean/declarations/issquare-issumsq--40afc02a6df32a32bf3606aa.md) | 94 | `result-track:40afc02a6df32a32bf3606aaad97db86cddf2ea18de3a32fb127af82aa8c95b4` |
| 8 | `theorem` | [AddSubmonoid.closure_isSquare](../../../../mathematics/Algebra/SumsOfSquares/Variant0a66a2e807e56a4fc3d67fedb84a4d532fed16062bacaff8406086953fcf54b6.lean/declarations/addsubmonoid-closure-issquare--a3e36d1ddee31ba2eac1f56b.md) | 102 | `result-track:a3e36d1ddee31ba2eac1f56b380c7e3ae201b1bb89de9417f983ec9bebff0aae` |
| 9 | `theorem` | [IsSumSq.sum](../../../../mathematics/Algebra/SumsOfSquares/Variant0a66a2e807e56a4fc3d67fedb84a4d532fed16062bacaff8406086953fcf54b6.lean/declarations/issumsq-sum--f1c21b424cddb8b80c7efc01.md) | 113 | `result-track:f1c21b424cddb8b80c7efc0128f191e9ab7fd68871fb865d477fb41754dd37fc` |
| 10 | `theorem` | [IsSumSq.sum_isSquare](../../../../mathematics/Algebra/SumsOfSquares/Variant0a66a2e807e56a4fc3d67fedb84a4d532fed16062bacaff8406086953fcf54b6.lean/declarations/issumsq-sum-issquare--2894e0992965abee34c7e3f3.md) | 121 | `result-track:2894e0992965abee34c7e3f343cab4ae263f9354e2a0be6cf95e229d32be64ea` |
| 11 | `theorem` | [IsSumSq.sum_mul_self](../../../../mathematics/Algebra/SumsOfSquares/Variant0a66a2e807e56a4fc3d67fedb84a4d532fed16062bacaff8406086953fcf54b6.lean/declarations/issumsq-sum-mul-self--49e598a27881be041e070968.md) | 130 | `result-track:49e598a27881be041e0709689680f514372f7377cc7614682f59024f0b0fe972` |
| 12 | `def` | [sumSq](../../../../mathematics/Algebra/SumsOfSquares/Variant0a66a2e807e56a4fc3d67fedb84a4d532fed16062bacaff8406086953fcf54b6.lean/declarations/sumsq--c1a0014da7e63a8a1a917c7d.md) | 143 | `declaration-track:c1a0014da7e63a8a1a917c7d5dca6d08c1276293fc14e66a2735979e8712bd8e` |
| 13 | `theorem` | [sumSq_toAddSubmonoid](../../../../mathematics/Algebra/SumsOfSquares/Variant0a66a2e807e56a4fc3d67fedb84a4d532fed16062bacaff8406086953fcf54b6.lean/declarations/sumsq-toaddsubmonoid--94b0b1142bb2100d0d9ff499.md) | 145 | `result-track:94b0b1142bb2100d0d9ff499a0ecd2d3f09011521cc315f37e2430c9162ea86d` |
| 14 | `theorem` | [mem_sumSq](../../../../mathematics/Algebra/SumsOfSquares/Variant0a66a2e807e56a4fc3d67fedb84a4d532fed16062bacaff8406086953fcf54b6.lean/declarations/mem-sumsq--15ac04a0a097ae9cef2561a0.md) | 150 | `result-track:15ac04a0a097ae9cef2561a0cea7b74d27aa5ed20b54b3ecbb00067a026a6899` |
| 15 | `theorem` | [coe_sumSq](../../../../mathematics/Algebra/SumsOfSquares/Variant0a66a2e807e56a4fc3d67fedb84a4d532fed16062bacaff8406086953fcf54b6.lean/declarations/coe-sumsq--fbb895eedd52fd017a8ed5c7.md) | 153 | `result-track:fbb895eedd52fd017a8ed5c7aa226e62c8893690adc25212ca40640b1d4f9ea9` |
| 16 | `theorem` | [closure_isSquare](../../../../mathematics/Algebra/SumsOfSquares/Variant0a66a2e807e56a4fc3d67fedb84a4d532fed16062bacaff8406086953fcf54b6.lean/declarations/closure-issquare--17e4261fb5842a4ff16247c7.md) | 155 | `result-track:17e4261fb5842a4ff16247c7361e593e9c2435d7545a467d50731c433471ae0f` |
| 17 | `theorem` | [IsSumSq.mul](../../../../mathematics/Algebra/SumsOfSquares/Variant0a66a2e807e56a4fc3d67fedb84a4d532fed16062bacaff8406086953fcf54b6.lean/declarations/issumsq-mul--2109823c49323e28186f2bc9.md) | 164 | `result-track:2109823c49323e28186f2bc9dfeb4cf5a1bdb8986c0dfb0e90b58a59176ebadf` |
| 18 | `theorem` | [Submonoid.square_subsemiringClosure](../../../../mathematics/Algebra/SumsOfSquares/Variant0a66a2e807e56a4fc3d67fedb84a4d532fed16062bacaff8406086953fcf54b6.lean/declarations/submonoid-square-subsemiringclosure--656357ed518b7fcf7c0d9485.md) | 168 | `result-track:656357ed518b7fcf7c0d948571d4113c33908c6b015d1a2487a72930d525f6f9` |
| 19 | `def` | [sumSq](../../../../mathematics/Algebra/SumsOfSquares/Variant0a66a2e807e56a4fc3d67fedb84a4d532fed16062bacaff8406086953fcf54b6.lean/declarations/sumsq--c6f122eaf0ece4f2d56a9728.md) | 179 | `declaration-track:c6f122eaf0ece4f2d56a9728132ec89a5712c8fac444d15c99a09d25b35e6db3` |
| 20 | `theorem` | [sumSq_toNonUnitalSubsemiring](../../../../mathematics/Algebra/SumsOfSquares/Variant0a66a2e807e56a4fc3d67fedb84a4d532fed16062bacaff8406086953fcf54b6.lean/declarations/sumsq-tononunitalsubsemiring--9f3d4e0b741a497e6d8d4c44.md) | 183 | `result-track:9f3d4e0b741a497e6d8d4c440efbd1d7ccdb79e4a9c7459d669b50613202eaf9` |
| 21 | `theorem` | [mem_sumSq](../../../../mathematics/Algebra/SumsOfSquares/Variant0a66a2e807e56a4fc3d67fedb84a4d532fed16062bacaff8406086953fcf54b6.lean/declarations/mem-sumsq--d47bb115e230a6a4313f04b3.md) | 187 | `result-track:d47bb115e230a6a4313f04b31fce373ad010145ffaf39a7a8cce61e6900881e5` |
| 22 | `theorem` | [coe_sumSq](../../../../mathematics/Algebra/SumsOfSquares/Variant0a66a2e807e56a4fc3d67fedb84a4d532fed16062bacaff8406086953fcf54b6.lean/declarations/coe-sumsq--eee475bd706e8e7a51fb50d4.md) | 190 | `result-track:eee475bd706e8e7a51fb50d457d4ce6098eb36565556d7f578ac22b1550dfcfe` |
| 23 | `theorem` | [closure_isSquare](../../../../mathematics/Algebra/SumsOfSquares/Variant0a66a2e807e56a4fc3d67fedb84a4d532fed16062bacaff8406086953fcf54b6.lean/declarations/closure-issquare--78bc8c09b6bc624e887a1d57.md) | 192 | `result-track:78bc8c09b6bc624e887a1d57e40b50479e88e61b53d6a8eafc3b6c5458bec864` |
| 24 | `theorem` | [IsSumSq.prod](../../../../mathematics/Algebra/SumsOfSquares/Variant0a66a2e807e56a4fc3d67fedb84a4d532fed16062bacaff8406086953fcf54b6.lean/declarations/issumsq-prod--1d891b4ea3ac912c9dd1c8c4.md) | 199 | `result-track:1d891b4ea3ac912c9dd1c8c45ea1542718bc667a8181ead551d76771f4380e88` |
| 25 | `theorem` | [IsSumSq.nonneg](../../../../mathematics/Algebra/SumsOfSquares/Variant0a66a2e807e56a4fc3d67fedb84a4d532fed16062bacaff8406086953fcf54b6.lean/declarations/issumsq-nonneg--af1fe9acc9408d11381d9bfa.md) | 207 | `result-track:af1fe9acc9408d11381d9bfae08ab523d21dbc0dc28fdb0d534fb81d41a1294e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
