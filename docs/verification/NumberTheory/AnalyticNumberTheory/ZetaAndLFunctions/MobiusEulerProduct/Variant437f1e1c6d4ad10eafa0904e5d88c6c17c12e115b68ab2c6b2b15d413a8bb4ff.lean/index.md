# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.MobiusEulerProduct.Variant437f1e1c6d4ad10eafa0904e5d88c6c17c12e115b68ab2c6b2b15d413a8bb4ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ee4f331ffe57dd520c5d5025b8296c581a38c76",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant437f1e1c6d4ad10eafa0904e5d88c6c17c12e115b68ab2c6b2b15d413a8bb4ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant437f1e1c6d4ad10eafa0904e5d88c6c17c12e115b68ab2c6b2b15d413a8bb4ff.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant437f1e1c6d4ad10eafa0904e5d88c6c17c12e115b68ab2c6b2b15d413a8bb4ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ee4f331ffe57dd520c5d5025b8296c581a38c76`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant437f1e1c6d4ad10eafa0904e5d88c6c17c12e115b68ab2c6b2b15d413a8bb4ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant437f1e1c6d4ad10eafa0904e5d88c6c17c12e115b68ab2c6b2b15d413a8bb4ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Analysis.ReciprocalBoundary` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PrimeSelection](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant437f1e1c6d4ad10eafa0904e5d88c6c17c12e115b68ab2c6b2b15d413a8bb4ff.lean/declarations/primeselection--2abde07e00a9d9ca9c8cf75f.md) | 34 | `declaration-track:2abde07e00a9d9ca9c8cf75fccfeac3e14695069ebda4b9fa53a14e303f3aa26` |
| 2 | `structure` | [PrimeExponentProfile](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant437f1e1c6d4ad10eafa0904e5d88c6c17c12e115b68ab2c6b2b15d413a8bb4ff.lean/declarations/primeexponentprofile--088dd62c171410e52a528116.md) | 38 | `declaration-track:088dd62c171410e52a528116255eff0bd0f4420a070faa296aa05f5721837e5b` |
| 3 | `def` | [PrimeExponentProfile.IsSquarefree](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant437f1e1c6d4ad10eafa0904e5d88c6c17c12e115b68ab2c6b2b15d413a8bb4ff.lean/declarations/primeexponentprofile-issquarefree--c97959a055c5eb495446852d.md) | 42 | `declaration-track:c97959a055c5eb495446852d9c9d8e4275a59790b0ed758e50bd838d98c1657e` |
| 4 | `def` | [PrimeSelection.toSquarefreeProfile](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant437f1e1c6d4ad10eafa0904e5d88c6c17c12e115b68ab2c6b2b15d413a8bb4ff.lean/declarations/primeselection-tosquarefreeprofile--ed379d78b059205feebb7cc8.md) | 47 | `declaration-track:ed379d78b059205feebb7cc84ac4db4e0d3cc9137e906f26cc09923af7292a73` |
| 5 | `theorem` | [prime_selection_to_squarefree_profile_is_squarefree](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant437f1e1c6d4ad10eafa0904e5d88c6c17c12e115b68ab2c6b2b15d413a8bb4ff.lean/declarations/prime-selection-to-squarefree-profile-is-squarefree--e73da49159c22a112a6b061f.md) | 52 | `result-track:e73da49159c22a112a6b061f0103e8e24856f6b92c0b868cc25a48a248aa9ea8` |
| 6 | `inductive` | [MobiusCoefficientKind](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant437f1e1c6d4ad10eafa0904e5d88c6c17c12e115b68ab2c6b2b15d413a8bb4ff.lean/declarations/mobiuscoefficientkind--0f5b03a5273749b985dfd746.md) | 60 | `declaration-track:0f5b03a5273749b985dfd7464e2f664724816360f8944a5e9362cfcbcca0d403` |
| 7 | `def` | [MobiusCoefficientKind.value](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant437f1e1c6d4ad10eafa0904e5d88c6c17c12e115b68ab2c6b2b15d413a8bb4ff.lean/declarations/mobiuscoefficientkind-value--ca375fa424755b1bfb358703.md) | 68 | `declaration-track:ca375fa424755b1bfb3587032fb669df694c7084e0b2a0bc027647aad1e0d96c` |
| 8 | `theorem` | [mobius_unit_value](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant437f1e1c6d4ad10eafa0904e5d88c6c17c12e115b68ab2c6b2b15d413a8bb4ff.lean/declarations/mobius-unit-value--bacae43691f33a4c49cb1fb7.md) | 74 | `result-track:bacae43691f33a4c49cb1fb78177ab7625a94df47ba3398a77cabd7c0a92be00` |
| 9 | `theorem` | [mobius_squarefree_even_value](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant437f1e1c6d4ad10eafa0904e5d88c6c17c12e115b68ab2c6b2b15d413a8bb4ff.lean/declarations/mobius-squarefree-even-value--fc9638748a00af74ce688a7e.md) | 78 | `result-track:fc9638748a00af74ce688a7e080c5918a1c896407d3412549daa557955e0e84a` |
| 10 | `theorem` | [mobius_squarefree_odd_value](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant437f1e1c6d4ad10eafa0904e5d88c6c17c12e115b68ab2c6b2b15d413a8bb4ff.lean/declarations/mobius-squarefree-odd-value--58ec68e29f56a3756c62bf1e.md) | 82 | `result-track:58ec68e29f56a3756c62bf1e6cb09f381478d4cf22acca750e3f6bc6028ea586` |
| 11 | `theorem` | [mobius_nonsquarefree_value](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant437f1e1c6d4ad10eafa0904e5d88c6c17c12e115b68ab2c6b2b15d413a8bb4ff.lean/declarations/mobius-nonsquarefree-value--0ee5a2af3ecf29dc22daa1a9.md) | 86 | `result-track:0ee5a2af3ecf29dc22daa1a968f91886a5bf522084a900bc78ceff2a07c9fa98` |
| 12 | `def` | [EulerPrimePowerCarrier](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant437f1e1c6d4ad10eafa0904e5d88c6c17c12e115b68ab2c6b2b15d413a8bb4ff.lean/declarations/eulerprimepowercarrier--6cd8b9a1bbfd2187a286f76c.md) | 91 | `declaration-track:6cd8b9a1bbfd2187a286f76cc98102402ce949ea29b668c61e60dbf5722da6b4` |
| 13 | `def` | [ReciprocalEulerSquarefreeCarrier](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant437f1e1c6d4ad10eafa0904e5d88c6c17c12e115b68ab2c6b2b15d413a8bb4ff.lean/declarations/reciprocaleulersquarefreecarrier--5768cf31f146d9255093be86.md) | 95 | `declaration-track:5768cf31f146d9255093be867aa5ce7c027ac5b4e1fe37365bbb8f022ee5cb85` |
| 14 | `def` | [PrimeSelection.toReciprocalEulerCarrier](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant437f1e1c6d4ad10eafa0904e5d88c6c17c12e115b68ab2c6b2b15d413a8bb4ff.lean/declarations/primeselection-toreciprocaleulercarrier--79768d5a324471df27e111c4.md) | 99 | `declaration-track:79768d5a324471df27e111c4bb31d6be530bd71cef819035eab2dec04ffc7823` |
| 15 | `structure` | [MobiusEulerProductCarrier](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant437f1e1c6d4ad10eafa0904e5d88c6c17c12e115b68ab2c6b2b15d413a8bb4ff.lean/declarations/mobiuseulerproductcarrier--0462f353de7e35d8259d2c9a.md) | 107 | `declaration-track:0462f353de7e35d8259d2c9a0599fe49dba5a5cf34c52f77effa5ef428505bdb` |
| 16 | `def` | [mkMobiusEulerProductCarrier](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant437f1e1c6d4ad10eafa0904e5d88c6c17c12e115b68ab2c6b2b15d413a8bb4ff.lean/declarations/mkmobiuseulerproductcarrier--869a32aead1ca29ec5a0c3f2.md) | 113 | `declaration-track:869a32aead1ca29ec5a0c3f23de5220610ed71ced64fac14b6609a0da59b1116` |
| 17 | `theorem` | [mobius_reciprocal_boundary_zeta_pole_to_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusEulerProduct/Variant437f1e1c6d4ad10eafa0904e5d88c6c17c12e115b68ab2c6b2b15d413a8bb4ff.lean/declarations/mobius-reciprocal-boundary-zeta-pole-to-zero--a3a43813bf60b6db294cc689.md) | 120 | `result-track:a3a43813bf60b6db294cc68936f5d499f6cdcadd6a6aa38012c02879c8842965` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
