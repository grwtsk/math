# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.MulAntidiagonal.Varianta0980ae4d2b5328aa6ea3de5803bc37f175994afed3d0a0641cd15fb358fbb8a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d1fd0019d4599b7117bf0cfdb21a9051b0c6fea",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Varianta0980ae4d2b5328aa6ea3de5803bc37f175994afed3d0a0641cd15fb358fbb8a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Varianta0980ae4d2b5328aa6ea3de5803bc37f175994afed3d0a0641cd15fb358fbb8a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Varianta0980ae4d2b5328aa6ea3de5803bc37f175994afed3d0a0641cd15fb358fbb8a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d1fd0019d4599b7117bf0cfdb21a9051b0c6fea`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Varianta0980ae4d2b5328aa6ea3de5803bc37f175994afed3d0a0641cd15fb358fbb8a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Varianta0980ae4d2b5328aa6ea3de5803bc37f175994afed3d0a0641cd15fb358fbb8a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.WellFoundedSet` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulAntidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Varianta0980ae4d2b5328aa6ea3de5803bc37f175994afed3d0a0641cd15fb358fbb8a.lean/declarations/mulantidiagonal--8ba21d90f7e3ceaf82e42d45.md) | 34 | `declaration-track:8ba21d90f7e3ceaf82e42d459bd90d6f1490019fc49496b4b0fd01a64f792ce1` |
| 2 | `theorem` | [mem_mulAntidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Varianta0980ae4d2b5328aa6ea3de5803bc37f175994afed3d0a0641cd15fb358fbb8a.lean/declarations/mem-mulantidiagonal--7158bc870e907ccb5e08108c.md) | 40 | `result-track:7158bc870e907ccb5e08108c046d9670a065c418860cab6be91dc97bdf3cd163` |
| 3 | `theorem` | [mulAntidiagonal_mono_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Varianta0980ae4d2b5328aa6ea3de5803bc37f175994afed3d0a0641cd15fb358fbb8a.lean/declarations/mulantidiagonal-mono-left--d8a26046f3d60cf86d9a6829.md) | 46 | `result-track:d8a26046f3d60cf86d9a68297a54a9de905fae2cbbdfad3ff0ada2087f92857b` |
| 4 | `theorem` | [mulAntidiagonal_mono_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Varianta0980ae4d2b5328aa6ea3de5803bc37f175994afed3d0a0641cd15fb358fbb8a.lean/declarations/mulantidiagonal-mono-right--eb889ef8799355b59a83613c.md) | 52 | `result-track:eb889ef8799355b59a83613c2e4840874beda1a818716d2d0516c1ecbfad355f` |
| 5 | `theorem` | [swap_mem_mulAntidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Varianta0980ae4d2b5328aa6ea3de5803bc37f175994afed3d0a0641cd15fb358fbb8a.lean/declarations/swap-mem-mulantidiagonal--98d683629b20507717d202c2.md) | 61 | `result-track:98d683629b20507717d202c2110e6da24fe3348a097d18be3479ed1b96b08b37` |
| 6 | `theorem` | [swap_mem_mulAntidiagonal_aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Varianta0980ae4d2b5328aa6ea3de5803bc37f175994afed3d0a0641cd15fb358fbb8a.lean/declarations/swap-mem-mulantidiagonal-aux--a96fba9f92de2c37f7af2f16.md) | 68 | `result-track:a96fba9f92de2c37f7af2f167a96de876f8c5f884bb8ae5ca69572d10fc7d602` |
| 7 | `theorem` | [fst_eq_fst_iff_snd_eq_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Varianta0980ae4d2b5328aa6ea3de5803bc37f175994afed3d0a0641cd15fb358fbb8a.lean/declarations/fst-eq-fst-iff-snd-eq-snd--102a42da896f8143f3b3aefb.md) | 82 | `result-track:102a42da896f8143f3b3aefb70e3c604267fb77ebd15ee9da80efbd2adad32dc` |
| 8 | `theorem` | [eq_of_fst_eq_fst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Varianta0980ae4d2b5328aa6ea3de5803bc37f175994afed3d0a0641cd15fb358fbb8a.lean/declarations/eq-of-fst-eq-fst--1a1b653b3c6abdc80fa415d5.md) | 97 | `result-track:1a1b653b3c6abdc80fa415d552e67dff1f10f6a66fb6236fd8561af5c5da80ea` |
| 9 | `theorem` | [eq_of_snd_eq_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Varianta0980ae4d2b5328aa6ea3de5803bc37f175994afed3d0a0641cd15fb358fbb8a.lean/declarations/eq-of-snd-eq-snd--f1fbf3cbdddb2923d1769f78.md) | 103 | `result-track:f1fbf3cbdddb2923d1769f78252f5c9fed59e4517c27398b16b2a2cc7de6db5f` |
| 10 | `theorem` | [eq_of_fst_le_fst_of_snd_le_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Varianta0980ae4d2b5328aa6ea3de5803bc37f175994afed3d0a0641cd15fb358fbb8a.lean/declarations/eq-of-fst-le-fst-of-snd-le-snd--c6bd5ea9f8cb9d5f084ae2f9.md) | 115 | `result-track:c6bd5ea9f8cb9d5f084ae2f9265e2971063e10f103da33a7966c25bc6350c7fb` |
| 11 | `theorem` | [finite_of_isPwo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Varianta0980ae4d2b5328aa6ea3de5803bc37f175994afed3d0a0641cd15fb358fbb8a.lean/declarations/finite-of-ispwo--9a4dea83b7c6f22721062f69.md) | 127 | `result-track:9a4dea83b7c6f22721062f69143e93f00835a5f7fba24b8b4de9b50c1c0ea498` |
| 12 | `theorem` | [finite_of_isWf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Varianta0980ae4d2b5328aa6ea3de5803bc37f175994afed3d0a0641cd15fb358fbb8a.lean/declarations/finite-of-iswf--047d7634b416c9835c80e4b5.md) | 144 | `result-track:047d7634b416c9835c80e4b5ef9386d3a609ae82db8d4a63e0c33658799e1a32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
