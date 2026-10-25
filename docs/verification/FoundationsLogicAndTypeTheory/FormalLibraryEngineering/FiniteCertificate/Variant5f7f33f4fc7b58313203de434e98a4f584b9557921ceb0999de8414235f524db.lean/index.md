# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteCertificate.Variant5f7f33f4fc7b58313203de434e98a4f584b9557921ceb0999de8414235f524db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8ecfd80cdaf11e906c1120bc83c74cb37d0601c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant5f7f33f4fc7b58313203de434e98a4f584b9557921ceb0999de8414235f524db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant5f7f33f4fc7b58313203de434e98a4f584b9557921ceb0999de8414235f524db.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant5f7f33f4fc7b58313203de434e98a4f584b9557921ceb0999de8414235f524db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8ecfd80cdaf11e906c1120bc83c74cb37d0601c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant5f7f33f4fc7b58313203de434e98a4f584b9557921ceb0999de8414235f524db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant5f7f33f4fc7b58313203de434e98a4f584b9557921ceb0999de8414235f524db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rationalTailBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant5f7f33f4fc7b58313203de434e98a4f584b9557921ceb0999de8414235f524db.lean/declarations/rationaltailbound--87938ceb65b0e32ad0d952f0.md) | 30 | `declaration-track:87938ceb65b0e32ad0d952f0dda8cedd27e63507285bd924f52f840c5b1166ed` |
| 2 | `theorem` | [rationalTailBound_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant5f7f33f4fc7b58313203de434e98a4f584b9557921ceb0999de8414235f524db.lean/declarations/rationaltailbound-lt--254ea6c0935e696583cf7911.md) | 37 | `result-track:254ea6c0935e696583cf791139c7af61cf8a0b4f9bdc232dec9f4c331022bca4` |
| 3 | `theorem` | [rationalTailBound_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant5f7f33f4fc7b58313203de434e98a4f584b9557921ceb0999de8414235f524db.lean/declarations/rationaltailbound-nonneg--56bfd72e43502b1cb29f69fb.md) | 41 | `result-track:56bfd72e43502b1cb29f69fbc703385afe20ab649876038c5cc35e889514e3b3` |
| 4 | `def` | [tailBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant5f7f33f4fc7b58313203de434e98a4f584b9557921ceb0999de8414235f524db.lean/declarations/tailbound--0837c0da9434c6e570e711f1.md) | 45 | `declaration-track:0837c0da9434c6e570e711f180c69f55eb7bd0385998bf70b82a4dc45f303302` |
| 5 | `theorem` | [tailBound_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant5f7f33f4fc7b58313203de434e98a4f584b9557921ceb0999de8414235f524db.lean/declarations/tailbound-lt--775b328ce6411bfb8dbcef8d.md) | 47 | `result-track:775b328ce6411bfb8dbcef8d04a7c66f42fab2fe126927acfb60a95ba373f9c9` |
| 6 | `theorem` | [tailBound_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant5f7f33f4fc7b58313203de434e98a4f584b9557921ceb0999de8414235f524db.lean/declarations/tailbound-nonneg--6877e6ce4d945895f5fae897.md) | 54 | `result-track:6877e6ce4d945895f5fae89754d18cd85cd32e6e74f0c61a42c49f7d94d6b768` |
| 7 | `theorem` | [spectral_lower_of_head_tail](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant5f7f33f4fc7b58313203de434e98a4f584b9557921ceb0999de8414235f524db.lean/declarations/spectral-lower-of-head-tail--03fba31cc80f1c0e13f7b20b.md) | 60 | `result-track:03fba31cc80f1c0e13f7b20b16b4097199fb28acd607215d43f29f0540032f6e` |
| 8 | `theorem` | [residual_upper_of_spectral_lower](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant5f7f33f4fc7b58313203de434e98a4f584b9557921ceb0999de8414235f524db.lean/declarations/residual-upper-of-spectral-lower--25b3b726e9122dbb4dc726fa.md) | 69 | `result-track:25b3b726e9122dbb4dc726fa4046b0370623955852186a3bfece847596d6aece` |
| 9 | `theorem` | [residual_negative_of_upper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant5f7f33f4fc7b58313203de434e98a4f584b9557921ceb0999de8414235f524db.lean/declarations/residual-negative-of-upper--c475d6c3fb5371068c3c7a60.md) | 79 | `result-track:c475d6c3fb5371068c3c7a60cf2fc682e3591f90be02d60eff6c13d856246b3f` |
| 10 | `structure` | [FinitePremises](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant5f7f33f4fc7b58313203de434e98a4f584b9557921ceb0999de8414235f524db.lean/declarations/finitepremises--e8f4f56abd4f4ef9e6f87231.md) | 99 | `declaration-track:e8f4f56abd4f4ef9e6f87231ea1be8a88a1bec3d2129528baf3817eb77a0f965` |
| 11 | `theorem` | [finite_bounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant5f7f33f4fc7b58313203de434e98a4f584b9557921ceb0999de8414235f524db.lean/declarations/finite-bounds--f65fee9c4f5c5bcd47947832.md) | 115 | `result-track:f65fee9c4f5c5bcd479478321cc1695fa4aeb3231031230cb9d9369afb949a0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
