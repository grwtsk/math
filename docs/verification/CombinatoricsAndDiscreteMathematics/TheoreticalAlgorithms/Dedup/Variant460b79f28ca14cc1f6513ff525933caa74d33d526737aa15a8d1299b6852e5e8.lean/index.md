# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Dedup.Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3c85014487ab0706f50cde0c1507ec66095797e",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3c85014487ab0706f50cde0c1507ec66095797e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Nodup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Lattice` — import line 7; external provider; requires a separately pinned dependency.
- `Batteries.Data.List.Pairwise` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dedup_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8.lean/declarations/dedup-nil--0442988ffb3703a74bce99df.md) | 30 | `result-track:0442988ffb3703a74bce99dfe9d4926518d533747c0a94f3009fb1d01e9a8ded` |
| 2 | `theorem` | [dedup_cons_of_mem'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8.lean/declarations/dedup-cons-of-mem--f42026e1d9516e3348576f2a.md) | 33 | `result-track:f42026e1d9516e3348576f2a44fb9c6962a3ed76fc407ca210a249ff94e88922` |
| 3 | `theorem` | [dedup_cons_of_notMem'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8.lean/declarations/dedup-cons-of-notmem--d1ec078f01eb726df236f438.md) | 36 | `result-track:d1ec078f01eb726df236f43835be004f260a63ae8794147e5fe0e277f17dfbba` |
| 4 | `theorem` | [mem_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8.lean/declarations/mem-dedup--d8db3c19f911077d4cdd0d8e.md) | 43 | `result-track:d8db3c19f911077d4cdd0d8e7819e74e417afdf40349a172af221a85508c840e` |
| 5 | `theorem` | [dedup_cons_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8.lean/declarations/dedup-cons-of-mem--6da47c9d35fc1e5e8d38d946.md) | 50 | `result-track:6da47c9d35fc1e5e8d38d946158134c3f0c6b8eeefe053eca4f26b24730d5b59` |
| 6 | `theorem` | [dedup_cons_of_notMem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8.lean/declarations/dedup-cons-of-notmem--b9be0e13eb723857a1763c76.md) | 54 | `result-track:b9be0e13eb723857a1763c76e8c851d1338265f8ac9ac6e2ec30caa31661240a` |
| 7 | `theorem` | [dedup_sublist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8.lean/declarations/dedup-sublist--5fd4ae049e575a671d6cc20c.md) | 59 | `result-track:5fd4ae049e575a671d6cc20c7d9d31d6545630484cab1c57cee11773e55efc06` |
| 8 | `theorem` | [dedup_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8.lean/declarations/dedup-subset--a56d05acd3a56ac9e9cb5613.md) | 62 | `result-track:a56d05acd3a56ac9e9cb5613bc9003c59bfafa44755d6d28e31aa47b9bb96301` |
| 9 | `theorem` | [subset_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8.lean/declarations/subset-dedup--9d8d1af29025617e47378a5f.md) | 65 | `result-track:9d8d1af29025617e47378a5fd6309a1ad00cc6611b82147f6c5e8956786b5498` |
| 10 | `theorem` | [nodup_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8.lean/declarations/nodup-dedup--3bb72eaedff0aca0f5c1c8e2.md) | 67 | `result-track:3bb72eaedff0aca0f5c1c8e280a9e659c39745240414fcaaf3b7763de0a853b8` |
| 11 | `theorem` | [headI_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8.lean/declarations/headi-dedup--e6fb736187f2aee09b1ef945.md) | 70 | `result-track:e6fb736187f2aee09b1ef94528c2d3c548538fbe0912469f1839d1fa13b15355` |
| 12 | `theorem` | [tail_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8.lean/declarations/tail-dedup--62386792f417f111452ec7db.md) | 76 | `result-track:62386792f417f111452ec7db2dd7787d61e0438d2509312ee1f64ee282951de1` |
| 13 | `theorem` | [dedup_eq_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8.lean/declarations/dedup-eq-self--319e0d1cb2382f678dd32af4.md) | 82 | `result-track:319e0d1cb2382f678dd32af4bc3b22a975a05d7e1e5afc019455b34a11f447a7` |
| 14 | `theorem` | [dedup_eq_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8.lean/declarations/dedup-eq-cons--21a04733bf8e84287972ecd7.md) | 85 | `result-track:21a04733bf8e84287972ecd7c690b99fd18cae733fc8dd8009ef438361580fbb` |
| 15 | `theorem` | [dedup_eq_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8.lean/declarations/dedup-eq-nil--bc9074fe0dc1baa875aa7678.md) | 99 | `result-track:bc9074fe0dc1baa875aa7678dbb77e39a46ca9d29e7cf492bae43bfb55f14ad6` |
| 16 | `theorem` | [Nodup.dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8.lean/declarations/nodup-dedup--a022f561548b29f4d830c362.md) | 107 | `result-track:a022f561548b29f4d830c362768745a308eeeecb05cbbffee28b669c3b93b280` |
| 17 | `theorem` | [dedup_idem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8.lean/declarations/dedup-idem--2e3c8af7d95f0ecfcbcdb745.md) | 111 | `result-track:2e3c8af7d95f0ecfcbcdb745ef4f488eb6b481578b62a099b70fdfc70643b687` |
| 18 | `theorem` | [dedup_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8.lean/declarations/dedup-append--b13777773b8f45866fca5fe9.md) | 114 | `result-track:b13777773b8f45866fca5fe99d9eb61ebb5cb49bff52d8da44886415f1b3b05e` |
| 19 | `theorem` | [dedup_map_of_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8.lean/declarations/dedup-map-of-injective--b438e3ffcdc83c44a641d30b.md) | 122 | `result-track:b438e3ffcdc83c44a641d30b0bbf29c4c30a8182bc05e3fc8d2038ce4c6d2c03` |
| 20 | `theorem` | [Subset.dedup_append_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8.lean/declarations/subset-dedup-append-right--1d48723d9134fb06bd4e9a5a.md) | 135 | `result-track:1d48723d9134fb06bd4e9a5a4a9722491dc7f468ea14c16b67b2c2a089f3fa02` |
| 21 | `theorem` | [Disjoint.union_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8.lean/declarations/disjoint-union-eq--8dade97ab28a6407481b99e5.md) | 139 | `result-track:8dade97ab28a6407481b99e5322afc9c4933a56bc315aeed75aaecef180ed55b` |
| 22 | `theorem` | [Disjoint.dedup_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8.lean/declarations/disjoint-dedup-append--b77fcfc0bb2c86f58547707e.md) | 152 | `result-track:b77fcfc0bb2c86f58547707e44162038897647618614853e7c2bf6fc82e21820` |
| 23 | `theorem` | [replicate_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8.lean/declarations/replicate-dedup--c5b122c5de0a0ece09126472.md) | 158 | `result-track:c5b122c5de0a0ece091264723a9275ae7b3f80e68e337f6ee355beb360fc5e4a` |
| 24 | `theorem` | [count_dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8.lean/declarations/count-dedup--a994b0603bdafc24a2a37748.md) | 165 | `result-track:a994b0603bdafc24a2a3774843eba671cb9dfff895e8f9fa3a98d64c92fa4c16` |
| 25 | `theorem` | [Perm.dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant460b79f28ca14cc1f6513ff525933caa74d33d526737aa15a8d1299b6852e5e8.lean/declarations/perm-dedup--dcbc90a1ca77c748aff98da1.md) | 168 | `result-track:dcbc90a1ca77c748aff98da1ba4523601350c526aa587e23c2a00086a6372722` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
