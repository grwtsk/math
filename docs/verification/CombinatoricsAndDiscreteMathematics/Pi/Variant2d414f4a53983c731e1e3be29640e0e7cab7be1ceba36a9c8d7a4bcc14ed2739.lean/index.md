# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Pi.Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aeb9c39eb9c39295c81a25a575a7dcee957b7f5d",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aeb9c39eb9c39295c81a25a575a7dcee957b7f5d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Pi/Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Card` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Union` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Pi` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.DependsOn` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Pi.empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739.lean/declarations/pi-empty--fd98b57f175290801cfb88ac.md) | 42 | `declaration-track:fd98b57f175290801cfb88ac788cc21f1a7fb2ac0885716594502eb39e517ba0` |
| 2 | `def` | [pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739.lean/declarations/pi--98af4a50c649debd93595a33.md) | 54 | `declaration-track:98af4a50c649debd93595a3306801f83d95b8d879556c4f76a8cd3bb718fb0d9` |
| 3 | `theorem` | [pi_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739.lean/declarations/pi-val--26f5f93e61fa2abd7a3a2c32.md) | 58 | `result-track:26f5f93e61fa2abd7a3a2c32d2477c658372537e3c64ec7839dfa2a1cfdedf28` |
| 4 | `theorem` | [mem_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739.lean/declarations/mem-pi--98e26d640eb1b494a769095f.md) | 62 | `result-track:98e26d640eb1b494a769095f7221aa3ef438250576fd2707744542a2069afba2` |
| 5 | `def` | [Pi.cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739.lean/declarations/pi-cons--5efcd6be351d5589bc132ac8.md) | 70 | `declaration-track:5efcd6be351d5589bc132ac8568e13faa7dd41fd17e71a581d0e2d6771137b57` |
| 6 | `theorem` | [Pi.cons_same](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739.lean/declarations/pi-cons-same--0d98dbaba57ad47a7d5550b3.md) | 75 | `result-track:0d98dbaba57ad47a7d5550b3cd9e99c56ade93938998124fecd3f12a288e8bd6` |
| 7 | `theorem` | [Pi.cons_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739.lean/declarations/pi-cons-ne--bcc5ad147cef5518f34b3b5e.md) | 79 | `result-track:bcc5ad147cef5518f34b3b5e3352a268d5ebf7638ba4f14a44682a804b09063c` |
| 8 | `theorem` | [Pi.cons_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739.lean/declarations/pi-cons-injective--eee4c5a28fc49b4a0833c7ea.md) | 83 | `result-track:eee4c5a28fc49b4a0833c7ea8cbe750517b6ac75900db94e53e22268ca3b45d3` |
| 9 | `theorem` | [pi_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739.lean/declarations/pi-empty--1f7494594b5ab34831e5b3f8.md) | 95 | `result-track:1f7494594b5ab34831e5b3f8f1276cf87c54137e7d0e7307ecf6babe7d6c8ca2` |
| 10 | `lemma` | [pi_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739.lean/declarations/pi-nonempty--64b3c7440c878d5cb6d5c52b.md) | 99 | `result-track:64b3c7440c878d5cb6d5c52be713b765289d30ceba317324d70ec6c5521b9f1d` |
| 11 | `lemma` | [pi_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739.lean/declarations/pi-eq-empty--d6a1513e284d3d2b40d631f4.md) | 106 | `result-track:d6a1513e284d3d2b40d631f43763af67f98f828ed5a272c322f9350514a14ccf` |
| 12 | `theorem` | [pi_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739.lean/declarations/pi-insert--ce823b460b6b692da704f9ce.md) | 110 | `result-track:ce823b460b6b692da704f9cebbae9f69c17a665ea9cec29e298053f876594b27` |
| 13 | `theorem` | [pi_singletons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739.lean/declarations/pi-singletons--8242cd2222a65b3db31f477c.md) | 128 | `result-track:8242cd2222a65b3db31f477c13e7214488f9a3a6fb0a890d7c1d7d901502deab` |
| 14 | `theorem` | [pi_const_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739.lean/declarations/pi-const-singleton--daf91cb19f6fb5e4d6237fad.md) | 138 | `result-track:daf91cb19f6fb5e4d6237fadcf4429f43459ea1a1bcb612baca3656d49e3b8fb` |
| 15 | `theorem` | [pi_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739.lean/declarations/pi-subset--c32b0fa26f4a43d085ce638e.md) | 142 | `result-track:c32b0fa26f4a43d085ce638e8f8f9e1c97d3873f4e8b590ebdfcf180f9588983` |
| 16 | `theorem` | [pi_disjoint_of_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739.lean/declarations/pi-disjoint-of-disjoint--1a293207e4ca43ff407903e0.md) | 145 | `result-track:1a293207e4ca43ff407903e04d28cd25f4d32dde9c2372bd12764add65436fd7` |
| 17 | `def` | [piDiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739.lean/declarations/pidiag--14b4cc0516db890c85a8d35b.md) | 159 | `declaration-track:14b4cc0516db890c85a8d35b67b2030fca3514639ed4aae26d33382f3429df65` |
| 18 | `lemma` | [mem_piDiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739.lean/declarations/mem-pidiag--c1f1075157ebcd1f0d04ed73.md) | 161 | `result-track:c1f1075157ebcd1f0d04ed73e3c69112dd2825be3bfc10f380a6b8be609a02d5` |
| 19 | `lemma` | [card_piDiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739.lean/declarations/card-pidiag--301a705faf3fe569d741768a.md) | 163 | `result-track:301a705faf3fe569d741768a042be3c0286fa56f08beb20232b48798d0edb009` |
| 20 | `def` | [restrict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739.lean/declarations/restrict--41dcef822cd49e1706e603f3.md) | 172 | `declaration-track:41dcef822cd49e1706e603f33ad77f62629118475e431ec1af2c67e57c719372` |
| 21 | `theorem` | [restrict_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739.lean/declarations/restrict-def--5d413a1d6e06bae1d9921534.md) | 174 | `result-track:5d413a1d6e06bae1d99215348eb0430fbb7512771c75a52b0a8febe4be45f991` |
| 22 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.PiEmpty.Variant2e720c68fcc6b659a70c74938233aba4da582734ae4bcd84d7a77a9efb5fbbbb.Set.piCongrLeft_comp_restrict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-piempty-variant2e720c68f--f92bed2995b4e880cdbf1436.md) | 178 | `result-track:f92bed2995b4e880cdbf14360804cb74a73b8cc42db46a13b0784865f7527bb9` |
| 23 | `theorem` | [piCongrLeft_comp_restrict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739.lean/declarations/picongrleft-comp-restrict--4af9e3b278a5f87314062883.md) | 181 | `result-track:4af9e3b278a5f873140628839f6906c63809e56e993501fc39bdc0d6a0be5aea` |
| 24 | `def` | [restrict₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739.lean/declarations/restrict--033ce54e7f1bdbf93fed6c5a.md) | 187 | `declaration-track:033ce54e7f1bdbf93fed6c5ad38a159827935dd4da0e5f726b206fb0d8dde97b` |
| 25 | `theorem` | [restrict₂_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739.lean/declarations/restrict-def--596c55d6071129d571882a16.md) | 189 | `result-track:596c55d6071129d571882a16623c99488f4741964667614a11c77eff0022c1be` |
| 26 | `theorem` | [restrict₂_comp_restrict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739.lean/declarations/restrict-comp-restrict--e3a5765d1ebf2ffe600af0d2.md) | 191 | `result-track:e3a5765d1ebf2ffe600af0d2ee595df661081b601dff71524466eea8b208c4c1` |
| 27 | `theorem` | [restrict₂_comp_restrict₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739.lean/declarations/restrict-comp-restrict--716407bece4ed5b4214109e9.md) | 194 | `result-track:716407bece4ed5b4214109e9f14a32c7451757c7563cd63cca43bfa6b0c35c19` |
| 28 | `lemma` | [dependsOn_restrict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739.lean/declarations/dependson-restrict--2565ebe9ad29abc73b29b384.md) | 197 | `result-track:2565ebe9ad29abc73b29b3844230514b60f9e87867dfd3b3a81571c820a0c156` |
| 29 | `lemma` | [restrict_preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739.lean/declarations/restrict-preimage--fc220b52623afe8e1cfa23a2.md) | 200 | `result-track:fc220b52623afe8e1cfa23a2d0f81c046c76bd880220cbec36b65597d79b3745` |
| 30 | `lemma` | [restrict₂_preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant2d414f4a53983c731e1e3be29640e0e7cab7be1ceba36a9c8d7a4bcc14ed2739.lean/declarations/restrict-preimage--070c7ba78475ca5da4cf8f30.md) | 210 | `result-track:070c7ba78475ca5da4cf8f301eaddd6f26cb4bff2d7cb1f695ee35f108f23aa0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
