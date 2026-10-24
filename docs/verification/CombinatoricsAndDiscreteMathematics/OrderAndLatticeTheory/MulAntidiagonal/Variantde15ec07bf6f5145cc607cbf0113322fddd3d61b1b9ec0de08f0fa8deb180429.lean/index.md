# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.MulAntidiagonal.Variantde15ec07bf6f5145cc607cbf0113322fddd3d61b1b9ec0de08f0fa8deb180429

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e2a870d932d69632576621be20e0d57429493ff",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantde15ec07bf6f5145cc607cbf0113322fddd3d61b1b9ec0de08f0fa8deb180429.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantde15ec07bf6f5145cc607cbf0113322fddd3d61b1b9ec0de08f0fa8deb180429.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantde15ec07bf6f5145cc607cbf0113322fddd3d61b1b9ec0de08f0fa8deb180429.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e2a870d932d69632576621be20e0d57429493ff`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantde15ec07bf6f5145cc607cbf0113322fddd3d61b1b9ec0de08f0fa8deb180429.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantde15ec07bf6f5145cc607cbf0113322fddd3d61b1b9ec0de08f0fa8deb180429.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.WellFoundedSet` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulAntidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantde15ec07bf6f5145cc607cbf0113322fddd3d61b1b9ec0de08f0fa8deb180429.lean/declarations/mulantidiagonal--8599706461f1c968c237cb7a.md) | 26 | `declaration-track:8599706461f1c968c237cb7a88057ac5f194e3be3c203df087a750d21122a2cd` |
| 2 | `theorem` | [mem_mulAntidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantde15ec07bf6f5145cc607cbf0113322fddd3d61b1b9ec0de08f0fa8deb180429.lean/declarations/mem-mulantidiagonal--ee33d9052b76c8c03c0a6167.md) | 32 | `result-track:ee33d9052b76c8c03c0a616783652bb4da46a78b66e08ef2ec297a15ddf6be9b` |
| 3 | `theorem` | [mulAntidiagonal_mono_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantde15ec07bf6f5145cc607cbf0113322fddd3d61b1b9ec0de08f0fa8deb180429.lean/declarations/mulantidiagonal-mono-left--1b10275eae48fe5dcbadb83e.md) | 38 | `result-track:1b10275eae48fe5dcbadb83e83f636c40cbedddcd4bf48935dc3a677efbf20b7` |
| 4 | `theorem` | [mulAntidiagonal_mono_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantde15ec07bf6f5145cc607cbf0113322fddd3d61b1b9ec0de08f0fa8deb180429.lean/declarations/mulantidiagonal-mono-right--a986efab82288782de5938d7.md) | 44 | `result-track:a986efab82288782de5938d713fe62d5ee894247c3d26cddd79b819ceb4aaf26` |
| 5 | `theorem` | [swap_mem_mulAntidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantde15ec07bf6f5145cc607cbf0113322fddd3d61b1b9ec0de08f0fa8deb180429.lean/declarations/swap-mem-mulantidiagonal--c0d9d47b45b22c6ad1ba93a1.md) | 53 | `result-track:c0d9d47b45b22c6ad1ba93a17dd1008b9eb2eba35a8aca3d7aa45ff998478489` |
| 6 | `theorem` | [swap_mem_mulAntidiagonal_aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantde15ec07bf6f5145cc607cbf0113322fddd3d61b1b9ec0de08f0fa8deb180429.lean/declarations/swap-mem-mulantidiagonal-aux--bb1e551caee1351d6b0b5e5a.md) | 60 | `result-track:bb1e551caee1351d6b0b5e5a5022b290e3f8f881aede24d25f6525370f224493` |
| 7 | `theorem` | [fst_eq_fst_iff_snd_eq_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantde15ec07bf6f5145cc607cbf0113322fddd3d61b1b9ec0de08f0fa8deb180429.lean/declarations/fst-eq-fst-iff-snd-eq-snd--e79c97df61068e50765b79a2.md) | 74 | `result-track:e79c97df61068e50765b79a2a5215ce87fdeb792d7f2546ddc8cf810ced4b623` |
| 8 | `theorem` | [eq_of_fst_eq_fst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantde15ec07bf6f5145cc607cbf0113322fddd3d61b1b9ec0de08f0fa8deb180429.lean/declarations/eq-of-fst-eq-fst--16410006019e319380178566.md) | 89 | `result-track:16410006019e319380178566f748ceb5344c8bdb12963bc379e2942abeda7c5c` |
| 9 | `theorem` | [eq_of_snd_eq_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantde15ec07bf6f5145cc607cbf0113322fddd3d61b1b9ec0de08f0fa8deb180429.lean/declarations/eq-of-snd-eq-snd--802b44f1f155c6c937e3260b.md) | 95 | `result-track:802b44f1f155c6c937e3260ba0dee846bfbc08efacae17252296347417eddebe` |
| 10 | `theorem` | [eq_of_fst_le_fst_of_snd_le_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantde15ec07bf6f5145cc607cbf0113322fddd3d61b1b9ec0de08f0fa8deb180429.lean/declarations/eq-of-fst-le-fst-of-snd-le-snd--527c92d0a73de3426091e171.md) | 107 | `result-track:527c92d0a73de3426091e1715159a5e6eb2d2fb65630235a5a0953e40203b8aa` |
| 11 | `theorem` | [finite_of_isPwo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantde15ec07bf6f5145cc607cbf0113322fddd3d61b1b9ec0de08f0fa8deb180429.lean/declarations/finite-of-ispwo--609d12c82cb07323a8bf28cf.md) | 119 | `result-track:609d12c82cb07323a8bf28cf7385ac49db6af2b7381e88d2ac90195cfee2667c` |
| 12 | `theorem` | [finite_of_isWf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantde15ec07bf6f5145cc607cbf0113322fddd3d61b1b9ec0de08f0fa8deb180429.lean/declarations/finite-of-iswf--19b72eb4c721151d9e470fbf.md) | 136 | `result-track:19b72eb4c721151d9e470fbf745186a4c36f605979e6623d47e263900b70cff9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
