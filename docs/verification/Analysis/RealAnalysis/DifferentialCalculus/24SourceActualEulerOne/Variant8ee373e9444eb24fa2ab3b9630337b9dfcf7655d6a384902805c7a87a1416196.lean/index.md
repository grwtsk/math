# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.24SourceActualEulerOne.Variant8ee373e9444eb24fa2ab3b9630337b9dfcf7655d6a384902805c7a87a1416196

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1816284523116b4f1b4be15620e48586cb0137ae",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/24SourceActualEulerOne/Variant8ee373e9444eb24fa2ab3b9630337b9dfcf7655d6a384902805c7a87a1416196.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/24SourceActualEulerOne/Variant8ee373e9444eb24fa2ab3b9630337b9dfcf7655d6a384902805c7a87a1416196.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/24SourceActualEulerOne/Variant8ee373e9444eb24fa2ab3b9630337b9dfcf7655d6a384902805c7a87a1416196.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1816284523116b4f1b4be15620e48586cb0137ae`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/24SourceActualEulerOne/Variant8ee373e9444eb24fa2ab3b9630337b9dfcf7655d6a384902805c7a87a1416196.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/24SourceActualEulerOne/Variant8ee373e9444eb24fa2ab3b9630337b9dfcf7655d6a384902805c7a87a1416196.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.FromPNTPlus.ZetaBounds` — import line 1; external provider; requires a separately pinned dependency.
- `Zeta23.Statement.SeamClosed` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Floor` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [periodicB1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/24SourceActualEulerOne/Variant8ee373e9444eb24fa2ab3b9630337b9dfcf7655d6a384902805c7a87a1416196.lean/declarations/periodicb1--0659df5fefc04308f863ab5c.md) | 20 | `declaration-track:0659df5fefc04308f863ab5c64c691ec47f1fd557182eb31933435c54973f2b2` |
| 2 | `def` | [periodicB2](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/24SourceActualEulerOne/Variant8ee373e9444eb24fa2ab3b9630337b9dfcf7655d6a384902805c7a87a1416196.lean/declarations/periodicb2--deb9852f13239fdb1e11d3dc.md) | 22 | `declaration-track:deb9852f13239fdb1e11d3dc7d596c6919a9240e6ad5877755451bf3ad50c47b` |
| 3 | `theorem` | [sourceFloorWeight_eq_neg_periodicB1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/24SourceActualEulerOne/Variant8ee373e9444eb24fa2ab3b9630337b9dfcf7655d6a384902805c7a87a1416196.lean/declarations/sourcefloorweight-eq-neg-periodicb1--42c8edbd50e4b6000cb215b9.md) | 25 | `result-track:42c8edbd50e4b6000cb215b96b53e1ab5932f627c22bc338eaf7d1a0a4547fa9` |
| 4 | `theorem` | [periodicB2_bounds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/24SourceActualEulerOne/Variant8ee373e9444eb24fa2ab3b9630337b9dfcf7655d6a384902805c7a87a1416196.lean/declarations/periodicb2-bounds--f1fd6a3616cf33a0df2e1675.md) | 30 | `result-track:f1fd6a3616cf33a0df2e16750731a91525a9adf0602e82eab2c8872a9c1ef7ac` |
| 5 | `theorem` | [periodicB2_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/24SourceActualEulerOne/Variant8ee373e9444eb24fa2ab3b9630337b9dfcf7655d6a384902805c7a87a1416196.lean/declarations/periodicb2-abs-le--7952c195f2fa9b9428d237cc.md) | 40 | `result-track:7952c195f2fa9b9428d237ccf63e21d56b68b371124d28b3a154837436fbbb9b` |
| 6 | `theorem` | [periodicB2_at_integer](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/24SourceActualEulerOne/Variant8ee373e9444eb24fa2ab3b9630337b9dfcf7655d6a384902805c7a87a1416196.lean/declarations/periodicb2-at-integer--88cca9dedc459a9c57e1804b.md) | 44 | `result-track:88cca9dedc459a9c57e1804b0121c2d15088c024e33cf564a617683f2c01c10f` |
| 7 | `theorem` | [periodicB2_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/24SourceActualEulerOne/Variant8ee373e9444eb24fa2ab3b9630337b9dfcf7655d6a384902805c7a87a1416196.lean/declarations/periodicb2-continuous--717a1b668f97228386ba84df.md) | 48 | `result-track:717a1b668f97228386ba84df0ab1723a585dc80df47ae88c800d7ed66396eeaa` |
| 8 | `theorem` | [periodicB2_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/24SourceActualEulerOne/Variant8ee373e9444eb24fa2ab3b9630337b9dfcf7655d6a384902805c7a87a1416196.lean/declarations/periodicb2-hasderivat--6fcf7cefa5c4b07f17493dbe.md) | 58 | `result-track:6fcf7cefa5c4b07f17493dbee6d9e7b7b9db8e339d3c5e2849c4a5c5eaa16ed2` |
| 9 | `theorem` | [periodicB2_ae_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/24SourceActualEulerOne/Variant8ee373e9444eb24fa2ab3b9630337b9dfcf7655d6a384902805c7a87a1416196.lean/declarations/periodicb2-ae-hasderivat--b1b83bb8366a7b6a17f15c9d.md) | 76 | `result-track:b1b83bb8366a7b6a17f15c9d3ad9d48d7df11525964e97e55791bb8d67e2a178` |
| 10 | `theorem` | [actual_zeta_euler_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/24SourceActualEulerOne/Variant8ee373e9444eb24fa2ab3b9630337b9dfcf7655d6a384902805c7a87a1416196.lean/declarations/actual-zeta-euler-one--145395709a554267afdd36bb.md) | 84 | `result-track:145395709a554267afdd36bb9b8587d7cada1f67f16f5cf00a6e61b1d8815416` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
