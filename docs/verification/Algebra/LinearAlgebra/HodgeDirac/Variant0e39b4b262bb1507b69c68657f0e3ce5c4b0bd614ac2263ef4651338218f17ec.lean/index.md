# Verification target: GRWTSK.Algebra.LinearAlgebra.HodgeDirac.Variant0e39b4b262bb1507b69c68657f0e3ce5c4b0bd614ac2263ef4651338218f17ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "891413593d21691ff8e18fd8c16eb586f79b8242",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/HodgeDirac/Variant0e39b4b262bb1507b69c68657f0e3ce5c4b0bd614ac2263ef4651338218f17ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/HodgeDirac/Variant0e39b4b262bb1507b69c68657f0e3ce5c4b0bd614ac2263ef4651338218f17ec.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/HodgeDirac/Variant0e39b4b262bb1507b69c68657f0e3ce5c4b0bd614ac2263ef4651338218f17ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `891413593d21691ff8e18fd8c16eb586f79b8242`.

Source path: `GRWTSK/Algebra/LinearAlgebra/HodgeDirac/Variant0e39b4b262bb1507b69c68657f0e3ce5c4b0bd614ac2263ef4651338218f17ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/HodgeDirac/Variant0e39b4b262bb1507b69c68657f0e3ce5c4b0bd614ac2263ef4651338218f17ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Arithmetic.GammaSpindle` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.DifferentialComplex` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Kronecker` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GradedTerrainComplex](../../../../../mathematics/Algebra/LinearAlgebra/HodgeDirac/Variant0e39b4b262bb1507b69c68657f0e3ce5c4b0bd614ac2263ef4651338218f17ec.lean/declarations/gradedterraincomplex--7a7ef01a107c606098e130d6.md) | 26 | `declaration-track:7a7ef01a107c606098e130d6cc17f0a03b3ab614fba2e02dc05e04a76c94d47c` |
| 2 | `abbrev` | [DAFHilbert](../../../../../mathematics/Algebra/LinearAlgebra/HodgeDirac/Variant0e39b4b262bb1507b69c68657f0e3ce5c4b0bd614ac2263ef4651338218f17ec.lean/declarations/dafhilbert--fff62e76e58cf1cfa85218c5.md) | 40 | `declaration-track:fff62e76e58cf1cfa85218c58c55583cc46be3903e9d54ef22df29fea197087a` |
| 3 | `def` | [DAFTotalOperator](../../../../../mathematics/Algebra/LinearAlgebra/HodgeDirac/Variant0e39b4b262bb1507b69c68657f0e3ce5c4b0bd614ac2263ef4651338218f17ec.lean/declarations/daftotaloperator--808c3c0b257cf20c07699759.md) | 46 | `declaration-track:808c3c0b257cf20c07699759d168236af690397a155acb2fea550dff5bb46cab` |
| 4 | `theorem` | [dafTotalOperator_selfAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/HodgeDirac/Variant0e39b4b262bb1507b69c68657f0e3ce5c4b0bd614ac2263ef4651338218f17ec.lean/declarations/daftotaloperator-selfadjoint--45edbd7683d6ae6774f06077.md) | 56 | `result-track:45edbd7683d6ae6774f060774a7705579254db40798fa340884f9a3ad0dec63a` |
| 5 | `theorem` | [dafTotalOperator_sq](../../../../../mathematics/Algebra/LinearAlgebra/HodgeDirac/Variant0e39b4b262bb1507b69c68657f0e3ce5c4b0bd614ac2263ef4651338218f17ec.lean/declarations/daftotaloperator-sq--0b57cc2d235be7da6d58aae5.md) | 71 | `result-track:0b57cc2d235be7da6d58aae5174a2d9c4922fada50c25664280464dde4790fa7` |
| 6 | `theorem` | [dafGammaTotalOperator_sq](../../../../../mathematics/Algebra/LinearAlgebra/HodgeDirac/Variant0e39b4b262bb1507b69c68657f0e3ce5c4b0bd614ac2263ef4651338218f17ec.lean/declarations/dafgammatotaloperator-sq--eb03e3dbbc524e366590b643.md) | 110 | `result-track:eb03e3dbbc524e366590b643959ed13a2f2d1dbd4a8b11d119d4e60bccd63398` |
| 7 | `def` | [PositiveSquare](../../../../../mathematics/Algebra/LinearAlgebra/HodgeDirac/Variant0e39b4b262bb1507b69c68657f0e3ce5c4b0bd614ac2263ef4651338218f17ec.lean/declarations/positivesquare--d8e8cc8198af248b26748fb9.md) | 125 | `declaration-track:d8e8cc8198af248b26748fb9e3e92c927b8de659b51641d712cbe536f47a49bf` |
| 8 | `theorem` | [dafTotalOperator_positiveSquare](../../../../../mathematics/Algebra/LinearAlgebra/HodgeDirac/Variant0e39b4b262bb1507b69c68657f0e3ce5c4b0bd614ac2263ef4651338218f17ec.lean/declarations/daftotaloperator-positivesquare--7d615480f2c3eacb35fe4aaa.md) | 138 | `result-track:7d615480f2c3eacb35fe4aaa09c0148de70ffb123a362cd2ed9044ca0f1412a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
