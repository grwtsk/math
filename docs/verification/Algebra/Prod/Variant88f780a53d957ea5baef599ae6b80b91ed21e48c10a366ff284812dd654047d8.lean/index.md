# Verification target: GRWTSK.Algebra.Prod.Variant88f780a53d957ea5baef599ae6b80b91ed21e48c10a366ff284812dd654047d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a4e91ffa3bf1cdcefefca11877cbf6d55fd9eda",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Prod/Variant88f780a53d957ea5baef599ae6b80b91ed21e48c10a366ff284812dd654047d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Prod/Variant88f780a53d957ea5baef599ae6b80b91ed21e48c10a366ff284812dd654047d8.lean/index.md) · [Full source](../../../../mathematics/Algebra/Prod/Variant88f780a53d957ea5baef599ae6b80b91ed21e48c10a366ff284812dd654047d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a4e91ffa3bf1cdcefefca11877cbf6d55fd9eda`.

Source path: `GRWTSK/Algebra/Prod/Variant88f780a53d957ea5baef599ae6b80b91ed21e48c10a366ff284812dd654047d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Prod/Variant88f780a53d957ea5baef599ae6b80b91ed21e48c10a366ff284812dd654047d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasAntidiagonal](../../../../mathematics/Algebra/Prod/Variant88f780a53d957ea5baef599ae6b80b91ed21e48c10a366ff284812dd654047d8.lean/declarations/hasantidiagonal--ffd407f628f9586b27612339.md) | 72 | `declaration-track:ffd407f628f9586b27612339f706eeb2b6a4cca51442433f115f127da880668d` |
| 2 | `class` | [HasMulAntidiagonal](../../../../mathematics/Algebra/Prod/Variant88f780a53d957ea5baef599ae6b80b91ed21e48c10a366ff284812dd654047d8.lean/declarations/hasmulantidiagonal--26911a5485491b152e01f498.md) | 84 | `declaration-track:26911a5485491b152e01f4989b0f3adaf04d226eb89e1ca97d001f0dfafe9077` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Prod/Variant88f780a53d957ea5baef599ae6b80b91ed21e48c10a366ff284812dd654047d8.lean/declarations/instance--ac0c3f80462a4f364e61934e.md) | 103 | `declaration-track:ac0c3f80462a4f364e61934e0e970fc340243dd90b97246fe354ba9e304dd71e` |
| 4 | `lemma` | [nonempty_antidiagonal](../../../../mathematics/Algebra/Prod/Variant88f780a53d957ea5baef599ae6b80b91ed21e48c10a366ff284812dd654047d8.lean/declarations/nonempty-antidiagonal--fe00eb4d603316504877904a.md) | 110 | `result-track:fe00eb4d603316504877904a4c33d908b5c0f7a7a661cdbac65631f20cc83965` |
| 5 | `lemma` | [congr](../../../../mathematics/Algebra/Prod/Variant88f780a53d957ea5baef599ae6b80b91ed21e48c10a366ff284812dd654047d8.lean/declarations/congr--a90a9434d88ffa29e0ce2a86.md) | 118 | `result-track:a90a9434d88ffa29e0ce2a8698238d5f3326e7da5f01bf887db3a485aacd9897` |
| 6 | `theorem` | [swap_mem_mulAntidiagonal](../../../../mathematics/Algebra/Prod/Variant88f780a53d957ea5baef599ae6b80b91ed21e48c10a366ff284812dd654047d8.lean/declarations/swap-mem-mulantidiagonal--c643511ed8d672ac4d65d724.md) | 122 | `result-track:c643511ed8d672ac4d65d724c866e1944202f3d627cc0011cbf00545eca3561a` |
| 7 | `theorem` | [map_prodComm_mulAntidiagonal](../../../../mathematics/Algebra/Prod/Variant88f780a53d957ea5baef599ae6b80b91ed21e48c10a366ff284812dd654047d8.lean/declarations/map-prodcomm-mulantidiagonal--cfdc2374dbe7e91ed023f237.md) | 127 | `result-track:cfdc2374dbe7e91ed023f237de6d1e0b27fe69c37286caa9762f88ee18dde576` |
| 8 | `theorem` | [map_swap_mulAntidiagonal](../../../../mathematics/Algebra/Prod/Variant88f780a53d957ea5baef599ae6b80b91ed21e48c10a366ff284812dd654047d8.lean/declarations/map-swap-mulantidiagonal--b68c9953773b9e9fc219f2f7.md) | 133 | `result-track:b68c9953773b9e9fc219f2f7e393563d5b0d1bfa6b1896514dbc476501204fcb` |
| 9 | `theorem` | [mulAntidiagonal_congr](../../../../mathematics/Algebra/Prod/Variant88f780a53d957ea5baef599ae6b80b91ed21e48c10a366ff284812dd654047d8.lean/declarations/mulantidiagonal-congr--7a7a3a94ad26534abbd4160b.md) | 148 | `result-track:7a7a3a94ad26534abbd4160b28e1ad47770be550c2b1b241cc0a7017739e28b8` |
| 10 | `theorem` | [mulAntidiagonal_subtype_ext](../../../../mathematics/Algebra/Prod/Variant88f780a53d957ea5baef599ae6b80b91ed21e48c10a366ff284812dd654047d8.lean/declarations/mulantidiagonal-subtype-ext--071681dfdef00afc4c4176a3.md) | 159 | `result-track:071681dfdef00afc4c4176a3dfdfcc5929c4d9362355e21afd65ad77dcc57426` |
| 11 | `lemma` | [mulAntidiagonal_congr'](../../../../mathematics/Algebra/Prod/Variant88f780a53d957ea5baef599ae6b80b91ed21e48c10a366ff284812dd654047d8.lean/declarations/mulantidiagonal-congr--eaf4b261b426029680b82342.md) | 173 | `result-track:eaf4b261b426029680b82342087ed7521d5b79d5c4152efbbd5ca9d644ed57ef` |
| 12 | `theorem` | [mulAntidiagonal_one](../../../../mathematics/Algebra/Prod/Variant88f780a53d957ea5baef599ae6b80b91ed21e48c10a366ff284812dd654047d8.lean/declarations/mulantidiagonal-one--97cab781758ae5cb25625e10.md) | 185 | `result-track:97cab781758ae5cb25625e105eef496039fb54cbbf5fd25d27abdab33561db78` |
| 13 | `theorem` | [mulAntidiagonal.fst_le](../../../../mathematics/Algebra/Prod/Variant88f780a53d957ea5baef599ae6b80b91ed21e48c10a366ff284812dd654047d8.lean/declarations/mulantidiagonal-fst-le--0df6f7a3068954b24a9f91ad.md) | 190 | `result-track:0df6f7a3068954b24a9f91adb6bea8f2cd86460688b284b9823b19ff993683c2` |
| 14 | `theorem` | [mulAntidiagonal.snd_le](../../../../mathematics/Algebra/Prod/Variant88f780a53d957ea5baef599ae6b80b91ed21e48c10a366ff284812dd654047d8.lean/declarations/mulantidiagonal-snd-le--b01b674d4e9f62552493cb18.md) | 196 | `result-track:b01b674d4e9f62552493cb1850d929c98634e66bdb81b554963592b15f0f6ac8` |
| 15 | `theorem` | [filter_fst_eq_antidiagonal](../../../../mathematics/Algebra/Prod/Variant88f780a53d957ea5baef599ae6b80b91ed21e48c10a366ff284812dd654047d8.lean/declarations/filter-fst-eq-antidiagonal--c51111c2ed9689af567eeee1.md) | 212 | `result-track:c51111c2ed9689af567eeee1e2a2cd4cb4f0569405978c6bfa2cee3df41e41cc` |
| 16 | `theorem` | [filter_snd_eq_antidiagonal](../../../../mathematics/Algebra/Prod/Variant88f780a53d957ea5baef599ae6b80b91ed21e48c10a366ff284812dd654047d8.lean/declarations/filter-snd-eq-antidiagonal--5b0b55d63edf6c87b006106b.md) | 226 | `result-track:5b0b55d63edf6c87b006106bf48a669d793ef39ec48479e81cb89ad1581e06c1` |
| 17 | `def` | [sigmaMulAntidiagonalEquivProd](../../../../mathematics/Algebra/Prod/Variant88f780a53d957ea5baef599ae6b80b91ed21e48c10a366ff284812dd654047d8.lean/declarations/sigmamulantidiagonalequivprod--ee8c39cfaf2d2dda74490bb5.md) | 242 | `declaration-track:ee8c39cfaf2d2dda74490bb510ce0359e7a0bfb43e81923cef17c03c32b2afce` |
| 18 | `abbrev` | [mulAntidiagonalOfLocallyFinite](../../../../mathematics/Algebra/Prod/Variant88f780a53d957ea5baef599ae6b80b91ed21e48c10a366ff284812dd654047d8.lean/declarations/mulantidiagonaloflocallyfinite--8436e4b93e875c2ec80685c7.md) | 265 | `declaration-track:8436e4b93e875c2ec80685c7f6d4a78d808e5438b8b11f584beb1a0719038bfd` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Prod/Variant88f780a53d957ea5baef599ae6b80b91ed21e48c10a366ff284812dd654047d8.lean/declarations/instance--eef2d4e88fe0f103d894986a.md) | 281 | `declaration-track:eef2d4e88fe0f103d894986adc30bce5356ce8965a39cd93b32b31e7b5631bcf` |
| 20 | `lemma` | [mem_mulAntidiagonal_ofAdd_iff_toAdd_mem_antidiagonal](../../../../mathematics/Algebra/Prod/Variant88f780a53d957ea5baef599ae6b80b91ed21e48c10a366ff284812dd654047d8.lean/declarations/mem-mulantidiagonal-ofadd-iff-toadd-mem-antidiagonal--d28b3f65accdbf1d0720247a.md) | 286 | `result-track:d28b3f65accdbf1d0720247a23f21f13be0a1ed8b5885ae64386b771e53abe61` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
