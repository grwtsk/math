# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Perm.Variantd6904d4d764cef21ee13fba6aa3d439dd98289344057337e47944c322db34142

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b08ecedda868a775aff18bb58b105974ff2d7899",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantd6904d4d764cef21ee13fba6aa3d439dd98289344057337e47944c322db34142.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantd6904d4d764cef21ee13fba6aa3d439dd98289344057337e47944c322db34142.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantd6904d4d764cef21ee13fba6aa3d439dd98289344057337e47944c322db34142.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b08ecedda868a775aff18bb58b105974ff2d7899`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantd6904d4d764cef21ee13fba6aa3d439dd98289344057337e47944c322db34142.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantd6904d4d764cef21ee13fba6aa3d439dd98289344057337e47944c322db34142.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.Perm` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.TakeDrop` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.List.Perm` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantd6904d4d764cef21ee13fba6aa3d439dd98289344057337e47944c322db34142.lean/declarations/perm--9a9bc8372766933b3c1f0051.md) | 32 | `declaration-track:9a9bc8372766933b3c1f0051271ce5a2731c8885a70b6bd20e78f4c42e142aaa` |
| 2 | `theorem` | [perm_iff_toList_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantd6904d4d764cef21ee13fba6aa3d439dd98289344057337e47944c322db34142.lean/declarations/perm-iff-tolist-perm--45073d0188f3a4c01857c3df.md) | 38 | `result-track:45073d0188f3a4c01857c3df7d8e2b7a7d713206e53b8400978d4e4ae57de956` |
| 3 | `theorem` | [perm_iff_toArray_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantd6904d4d764cef21ee13fba6aa3d439dd98289344057337e47944c322db34142.lean/declarations/perm-iff-toarray-perm--25ca413e2f6228d0a3dbbefb.md) | 47 | `result-track:25ca413e2f6228d0a3dbbefb6ec38cd009f881b3ff076dd1f632a1e90c5b5b71` |
| 4 | `theorem` | [Perm.of_toArray_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantd6904d4d764cef21ee13fba6aa3d439dd98289344057337e47944c322db34142.lean/declarations/perm-of-toarray-perm--22a95224e79deec4aa676f61.md) | 50 | `result-track:22a95224e79deec4aa676f617f64a37f9949b1ea102cb3ccb9e761a13070446d` |
| 5 | `theorem` | [Perm.toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantd6904d4d764cef21ee13fba6aa3d439dd98289344057337e47944c322db34142.lean/declarations/perm-toarray--dc4fc0f98083f8ebfb976f9a.md) | 53 | `result-track:dc4fc0f98083f8ebfb976f9a3c34ca2df54d3c262924224c45ddfc5035a352e8` |
| 6 | `theorem` | [Perm.refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantd6904d4d764cef21ee13fba6aa3d439dd98289344057337e47944c322db34142.lean/declarations/perm-refl--a457598f8ab0817f5ef9b914.md) | 62 | `result-track:a457598f8ab0817f5ef9b914a20a39a09374c7a1e6be1c1c84b4a64e9a156b56` |
| 7 | `theorem` | [Perm.rfl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantd6904d4d764cef21ee13fba6aa3d439dd98289344057337e47944c322db34142.lean/declarations/perm-rfl--92b4b838b50dc769c8171e85.md) | 66 | `result-track:92b4b838b50dc769c8171e8541899008cd6e4cf075143ce77494e550bbdfccd7` |
| 8 | `theorem` | [Perm.of_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantd6904d4d764cef21ee13fba6aa3d439dd98289344057337e47944c322db34142.lean/declarations/perm-of-eq--c51ec8deafba9c583b0694e8.md) | 68 | `result-track:c51ec8deafba9c583b0694e802e2e89a3d440754d26697b81c26eff6eb5d6c64` |
| 9 | `theorem` | [Perm.symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantd6904d4d764cef21ee13fba6aa3d439dd98289344057337e47944c322db34142.lean/declarations/perm-symm--0e7263b679919a925c8e1c4c.md) | 71 | `result-track:0e7263b679919a925c8e1c4ca15a7be7c0908bee880003d70f483ef1e4868eb8` |
| 10 | `theorem` | [Perm.trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantd6904d4d764cef21ee13fba6aa3d439dd98289344057337e47944c322db34142.lean/declarations/perm-trans--751d5affb2c306142cdd42cb.md) | 76 | `result-track:751d5affb2c306142cdd42cbb3194d7199f73738cbc37b9055fd8f98b54fa6ab` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantd6904d4d764cef21ee13fba6aa3d439dd98289344057337e47944c322db34142.lean/declarations/instance--f38ce2443e43e3a01dbc9d56.md) | 81 | `declaration-track:f38ce2443e43e3a01dbc9d5649c4b5127ffe955f46052a97cb36f18a90697b94` |
| 12 | `theorem` | [perm_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantd6904d4d764cef21ee13fba6aa3d439dd98289344057337e47944c322db34142.lean/declarations/perm-comm--870c555467a9613bdc116a24.md) | 84 | `result-track:870c555467a9613bdc116a2484878b3d9752a5c4019571e0836656863d7e6acf` |
| 13 | `theorem` | [Perm.size_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantd6904d4d764cef21ee13fba6aa3d439dd98289344057337e47944c322db34142.lean/declarations/perm-size-eq--c4ded5893b0610ca28e70b9b.md) | 86 | `result-track:c4ded5893b0610ca28e70b9b83b1629fbae30e83e5b1ede2988913181dc8ae18` |
| 14 | `theorem` | [Perm.mem_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantd6904d4d764cef21ee13fba6aa3d439dd98289344057337e47944c322db34142.lean/declarations/perm-mem-iff--00df933a37fd5d83d88cf13a.md) | 91 | `result-track:00df933a37fd5d83d88cf13aed10da7e04794b041a7966c656d0f73c01bf3309` |
| 15 | `theorem` | [Perm.append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantd6904d4d764cef21ee13fba6aa3d439dd98289344057337e47944c322db34142.lean/declarations/perm-append--6322f0e61a606ff71f64d384.md) | 100 | `result-track:6322f0e61a606ff71f64d384d070801e4dd6afda621c1d354ca0b428bbe4043c` |
| 16 | `theorem` | [Perm.push](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantd6904d4d764cef21ee13fba6aa3d439dd98289344057337e47944c322db34142.lean/declarations/perm-push--df56a10d7794938d4bf86e3a.md) | 109 | `result-track:df56a10d7794938d4bf86e3a734228a50f623adcc9e2cf055b0472bd481dba3e` |
| 17 | `theorem` | [Perm.push_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantd6904d4d764cef21ee13fba6aa3d439dd98289344057337e47944c322db34142.lean/declarations/perm-push-comm--233ae2bfded76eab0f9a025e.md) | 117 | `result-track:233ae2bfded76eab0f9a025e59a7cb0866af26add59130e485aaf1df0c1907f4` |
| 18 | `theorem` | [swap_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantd6904d4d764cef21ee13fba6aa3d439dd98289344057337e47944c322db34142.lean/declarations/swap-perm--159b87f30a8d8faa717c230a.md) | 124 | `result-track:159b87f30a8d8faa717c230a537727daabd266d5f243774a3457e6893caf038b` |
| 19 | `theorem` | [Perm.pairwise_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantd6904d4d764cef21ee13fba6aa3d439dd98289344057337e47944c322db34142.lean/declarations/perm-pairwise-iff--cc740bfd3cd8431669617ce4.md) | 129 | `result-track:cc740bfd3cd8431669617ce4732c4cf1e41f544869bb1a4e7f7cc5883d5c2568` |
| 20 | `theorem` | [Perm.pairwise](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantd6904d4d764cef21ee13fba6aa3d439dd98289344057337e47944c322db34142.lean/declarations/perm-pairwise--b8c7ca390ac1e63210f15c75.md) | 133 | `result-track:b8c7ca390ac1e63210f15c75b0c2b3baae762f05616d7251002f801e0f12fc07` |
| 21 | `theorem` | [extract](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantd6904d4d764cef21ee13fba6aa3d439dd98289344057337e47944c322db34142.lean/declarations/extract--d21019b620bb12024f2b5a90.md) | 140 | `result-track:d21019b620bb12024f2b5a90713dfa2b2552e7b8bda84d4d92241bfceb3d8756` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
