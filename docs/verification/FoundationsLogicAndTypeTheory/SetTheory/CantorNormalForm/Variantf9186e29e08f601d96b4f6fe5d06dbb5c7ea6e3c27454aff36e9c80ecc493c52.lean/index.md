# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CantorNormalForm.Variantf9186e29e08f601d96b4f6fe5d06dbb5c7ea6e3c27454aff36e9c80ecc493c52

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8508c032327c34f290014b6e56fc8b675b7b6540",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variantf9186e29e08f601d96b4f6fe5d06dbb5c7ea6e3c27454aff36e9c80ecc493c52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variantf9186e29e08f601d96b4f6fe5d06dbb5c7ea6e3c27454aff36e9c80ecc493c52.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variantf9186e29e08f601d96b4f6fe5d06dbb5c7ea6e3c27454aff36e9c80ecc493c52.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8508c032327c34f290014b6e56fc8b675b7b6540`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variantf9186e29e08f601d96b4f6fe5d06dbb5c7ea6e3c27454aff36e9c80ecc493c52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variantf9186e29e08f601d96b4f6fe5d06dbb5c7ea6e3c27454aff36e9c80ecc493c52.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Ordinal.Exponential` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.Family` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CNFRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variantf9186e29e08f601d96b4f6fe5d06dbb5c7ea6e3c27454aff36e9c80ecc493c52.lean/declarations/cnfrec--336a5b4636ddf77f32fa4a14.md) | 50 | `declaration-track:336a5b4636ddf77f32fa4a14b7be7ba02f6deb0f002c177d9d0f8f32ad9c4652` |
| 2 | `theorem` | [CNFRec_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variantf9186e29e08f601d96b4f6fe5d06dbb5c7ea6e3c27454aff36e9c80ecc493c52.lean/declarations/cnfrec-zero--a84f5fa0a5022718332a52a7.md) | 57 | `result-track:a84f5fa0a5022718332a52a7bd990bb656af7ab7901b2ef78b5aa96842f674d3` |
| 3 | `theorem` | [CNFRec_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variantf9186e29e08f601d96b4f6fe5d06dbb5c7ea6e3c27454aff36e9c80ecc493c52.lean/declarations/cnfrec-pos--cc8086ad0838b5a02fc941cd.md) | 61 | `result-track:cc8086ad0838b5a02fc941cd9314c54320dab37ff15c26aea1d0f5686863d507` |
| 4 | `def` | [CNF](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variantf9186e29e08f601d96b4f6fe5d06dbb5c7ea6e3c27454aff36e9c80ecc493c52.lean/declarations/cnf--333d9e75665f4e82de3f1658.md) | 73 | `declaration-track:333d9e75665f4e82de3f16584f3214c043f571e665c9b57cd5554b050b0504f1` |
| 5 | `theorem` | [CNF_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variantf9186e29e08f601d96b4f6fe5d06dbb5c7ea6e3c27454aff36e9c80ecc493c52.lean/declarations/cnf-zero--78ee31eb2d2771544d41da06.md) | 77 | `result-track:78ee31eb2d2771544d41da064d6a0e803c199a730cb055d415d379071197c3c3` |
| 6 | `theorem` | [CNF_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variantf9186e29e08f601d96b4f6fe5d06dbb5c7ea6e3c27454aff36e9c80ecc493c52.lean/declarations/cnf-ne-zero--1b7f022b3081cb978a686217.md) | 81 | `result-track:1b7f022b3081cb978a686217f0f91f8637790507b5c58112b18d9cc5d051a2c3` |
| 7 | `theorem` | [zero_CNF](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variantf9186e29e08f601d96b4f6fe5d06dbb5c7ea6e3c27454aff36e9c80ecc493c52.lean/declarations/zero-cnf--70a35f60b6d7f282b8c7b121.md) | 85 | `result-track:70a35f60b6d7f282b8c7b1215892f24cfa4f96e47ae1e65ac03587d9e4715f68` |
| 8 | `theorem` | [one_CNF](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variantf9186e29e08f601d96b4f6fe5d06dbb5c7ea6e3c27454aff36e9c80ecc493c52.lean/declarations/one-cnf--be9bcb039f617f3df1af9393.md) | 87 | `result-track:be9bcb039f617f3df1af9393a7208de87f80c3f56727ee28f69b192da75f0057` |
| 9 | `theorem` | [CNF_of_le_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variantf9186e29e08f601d96b4f6fe5d06dbb5c7ea6e3c27454aff36e9c80ecc493c52.lean/declarations/cnf-of-le-one--08de8a338771fcabdfed439e.md) | 89 | `result-track:08de8a338771fcabdfed439eecca1324acfc42faf8edb69c8edfe5bb8413a275` |
| 10 | `theorem` | [CNF_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variantf9186e29e08f601d96b4f6fe5d06dbb5c7ea6e3c27454aff36e9c80ecc493c52.lean/declarations/cnf-of-lt--8745becc0e09007fde35f255.md) | 93 | `result-track:8745becc0e09007fde35f2557055e33a26358e0eab35d70c6be45868708a22ec` |
| 11 | `theorem` | [CNF_foldr](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variantf9186e29e08f601d96b4f6fe5d06dbb5c7ea6e3c27454aff36e9c80ecc493c52.lean/declarations/cnf-foldr--1ce367c1d68df613a93199bf.md) | 97 | `result-track:1ce367c1d68df613a93199bfa84b3ea5a5da08463462dd21d89e2efcc6d5a53d` |
| 12 | `theorem` | [CNF_fst_le_log](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variantf9186e29e08f601d96b4f6fe5d06dbb5c7ea6e3c27454aff36e9c80ecc493c52.lean/declarations/cnf-fst-le-log--a4e8c11f8148f94e4dcac047.md) | 104 | `result-track:a4e8c11f8148f94e4dcac047f067f9bb77073d40b0fa84945babea2a649885ac` |
| 13 | `theorem` | [CNF_lt_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variantf9186e29e08f601d96b4f6fe5d06dbb5c7ea6e3c27454aff36e9c80ecc493c52.lean/declarations/cnf-lt-snd--7a876f8ab6b48e507b276752.md) | 114 | `result-track:7a876f8ab6b48e507b276752a0ebfb28ec431e1b5f3639ce023630f179cb68c6` |
| 14 | `theorem` | [CNF_snd_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variantf9186e29e08f601d96b4f6fe5d06dbb5c7ea6e3c27454aff36e9c80ecc493c52.lean/declarations/cnf-snd-lt--895ba3bea0d28db8a50513e0.md) | 122 | `result-track:895ba3bea0d28db8a50513e01b9c3b354a209905da7665fa2f77031d29ed0067` |
| 15 | `theorem` | [CNF_sorted](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variantf9186e29e08f601d96b4f6fe5d06dbb5c7ea6e3c27454aff36e9c80ecc493c52.lean/declarations/cnf-sorted--6df5c1fc6156fc815266d08d.md) | 133 | `result-track:6df5c1fc6156fc815266d08d1eeca69043635803d6262c55f3b7db65d2eb3862` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
