# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Functor.Variantd9208da66486300f27f8d4180f4cf18969a83a88a46aeb6e6d807f76b24ce277

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "947348af00ea8848d31d0dca6814ed260c6573df",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variantd9208da66486300f27f8d4180f4cf18969a83a88a46aeb6e6d807f76b24ce277.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variantd9208da66486300f27f8d4180f4cf18969a83a88a46aeb6e6d807f76b24ce277.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variantd9208da66486300f27f8d4180f4cf18969a83a88a46aeb6e6d807f76b24ce277.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `947348af00ea8848d31d0dca6814ed260c6573df`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variantd9208da66486300f27f8d4180f4cf18969a83a88a46aeb6e6d807f76b24ce277.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variantd9208da66486300f27f8d4180f4cf18969a83a88a46aeb6e6d807f76b24ce277.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice.Image` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Notation` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [monad](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variantd9208da66486300f27f8d4180f4cf18969a83a88a46aeb6e6d807f76b24ce277.lean/declarations/monad--b4915ca8e1b9b3ae5c55b84c.md) | 40 | `declaration-track:b4915ca8e1b9b3ae5c55b84c3204f2be98f9f3bbfd088e5d9fac0c14e45446bb` |
| 2 | `theorem` | [bind_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variantd9208da66486300f27f8d4180f4cf18969a83a88a46aeb6e6d807f76b24ce277.lean/declarations/bind-def--baa9b23b6702b0d4ea25e142.md) | 50 | `result-track:baa9b23b6702b0d4ea25e142161c5fae2e80ab89eb493ca08c6010df740e8da2` |
| 3 | `theorem` | [fmap_eq_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variantd9208da66486300f27f8d4180f4cf18969a83a88a46aeb6e6d807f76b24ce277.lean/declarations/fmap-eq-image--d0a8b3f2460636f51c9a1e99.md) | 54 | `result-track:d0a8b3f2460636f51c9a1e992213149af72ab3f7cd9ae076f819085041160bed` |
| 4 | `theorem` | [seq_eq_set_seq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variantd9208da66486300f27f8d4180f4cf18969a83a88a46aeb6e6d807f76b24ce277.lean/declarations/seq-eq-set-seq--835f27f1b7b36a507be9ef0b.md) | 58 | `result-track:835f27f1b7b36a507be9ef0b2f838216ce863734c680208cf93f9a79a521cf87` |
| 5 | `theorem` | [pure_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variantd9208da66486300f27f8d4180f4cf18969a83a88a46aeb6e6d807f76b24ce277.lean/declarations/pure-def--b6a9aff1a9619ec638a47db7.md) | 62 | `result-track:b6a9aff1a9619ec638a47db79d386a1d2ded7e6146f7d8ceb7bee062fc6fe447` |
| 6 | `theorem` | [image2_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variantd9208da66486300f27f8d4180f4cf18969a83a88a46aeb6e6d807f76b24ce277.lean/declarations/image2-def--62528305d7371a0ed54be7ed.md) | 67 | `result-track:62528305d7371a0ed54be7ed00c74a1946ff7efef67c4da1f4eade8bd281b6a8` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variantd9208da66486300f27f8d4180f4cf18969a83a88a46aeb6e6d807f76b24ce277.lean/declarations/instance--b4d0ba131d4a3bafdd8c3994.md) | 72 | `declaration-track:b4d0ba131d4a3bafdd8c39940528e361f929520806f2929acd3276271d61f80b` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variantd9208da66486300f27f8d4180f4cf18969a83a88a46aeb6e6d807f76b24ce277.lean/declarations/instance--2291a152d3075106c7ec6f21.md) | 79 | `declaration-track:2291a152d3075106c7ec6f2165a622f32d94db41a87e45026ac3f6db8e15d83c` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variantd9208da66486300f27f8d4180f4cf18969a83a88a46aeb6e6d807f76b24ce277.lean/declarations/instance--5517e0e67b62dc22d812e1ae.md) | 82 | `declaration-track:5517e0e67b62dc22d812e1ae7c82f244127550054f8ff0f6248b4d04155f7fef` |
| 10 | `theorem` | [mem_coe_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variantd9208da66486300f27f8d4180f4cf18969a83a88a46aeb6e6d807f76b24ce277.lean/declarations/mem-coe-of-mem--8aba3a2005929dababae5987.md) | 91 | `result-track:8aba3a2005929dababae59871e0c501470fc5f24c917379343adc1c058e34194` |
| 11 | `theorem` | [coe_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variantd9208da66486300f27f8d4180f4cf18969a83a88a46aeb6e6d807f76b24ce277.lean/declarations/coe-subset--ac1a0b3afe2dda926335124f.md) | 94 | `result-track:ac1a0b3afe2dda926335124f6c3b629e51c921852657680895dbf871c0984074` |
| 12 | `theorem` | [mem_of_mem_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variantd9208da66486300f27f8d4180f4cf18969a83a88a46aeb6e6d807f76b24ce277.lean/declarations/mem-of-mem-coe--0f7dfb093ec2aa7cb646d145.md) | 97 | `result-track:0f7dfb093ec2aa7cb646d14581a54420c1fc542c0c8ef0970a14be23e3675c40` |
| 13 | `theorem` | [eq_univ_of_coe_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variantd9208da66486300f27f8d4180f4cf18969a83a88a46aeb6e6d807f76b24ce277.lean/declarations/eq-univ-of-coe-eq--9301da7f890d3e3a863d9837.md) | 100 | `result-track:9301da7f890d3e3a863d983750e864a5d747dd1702f3778e5f42976e2c162531` |
| 14 | `theorem` | [image_coe_eq_restrict_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variantd9208da66486300f27f8d4180f4cf18969a83a88a46aeb6e6d807f76b24ce277.lean/declarations/image-coe-eq-restrict-image--7b4777a3f4b7dcfa0c9287c2.md) | 103 | `result-track:7b4777a3f4b7dcfa0c9287c2003429cf43662c9ff3e3e7516c32439f3684833c` |
| 15 | `theorem` | [coe_eq_image_val](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variantd9208da66486300f27f8d4180f4cf18969a83a88a46aeb6e6d807f76b24ce277.lean/declarations/coe-eq-image-val--8e60abd2068727c0bfcb89c3.md) | 115 | `result-track:8e60abd2068727c0bfcb89c3a804ef459a37eee0d8c7d1608af52427b98b87a0` |
| 16 | `theorem` | [mem_image_val_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variantd9208da66486300f27f8d4180f4cf18969a83a88a46aeb6e6d807f76b24ce277.lean/declarations/mem-image-val-of-mem--30e3b38b0d1464f8233fa5fd.md) | 123 | `result-track:30e3b38b0d1464f8233fa5fd4179346871238462ff4b40a5ad58c7f26aef7cc7` |
| 17 | `theorem` | [image_val_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variantd9208da66486300f27f8d4180f4cf18969a83a88a46aeb6e6d807f76b24ce277.lean/declarations/image-val-subset--c59b35416f0a878e57ad5e11.md) | 126 | `result-track:c59b35416f0a878e57ad5e110c93da08d543f638a8769cd5edbe1675fa6b477a` |
| 18 | `theorem` | [mem_of_mem_image_val](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variantd9208da66486300f27f8d4180f4cf18969a83a88a46aeb6e6d807f76b24ce277.lean/declarations/mem-of-mem-image-val--8cb062499c73d8a06dcc6499.md) | 129 | `result-track:8cb062499c73d8a06dcc64990a7716676e5276d92d2f1e121e82d9c0b51bdf5c` |
| 19 | `theorem` | [eq_univ_of_image_val_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variantd9208da66486300f27f8d4180f4cf18969a83a88a46aeb6e6d807f76b24ce277.lean/declarations/eq-univ-of-image-val-eq--0e903862ac1384529b0881a2.md) | 132 | `result-track:0e903862ac1384529b0881a275e78f76a25cc3c41febeacb70f7deb7359ee4c7` |
| 20 | `theorem` | [image_image_val_eq_restrict_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variantd9208da66486300f27f8d4180f4cf18969a83a88a46aeb6e6d807f76b24ce277.lean/declarations/image-image-val-eq-restrict-image--a9e3df2a13b17d3fc6e7927e.md) | 135 | `result-track:a9e3df2a13b17d3fc6e7927e9d27a6f8fd7bf1b745bfadccfb3630c8734de3c5` |
| 21 | `def` | [SetM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variantd9208da66486300f27f8d4180f4cf18969a83a88a46aeb6e6d807f76b24ce277.lean/declarations/setm--f1c8bc13eed46846bc38cdce.md) | 143 | `declaration-track:f1c8bc13eed46846bc38cdceca16840bed000b350a834c167aaf41da43430755` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variantd9208da66486300f27f8d4180f4cf18969a83a88a46aeb6e6d807f76b24ce277.lean/declarations/instance--96d2e8507a3b1918d125009f.md) | 145 | `declaration-track:96d2e8507a3b1918d125009f1b929c5a7c47522b97cfae50957eb91eff754fde` |
| 23 | `def` | [SetM.run](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variantd9208da66486300f27f8d4180f4cf18969a83a88a46aeb6e6d807f76b24ce277.lean/declarations/setm-run--40c95c2c83155bcd649fe309.md) | 149 | `declaration-track:40c95c2c83155bcd649fe309609d2523ae8784c40202fcb8368cb5b7a1518856` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
