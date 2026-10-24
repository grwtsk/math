# Verification target: GRWTSK.Algebra.LinearAlgebra.LinearMap.Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4683f2f57a5b62ac279b45b4d785b0b8a898a117",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4683f2f57a5b62ac279b45b4d785b0b8a898a117`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Charpoly.Coeff` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PiToModule.fromMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean/declarations/pitomodule-frommatrix--607a82a9ed09120ac69b3577.md) | 44 | `declaration-track:607a82a9ed09120ac69b3577d255f52feab40475b0105bf5abb834f6df8ffce2` |
| 2 | `theorem` | [PiToModule.fromMatrix_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean/declarations/pitomodule-frommatrix-apply--d9ace0b9cd7be74562aa935a.md) | 48 | `result-track:d9ace0b9cd7be74562aa935a250dddbe65807c446c6b0fef52fb395025162b58` |
| 3 | `theorem` | [PiToModule.fromMatrix_apply_single_one](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean/declarations/pitomodule-frommatrix-apply-single-one--9cd35a40470aaf19d309c1e1.md) | 53 | `result-track:9cd35a40470aaf19d309c1e14f7d254fd195792e9a604a111215c36f907ee3ff` |
| 4 | `def` | [PiToModule.fromEnd](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean/declarations/pitomodule-fromend--527aef82584f025bf09da6c5.md) | 61 | `declaration-track:527aef82584f025bf09da6c5c85b93698e3b32f8d7fcb98e3e674e2c084dccf0` |
| 5 | `theorem` | [PiToModule.fromEnd_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean/declarations/pitomodule-fromend-apply--76c14592d365305097583adf.md) | 65 | `result-track:76c14592d365305097583adf1429759187a6e6d9115b3fb8b8dc88a1efa356f0` |
| 6 | `theorem` | [PiToModule.fromEnd_apply_single_one](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean/declarations/pitomodule-fromend-apply-single-one--644f8dc97e568c6ba9ccacaa.md) | 70 | `result-track:644f8dc97e568c6ba9ccacaa43526ac8e7aac9f3c195331620133529aa1b29e9` |
| 7 | `theorem` | [PiToModule.fromEnd_injective](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean/declarations/pitomodule-fromend-injective--f0891f2ce807289a1b8b5c29.md) | 78 | `result-track:f0891f2ce807289a1b8b5c29dd27a60169ee93bf7fb24f5482e1ee898b704558` |
| 8 | `def` | [Matrix.Represents](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean/declarations/matrix-represents--94671fde9a48b5c0d491f9fa.md) | 94 | `declaration-track:94671fde9a48b5c0d491f9fa75ac7ce0e0b88348c75ff34c728fe61c7601282a` |
| 9 | `theorem` | [Matrix.Represents.congr_fun](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean/declarations/matrix-represents-congr-fun--197b4a7eb84b755ce041fce8.md) | 100 | `result-track:197b4a7eb84b755ce041fce889bf0a3865733199ea1720c304365ec90f110a93` |
| 10 | `theorem` | [Matrix.represents_iff](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean/declarations/matrix-represents-iff--b69acc9b2c52cb3ef07ca4a9.md) | 105 | `result-track:b69acc9b2c52cb3ef07ca4a9288e7a87d70feaaf05bfa00840805542dd1d4b36` |
| 11 | `theorem` | [Matrix.represents_iff'](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean/declarations/matrix-represents-iff--304d3f6fd88263f0b12030c1.md) | 110 | `result-track:304d3f6fd88263f0b12030c1f5e52aaf28eb2e3c15ebc7d0a3b37a11841822f1` |
| 12 | `theorem` | [Matrix.Represents.mul](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean/declarations/matrix-represents-mul--1a609715e8a0c38fcb227625.md) | 124 | `result-track:1a609715e8a0c38fcb22762567acbd8d10954a92d0799234e49a4359e712feef` |
| 13 | `theorem` | [Matrix.Represents.one](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean/declarations/matrix-represents-one--5eed06cd0972dcb775733744.md) | 134 | `result-track:5eed06cd0972dcb775733744408d88ab1beafc4ab8382ffeb422f3763e55d0de` |
| 14 | `theorem` | [Matrix.Represents.add](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean/declarations/matrix-represents-add--f47a0764760e1de19de7bc64.md) | 141 | `result-track:f47a0764760e1de19de7bc647beda99018b675bf1fe2b721a70f90a087df68a3` |
| 15 | `theorem` | [Matrix.Represents.zero](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean/declarations/matrix-represents-zero--85e73335cc19fc3778181680.md) | 146 | `result-track:85e73335cc19fc37781816804e9a2e1f4627470304032aa71f8619d6aba3fd9d` |
| 16 | `theorem` | [Matrix.Represents.smul](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean/declarations/matrix-represents-smul--9918d0942810fad90e112fa4.md) | 151 | `result-track:9918d0942810fad90e112fa40eea00d7a66e638b8c4abd7191d4212c950653f4` |
| 17 | `theorem` | [Matrix.Represents.eq](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean/declarations/matrix-represents-eq--79d8adda34f8f3ba54b96e8f.md) | 157 | `result-track:79d8adda34f8f3ba54b96e8fddad689dc67e548a0f85da4a8b7904ccdc512030` |
| 18 | `def` | [Matrix.isRepresentation](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean/declarations/matrix-isrepresentation--a20213bca7f834ded3ccbe7f.md) | 166 | `declaration-track:a20213bca7f834ded3ccbe7fbf9337b763cd685be8743e79d15e76722ff19814` |
| 19 | `def` | [Matrix.isRepresentation.toEnd](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean/declarations/matrix-isrepresentation-toend--061170750f74bfcc8a0ebb53.md) | 176 | `declaration-track:061170750f74bfcc8a0ebb53ce3baa4e68707fccc3a689c0b5efd05b366c64df` |
| 20 | `theorem` | [Matrix.isRepresentation.toEnd_represents](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean/declarations/matrix-isrepresentation-toend-represents--407cb0a3bd77a3cbec77f17d.md) | 187 | `result-track:407cb0a3bd77a3cbec77f17d127dcbc0ceec6b08002fec0abdf72c43568d44e4` |
| 21 | `theorem` | [Matrix.isRepresentation.eq_toEnd_of_represents](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean/declarations/matrix-isrepresentation-eq-toend-of-represents--722a90d704f379b7a47d4113.md) | 192 | `result-track:722a90d704f379b7a47d41138fd10bb41ddec444a58759b6b0e88d2e70c0a69a` |
| 22 | `theorem` | [Matrix.isRepresentation.toEnd_exists_mem_ideal](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean/declarations/matrix-isrepresentation-toend-exists-mem-ideal--26a837ea92d4883507bd7c24.md) | 198 | `result-track:26a837ea92d4883507bd7c24506ec7c80a0b8bd3e94907de702c013dd06d897a` |
| 23 | `theorem` | [Matrix.isRepresentation.toEnd_surjective](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean/declarations/matrix-isrepresentation-toend-surjective--cb9867637fbe886ec3e059e1.md) | 217 | `result-track:cb9867637fbe886ec3e059e1c260b23ba73be05edf604c34cd35808c30187d13` |
| 24 | `theorem` | [LinearMap.exists_monic_and_coeff_mem_pow_and_aeval_eq_zero_of_range_le_smul](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean/declarations/linearmap-exists-monic-and-coeff-mem-pow-and-aeval-eq-zero-of-range-le-s--06ba36986253d91442797257.md) | 233 | `result-track:06ba36986253d91442797257d42e98db75b0f9a0edd6397178bfb7d8676933c3` |
| 25 | `theorem` | [LinearMap.exists_monic_and_aeval_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean/declarations/linearmap-exists-monic-and-aeval-eq-zero--234b9430375789e14ff59011.md) | 256 | `result-track:234b9430375789e14ff59011a71c9fcb9d0481a6d44747c386661dc922ca9fc3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
