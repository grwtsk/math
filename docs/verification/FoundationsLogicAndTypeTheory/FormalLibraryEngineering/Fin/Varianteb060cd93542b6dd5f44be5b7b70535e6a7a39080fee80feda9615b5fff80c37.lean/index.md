# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Fin.Varianteb060cd93542b6dd5f44be5b7b70535e6a7a39080fee80feda9615b5fff80c37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0aa7ce0273475573425b15165c62c293aa7dd91d",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianteb060cd93542b6dd5f44be5b7b70535e6a7a39080fee80feda9615b5fff80c37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianteb060cd93542b6dd5f44be5b7b70535e6a7a39080fee80feda9615b5fff80c37.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianteb060cd93542b6dd5f44be5b7b70535e6a7a39080fee80feda9615b5fff80c37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0aa7ce0273475573425b15165c62c293aa7dd91d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianteb060cd93542b6dd5f44be5b7b70535e6a7a39080fee80feda9615b5fff80c37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianteb060cd93542b6dd5f44be5b7b70535e6a7a39080fee80feda9615b5fff80c37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Fin.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Int.OfNat` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianteb060cd93542b6dd5f44be5b7b70535e6a7a39080fee80feda9615b5fff80c37.lean/declarations/instance--9c65b49d38e7af5738641984.md) | 23 | `declaration-track:9c65b49d38e7af5738641984a67eb3b557599bf3adcf63ed8ae1a8d86928b323` |
| 2 | `theorem` | [pRangeSucc?_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianteb060cd93542b6dd5f44be5b7b70535e6a7a39080fee80feda9615b5fff80c37.lean/declarations/prangesucc-eq--2a99ed22efd51a959d5998d5.md) | 28 | `result-track:2a99ed22efd51a959d5998d58229efc15c7a36bcece2d32d8cf4bd6600780bbe` |
| 3 | `theorem` | [pRangeSuccMany?_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianteb060cd93542b6dd5f44be5b7b70535e6a7a39080fee80feda9615b5fff80c37.lean/declarations/prangesuccmany-eq--4db5d21479dae2b765d08c89.md) | 31 | `result-track:4db5d21479dae2b765d08c8940f6442a78d235be9942d23599a4bf723387611b` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianteb060cd93542b6dd5f44be5b7b70535e6a7a39080fee80feda9615b5fff80c37.lean/declarations/instance--fc7961293e0c251bea3e4088.md) | 34 | `declaration-track:fc7961293e0c251bea3e4088c33674d03aa93aaf039b8fe704d2087c61ee788c` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianteb060cd93542b6dd5f44be5b7b70535e6a7a39080fee80feda9615b5fff80c37.lean/declarations/instance--54636c00d1bd89fb7c7a3b35.md) | 39 | `declaration-track:54636c00d1bd89fb7c7a3b35bdfb85daed1583317e210e9fb300ed669e54f4a7` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianteb060cd93542b6dd5f44be5b7b70535e6a7a39080fee80feda9615b5fff80c37.lean/declarations/instance--e79f2d6857428a53c2178976.md) | 45 | `declaration-track:e79f2d6857428a53c21789761df79800df252f25bd9f4acc231f1238ca802174` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianteb060cd93542b6dd5f44be5b7b70535e6a7a39080fee80feda9615b5fff80c37.lean/declarations/instance--0b9a533df5ef46fce6386590.md) | 48 | `declaration-track:0b9a533df5ef46fce6386590a7dde4f533aca54c9c313acd28a780dd8c2ac6ef` |
| 8 | `theorem` | [least?_eq_of_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianteb060cd93542b6dd5f44be5b7b70535e6a7a39080fee80feda9615b5fff80c37.lean/declarations/least-eq-of-zero--25df4b58961f04dd2288ebc1.md) | 52 | `result-track:25df4b58961f04dd2288ebc1458b508300665a131f2e2a6eecab5a8b478ce0ac` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianteb060cd93542b6dd5f44be5b7b70535e6a7a39080fee80feda9615b5fff80c37.lean/declarations/instance--a2c2749aa8ffb0ae9cf94587.md) | 54 | `declaration-track:a2c2749aa8ffb0ae9cf9458756c4af22605fc3d12961677569eeec49d20ecf90` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianteb060cd93542b6dd5f44be5b7b70535e6a7a39080fee80feda9615b5fff80c37.lean/declarations/instance--6ec7196e49be55bafc91756d.md) | 57 | `declaration-track:6ec7196e49be55bafc91756d1f6ac2376a1ddcf4b54075ff5cd8a26b0dd3e769` |
| 11 | `theorem` | [least?_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianteb060cd93542b6dd5f44be5b7b70535e6a7a39080fee80feda9615b5fff80c37.lean/declarations/least-eq--5b5ea2e9a1c0ee50441cc513.md) | 61 | `result-track:5b5ea2e9a1c0ee50441cc513c7697ba025ada588e54e63a6d514db72d8c8d6fb` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianteb060cd93542b6dd5f44be5b7b70535e6a7a39080fee80feda9615b5fff80c37.lean/declarations/instance--ba05be93156b04f30f54723d.md) | 63 | `declaration-track:ba05be93156b04f30f54723da7e46d0709e75283e41ea37754b310ff8780dd80` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianteb060cd93542b6dd5f44be5b7b70535e6a7a39080fee80feda9615b5fff80c37.lean/declarations/instance--138557c2a12d0fbffc60f46d.md) | 65 | `declaration-track:138557c2a12d0fbffc60f46d6cca6a583022e8b6bfd9f9f4da7bd7810bbd075f` |
| 14 | `theorem` | [rxcHasSize_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianteb060cd93542b6dd5f44be5b7b70535e6a7a39080fee80feda9615b5fff80c37.lean/declarations/rxchassize-eq--350b82d9ccefc91991f33202.md) | 69 | `result-track:350b82d9ccefc91991f33202f3711f1eae9a7c8fe21f3dde564ccdea112eae57` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianteb060cd93542b6dd5f44be5b7b70535e6a7a39080fee80feda9615b5fff80c37.lean/declarations/instance--adfd5a22149814ac81aea0f9.md) | 72 | `declaration-track:adfd5a22149814ac81aea0f938492e4ec997d08bb958f999e03bb9cae96fe391` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianteb060cd93542b6dd5f44be5b7b70535e6a7a39080fee80feda9615b5fff80c37.lean/declarations/instance--7b62408d3b11eb9f6aac690c.md) | 77 | `declaration-track:7b62408d3b11eb9f6aac690c7f3d8ebff5646f2aab5444e214da7f530b383c6d` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianteb060cd93542b6dd5f44be5b7b70535e6a7a39080fee80feda9615b5fff80c37.lean/declarations/instance--145582fb9d53622568c708fe.md) | 79 | `declaration-track:145582fb9d53622568c708fec58edce90835c5adef39e78332417b5b54994f06` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianteb060cd93542b6dd5f44be5b7b70535e6a7a39080fee80feda9615b5fff80c37.lean/declarations/instance--e1b110c465312397a3befec8.md) | 80 | `declaration-track:e1b110c465312397a3befec8b3ac3020bab3b24085375ca68bf94df105d76ad1` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianteb060cd93542b6dd5f44be5b7b70535e6a7a39080fee80feda9615b5fff80c37.lean/declarations/instance--a3fc613560ad1151ca411b0f.md) | 81 | `declaration-track:a3fc613560ad1151ca411b0f2ef650caa57f4c2d668c303ea8f116b48f556cd2` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianteb060cd93542b6dd5f44be5b7b70535e6a7a39080fee80feda9615b5fff80c37.lean/declarations/instance--6ea781ca8d36a75edda2c740.md) | 83 | `declaration-track:6ea781ca8d36a75edda2c740d7703becfb3d9c3444af65a148381517af2e58c9` |
| 21 | `theorem` | [rxiHasSize_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianteb060cd93542b6dd5f44be5b7b70535e6a7a39080fee80feda9615b5fff80c37.lean/declarations/rxihassize-eq--2ae436cd4e904229106584c9.md) | 87 | `result-track:2ae436cd4e904229106584c97ca2cec84c9cc82dc3a785542879f98bed2bea41` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianteb060cd93542b6dd5f44be5b7b70535e6a7a39080fee80feda9615b5fff80c37.lean/declarations/instance--7d19620c7f8f405e4f478a50.md) | 90 | `declaration-track:7d19620c7f8f405e4f478a50f138f2bc545074355d3307f97f39f3c8f0dcca32` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Varianteb060cd93542b6dd5f44be5b7b70535e6a7a39080fee80feda9615b5fff80c37.lean/declarations/instance--e7be8b36e5ab6dab3ef02a49.md) | 94 | `declaration-track:e7be8b36e5ab6dab3ef02a4903e3074c5f3732b376d89b67307273b689f8d905` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
