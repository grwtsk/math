# Verification target: GRWTSK.Analysis.Fourier.FiniteCharacterCylinder

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97f68c31facc4819583cfa56b0d65db273004b9d",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/FiniteCharacterCylinder.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteCharacterCylinder.lean/index.md) · [Full source](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteCharacterCylinder.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97f68c31facc4819583cfa56b0d65db273004b9d`.

Source path: `GRWTSK/Analysis/Fourier/FiniteCharacterCylinder.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/FiniteCharacterCylinder.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.FiniteAdditiveProjector`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteAdditiveProjector.lean/index.md) — import line 9; pinned internal source present.
- [`GRWTSK.Analysis.FiniteSum.WalshCylinder`](../../../../../mathematics/Analysis/FiniteSums/WalshCylinder.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coordinateAverage](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteCharacterCylinder.lean/declarations/coordinateaverage--717f5d066fd4fe9ad056d893.md) | 42 | `declaration-track:717f5d066fd4fe9ad056d893a64b86ed748e5881c60657b20eb8b854e71a7d76` |
| 2 | `theorem` | [coordinateAverage_eq_factored_sum](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteCharacterCylinder.lean/declarations/coordinateaverage-eq-factored-sum--4466218ceb86f3deaaf93dc8.md) | 47 | `result-track:4466218ceb86f3deaaf93dc8a4413c1694489911f7d80d55c905d14c12b42e60` |
| 3 | `theorem` | [coordinateAverage_eq_indicator](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteCharacterCylinder.lean/declarations/coordinateaverage-eq-indicator--145ee2688ce899b4cb18ecc1.md) | 57 | `result-track:145ee2688ce899b4cb18ecc160d3f6f8fef38e7098489cdb27e1a04ba3ee3765` |
| 4 | `theorem` | [tuple_coordinateAverage_eq_indicator](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteCharacterCylinder.lean/declarations/tuple-coordinateaverage-eq-indicator--668ecf52317324f8e8942b08.md) | 70 | `result-track:668ecf52317324f8e8942b08b7a6b81b2fca5654210d67c2fe6414834c280ac3` |
| 5 | `def` | [tupleCharacterMean](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteCharacterCylinder.lean/declarations/tuplecharactermean--5d422c4aee025f24baaa47f7.md) | 91 | `declaration-track:5d422c4aee025f24baaa47f7b726de81123fd4d52d4e86dfc22a93419a001a78` |
| 6 | `theorem` | [tupleCharacterMean_eq_coordinateAverage](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteCharacterCylinder.lean/declarations/tuplecharactermean-eq-coordinateaverage--44c734ad777f0fef9ba27836.md) | 99 | `result-track:44c734ad777f0fef9ba27836ad9241f76cc36c175dce32508c8fab2f5ea8d779` |
| 7 | `theorem` | [tupleCharacterMean_eq_indicator](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteCharacterCylinder.lean/declarations/tuplecharactermean-eq-indicator--8e6ceeb1116c0efb232aff78.md) | 120 | `result-track:8e6ceeb1116c0efb232aff788f01cfe47ceb2194ff4d9d076ded4e96cf9a5350` |
| 8 | `def` | [qaryPatternCount](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteCharacterCylinder.lean/declarations/qarypatterncount--9b23bfffaf75012d0ecc76e9.md) | 128 | `declaration-track:9b23bfffaf75012d0ecc76e905e655e5580d00779def2f59d8caf1ec836af54a` |
| 9 | `def` | [finiteCharacterMatches](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteCharacterCylinder.lean/declarations/finitecharactermatches--9e6ba4aa23a1c0a1a627706a.md) | 135 | `declaration-track:9e6ba4aa23a1c0a1a627706a6a38638e1121d6c40c8138382569565af64a5509` |
| 10 | `theorem` | [finiteCharacterMatches_eq_qaryPatternCount](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteCharacterCylinder.lean/declarations/finitecharactermatches-eq-qarypatterncount--fa614dface7ebebf553645d2.md) | 142 | `result-track:fa614dface7ebebf553645d27c21d337f1b0c242b76998b5a16dfdc780aa68bd` |
| 11 | `theorem` | [qaryPatternCount_zero](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteCharacterCylinder.lean/declarations/qarypatterncount-zero--71d0400550ff6112cc660745.md) | 154 | `result-track:71d0400550ff6112cc6607454261c4604b521322b43f5ad5f853f6dd65ca4784` |
| 12 | `theorem` | [qaryPatternCount_empty](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteCharacterCylinder.lean/declarations/qarypatterncount-empty--cc574e159b763fa19c4e45a4.md) | 161 | `result-track:cc574e159b763fa19c4e45a4d447705ba093df169700eba68b000a11046c6947` |
| 13 | `def` | [boolResidue](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteCharacterCylinder.lean/declarations/boolresidue--425050d1be8420b4fd92c418.md) | 168 | `declaration-track:425050d1be8420b4fd92c418ea3b68ee402e3640eb3706baaa1745df4b7c0721` |
| 14 | `theorem` | [boolResidue_eq_iff](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteCharacterCylinder.lean/declarations/boolresidue-eq-iff--943b1a30a76e53f272b709bd.md) | 172 | `result-track:943b1a30a76e53f272b709bd5f95bb1de11a93a092af383e1ee0025a6b701ecd` |
| 15 | `theorem` | [characterAverage_two_eq_walsh_factor](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteCharacterCylinder.lean/declarations/characteraverage-two-eq-walsh-factor--5c2cc51205647ce0377dd454.md) | 178 | `result-track:5c2cc51205647ce0377dd454ede6e0a6db2321c894f81f7c4df110f816721f77` |
| 16 | `theorem` | [coordinateAverage_two_scaled](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteCharacterCylinder.lean/declarations/coordinateaverage-two-scaled--5bd3067badfdabdfadd2fa17.md) | 187 | `result-track:5bd3067badfdabdfadd2fa171676e8985ce1f0967c364e083550d71bc91396a4` |
| 17 | `theorem` | [finiteCharacterMatches_two_scaled](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteCharacterCylinder.lean/declarations/finitecharactermatches-two-scaled--63a17db32c7db225aada900f.md) | 211 | `result-track:63a17db32c7db225aada900fd7661a5905b46c5f18b58b16bb2821fdd0ff26e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
