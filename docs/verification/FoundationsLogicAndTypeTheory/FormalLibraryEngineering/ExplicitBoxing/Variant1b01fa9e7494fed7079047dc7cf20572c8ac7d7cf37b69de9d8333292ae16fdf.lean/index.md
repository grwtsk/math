# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExplicitBoxing.Variant1b01fa9e7494fed7079047dc7cf20572c8ac7d7cf37b69de9d8333292ae16fdf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "369c3ef3621873e9550f59326dbd6bea475af529",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variant1b01fa9e7494fed7079047dc7cf20572c8ac7d7cf37b69de9d8333292ae16fdf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variant1b01fa9e7494fed7079047dc7cf20572c8ac7d7cf37b69de9d8333292ae16fdf.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variant1b01fa9e7494fed7079047dc7cf20572c8ac7d7cf37b69de9d8333292ae16fdf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `369c3ef3621873e9550f59326dbd6bea475af529`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variant1b01fa9e7494fed7079047dc7cf20572c8ac7d7cf37b69de9d8333292ae16fdf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variant1b01fa9e7494fed7079047dc7cf20572c8ac7d7cf37b69de9d8333292ae16fdf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.LCNF.ElimDead` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.PhaseExt` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.AuxDeclCache` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Runtime` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [requiresBoxedVersion](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variant1b01fa9e7494fed7079047dc7cf20572c8ac7d7cf37b69de9d8333292ae16fdf.lean/declarations/requiresboxedversion--ec7c3cdc91f57005960f7cb1.md) | 38 | `declaration-track:ec7c3cdc91f57005960f7cb1233a7909d02d71228557d77cbb7fdf8e88a05cc6` |
| 2 | `def` | [mkBoxedVersion](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variant1b01fa9e7494fed7079047dc7cf20572c8ac7d7cf37b69de9d8333292ae16fdf.lean/declarations/mkboxedversion--bb80ea7a5195c73f5e9439e1.md) | 54 | `declaration-track:bb80ea7a5195c73f5e9439e1b4d1dda8701e21e2ab7477c7dabe11fea99849ec` |
| 3 | `def` | [addBoxedVersions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variant1b01fa9e7494fed7079047dc7cf20572c8ac7d7cf37b69de9d8333292ae16fdf.lean/declarations/addboxedversions--f6f5bb5d8a446c492af26ee9.md) | 88 | `declaration-track:f6f5bb5d8a446c492af26ee993889175c21202ab05b491489aacc3ad7e3b5adf` |
| 4 | `structure` | [Ctx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variant1b01fa9e7494fed7079047dc7cf20572c8ac7d7cf37b69de9d8333292ae16fdf.lean/declarations/ctx--d7d1d35d8defbe5215296b24.md) | 97 | `declaration-track:d7d1d35d8defbe5215296b24374b9ed9058e229d2ecf71508dc890fa5b475fe6` |
| 5 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variant1b01fa9e7494fed7079047dc7cf20572c8ac7d7cf37b69de9d8333292ae16fdf.lean/declarations/state--a2952cb11450ad851ef19511.md) | 107 | `declaration-track:a2952cb11450ad851ef195110d80ee5be54e26e0032eb961a846855a8183d70a` |
| 6 | `abbrev` | [BoxM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variant1b01fa9e7494fed7079047dc7cf20572c8ac7d7cf37b69de9d8333292ae16fdf.lean/declarations/boxm--d96083e53af234a794d2df2d.md) | 124 | `declaration-track:d96083e53af234a794d2df2db69062e9cd51b914788db5ab0c54f4d49b31bd9e` |
| 7 | `def` | [getResultType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variant1b01fa9e7494fed7079047dc7cf20572c8ac7d7cf37b69de9d8333292ae16fdf.lean/declarations/getresulttype--b20536458b58227fc531a7c1.md) | 127 | `declaration-track:b20536458b58227fc531a7c1b0a4667b5b16fada2a12d1dc673e7c714ba1c6df` |
| 8 | `def` | [typesEqvForBoxing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variant1b01fa9e7494fed7079047dc7cf20572c8ac7d7cf37b69de9d8333292ae16fdf.lean/declarations/typeseqvforboxing--e8e12a2dee5ec98c9e878ca7.md) | 129 | `declaration-track:e8e12a2dee5ec98c9e878ca7a58dbc1b3ced9099ca98ae512b864e3b3e31fa66` |
| 9 | `def` | [isExpensiveConstantValueBoxing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variant1b01fa9e7494fed7079047dc7cf20572c8ac7d7cf37b69de9d8333292ae16fdf.lean/declarations/isexpensiveconstantvalueboxing--339f235aa3d5271c0f9a3128.md) | 137 | `declaration-track:339f235aa3d5271c0f9a31284ba07746090853105b175dc57ff1ae5685f020f3` |
| 10 | `def` | [mkCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variant1b01fa9e7494fed7079047dc7cf20572c8ac7d7cf37b69de9d8333292ae16fdf.lean/declarations/mkcast--2707497a1a99e8dcbcb3ae1f.md) | 153 | `declaration-track:2707497a1a99e8dcbcb3ae1f36f2348a92496179ea654fb492bc837875f68721` |
| 11 | `def` | [castVarIfNeeded](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variant1b01fa9e7494fed7079047dc7cf20572c8ac7d7cf37b69de9d8333292ae16fdf.lean/declarations/castvarifneeded--bba0f93a885c14ace1a7c0bb.md) | 193 | `declaration-track:bba0f93a885c14ace1a7c0bbed463c064f15a40f607e513580044f18d5d67219` |
| 12 | `def` | [castArgIfNeeded](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variant1b01fa9e7494fed7079047dc7cf20572c8ac7d7cf37b69de9d8333292ae16fdf.lean/declarations/castargifneeded--641372b36d116ac0d69d5783.md) | 204 | `declaration-track:641372b36d116ac0d69d57833782524f5eb6c58040f3b21a8afb787d056eb44b` |
| 13 | `def` | [castArgsIfNeededAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variant1b01fa9e7494fed7079047dc7cf20572c8ac7d7cf37b69de9d8333292ae16fdf.lean/declarations/castargsifneededaux--c9102fa3bf8db4f42605cc39.md) | 210 | `declaration-track:c9102fa3bf8db4f42605cc3931228ff65b1376b84d07f858d530c8fddd556d23` |
| 14 | `def` | [castArgsIfNeeded](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variant1b01fa9e7494fed7079047dc7cf20572c8ac7d7cf37b69de9d8333292ae16fdf.lean/declarations/castargsifneeded--42c44410a3dddcf9ff96e649.md) | 231 | `declaration-track:42c44410a3dddcf9ff96e649df87a953a705cfd44ea47141ebcae37ce6f4af83` |
| 15 | `def` | [boxArgsIfNeeded](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variant1b01fa9e7494fed7079047dc7cf20572c8ac7d7cf37b69de9d8333292ae16fdf.lean/declarations/boxargsifneeded--8a3ba838f526a436e1f9eb23.md) | 238 | `declaration-track:8a3ba838f526a436e1f9eb23fb3a1e362ae7b407033d73a07be129e904a002d4` |
| 16 | `def` | [unboxResultIfNeeded](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variant1b01fa9e7494fed7079047dc7cf20572c8ac7d7cf37b69de9d8333292ae16fdf.lean/declarations/unboxresultifneeded--753f6a28b103c4126f20c8f9.md) | 244 | `declaration-track:753f6a28b103c4126f20c8f9913ef4aab1c75a4996d6c22c1ead582eaada8575` |
| 17 | `def` | [castResultIfNeeded](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variant1b01fa9e7494fed7079047dc7cf20572c8ac7d7cf37b69de9d8333292ae16fdf.lean/declarations/castresultifneeded--ce86cad3fc6c411999183181.md) | 253 | `declaration-track:ce86cad3fc6c411999183181e85ab5f99abcd7ed156babf012338f748ed5f2cf` |
| 18 | `def` | [Code.explicitBoxing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variant1b01fa9e7494fed7079047dc7cf20572c8ac7d7cf37b69de9d8333292ae16fdf.lean/declarations/code-explicitboxing--fe9e1c7757db65dd747f3923.md) | 269 | `declaration-track:fe9e1c7757db65dd747f3923613094af20885634d28cba0f4d9c2068ad7900cf` |
| 19 | `def` | [run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variant1b01fa9e7494fed7079047dc7cf20572c8ac7d7cf37b69de9d8333292ae16fdf.lean/declarations/run--56fc01380fb9a90c1bd62b4b.md) | 363 | `declaration-track:56fc01380fb9a90c1bd62b4b183f8f41349769ceda1c710ad7afd21ac10d9cf0` |
| 20 | `def` | [explicitBoxing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variant1b01fa9e7494fed7079047dc7cf20572c8ac7d7cf37b69de9d8333292ae16fdf.lean/declarations/explicitboxing--8db6fac154363093bd1e7724.md) | 377 | `declaration-track:8db6fac154363093bd1e7724451c7c8213415e2dd9d93567c0a82536ab32053f` |
| 21 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variant1b01fa9e7494fed7079047dc7cf20572c8ac7d7cf37b69de9d8333292ae16fdf.lean/declarations/builtin-initialize--15523d4c381fa1afb5228a5d.md) | 383 | `declaration-track:15523d4c381fa1afb5228a5d1717e48817b009e356ce8c22508115931b087180` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
