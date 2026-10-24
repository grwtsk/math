# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Functor.Variant0d1f3b168fa1c7edd586287ed2a8087780222c41e191736fd45bc635d9904349

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d8f53bc61bf756bf8fa06103856382af1093c1c",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variant0d1f3b168fa1c7edd586287ed2a8087780222c41e191736fd45bc635d9904349.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variant0d1f3b168fa1c7edd586287ed2a8087780222c41e191736fd45bc635d9904349.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variant0d1f3b168fa1c7edd586287ed2a8087780222c41e191736fd45bc635d9904349.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d8f53bc61bf756bf8fa06103856382af1093c1c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variant0d1f3b168fa1c7edd586287ed2a8087780222c41e191736fd45bc635d9904349.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variant0d1f3b168fa1c7edd586287ed2a8087780222c41e191736fd45bc635d9904349.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice.Image` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Notation` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [monad](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variant0d1f3b168fa1c7edd586287ed2a8087780222c41e191736fd45bc635d9904349.lean/declarations/monad--515afbe26d731ed825ab79ab.md) | 32 | `declaration-track:515afbe26d731ed825ab79ab86f2259b4b95aa1f4cd4696a5aef8adc5721b3f3` |
| 2 | `theorem` | [bind_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variant0d1f3b168fa1c7edd586287ed2a8087780222c41e191736fd45bc635d9904349.lean/declarations/bind-def--1c480cb848c785bd5e653baf.md) | 42 | `result-track:1c480cb848c785bd5e653baf864448fdcd957ba3bc4bc62191a6b47a8b5d4b41` |
| 3 | `theorem` | [fmap_eq_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variant0d1f3b168fa1c7edd586287ed2a8087780222c41e191736fd45bc635d9904349.lean/declarations/fmap-eq-image--4a11e448dc36a5cbed2b8c01.md) | 46 | `result-track:4a11e448dc36a5cbed2b8c01a367766b083b39d1fdcbf8d1095d561ca738cbe0` |
| 4 | `theorem` | [seq_eq_set_seq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variant0d1f3b168fa1c7edd586287ed2a8087780222c41e191736fd45bc635d9904349.lean/declarations/seq-eq-set-seq--a8f72424e6bbe366ba69f820.md) | 50 | `result-track:a8f72424e6bbe366ba69f8207d066d7adb3fb2605e370abc754b72ada6a84e63` |
| 5 | `theorem` | [pure_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variant0d1f3b168fa1c7edd586287ed2a8087780222c41e191736fd45bc635d9904349.lean/declarations/pure-def--38645e5023513b21e5920771.md) | 54 | `result-track:38645e5023513b21e59207710f7a0ddeed5c3bdbd90dc49f4a8b054cf766473b` |
| 6 | `theorem` | [image2_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variant0d1f3b168fa1c7edd586287ed2a8087780222c41e191736fd45bc635d9904349.lean/declarations/image2-def--565630f103dd4ff9af74bfd9.md) | 59 | `result-track:565630f103dd4ff9af74bfd9261090df66c151deee15430e75a839350550ba64` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variant0d1f3b168fa1c7edd586287ed2a8087780222c41e191736fd45bc635d9904349.lean/declarations/instance--c7565ac56f875c7d3b42b17f.md) | 64 | `declaration-track:c7565ac56f875c7d3b42b17f3b323de54e0abe3242c7f25448ba1f32737846aa` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variant0d1f3b168fa1c7edd586287ed2a8087780222c41e191736fd45bc635d9904349.lean/declarations/instance--7180b9cf0963d56ba77ed24a.md) | 71 | `declaration-track:7180b9cf0963d56ba77ed24aecb7b639353619e1a0eee89affa8f43d7f80a6a3` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variant0d1f3b168fa1c7edd586287ed2a8087780222c41e191736fd45bc635d9904349.lean/declarations/instance--3b8a8fa0954f1524c0e0653e.md) | 74 | `declaration-track:3b8a8fa0954f1524c0e0653e508897ca01a404163c6bfcff9437d867b8f818a2` |
| 10 | `theorem` | [mem_coe_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variant0d1f3b168fa1c7edd586287ed2a8087780222c41e191736fd45bc635d9904349.lean/declarations/mem-coe-of-mem--07fc1d22ad767aacfd95074f.md) | 83 | `result-track:07fc1d22ad767aacfd95074fb8e936277e8ab603fdec83202f380223d40734b2` |
| 11 | `theorem` | [coe_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variant0d1f3b168fa1c7edd586287ed2a8087780222c41e191736fd45bc635d9904349.lean/declarations/coe-subset--a3dba08dfc965eeb2fde8a63.md) | 86 | `result-track:a3dba08dfc965eeb2fde8a63ba7df0a1c7363b8cc089585839224c86c03b3ef0` |
| 12 | `theorem` | [mem_of_mem_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variant0d1f3b168fa1c7edd586287ed2a8087780222c41e191736fd45bc635d9904349.lean/declarations/mem-of-mem-coe--904a21e2a6ae2d0beea3c282.md) | 89 | `result-track:904a21e2a6ae2d0beea3c282547731cd3691dc4c3fccce188949007f295e8a4b` |
| 13 | `theorem` | [eq_univ_of_coe_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variant0d1f3b168fa1c7edd586287ed2a8087780222c41e191736fd45bc635d9904349.lean/declarations/eq-univ-of-coe-eq--7c4a18aa1f484bf337270c13.md) | 92 | `result-track:7c4a18aa1f484bf337270c1387ce9a61b7e34a4e9a9fa39e437e4b933cbd53c4` |
| 14 | `theorem` | [image_coe_eq_restrict_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variant0d1f3b168fa1c7edd586287ed2a8087780222c41e191736fd45bc635d9904349.lean/declarations/image-coe-eq-restrict-image--b54c1322313385ff9fb7c359.md) | 95 | `result-track:b54c1322313385ff9fb7c35936efe2b8ee73902fddb83335667c9fd59bef8060` |
| 15 | `theorem` | [coe_eq_image_val](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variant0d1f3b168fa1c7edd586287ed2a8087780222c41e191736fd45bc635d9904349.lean/declarations/coe-eq-image-val--175bb75c5a8688c91a57cdca.md) | 107 | `result-track:175bb75c5a8688c91a57cdcae27f783b9cbccf2afcdb0da1c565191b1a601c94` |
| 16 | `theorem` | [mem_image_val_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variant0d1f3b168fa1c7edd586287ed2a8087780222c41e191736fd45bc635d9904349.lean/declarations/mem-image-val-of-mem--657de4f9f9c953fbad6b0661.md) | 115 | `result-track:657de4f9f9c953fbad6b066130b1fdf0d2a87736e04e06a629b134045e1f5e06` |
| 17 | `theorem` | [image_val_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variant0d1f3b168fa1c7edd586287ed2a8087780222c41e191736fd45bc635d9904349.lean/declarations/image-val-subset--2374b0bccd606913b4501982.md) | 118 | `result-track:2374b0bccd606913b45019825a0d28a0751e278efe01b2002f9ced35cbf66d4f` |
| 18 | `theorem` | [mem_of_mem_image_val](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variant0d1f3b168fa1c7edd586287ed2a8087780222c41e191736fd45bc635d9904349.lean/declarations/mem-of-mem-image-val--69137ac3e580dd945dba8500.md) | 121 | `result-track:69137ac3e580dd945dba8500febb8820a4a468982562a88a227a38b603e3706a` |
| 19 | `theorem` | [eq_univ_of_image_val_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variant0d1f3b168fa1c7edd586287ed2a8087780222c41e191736fd45bc635d9904349.lean/declarations/eq-univ-of-image-val-eq--1788e065e2f8c5d05aca64bd.md) | 124 | `result-track:1788e065e2f8c5d05aca64bdbeb8983cd6037235ee6ba02466e60a2297a1eea6` |
| 20 | `theorem` | [image_image_val_eq_restrict_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variant0d1f3b168fa1c7edd586287ed2a8087780222c41e191736fd45bc635d9904349.lean/declarations/image-image-val-eq-restrict-image--e4a221514bc23909cd3c2982.md) | 127 | `result-track:e4a221514bc23909cd3c2982f4a608eec941050bb511f0920d600df6deab85c6` |
| 21 | `def` | [SetM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variant0d1f3b168fa1c7edd586287ed2a8087780222c41e191736fd45bc635d9904349.lean/declarations/setm--55430368aacbc73559c9bc7d.md) | 135 | `declaration-track:55430368aacbc73559c9bc7dac4fc0bfaa3f8f4e51955a71b87c2ef35016b3d0` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variant0d1f3b168fa1c7edd586287ed2a8087780222c41e191736fd45bc635d9904349.lean/declarations/instance--abeeb44a37306e5a3ce2edff.md) | 137 | `declaration-track:abeeb44a37306e5a3ce2edffa2b59d4d70ee00dc1c6f51bfb29a98b634b04b50` |
| 23 | `def` | [SetM.run](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functor/Variant0d1f3b168fa1c7edd586287ed2a8087780222c41e191736fd45bc635d9904349.lean/declarations/setm-run--2d0aa642bd579da369b7cf98.md) | 141 | `declaration-track:2d0aa642bd579da369b7cf98e940a4e4c909b838bfc66a0ba6ed83d94dfb54da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
