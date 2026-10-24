# Verification target: GRWTSK.Analysis.Asymptotics.SelectedPrimeChainBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5746c8afdcac168dc95ad31eaee9503f9551989",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Asymptotics/SelectedPrimeChainBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AsymptoticAnalysis/SelectedPrimeChainBounds__SourceOccurrenced54b746c804a146ad87a9504.lean/index.md) · [Full source](../../../../mathematics/Analysis/AsymptoticAnalysis/SelectedPrimeChainBounds__SourceOccurrenced54b746c804a146ad87a9504.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5746c8afdcac168dc95ad31eaee9503f9551989`.

Source path: `GRWTSK/Analysis/Asymptotics/SelectedPrimeChainBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Asymptotics/SelectedPrimeChainBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.AsymptoticAnalysis.DisjointPrimeChainBounds`](../../../../mathematics/Analysis/AsymptoticAnalysis/DisjointPrimeChainBounds__SourceOccurrencea1ad40a35c584841b7fd52f4.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PolynomialEnergyHolomorphy`](../../../../mathematics/NumberTheory/Moebius/PolynomialEnergyHolomorphy.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Construction](../../../../mathematics/Analysis/AsymptoticAnalysis/SelectedPrimeChainBounds__SourceOccurrenced54b746c804a146ad87a9504.lean/declarations/construction--6d07423f4123de8fe458ef52.md) | 13 | `declaration-track:6d07423f4123de8fe458ef522a1d2b378c8739e0713c3ce7085649ed32444694` |
| 2 | `theorem` | [universal_with_complete_chains_implies_replacement](../../../../mathematics/Analysis/AsymptoticAnalysis/SelectedPrimeChainBounds__SourceOccurrenced54b746c804a146ad87a9504.lean/declarations/universal-with-complete-chains-implies-replacement--17f6bb6b44fe467426dead05.md) | 22 | `result-track:17f6bb6b44fe467426dead0516bcb8fa8b0e8ee9e79157de6c4dc7b7647737f7` |
| 3 | `def` | [completion](../../../../mathematics/Analysis/AsymptoticAnalysis/SelectedPrimeChainBounds__SourceOccurrenced54b746c804a146ad87a9504.lean/declarations/completion--feaf691cc7e1dff24e8095fb.md) | 35 | `declaration-track:feaf691cc7e1dff24e8095fbbb71b1bdb5568fe8d0096296ad1885f5852d63f3` |
| 4 | `theorem` | [construction_implies_literal_P04](../../../../mathematics/Analysis/AsymptoticAnalysis/SelectedPrimeChainBounds__SourceOccurrenced54b746c804a146ad87a9504.lean/declarations/construction-implies-literal-p04--8c4803931b55b706d9655361.md) | 58 | `result-track:8c4803931b55b706d96553613ffd5a4392e0cecb30fc041d7aa5b7e0971f6a61` |
| 5 | `theorem` | [construction_implies_literal_RH](../../../../mathematics/Analysis/AsymptoticAnalysis/SelectedPrimeChainBounds__SourceOccurrenced54b746c804a146ad87a9504.lean/declarations/construction-implies-literal-rh--e8951930eea2848b4150db07.md) | 78 | `result-track:e8951930eea2848b4150db07de65ff0fc2890cab8713b16288ae6d65ee3a1702` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
