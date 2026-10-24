# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Uniqueness.Variantf3ec60c5ad36958191ab38bd7361139dd0b5a653e17803c6a2cea9e01aea325c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c18d6a453947926096f7f08f585699b45e11878c",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Uniqueness/Variantf3ec60c5ad36958191ab38bd7361139dd0b5a653e17803c6a2cea9e01aea325c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniqueness/Variantf3ec60c5ad36958191ab38bd7361139dd0b5a653e17803c6a2cea9e01aea325c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniqueness/Variantf3ec60c5ad36958191ab38bd7361139dd0b5a653e17803c6a2cea9e01aea325c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c18d6a453947926096f7f08f585699b45e11878c`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Uniqueness/Variantf3ec60c5ad36958191ab38bd7361139dd0b5a653e17803c6a2cea9e01aea325c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Uniqueness/Variantf3ec60c5ad36958191ab38bd7361139dd0b5a653e17803c6a2cea9e01aea325c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Linear` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Composition` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Constructions` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Completion` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.ChangeOrigin` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Asymptotics.IsBigO.continuousMultilinearMap_apply_eq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniqueness/Variantf3ec60c5ad36958191ab38bd7361139dd0b5a653e17803c6a2cea9e01aea325c.lean/declarations/asymptotics-isbigo-continuousmultilinearmap-apply-eq-zero--715746b7d145f83823aa441e.md) | 50 | `result-track:715746b7d145f83823aa441e74ff24b61e92c9bf4b26a726a1ec2d6238823274` |
| 2 | `theorem` | [HasFPowerSeriesAt.apply_eq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniqueness/Variantf3ec60c5ad36958191ab38bd7361139dd0b5a653e17803c6a2cea9e01aea325c.lean/declarations/hasfpowerseriesat-apply-eq-zero--146c5c3c574cb7cd67a15d38.md) | 98 | `result-track:146c5c3c574cb7cd67a15d38ea0ec813c749905256e87309032245db6cc24e7d` |
| 3 | `theorem` | [HasFPowerSeriesAt.eq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniqueness/Variantf3ec60c5ad36958191ab38bd7361139dd0b5a653e17803c6a2cea9e01aea325c.lean/declarations/hasfpowerseriesat-eq-zero--546b6b35acaf6408e4841e94.md) | 112 | `result-track:546b6b35acaf6408e4841e9469f8089983f0f50b0ae74acc7e77dd10d27036e1` |
| 4 | `theorem` | [HasFPowerSeriesAt.eq_formalMultilinearSeries](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniqueness/Variantf3ec60c5ad36958191ab38bd7361139dd0b5a653e17803c6a2cea9e01aea325c.lean/declarations/hasfpowerseriesat-eq-formalmultilinearseries--438f45a2d141c1abe8720a7f.md) | 119 | `result-track:438f45a2d141c1abe8720a7fc120e307a39bbcc965f627c04b3d836cd28513f6` |
| 5 | `theorem` | [HasFPowerSeriesAt.eq_formalMultilinearSeries_of_eventually](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniqueness/Variantf3ec60c5ad36958191ab38bd7361139dd0b5a653e17803c6a2cea9e01aea325c.lean/declarations/hasfpowerseriesat-eq-formalmultilinearseries-of-eventually--ea4943cc4b374def92699d40.md) | 123 | `result-track:ea4943cc4b374def92699d409d3dfbefe7c03e4a4d50d1834287e5c85089f21f` |
| 6 | `theorem` | [HasFPowerSeriesAt.eq_zero_of_eventually](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniqueness/Variantf3ec60c5ad36958191ab38bd7361139dd0b5a653e17803c6a2cea9e01aea325c.lean/declarations/hasfpowerseriesat-eq-zero-of-eventually--55fc1ad0580dbd8b7c02a438.md) | 129 | `result-track:55fc1ad0580dbd8b7c02a4389fffd92427bc266cafeb2047ad29390e1563e5d2` |
| 7 | `theorem` | [HasFPowerSeriesOnBall.exchange_radius](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniqueness/Variantf3ec60c5ad36958191ab38bd7361139dd0b5a653e17803c6a2cea9e01aea325c.lean/declarations/hasfpowerseriesonball-exchange-radius--25f9e98b64c6eddda5c3c366.md) | 136 | `result-track:25f9e98b64c6eddda5c3c3660438dbf7995809c81d8cd75035b4967ba30c182c` |
| 8 | `theorem` | [HasFPowerSeriesOnBall.r_eq_top_of_exists](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniqueness/Variantf3ec60c5ad36958191ab38bd7361139dd0b5a653e17803c6a2cea9e01aea325c.lean/declarations/hasfpowerseriesonball-r-eq-top-of-exists--952d80f2a53ffec0fc84b42c.md) | 144 | `result-track:952d80f2a53ffec0fc84b42ce957451cf9493853ba56df2fcc24491934de7926` |
| 9 | `theorem` | [eqOn_zero_of_preconnected_of_eventuallyEq_zero_aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniqueness/Variantf3ec60c5ad36958191ab38bd7361139dd0b5a653e17803c6a2cea9e01aea325c.lean/declarations/eqon-zero-of-preconnected-of-eventuallyeq-zero-aux--c579d1e5e8ffd9c6ca6edda6.md) | 165 | `result-track:c579d1e5e8ffd9c6ca6edda65f30964cc3c13cfa4e9b5f28748e290056b6c736` |
| 10 | `theorem` | [eqOn_zero_of_preconnected_of_eventuallyEq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniqueness/Variantf3ec60c5ad36958191ab38bd7361139dd0b5a653e17803c6a2cea9e01aea325c.lean/declarations/eqon-zero-of-preconnected-of-eventuallyeq-zero--62534db70cfd51d7a74d4225.md) | 210 | `result-track:62534db70cfd51d7a74d4225576d5453bd2834203253973bbc0b8ad052dbd502` |
| 11 | `theorem` | [eqOn_of_preconnected_of_eventuallyEq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniqueness/Variantf3ec60c5ad36958191ab38bd7361139dd0b5a653e17803c6a2cea9e01aea325c.lean/declarations/eqon-of-preconnected-of-eventuallyeq--8edd1b346918af8328416a22.md) | 229 | `result-track:8edd1b346918af8328416a22bf98dc7157f15edce45089bd9939decff2a6e774` |
| 12 | `theorem` | [eq_of_eventuallyEq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniqueness/Variantf3ec60c5ad36958191ab38bd7361139dd0b5a653e17803c6a2cea9e01aea325c.lean/declarations/eq-of-eventuallyeq--cdd99e65066c39114fdb2df1.md) | 240 | `result-track:cdd99e65066c39114fdb2df1589ebd995120d43849a1c97e6b7433014b9ab796` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
