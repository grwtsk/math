# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PinnedVonMangoldtModOneAnalyticInputs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d4c0f5d094fef753ba287f448ea0e2b77a2b992",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedVonMangoldtModOneAnalyticInputs.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedVonMangoldtModOneAnalyticInputs.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedVonMangoldtModOneAnalyticInputs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d4c0f5d094fef753ba287f448ea0e2b77a2b992`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PinnedVonMangoldtModOneAnalyticInputs.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PinnedVonMangoldtModOneAnalyticInputs.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedVonMangoldtTauberianChebyInput`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedVonMangoldtTauberianChebyInput.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.NumberTheory.LSeries.PrimesInAP` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pinnedTauberianLambda](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedVonMangoldtModOneAnalyticInputs.lean/declarations/pinnedtauberianlambda--4c2c3f4c02ddbc3fdb5fc8fb.md) | 57 | `declaration-track:4c2c3f4c02ddbc3fdb5fc8fbaa2a0209b5d57d9ae80ece3f6bcffef47d2260d6` |
| 2 | `def` | [pinnedTauberianLambdaComplex](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedVonMangoldtModOneAnalyticInputs.lean/declarations/pinnedtauberianlambdacomplex--47813cbd1417c582b0248e39.md) | 61 | `declaration-track:47813cbd1417c582b0248e397b41e8fb843ae023276ff9b65100ca946d08ad09` |
| 3 | `def` | [pinnedTauberianNormTerm](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedVonMangoldtModOneAnalyticInputs.lean/declarations/pinnedtauberiannormterm--64eba1375736a102cc4c4677.md) | 66 | `declaration-track:64eba1375736a102cc4c4677cf2692ccb97cd5407e3dc0d0417a26a6848366c2` |
| 4 | `theorem` | [pinnedTauberianResidueClassOne_eq_lambda](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedVonMangoldtModOneAnalyticInputs.lean/declarations/pinnedtauberianresidueclassone-eq-lambda--0f5e4aaf2072db40d46fbbb9.md) | 72 | `result-track:0f5e4aaf2072db40d46fbbb910dc27466771685833687a3c1e9f857b231bcf3e` |
| 5 | `theorem` | [pinnedTauberianResidueClassOne_LSeries_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedVonMangoldtModOneAnalyticInputs.lean/declarations/pinnedtauberianresidueclassone-lseries-eq--de632688cd78017dfad2d5df.md) | 82 | `result-track:de632688cd78017dfad2d5dfd8ba9e41b3fe6491d6a1bc02511665189164c440` |
| 6 | `def` | [pinnedTauberianModOneAux](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedVonMangoldtModOneAnalyticInputs.lean/declarations/pinnedtauberianmodoneaux--e1e3abf68e5054a63f15d26f.md) | 97 | `declaration-track:e1e3abf68e5054a63f15d26f7826e521eaf2e9eb799d52fd6fc8b48eb0909d20` |
| 7 | `theorem` | [pinnedTauberianModOneAux_continuous](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedVonMangoldtModOneAnalyticInputs.lean/declarations/pinnedtauberianmodoneaux-continuous--86988930f80e74db60d2ab88.md) | 103 | `result-track:86988930f80e74db60d2ab88d046f4875877b256412a730392699b138202ee7b` |
| 8 | `theorem` | [pinnedTauberianModOneAux_eq_lambdaLSeries](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedVonMangoldtModOneAnalyticInputs.lean/declarations/pinnedtauberianmodoneaux-eq-lambdalseries--3eb5fde31df537a7679fff7d.md) | 113 | `result-track:3eb5fde31df537a7679fff7d44f8f69258935d428507e5a26363bd61f9befeb5` |
| 9 | `theorem` | [pinnedTauberianNormTerm_eq_norm_LSeries_term](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedVonMangoldtModOneAnalyticInputs.lean/declarations/pinnedtauberiannormterm-eq-norm-lseries-term--6e1d595336493994184a5db0.md) | 134 | `result-track:6e1d595336493994184a5db0f447a37d3e4dc71c6b4a718f7902bcc5cce3d26b` |
| 10 | `theorem` | [pinnedTauberianNormTerm_summable](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedVonMangoldtModOneAnalyticInputs.lean/declarations/pinnedtauberiannormterm-summable--35be3bb752f7d0d4fd631212.md) | 145 | `result-track:35be3bb752f7d0d4fd631212c400da2f456cff28cbdf78e3f76b12debc3eb1af` |
| 11 | `structure` | [PinnedTauberianModOneAnalyticInputs](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedVonMangoldtModOneAnalyticInputs.lean/declarations/pinnedtauberianmodoneanalyticinputs--9ab64c59730e42e57a319f7c.md) | 170 | `declaration-track:9ab64c59730e42e57a319f7cb7e8b35a8a65f383d51f630d90445b02719f2538` |
| 12 | `theorem` | [pinnedTauberianModOneAnalyticInputs](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedVonMangoldtModOneAnalyticInputs.lean/declarations/pinnedtauberianmodoneanalyticinputs--752f6249c877488dd694e236.md) | 187 | `result-track:752f6249c877488dd694e236cac1e5ab744cca94ccdf7c28e94e16889406ba79` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
