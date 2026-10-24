# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSevenHeightBernstein

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "770157b96fd07e7e5163394e0bda1bb85e1caf60",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightBernstein.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightBernstein.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightBernstein.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `770157b96fd07e7e5163394e0bda1bb85e1caf60`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightBernstein.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightBernstein.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.VecNotation` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Fin` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boxBasis](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightBernstein.lean/declarations/boxbasis--b43ceb6711644c2ebd4b2c06.md) | 31 | `declaration-track:b43ceb6711644c2ebd4b2c0665fe5918548f4ebeeccd5daff8b07ed722d5bfc9` |
| 2 | `lemma` | [boxBasis_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightBernstein.lean/declarations/boxbasis-nonneg--16da82f6e4f2060d5b84a8b8.md) | 33 | `result-track:16da82f6e4f2060d5b84a8b8393806580880215d6f27850fff6f9c42929d6139` |
| 3 | `def` | [tensorValue](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightBernstein.lean/declarations/tensorvalue--8d58cde8843239289b9dbb4c.md) | 38 | `declaration-track:8d58cde8843239289b9dbb4c5e9b5ac5563d8f54243ddfab7d5640d9abd82243` |
| 4 | `theorem` | [tensorValue_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightBernstein.lean/declarations/tensorvalue-nonneg--10f388a045d9015d1b684bdf.md) | 41 | `result-track:10f388a045d9015d1b684bdfb6c65cbdfa66520dbbb20669d6bccb10460692be` |
| 5 | `def` | [numerator](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightBernstein.lean/declarations/numerator--2f11cccc7c018d4f085d0f2f.md) | 54 | `declaration-track:2f11cccc7c018d4f085d0f2f0a7e5875f42a31bd8dd73ac90875177d2b0ef1a7` |
| 6 | `def` | [denominator](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightBernstein.lean/declarations/denominator--d0597bae06315df9942379a2.md) | 58 | `declaration-track:d0597bae06315df9942379a235af121148d81b215a62d235ef270eed430d7872` |
| 7 | `def` | [gap](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightBernstein.lean/declarations/gap--9c4cabb52033f978ce8f61fe.md) | 62 | `declaration-track:9c4cabb52033f978ce8f61fe6286dc6a3c7dfec4b1cacf456e2ae3471073e004` |
| 8 | `def` | [coefficients](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightBernstein.lean/declarations/coefficients--c15fdae7520d70c17ce17770.md) | 65 | `declaration-track:c15fdae7520d70c17ce17770d60dbbdb2228066e8c9409c5ef81326ae82fd94c` |
| 9 | `theorem` | [tensor_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightBernstein.lean/declarations/tensor-identity--2b07a8802c7ac2e59589f5c0.md) | 80 | `result-track:2b07a8802c7ac2e59589f5c08af9019aa1b3ecee91ae9e5419eb299114e8e13f` |
| 10 | `theorem` | [gap_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightBernstein.lean/declarations/gap-nonneg--73efdcbf8df08b54e4604c52.md) | 86 | `result-track:73efdcbf8df08b54e4604c5237db31ee86800d18e4137300c6d9b476ce3bcd60` |
| 11 | `theorem` | [squared_ratio_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightBernstein.lean/declarations/squared-ratio-bound--d4faff213b5ec3859384b5c2.md) | 99 | `result-track:d4faff213b5ec3859384b5c2fee231e6ea5943928906f9010419317db8bd37f3` |
| 12 | `theorem` | [height_eight_gap_negative](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightBernstein.lean/declarations/height-eight-gap-negative--6f1fd16555a923430c3c41e7.md) | 107 | `result-track:6f1fd16555a923430c3c41e731138da99443cdd34e7dbeb916df41160fdaed35` |
| 13 | `theorem` | [zero_table_is_not_certificate](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightBernstein.lean/declarations/zero-table-is-not-certificate--9088a686a4367a4009329851.md) | 111 | `result-track:9088a686a4367a40093298515c5b6347979d5269278228c3b9aa79f95597a372` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
