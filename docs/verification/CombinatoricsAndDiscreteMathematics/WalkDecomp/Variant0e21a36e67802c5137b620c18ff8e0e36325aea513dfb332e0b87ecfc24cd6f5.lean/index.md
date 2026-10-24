# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.WalkDecomp.Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "702cf54255d4b8cba12c1806d8f4e0269761e8d4",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `702cf54255d4b8cba12c1806d8f4e0269761e8d4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Walk` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [takeUntil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/declarations/takeuntil--674e751c4169bfd80dc7a73d.md) | 38 | `declaration-track:674e751c4169bfd80dc7a73d6e5603cc82a211c8ca9b29b0ef0df2bd13a06b85` |
| 2 | `theorem` | [takeUntil_nil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/declarations/takeuntil-nil--7f53788d0e42dff8c30cf51d.md) | 49 | `result-track:7f53788d0e42dff8c30cf51d399c9bc535065b5952c6c03c9b432582d2fa9411` |
| 3 | `lemma` | [takeUntil_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/declarations/takeuntil-cons--31adea2e544def74b01c2f24.md) | 51 | `result-track:31adea2e544def74b01c2f24adce2a37ba51436ec7d100f3a9685975579487b0` |
| 4 | `lemma` | [takeUntil_first](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/declarations/takeuntil-first--9f3710317a460dd32a838aed.md) | 57 | `result-track:9f3710317a460dd32a838aedfabf60f87083bcb9ed6c75e730fac2c27f260ac7` |
| 5 | `lemma` | [nil_takeUntil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/declarations/nil-takeuntil--d9c229b34b9d9387ead63d9c.md) | 61 | `result-track:d9c229b34b9d9387ead63d9ca45e9caac6574ea863ae5c9fabbe35ae4e02146b` |
| 6 | `def` | [dropUntil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/declarations/dropuntil--86fbb63c5d90adf7f2fabe3f.md) | 77 | `declaration-track:86fbb63c5d90adf7f2fabe3f0b48f3ae0ff45e7868c2a30da1a3eeb9563e4807` |
| 7 | `theorem` | [take_spec](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/declarations/take-spec--1e6426c786fc5cd95e827c99.md) | 91 | `result-track:1e6426c786fc5cd95e827c998466c6e92c79f9cb1ed868b5a2c39265235ffa75` |
| 8 | `theorem` | [mem_support_iff_exists_append](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/declarations/mem-support-iff-exists-append--354976055adeff074f52450e.md) | 102 | `result-track:354976055adeff074f52450ea18a12efc040e5d101fa660f00164c528fcfdfc4` |
| 9 | `theorem` | [count_support_takeUntil_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/declarations/count-support-takeuntil-eq-one--1dcb52b71968ea7ffd6eb0d8.md) | 111 | `result-track:1dcb52b71968ea7ffd6eb0d8dad978bfe919665dbf69452b21ace482b1e09bf9` |
| 10 | `theorem` | [count_edges_takeUntil_le_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/declarations/count-edges-takeuntil-le-one--4d4238614efc74ee2eab77f9.md) | 122 | `result-track:4d4238614efc74ee2eab77f94655ab424361016387bc1edce51db4f43d264e62` |
| 11 | `theorem` | [takeUntil_copy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/declarations/takeuntil-copy--812ae8a40400f543400a4e18.md) | 145 | `result-track:812ae8a40400f543400a4e18a15558eb19424ca034c6b746e84534a325e9da02` |
| 12 | `theorem` | [dropUntil_copy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/declarations/dropuntil-copy--e864ebae04a3df521aaf6ff5.md) | 152 | `result-track:e864ebae04a3df521aaf6ff5f185f0f5efc687c80be0abc3245d571b136a112c` |
| 13 | `theorem` | [support_takeUntil_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/declarations/support-takeuntil-subset--3e027a67f8ed41643ffee1a7.md) | 158 | `result-track:3e027a67f8ed41643ffee1a7519329f0ed2ee7a611462e3fde794e3175a212d3` |
| 14 | `theorem` | [support_dropUntil_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/declarations/support-dropuntil-subset--fa8b0bb81fcb2e17a9053006.md) | 163 | `result-track:fa8b0bb81fcb2e17a9053006c99d7e14784adb1eda9a24c49102744b4dffb5ca` |
| 15 | `theorem` | [darts_takeUntil_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/declarations/darts-takeuntil-subset--399fad98184775703ac1c498.md) | 168 | `result-track:399fad98184775703ac1c49824c90abc71620cf122cdacc0a44f243a6edf303f` |
| 16 | `theorem` | [darts_dropUntil_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/declarations/darts-dropuntil-subset--18e5ab86651f97ae5a2a6ac4.md) | 173 | `result-track:18e5ab86651f97ae5a2a6ac4bafac85cd0c649644cd77e229059a5035d130809` |
| 17 | `theorem` | [edges_takeUntil_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/declarations/edges-takeuntil-subset--79debbdbbf138d9bb0884540.md) | 178 | `result-track:79debbdbbf138d9bb08845406de08426dbeca15a36060a12815c413f94225edc` |
| 18 | `theorem` | [edges_dropUntil_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/declarations/edges-dropuntil-subset--24db78fea56bd08b36d0071d.md) | 182 | `result-track:24db78fea56bd08b36d0071ddcc3155ad82fb31c8b053ff06ad00c8550298f86` |
| 19 | `theorem` | [length_takeUntil_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/declarations/length-takeuntil-le--90d57fbf4f4bd353c27ea8a1.md) | 186 | `result-track:90d57fbf4f4bd353c27ea8a180b32cc65a45a8e4c77c3ae0bea881b51bd9edfd` |
| 20 | `theorem` | [length_dropUntil_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/declarations/length-dropuntil-le--2c860bce0010377312c3a9f5.md) | 192 | `result-track:2c860bce0010377312c3a9f54e5291b36c67fa07f43dddaab68e312b7e775891` |
| 21 | `lemma` | [getVert_takeUntil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/declarations/getvert-takeuntil--399f713ee07f630e972027bc.md) | 198 | `result-track:399f713ee07f630e972027bc414ff193627f6fc1248099fab8c6c4151985cea3` |
| 22 | `lemma` | [snd_takeUntil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/declarations/snd-takeuntil--53063c57e5d1ec7e7045f3f7.md) | 214 | `result-track:53063c57e5d1ec7e7045f3f7c849c532c8440c88b15545b214168441117cffea` |
| 23 | `lemma` | [length_takeUntil_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/declarations/length-takeuntil-lt--b79bed681cf6af2f60dba286.md) | 221 | `result-track:b79bed681cf6af2f60dba286c02a09e32e81bd87a9d560dbb9b1914fab80eb79` |
| 24 | `lemma` | [takeUntil_takeUntil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/declarations/takeuntil-takeuntil--9768eefb8d4e6aca4527c325.md) | 227 | `result-track:9768eefb8d4e6aca4527c32529066bf517b138e4e6d2c13af339652ab9e5b8ef` |
| 25 | `lemma` | [notMem_support_takeUntil_support_takeUntil_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/declarations/notmem-support-takeuntil-support-takeuntil-subset--ef9fee3491c170429179d68a.md) | 254 | `result-track:ef9fee3491c170429179d68a9af1df3622067d8f91cba86fcd9e5653cf6909df` |
| 26 | `def` | [rotate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/declarations/rotate--8c36979ee49839d658821fb2.md) | 272 | `declaration-track:8c36979ee49839d658821fb206c188e06f05b037a8065b0c73fc82b0e15756f2` |
| 27 | `theorem` | [support_rotate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/declarations/support-rotate--76e525078b3308a224d8d890.md) | 276 | `result-track:76e525078b3308a224d8d890f36ee247477dc5149d7f585a3f1c16c56ba42e0a` |
| 28 | `theorem` | [rotate_darts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/declarations/rotate-darts--1d3c58833045bad4bb79c03c.md) | 282 | `result-track:1d3c58833045bad4bb79c03c610a0fccde9993a18d26425f7bd25a3855e515ad` |
| 29 | `theorem` | [rotate_edges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/declarations/rotate-edges--7c5aaacc16db5542489403b1.md) | 288 | `result-track:7c5aaacc16db5542489403b112a48e5c048964d0f52ceb00df9e280a501addc1` |
| 30 | `theorem` | [mem_support_iff_exists_getVert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/declarations/mem-support-iff-exists-getvert--02a369a82e6881c9436cd57c.md) | 298 | `result-track:02a369a82e6881c9436cd57cce4a0a3e072b1456ca802146ecca6b236906bbc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
