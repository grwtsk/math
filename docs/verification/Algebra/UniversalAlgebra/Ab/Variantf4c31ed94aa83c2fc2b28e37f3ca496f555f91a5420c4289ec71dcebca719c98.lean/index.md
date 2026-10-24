# Verification target: GRWTSK.Algebra.UniversalAlgebra.Ab.Variantf4c31ed94aa83c2fc2b28e37f3ca496f555f91a5420c4289ec71dcebca719c98

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a3e770ea88376d9f3223ff444132c90f8d39566",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Ab/Variantf4c31ed94aa83c2fc2b28e37f3ca496f555f91a5420c4289ec71dcebca719c98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Ab/Variantf4c31ed94aa83c2fc2b28e37f3ca496f555f91a5420c4289ec71dcebca719c98.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Ab/Variantf4c31ed94aa83c2fc2b28e37f3ca496f555f91a5420c4289ec71dcebca719c98.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a3e770ea88376d9f3223ff444132c90f8d39566`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Ab/Variantf4c31ed94aa83c2fc2b28e37f3ca496f555f91a5420c4289ec71dcebca719c98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Ab/Variantf4c31ed94aa83c2fc2b28e37f3ca496f555f91a5420c4289ec71dcebca719c98.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.ShortExact` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.Abelian` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.Kernels` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Exact` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ab_zero_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Ab/Variantf4c31ed94aa83c2fc2b28e37f3ca496f555f91a5420c4289ec71dcebca719c98.lean/declarations/ab-zero-apply--ebe1dff6083d6f041f78a08b.md) | 39 | `result-track:ebe1dff6083d6f041f78a08bec6947f9e30345623212c97403e3adf3955f1fca` |
| 2 | `def` | [abToCycles](../../../../../mathematics/Algebra/UniversalAlgebra/Ab/Variantf4c31ed94aa83c2fc2b28e37f3ca496f555f91a5420c4289ec71dcebca719c98.lean/declarations/abtocycles--18f4384e10b8bbf2d9732a4a.md) | 45 | `declaration-track:18f4384e10b8bbf2d9732a4a9eca2ae3d798a22e2a0551b2113f2e0c291ede63` |
| 3 | `def` | [abLeftHomologyData](../../../../../mathematics/Algebra/UniversalAlgebra/Ab/Variantf4c31ed94aa83c2fc2b28e37f3ca496f555f91a5420c4289ec71dcebca719c98.lean/declarations/ablefthomologydata--c569e0a396b712891a02aea5.md) | 51 | `declaration-track:c569e0a396b712891a02aea5d3bffcd9fb3d5e7cd0d8fb97cd2690425fb73b7f` |
| 4 | `lemma` | [abLeftHomologyData_f'](../../../../../mathematics/Algebra/UniversalAlgebra/Ab/Variantf4c31ed94aa83c2fc2b28e37f3ca496f555f91a5420c4289ec71dcebca719c98.lean/declarations/ablefthomologydata-f--3ff7a4e1e87c932945c46e5b.md) | 68 | `result-track:3ff7a4e1e87c932945c46e5bf70e9483011b57f65a24f534139343aeb80c165e` |
| 5 | `def` | [abCyclesIso](../../../../../mathematics/Algebra/UniversalAlgebra/Ab/Variantf4c31ed94aa83c2fc2b28e37f3ca496f555f91a5420c4289ec71dcebca719c98.lean/declarations/abcyclesiso--9756f11f87c1ab3dbb0b5042.md) | 73 | `declaration-track:9756f11f87c1ab3dbb0b50425937f7c5c25feb9b5f953da5bc78287ba0ceac04` |
| 6 | `lemma` | [abCyclesIso_inv_apply_iCycles](../../../../../mathematics/Algebra/UniversalAlgebra/Ab/Variantf4c31ed94aa83c2fc2b28e37f3ca496f555f91a5420c4289ec71dcebca719c98.lean/declarations/abcyclesiso-inv-apply-icycles--63e70a2c69a18fb1733e1e82.md) | 81 | `result-track:63e70a2c69a18fb1733e1e82608b7b57c762a12741bdb5b8fdd17810b5ade54e` |
| 7 | `def` | [abHomologyIso](../../../../../mathematics/Algebra/UniversalAlgebra/Ab/Variantf4c31ed94aa83c2fc2b28e37f3ca496f555f91a5420c4289ec71dcebca719c98.lean/declarations/abhomologyiso--a1ac7b96103f60c155e6d345.md) | 91 | `declaration-track:a1ac7b96103f60c155e6d34588804a57899c4d36a0ecf5b2aeee03a9f0a82cc4` |
| 8 | `lemma` | [exact_iff_surjective_abToCycles](../../../../../mathematics/Algebra/UniversalAlgebra/Ab/Variantf4c31ed94aa83c2fc2b28e37f3ca496f555f91a5420c4289ec71dcebca719c98.lean/declarations/exact-iff-surjective-abtocycles--4bd1378d0f1256cdface90c4.md) | 95 | `result-track:4bd1378d0f1256cdface90c486289c993a3bc2d6c425e17e9e0c40509d2c2710` |
| 9 | `lemma` | [ab_exact_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Ab/Variantf4c31ed94aa83c2fc2b28e37f3ca496f555f91a5420c4289ec71dcebca719c98.lean/declarations/ab-exact-iff--a4a9510f0a57be00a8fc2371.md) | 101 | `result-track:a4a9510f0a57be00a8fc23717ba2993e77c213bed362e01b7bde722ae5e4ccad` |
| 10 | `lemma` | [ab_exact_iff_function_exact](../../../../../mathematics/Algebra/UniversalAlgebra/Ab/Variantf4c31ed94aa83c2fc2b28e37f3ca496f555f91a5420c4289ec71dcebca719c98.lean/declarations/ab-exact-iff-function-exact--a98726d3db128e14121501f0.md) | 112 | `result-track:a98726d3db128e14121501f088dcdc381e254b6eeefebc760695989fa3b2f823` |
| 11 | `lemma` | [ab_exact_iff_ker_le_range](../../../../../mathematics/Algebra/UniversalAlgebra/Ab/Variantf4c31ed94aa83c2fc2b28e37f3ca496f555f91a5420c4289ec71dcebca719c98.lean/declarations/ab-exact-iff-ker-le-range--7a6fd30e13d5ad329a6f5c94.md) | 124 | `result-track:7a6fd30e13d5ad329a6f5c942e4df4de61e36c1262f7aa67e72ead3dae013ee0` |
| 12 | `lemma` | [ab_exact_iff_range_eq_ker](../../../../../mathematics/Algebra/UniversalAlgebra/Ab/Variantf4c31ed94aa83c2fc2b28e37f3ca496f555f91a5420c4289ec71dcebca719c98.lean/declarations/ab-exact-iff-range-eq-ker--a60d6de4caaef3f069736180.md) | 126 | `result-track:a60d6de4caaef3f0697361802d0d00eae2021606828982ef2bb41c89a699bf56` |
| 13 | `lemma` | [ShortExact.ab_injective_f](../../../../../mathematics/Algebra/UniversalAlgebra/Ab/Variantf4c31ed94aa83c2fc2b28e37f3ca496f555f91a5420c4289ec71dcebca719c98.lean/declarations/shortexact-ab-injective-f--e5d8c471ab11dcfb31c941ba.md) | 139 | `result-track:e5d8c471ab11dcfb31c941baf0de1db50efdf68d441bbc65010918d2df3201b6` |
| 14 | `lemma` | [ShortExact.ab_surjective_g](../../../../../mathematics/Algebra/UniversalAlgebra/Ab/Variantf4c31ed94aa83c2fc2b28e37f3ca496f555f91a5420c4289ec71dcebca719c98.lean/declarations/shortexact-ab-surjective-g--f7f26e9bf304e43b057ac7b8.md) | 143 | `result-track:f7f26e9bf304e43b057ac7b8d4e5faf92b400cb2535961e0e9964ca091cc0c5d` |
| 15 | `lemma` | [ShortExact.ab_exact_iff_function_exact](../../../../../mathematics/Algebra/UniversalAlgebra/Ab/Variantf4c31ed94aa83c2fc2b28e37f3ca496f555f91a5420c4289ec71dcebca719c98.lean/declarations/shortexact-ab-exact-iff-function-exact--2a8abd1358debe41faf8027f.md) | 149 | `result-track:2a8abd1358debe41faf8027f579fa3c7260404b00a002e56d3d0c8d2ed78708c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
