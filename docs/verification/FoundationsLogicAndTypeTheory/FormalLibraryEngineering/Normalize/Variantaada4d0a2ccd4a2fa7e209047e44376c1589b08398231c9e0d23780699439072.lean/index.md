# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Normalize.Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbd2a0c18f6dfba7006f8bf332fd8d362ae1b004",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbd2a0c18f6dfba7006f8bf332fd8d362ae1b004`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Coherence.Normalize` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Bicategory.Datatypes` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [evalComp_nil_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean/declarations/evalcomp-nil-nil--84f322d5985ad6a1de5bdf10.md) | 40 | `result-track:84f322d5985ad6a1de5bdf1020d204b199568b694dc9f9f957004f7626a5418a` |
| 2 | `theorem` | [evalComp_nil_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean/declarations/evalcomp-nil-cons--10c419a548b3bc22f0437bb1.md) | 44 | `result-track:10c419a548b3bc22f0437bb1026f29e9e1d752f55c3267725b2cfbe54f302bcf` |
| 3 | `theorem` | [evalComp_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean/declarations/evalcomp-cons--6e55be2dbf475c272c66d484.md) | 48 | `result-track:6e55be2dbf475c272c66d4842f845887506015a178fab1c9114c1d0da6949f48` |
| 4 | `theorem` | [eval_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean/declarations/eval-comp--745ea9362138069c6bc0e9ff.md) | 53 | `result-track:745ea9362138069c6bc0e9ff903d919c9e8eecb214a8217065731b87b74ef53f` |
| 5 | `theorem` | [eval_of](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean/declarations/eval-of--92c4b398dfe330369267b433.md) | 59 | `result-track:92c4b398dfe330369267b433cc79c96cd295f0a73fbd1019fd92a36b0725ccfd` |
| 6 | `theorem` | [eval_monoidalComp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean/declarations/eval-monoidalcomp--70a07fd7875297b30e115100.md) | 63 | `result-track:70a07fd7875297b30e115100b84fde03853fe85641d3224d950331d167444c8f` |
| 7 | `theorem` | [evalWhiskerLeft_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean/declarations/evalwhiskerleft-nil--34850169df75801dc1f26ed0.md) | 70 | `result-track:34850169df75801dc1f26ed059a7d81964fac0d8ab106c2462d0626026e0e448` |
| 8 | `theorem` | [evalWhiskerLeft_of_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean/declarations/evalwhiskerleft-of-cons--c900cab8333aa4f4ab788f00.md) | 74 | `result-track:c900cab8333aa4f4ab788f00c745d32f9f6cdfa8ebd0c802b61ae1b2a8d67544` |
| 9 | `theorem` | [evalWhiskerLeft_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean/declarations/evalwhiskerleft-comp--637d24ccb7e7a4cf283d7e75.md) | 80 | `result-track:637d24ccb7e7a4cf283d7e75c8119f1e5f4f85a9e14a0288927abec158d6d86c` |
| 10 | `theorem` | [evalWhiskerLeft_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean/declarations/evalwhiskerleft-id--076c7c56b872665d796b08b7.md) | 89 | `result-track:076c7c56b872665d796b08b78ebc7b1c09ab56522b60a802f12bdbefcf5bfdc0` |
| 11 | `theorem` | [eval_whiskerLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean/declarations/eval-whiskerleft--adca36b5299157ffe4ff1fee.md) | 95 | `result-track:adca36b5299157ffe4ff1fee99f6b4a9ee7801f1ff716382cac28a5b8cdd8bda` |
| 12 | `theorem` | [eval_whiskerRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean/declarations/eval-whiskerright--b08bf481cd21133fd248c6e9.md) | 102 | `result-track:b08bf481cd21133fd248c6e926539dfed9ba7bfeda447c82dc4a61656af43887` |
| 13 | `theorem` | [evalWhiskerRight_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean/declarations/evalwhiskerright-nil--e0df40ccdc77c4e2933bbaf5.md) | 110 | `result-track:e0df40ccdc77c4e2933bbaf525c2d08e596c87aa49a86d72e36b95bad96afd8f` |
| 14 | `theorem` | [evalWhiskerRightAux_of](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean/declarations/evalwhiskerrightaux-of--f1a18d4aeda4c4a3c628a10e.md) | 114 | `result-track:f1a18d4aeda4c4a3c628a10ed88cc61f7391dfa646dbc15accf4323370b1753c` |
| 15 | `theorem` | [evalWhiskerRight_cons_of_of](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean/declarations/evalwhiskerright-cons-of-of--e0e9a574573c8c831c43477a.md) | 118 | `result-track:e0e9a574573c8c831c43477a7190dcee16c29afcef5358aaebb5fce9acc45cb7` |
| 16 | `theorem` | [evalWhiskerRight_cons_whisker](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean/declarations/evalwhiskerright-cons-whisker--1275e7624fa49b10830e6876.md) | 127 | `result-track:1275e7624fa49b10830e6876aa0503706ce10d95bdd4076ee8a65d20957b87e1` |
| 17 | `theorem` | [evalWhiskerRight_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean/declarations/evalwhiskerright-comp--13865ea56f680b26c4c8060a.md) | 141 | `result-track:13865ea56f680b26c4c8060a54e4afb97e6943aff0880a82072a14f120bad986` |
| 18 | `theorem` | [evalWhiskerRight_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean/declarations/evalwhiskerright-id--12ca44b9b14e76f3031ec358.md) | 150 | `result-track:12ca44b9b14e76f3031ec358ee16572cfb15e83c3a9520bce6d3d2e697c53f0f` |
| 19 | `theorem` | [eval_bicategoricalComp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean/declarations/eval-bicategoricalcomp--4346fe4cafc8a12a354e1f57.md) | 156 | `result-track:4346fe4cafc8a12a354e1f57277ac4c6feb3d51943b596f4dc00c90ca77064c7` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean/declarations/instance--c441f1f109b98d81c5772156.md) | 166 | `declaration-track:c441f1f109b98d81c5772156c19503c87e89368b4f07ff11261c989cabd85741` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean/declarations/instance--3e84ebaea2e98ecdee966a17.md) | 224 | `declaration-track:3e84ebaea2e98ecdee966a17ace5ded835e22c9f13978aec42ed7358fe1e90a1` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean/declarations/instance--c4f30ec4da8d403d8c307473.md) | 298 | `declaration-track:c4f30ec4da8d403d8c3074736227074a71f58c87dae61b435e3879ca3b4ff400` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean/declarations/instance--ed474f463c0101a8ced31745.md) | 429 | `declaration-track:ed474f463c0101a8ced3174558d03409d93022883e9095440f49e54effb7e1f6` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean/declarations/instance--f10121c02d3f979cd7f707b1.md) | 447 | `declaration-track:f10121c02d3f979cd7f707b17764a2eafc6629e2491c5df4b978e8b692cb3c70` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean/declarations/instance--23894c074872820198b11d33.md) | 541 | `declaration-track:23894c074872820198b11d3386675eaeadad5a4f0bf000a7ae8c1b0d92385447` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean/declarations/instance--51a1c9131fb5490313df42d0.md) | 553 | `declaration-track:51a1c9131fb5490313df42d04bf929044b8a8d93beb09d4bae3a4e37aef507b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
