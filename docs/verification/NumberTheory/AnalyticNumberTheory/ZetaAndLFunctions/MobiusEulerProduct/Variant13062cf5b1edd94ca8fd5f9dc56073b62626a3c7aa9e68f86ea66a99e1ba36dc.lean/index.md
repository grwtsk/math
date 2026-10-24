# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.MobiusEulerProduct.Variant13062cf5b1edd94ca8fd5f9dc56073b62626a3c7aa9e68f86ea66a99e1ba36dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c81e5a5e039d769dbdc5bece359c31a11906fd3",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant13062cf5b1edd94ca8fd5f9dc56073b62626a3c7aa9e68f86ea66a99e1ba36dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant13062cf5b1edd94ca8fd5f9dc56073b62626a3c7aa9e68f86ea66a99e1ba36dc.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant13062cf5b1edd94ca8fd5f9dc56073b62626a3c7aa9e68f86ea66a99e1ba36dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c81e5a5e039d769dbdc5bece359c31a11906fd3`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant13062cf5b1edd94ca8fd5f9dc56073b62626a3c7aa9e68f86ea66a99e1ba36dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant13062cf5b1edd94ca8fd5f9dc56073b62626a3c7aa9e68f86ea66a99e1ba36dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Analysis.ReciprocalBoundary` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PrimeSelection](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant13062cf5b1edd94ca8fd5f9dc56073b62626a3c7aa9e68f86ea66a99e1ba36dc.lean/declarations/primeselection--d4b9f50e836b490a7dac626c.md) | 26 | `declaration-track:d4b9f50e836b490a7dac626c25617dceb5d479e78ea17652c482624873b94925` |
| 2 | `structure` | [PrimeExponentProfile](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant13062cf5b1edd94ca8fd5f9dc56073b62626a3c7aa9e68f86ea66a99e1ba36dc.lean/declarations/primeexponentprofile--4eab5084ac3216a1685fd7f6.md) | 30 | `declaration-track:4eab5084ac3216a1685fd7f6dc8c1b07536af0240c2fbd338452408dffeabc34` |
| 3 | `def` | [PrimeExponentProfile.IsSquarefree](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant13062cf5b1edd94ca8fd5f9dc56073b62626a3c7aa9e68f86ea66a99e1ba36dc.lean/declarations/primeexponentprofile-issquarefree--f198b3d08f672a87276e54d0.md) | 34 | `declaration-track:f198b3d08f672a87276e54d04cb5343b7c3f810d1403ec953832d6ffdc5c69c0` |
| 4 | `def` | [PrimeSelection.toSquarefreeProfile](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant13062cf5b1edd94ca8fd5f9dc56073b62626a3c7aa9e68f86ea66a99e1ba36dc.lean/declarations/primeselection-tosquarefreeprofile--2f9f27d62e1fd09dad574380.md) | 39 | `declaration-track:2f9f27d62e1fd09dad574380a09255c6f3205de2f4d5a89a5f7eda96f5b643ba` |
| 5 | `theorem` | [prime_selection_to_squarefree_profile_is_squarefree](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant13062cf5b1edd94ca8fd5f9dc56073b62626a3c7aa9e68f86ea66a99e1ba36dc.lean/declarations/prime-selection-to-squarefree-profile-is-squarefree--de301870177025e3aa615b12.md) | 44 | `result-track:de301870177025e3aa615b1289344463a22af80720e569b3f6100c1c2305778a` |
| 6 | `inductive` | [MobiusCoefficientKind](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant13062cf5b1edd94ca8fd5f9dc56073b62626a3c7aa9e68f86ea66a99e1ba36dc.lean/declarations/mobiuscoefficientkind--2bd8328e92c0f1b3020bfa66.md) | 52 | `declaration-track:2bd8328e92c0f1b3020bfa666343c0ea686bd5e8f7478cb725a0bc450a4d899a` |
| 7 | `def` | [MobiusCoefficientKind.value](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant13062cf5b1edd94ca8fd5f9dc56073b62626a3c7aa9e68f86ea66a99e1ba36dc.lean/declarations/mobiuscoefficientkind-value--b5e20b5e673c5f259ab78ab5.md) | 60 | `declaration-track:b5e20b5e673c5f259ab78ab551c64df676ed1000624ecb567dfa23f2f6e06ebf` |
| 8 | `theorem` | [mobius_unit_value](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant13062cf5b1edd94ca8fd5f9dc56073b62626a3c7aa9e68f86ea66a99e1ba36dc.lean/declarations/mobius-unit-value--63314c0a00cdfab553bf7cae.md) | 66 | `result-track:63314c0a00cdfab553bf7caedaaa46421ff45971458781a264fb4bf82a64af88` |
| 9 | `theorem` | [mobius_squarefree_even_value](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant13062cf5b1edd94ca8fd5f9dc56073b62626a3c7aa9e68f86ea66a99e1ba36dc.lean/declarations/mobius-squarefree-even-value--46e4e946a240556d93e41713.md) | 70 | `result-track:46e4e946a240556d93e417139140df667bdec8fe19173078e61a39667750d5ec` |
| 10 | `theorem` | [mobius_squarefree_odd_value](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant13062cf5b1edd94ca8fd5f9dc56073b62626a3c7aa9e68f86ea66a99e1ba36dc.lean/declarations/mobius-squarefree-odd-value--09fa14e9dfbe3cae95ba9a54.md) | 74 | `result-track:09fa14e9dfbe3cae95ba9a54b2d29bede8bc9f6d8ae9f5eb0f6531b73598b484` |
| 11 | `theorem` | [mobius_nonsquarefree_value](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant13062cf5b1edd94ca8fd5f9dc56073b62626a3c7aa9e68f86ea66a99e1ba36dc.lean/declarations/mobius-nonsquarefree-value--5cd60795f7e69f2577f85e15.md) | 78 | `result-track:5cd60795f7e69f2577f85e15e1c6539cdc1988931ffb57c9f2e3e7155561958e` |
| 12 | `def` | [EulerPrimePowerCarrier](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant13062cf5b1edd94ca8fd5f9dc56073b62626a3c7aa9e68f86ea66a99e1ba36dc.lean/declarations/eulerprimepowercarrier--9895ddc1669dee63b874c47a.md) | 83 | `declaration-track:9895ddc1669dee63b874c47a9781ebfeb3ff8dd915e299eefa7a48a030610445` |
| 13 | `def` | [ReciprocalEulerSquarefreeCarrier](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant13062cf5b1edd94ca8fd5f9dc56073b62626a3c7aa9e68f86ea66a99e1ba36dc.lean/declarations/reciprocaleulersquarefreecarrier--7b54710d7dd84777304b8415.md) | 87 | `declaration-track:7b54710d7dd84777304b8415754e6a569048a39ea9df2f54684aca8e5fea67d3` |
| 14 | `def` | [PrimeSelection.toReciprocalEulerCarrier](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant13062cf5b1edd94ca8fd5f9dc56073b62626a3c7aa9e68f86ea66a99e1ba36dc.lean/declarations/primeselection-toreciprocaleulercarrier--42b08778f820f8818a27075c.md) | 91 | `declaration-track:42b08778f820f8818a27075ccf066eec2331f85c11d056b2df99fece6460bab6` |
| 15 | `structure` | [MobiusEulerProductCarrier](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant13062cf5b1edd94ca8fd5f9dc56073b62626a3c7aa9e68f86ea66a99e1ba36dc.lean/declarations/mobiuseulerproductcarrier--b312024b9b5060311be202a7.md) | 99 | `declaration-track:b312024b9b5060311be202a772ae958f2e48305be312201b37ee572e63933cf4` |
| 16 | `def` | [mkMobiusEulerProductCarrier](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant13062cf5b1edd94ca8fd5f9dc56073b62626a3c7aa9e68f86ea66a99e1ba36dc.lean/declarations/mkmobiuseulerproductcarrier--ccad60147eb2fbb47e90663a.md) | 105 | `declaration-track:ccad60147eb2fbb47e90663af53b1b1b0502e809439df744080c953f7b48468a` |
| 17 | `theorem` | [mobius_reciprocal_boundary_zeta_pole_to_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant13062cf5b1edd94ca8fd5f9dc56073b62626a3c7aa9e68f86ea66a99e1ba36dc.lean/declarations/mobius-reciprocal-boundary-zeta-pole-to-zero--5143480ace2613fab4e2ae6f.md) | 112 | `result-track:5143480ace2613fab4e2ae6f9a881fd024669b7bf0cefe4cf9c07196b5ba1a19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
