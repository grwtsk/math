# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TakeDrop.Variant506bb9d6c8035d8430259ae560e01142bfe4d2f72e16fa4794ad1de65229960e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c4bd5c82ce8e65e5c258f60c80302eeb3ad0895",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant506bb9d6c8035d8430259ae560e01142bfe4d2f72e16fa4794ad1de65229960e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant506bb9d6c8035d8430259ae560e01142bfe4d2f72e16fa4794ad1de65229960e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant506bb9d6c8035d8430259ae560e01142bfe4d2f72e16fa4794ad1de65229960e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c4bd5c82ce8e65e5c258f60c80302eeb3ad0895`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant506bb9d6c8035d8430259ae560e01142bfe4d2f72e16fa4794ad1de65229960e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant506bb9d6c8035d8430259ae560e01142bfe4d2f72e16fa4794ad1de65229960e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [take_one_drop_eq_of_lt_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant506bb9d6c8035d8430259ae560e01142bfe4d2f72e16fa4794ad1de65229960e.lean/declarations/take-one-drop-eq-of-lt-length--d85fc96a80f894936fd00f3b.md) | 42 | `result-track:d85fc96a80f894936fd00f3bab2161df49f57457029466cbadfbf9f33ff0c034` |
| 2 | `lemma` | [take_eq_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant506bb9d6c8035d8430259ae560e01142bfe4d2f72e16fa4794ad1de65229960e.lean/declarations/take-eq-self-iff--f546dcef417030eac4394d8d.md) | 47 | `result-track:f546dcef417030eac4394d8d17869c1268535038136dac8431ed931ff91b495a` |
| 3 | `lemma` | [take_self_eq_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant506bb9d6c8035d8430259ae560e01142bfe4d2f72e16fa4794ad1de65229960e.lean/declarations/take-self-eq-iff--730d58d269a3655dcb5d61a3.md) | 50 | `result-track:730d58d269a3655dcb5d61a346e345d26eb95f570a6644bb2ae9b989c27081a0` |
| 4 | `lemma` | [take_eq_left_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant506bb9d6c8035d8430259ae560e01142bfe4d2f72e16fa4794ad1de65229960e.lean/declarations/take-eq-left-iff--77e451a0565972d9c5cea05f.md) | 53 | `result-track:77e451a0565972d9c5cea05ffaf9e976c2bb029467cba9c6d5f6005ae8882df0` |
| 5 | `lemma` | [left_eq_take_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant506bb9d6c8035d8430259ae560e01142bfe4d2f72e16fa4794ad1de65229960e.lean/declarations/left-eq-take-iff--d772732de616d0d81799cc54.md) | 57 | `result-track:d772732de616d0d81799cc54d562bf6a6c527b36fdc4c580c8bf969f22274a73` |
| 6 | `lemma` | [drop_take_append_drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant506bb9d6c8035d8430259ae560e01142bfe4d2f72e16fa4794ad1de65229960e.lean/declarations/drop-take-append-drop--83408bedc441af3ce0b69661.md) | 61 | `result-track:83408bedc441af3ce0b696615dc3e24c35924347eca1147d622851d5be01eaf8` |
| 7 | `lemma` | [drop_take_append_drop'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant506bb9d6c8035d8430259ae560e01142bfe4d2f72e16fa4794ad1de65229960e.lean/declarations/drop-take-append-drop--0d9a1d2b3eef0413ed9ebd3f.md) | 65 | `result-track:0d9a1d2b3eef0413ed9ebd3f0d95251edaba2d68fb9e2e4ee8143247a6d78575` |
| 8 | `lemma` | [take_concat_get'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant506bb9d6c8035d8430259ae560e01142bfe4d2f72e16fa4794ad1de65229960e.lean/declarations/take-concat-get--e1ef17d44238ecc6e0099a28.md) | 69 | `result-track:e1ef17d44238ecc6e0099a28224b8d2fa316a8067c8274bc044b69448d2d25af` |
| 9 | `theorem` | [cons_getElem_drop_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant506bb9d6c8035d8430259ae560e01142bfe4d2f72e16fa4794ad1de65229960e.lean/declarations/cons-getelem-drop-succ--12b02a79239118c1fcf2483c.md) | 72 | `result-track:12b02a79239118c1fcf2483c5d709671329207659228261c59167f4bc66d9dd0` |
| 10 | `theorem` | [cons_get_drop_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant506bb9d6c8035d8430259ae560e01142bfe4d2f72e16fa4794ad1de65229960e.lean/declarations/cons-get-drop-succ--f56ae2666065e95e4e9965ce.md) | 76 | `result-track:f56ae2666065e95e4e9965ceb497c992ccb1044e886ac7fb4c0465ddba0250ae` |
| 11 | `lemma` | [drop_length_sub_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant506bb9d6c8035d8430259ae560e01142bfe4d2f72e16fa4794ad1de65229960e.lean/declarations/drop-length-sub-one--30e2274cab1099cad41c0840.md) | 80 | `result-track:30e2274cab1099cad41c08409334d44512127abd03fb2b73a328dd80391b9d95` |
| 12 | `theorem` | [takeI_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant506bb9d6c8035d8430259ae560e01142bfe4d2f72e16fa4794ad1de65229960e.lean/declarations/takei-length--807ca4265363ab698ff601cb.md) | 94 | `result-track:807ca4265363ab698ff601cbc2d3aad3c801f89891448098446eb5106510de6b` |
| 13 | `theorem` | [takeI_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant506bb9d6c8035d8430259ae560e01142bfe4d2f72e16fa4794ad1de65229960e.lean/declarations/takei-nil--92bbc72085b7742890833c1d.md) | 99 | `result-track:92bbc72085b7742890833c1df77d631e0a508d0de6e317a8fe462489eeafed1f` |
| 14 | `theorem` | [takeI_eq_take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant506bb9d6c8035d8430259ae560e01142bfe4d2f72e16fa4794ad1de65229960e.lean/declarations/takei-eq-take--8dea09846dbab6c97995a1a7.md) | 103 | `result-track:8dea09846dbab6c97995a1a74576d80eddd30fe5d376b275a27cbba3826b8827` |
| 15 | `theorem` | [takeI_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant506bb9d6c8035d8430259ae560e01142bfe4d2f72e16fa4794ad1de65229960e.lean/declarations/takei-left--377c4c45e9015c9357e8bde9.md) | 108 | `result-track:377c4c45e9015c9357e8bde97ef80d254386434ed7ce358d79261101e9ce6719` |
| 16 | `theorem` | [takeI_left'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant506bb9d6c8035d8430259ae560e01142bfe4d2f72e16fa4794ad1de65229960e.lean/declarations/takei-left--707b2a1986d27c9934bf9de9.md) | 111 | `result-track:707b2a1986d27c9934bf9de9824a2c156c80b5a6cad2eac351f35df5446c386b` |
| 17 | `theorem` | [takeD_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant506bb9d6c8035d8430259ae560e01142bfe4d2f72e16fa4794ad1de65229960e.lean/declarations/taked-length--42d63cbec7c29878a036442f.md) | 120 | `result-track:42d63cbec7c29878a036442f7a921681d6ff221bc1beccaa9e24c40e3a04cb5e` |
| 18 | `theorem` | [takeD_eq_take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant506bb9d6c8035d8430259ae560e01142bfe4d2f72e16fa4794ad1de65229960e.lean/declarations/taked-eq-take--fae4cc6ac64d4bed49d2836b.md) | 126 | `result-track:fae4cc6ac64d4bed49d2836bc8215e55bced6e813a9a8e2e10ef4df341940075` |
| 19 | `theorem` | [takeD_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant506bb9d6c8035d8430259ae560e01142bfe4d2f72e16fa4794ad1de65229960e.lean/declarations/taked-left--8284441d178d27712b6d754f.md) | 131 | `result-track:8284441d178d27712b6d754fbc2e8b3d11b81565c208f8ae37abe4ec2c773983` |
| 20 | `theorem` | [takeD_left'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant506bb9d6c8035d8430259ae560e01142bfe4d2f72e16fa4794ad1de65229960e.lean/declarations/taked-left--309db47ca49346036e9222a5.md) | 134 | `result-track:309db47ca49346036e9222a5b52a943a4817225575a2da19dd5554c7b40cf43b` |
| 21 | `theorem` | [span.loop_eq_take_drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant506bb9d6c8035d8430259ae560e01142bfe4d2f72e16fa4794ad1de65229960e.lean/declarations/span-loop-eq-take-drop--8ce5959dba9dd905e9748c1f.md) | 147 | `result-track:8ce5959dba9dd905e9748c1ffa9e6265f004469e596275f87a998213db68a794` |
| 22 | `theorem` | [span_eq_takeWhile_dropWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant506bb9d6c8035d8430259ae560e01142bfe4d2f72e16fa4794ad1de65229960e.lean/declarations/span-eq-takewhile-dropwhile--1baa7d01c2bcb31dbb97b9f6.md) | 154 | `result-track:1baa7d01c2bcb31dbb97b9f6819c399898baa7124a8b92d4a7ec1db059a5b995` |
| 23 | `theorem` | [dropSlice_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant506bb9d6c8035d8430259ae560e01142bfe4d2f72e16fa4794ad1de65229960e.lean/declarations/dropslice-eq--456ddd81539fa4ed778f300a.md) | 163 | `result-track:456ddd81539fa4ed778f300a53e22c4fca7176af84939afda47c468065978117` |
| 24 | `theorem` | [length_dropSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant506bb9d6c8035d8430259ae560e01142bfe4d2f72e16fa4794ad1de65229960e.lean/declarations/length-dropslice--4fae547d26bd190d0dcf84dd.md) | 169 | `result-track:4fae547d26bd190d0dcf84ddd96b199ee960659d61a02d6b50bb47a12989451e` |
| 25 | `theorem` | [length_dropSlice_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant506bb9d6c8035d8430259ae560e01142bfe4d2f72e16fa4794ad1de65229960e.lean/declarations/length-dropslice-lt--403ecba63fc7ad67f11b9b45.md) | 180 | `result-track:403ecba63fc7ad67f11b9b45c552b087b05125c1dd207c9e5c598f8a8e517c6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
