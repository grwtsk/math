# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PowMod.Variantd465da0e307f2c2797b66807b5a8bf05806c88dfa95887c0861ab251637e5640

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "feaa81e16cd9d879362c37595ae1693d9d0ec34f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantd465da0e307f2c2797b66807b5a8bf05806c88dfa95887c0861ab251637e5640.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantd465da0e307f2c2797b66807b5a8bf05806c88dfa95887c0861ab251637e5640.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantd465da0e307f2c2797b66807b5a8bf05806c88dfa95887c0861ab251637e5640.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `feaa81e16cd9d879362c37595ae1693d9d0ec34f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantd465da0e307f2c2797b66807b5a8bf05806c88dfa95887c0861ab251637e5640.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantd465da0e307f2c2797b66807b5a8bf05806c88dfa95887c0861ab251637e5640.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.NormNum.Pow` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsNatPowModT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantd465da0e307f2c2797b66807b5a8bf05806c88dfa95887c0861ab251637e5640.lean/declarations/isnatpowmodt--bfbf630df2023fa76a7ba632.md) | 44 | `declaration-track:bfbf630df2023fa76a7ba6328cb078c17150e0d9952c76ad9e796e741eff9bf9` |
| 2 | `theorem` | [IsNatPowModT.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantd465da0e307f2c2797b66807b5a8bf05806c88dfa95887c0861ab251637e5640.lean/declarations/isnatpowmodt-run--1e51c7953660bb72135463be.md) | 47 | `result-track:1e51c7953660bb72135463bec38d60670cd09859392cfdea690df42daaeadc89` |
| 3 | `theorem` | [IsNatPowModT.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantd465da0e307f2c2797b66807b5a8bf05806c88dfa95887c0861ab251637e5640.lean/declarations/isnatpowmodt-trans--e4439e6fc7070da12aa41962.md) | 51 | `result-track:e4439e6fc7070da12aa41962f2e8e4a60b34922b5b78658bb591f21d38eb9f75` |
| 4 | `theorem` | [IsNatPowModT.bit0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantd465da0e307f2c2797b66807b5a8bf05806c88dfa95887c0861ab251637e5640.lean/declarations/isnatpowmodt-bit0--7ca561b2ef4e837d941ff6a1.md) | 55 | `result-track:7ca561b2ef4e837d941ff6a16c820287ee218bdc28d76c3d6eecd8be829c0598` |
| 5 | `theorem` | [natPow_zero_natMod_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantd465da0e307f2c2797b66807b5a8bf05806c88dfa95887c0861ab251637e5640.lean/declarations/natpow-zero-natmod-zero--f54e8e251d29aac1db6e6e65.md) | 59 | `result-track:f54e8e251d29aac1db6e6e6528eb4eca2200b1726a6291e31fa3b09e57a43b07` |
| 6 | `theorem` | [natPow_zero_natMod_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantd465da0e307f2c2797b66807b5a8bf05806c88dfa95887c0861ab251637e5640.lean/declarations/natpow-zero-natmod-one--0cef3e46498a575c799db777.md) | 62 | `result-track:0cef3e46498a575c799db7773c4b0551dce738d0726b9068cd28146ac73da2c7` |
| 7 | `theorem` | [natPow_zero_natMod_succ_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantd465da0e307f2c2797b66807b5a8bf05806c88dfa95887c0861ab251637e5640.lean/declarations/natpow-zero-natmod-succ-succ--915c0828eb69aa1df970ca27.md) | 65 | `result-track:915c0828eb69aa1df970ca2780244cd0b9fb92b00ea4bd2a5c6e254fd4e5f855` |
| 8 | `theorem` | [natPow_one_natMod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantd465da0e307f2c2797b66807b5a8bf05806c88dfa95887c0861ab251637e5640.lean/declarations/natpow-one-natmod--def31c31c64b7617b5c9eed9.md) | 70 | `result-track:def31c31c64b7617b5c9eed9ff41eeaaac20712726d5725e3959f51102a801ce` |
| 9 | `theorem` | [IsNatPowModT.bit1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantd465da0e307f2c2797b66807b5a8bf05806c88dfa95887c0861ab251637e5640.lean/declarations/isnatpowmodt-bit1--403699bc3c67f4eaaa129c18.md) | 72 | `result-track:403699bc3c67f4eaaa129c181c678694ba02586a016c75f9b266f79d73f7a44e` |
| 10 | `def` | [evalNatPowMod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantd465da0e307f2c2797b66807b5a8bf05806c88dfa95887c0861ab251637e5640.lean/declarations/evalnatpowmod--9c4f06a20dd8615af05d91af.md) | 82 | `declaration-track:9c4f06a20dd8615af05d91afc0d83d871467a22ec90a55c1e0d7b408ad844afe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
