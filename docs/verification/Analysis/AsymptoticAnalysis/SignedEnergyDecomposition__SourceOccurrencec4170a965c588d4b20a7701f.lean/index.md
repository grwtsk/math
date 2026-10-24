# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.SignedEnergyDecomposition

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09c7901370857dc6f95e1f3e81fa7416ab56c1cb",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrencec4170a965c588d4b20a7701f.lean/index.md) · [Full source](../../../../mathematics/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrencec4170a965c588d4b20a7701f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09c7901370857dc6f95e1f3e81fa7416ab56c1cb`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 1; external provider; requires a separately pinned dependency.
- [`GRWTSK.Analysis.InnerProductSpace.MoebiusResponseGramExpansion`](../../../../mathematics/Analysis/InnerProductSpace/MoebiusResponseGramExpansion.lean/index.md) — import line 2; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.DiagonalEnergyBound`](../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBound.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [TransformRoute](../../../../mathematics/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrencec4170a965c588d4b20a7701f.lean/declarations/transformroute--03afae41980577e2f00ad421.md) | 15 | `declaration-track:03afae41980577e2f00ad42122a3f189f2b09ffb3394aee19836d80368458a11` |
| 2 | `structure` | [ExactDecomposition](../../../../mathematics/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrencec4170a965c588d4b20a7701f.lean/declarations/exactdecomposition--53696b82b50a3b1d220831d7.md) | 19 | `declaration-track:53696b82b50a3b1d220831d77310bd7eabc1095fbae5453a6c97c1fda9650ae0` |
| 3 | `def` | [signedSettlement](../../../../mathematics/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrencec4170a965c588d4b20a7701f.lean/declarations/signedsettlement--181d893dfcc65dd75d89a89d.md) | 29 | `declaration-track:181d893dfcc65dd75d89a89d36b60c343232cd1087e03f59663b94c7b1e790d5` |
| 4 | `def` | [RightLineTailBound](../../../../mathematics/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrencec4170a965c588d4b20a7701f.lean/declarations/rightlinetailbound--4c504701dde02eb9e6f1d43a.md) | 32 | `declaration-track:4c504701dde02eb9e6f1d43a3461409dbf25268b3a6cbc8aadac9d1964854eac` |
| 5 | `def` | [SignedSettlementBound](../../../../mathematics/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrencec4170a965c588d4b20a7701f.lean/declarations/signedsettlementbound--ad20d866e28dde0f95381471.md) | 35 | `declaration-track:ad20d866e28dde0f953814712c4478fb94d0624c588fdb2bf65f275380a5359e` |
| 6 | `theorem` | [assembly_implies_literal_P04](../../../../mathematics/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrencec4170a965c588d4b20a7701f.lean/declarations/assembly-implies-literal-p04--fcb17ab150467d5a5db061c5.md) | 40 | `result-track:fcb17ab150467d5a5db061c54d402af47df7c8072a5663c1c4eb1d2d8b647bc9` |
| 7 | `def` | [TransformRouteConstruction](../../../../mathematics/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrencec4170a965c588d4b20a7701f.lean/declarations/transformrouteconstruction--126ee8d4249d14213532d7e4.md) | 63 | `declaration-track:126ee8d4249d14213532d7e409f8cedfb2aec4b7eaa9753a884d732068afc97b` |
| 8 | `theorem` | [transform_route_implies_P04](../../../../mathematics/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrencec4170a965c588d4b20a7701f.lean/declarations/transform-route-implies-p04--6d23433bce4c16a997ea6ffb.md) | 68 | `result-track:6d23433bce4c16a997ea6ffb49781a13565b9502c29f05c45c68e4282c1f0de0` |
| 9 | `theorem` | [right_tail_majorant](../../../../mathematics/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrencec4170a965c588d4b20a7701f.lean/declarations/right-tail-majorant--6d520421f230a416689d88c4.md) | 73 | `result-track:6d520421f230a416689d88c45a1155423cd6a0a3558f2caaf1e9c8363576ba8a` |
| 10 | `theorem` | [right_tail_bound](../../../../mathematics/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrencec4170a965c588d4b20a7701f.lean/declarations/right-tail-bound--cd6a2c24675acd07ed28086a.md) | 87 | `result-track:cd6a2c24675acd07ed28086af4fdccb0e59edc4d33ddc6a9d306dd9fe24c720b` |
| 11 | `theorem` | [external_height_cancellation](../../../../mathematics/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrencec4170a965c588d4b20a7701f.lean/declarations/external-height-cancellation--fe71d6ba2c688fe41c4ec5c4.md) | 103 | `result-track:fe71d6ba2c688fe41c4ec5c452bea95c7d7f52f9423e8ef3536f9f45e72fd636` |
| 12 | `def` | [AnalyticClosureConstruction](../../../../mathematics/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrencec4170a965c588d4b20a7701f.lean/declarations/analyticclosureconstruction--dfd299b41d65c5d6118cd1b4.md) | 113 | `declaration-track:dfd299b41d65c5d6118cd1b46083fcc5f2e936571c588137f0019afe697f0e45` |
| 13 | `theorem` | [assembled_route_implies_literal_RH](../../../../mathematics/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrencec4170a965c588d4b20a7701f.lean/declarations/assembled-route-implies-literal-rh--175bfc9eed0c3a054c85a195.md) | 117 | `result-track:175bfc9eed0c3a054c85a19597fac7dd859df474c3061749c03a13463d28e7b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
