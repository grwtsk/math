# Verification target: GRWTSK.Algebra.LinearAlgebra.Bilinear.Variant5baa119146760ec0c6ce18517ca9f3f30e279dfd954edc84d6798c0a8f7d45a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bda4030e7ba3c747aeb2b5fe742c1fa02806b0ce",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Bilinear/Variant5baa119146760ec0c6ce18517ca9f3f30e279dfd954edc84d6798c0a8f7d45a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5baa119146760ec0c6ce18517ca9f3f30e279dfd954edc84d6798c0a8f7d45a5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5baa119146760ec0c6ce18517ca9f3f30e279dfd954edc84d6798c0a8f7d45a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bda4030e7ba3c747aeb2b5fe742c1fa02806b0ce`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Bilinear/Variant5baa119146760ec0c6ce18517ca9f3f30e279dfd954edc84d6798c0a8f7d45a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Bilinear/Variant5baa119146760ec0c6ce18517ca9f3f30e279dfd954edc84d6798c0a8f7d45a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Span` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.BilinearMap` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [map₂](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5baa119146760ec0c6ce18517ca9f3f30e279dfd954edc84d6798c0a8f7d45a5.lean/declarations/map--b8b2183ffcd52b7f9d8feb71.md) | 55 | `declaration-track:b8b2183ffcd52b7f9d8feb715bc98189968194364b5960def05313ad0425edfd` |
| 2 | `theorem` | [apply_mem_map₂](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5baa119146760ec0c6ce18517ca9f3f30e279dfd954edc84d6798c0a8f7d45a5.lean/declarations/apply-mem-map--0db1ac92ff8a3befcfad93ba.md) | 59 | `result-track:0db1ac92ff8a3befcfad93baf22a296c4c780ef9f580166fe2725836e51142d0` |
| 3 | `theorem` | [map₂_le](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5baa119146760ec0c6ce18517ca9f3f30e279dfd954edc84d6798c0a8f7d45a5.lean/declarations/map-le--f8738d8ca80fa5758528758e.md) | 64 | `result-track:f8738d8ca80fa5758528758e189aae62d4728c025175dfa6fcd46b48bb71f203` |
| 4 | `theorem` | [map₂_span_span](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5baa119146760ec0c6ce18517ca9f3f30e279dfd954edc84d6798c0a8f7d45a5.lean/declarations/map-span-span--d1ab6fc5fb445531d5f1f458.md) | 71 | `result-track:d1ab6fc5fb445531d5f1f458e312c995af31b267403c8254d2b048a34cd892bf` |
| 5 | `theorem` | [map₂_bot_right](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5baa119146760ec0c6ce18517ca9f3f30e279dfd954edc84d6798c0a8f7d45a5.lean/declarations/map-bot-right--b7f8abb06da75b7a34d78be0.md) | 90 | `result-track:b7f8abb06da75b7a34d78be0aa4b1e48428386e5285b7fdc57af2ca1a4200c8b` |
| 6 | `theorem` | [map₂_bot_left](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5baa119146760ec0c6ce18517ca9f3f30e279dfd954edc84d6798c0a8f7d45a5.lean/declarations/map-bot-left--4ee0ea999e0158c1f900c3b3.md) | 98 | `result-track:4ee0ea999e0158c1f900c3b3dca9441cd0a5d2c4ccbb836006a850a5db878663` |
| 7 | `theorem` | [map₂_le_map₂](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5baa119146760ec0c6ce18517ca9f3f30e279dfd954edc84d6798c0a8f7d45a5.lean/declarations/map-le-map--08ae20e7e4a92db9e4f0b410.md) | 106 | `result-track:08ae20e7e4a92db9e4f0b410ac5a8432941ff5326720a0e8f943a0d2378fd7d7` |
| 8 | `theorem` | [map₂_le_map₂_left](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5baa119146760ec0c6ce18517ca9f3f30e279dfd954edc84d6798c0a8f7d45a5.lean/declarations/map-le-map-left--439ace674a5e3dfd1bce452a.md) | 111 | `result-track:439ace674a5e3dfd1bce452af2c34e75406bdc4f9744663a416dfacc874d03ce` |
| 9 | `theorem` | [map₂_le_map₂_right](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5baa119146760ec0c6ce18517ca9f3f30e279dfd954edc84d6798c0a8f7d45a5.lean/declarations/map-le-map-right--37b9606a03d68fa4317b57ea.md) | 116 | `result-track:37b9606a03d68fa4317b57ea351e159fa675fc27c6eaa8aa55c71a14c9aa6a61` |
| 10 | `theorem` | [map₂_sup_right](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5baa119146760ec0c6ce18517ca9f3f30e279dfd954edc84d6798c0a8f7d45a5.lean/declarations/map-sup-right--185359003907f31a91a089d6.md) | 121 | `result-track:185359003907f31a91a089d656fa267e3b64c391588b4c6f1b78ad78bdaf3642` |
| 11 | `theorem` | [map₂_sup_left](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5baa119146760ec0c6ce18517ca9f3f30e279dfd954edc84d6798c0a8f7d45a5.lean/declarations/map-sup-left--81ebb8eee9304cc69ccdfe97.md) | 130 | `result-track:81ebb8eee9304cc69ccdfe977df4172a58a271742f140410219a4a23ed43ba97` |
| 12 | `theorem` | [image2_subset_map₂](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5baa119146760ec0c6ce18517ca9f3f30e279dfd954edc84d6798c0a8f7d45a5.lean/declarations/image2-subset-map--8d44c2a349d9c1fb76375543.md) | 141 | `result-track:8d44c2a349d9c1fb76375543cd486ce6b9a473776b8d7b76def28fccae4fe70a` |
| 13 | `theorem` | [map₂_eq_span_image2](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5baa119146760ec0c6ce18517ca9f3f30e279dfd954edc84d6798c0a8f7d45a5.lean/declarations/map-eq-span-image2--9d026a9941ebaae9b1e261f4.md) | 147 | `result-track:9d026a9941ebaae9b1e261f44a2cf36eb02da974a0e8ffb72fb80864850a47ce` |
| 14 | `theorem` | [map₂_flip](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5baa119146760ec0c6ce18517ca9f3f30e279dfd954edc84d6798c0a8f7d45a5.lean/declarations/map-flip--ae9be46077a73e04ecc167ba.md) | 152 | `result-track:ae9be46077a73e04ecc167baa57d5ef4a09c1952fa2fe37a4b09c0e5a91d6b6e` |
| 15 | `theorem` | [map₂_iSup_left](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5baa119146760ec0c6ce18517ca9f3f30e279dfd954edc84d6798c0a8f7d45a5.lean/declarations/map-isup-left--3e634f997c5f0ca69cbb73a0.md) | 158 | `result-track:3e634f997c5f0ca69cbb73a06c66193e6396a2f169aec970c30a647c586af603` |
| 16 | `theorem` | [map₂_iSup_right](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5baa119146760ec0c6ce18517ca9f3f30e279dfd954edc84d6798c0a8f7d45a5.lean/declarations/map-isup-right--ded222ab88d445a598c2c1d5.md) | 165 | `result-track:ded222ab88d445a598c2c1d5ada1333a91b4b884131f56a61b203979c3f62f0e` |
| 17 | `theorem` | [map₂_span_singleton_eq_map](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5baa119146760ec0c6ce18517ca9f3f30e279dfd954edc84d6798c0a8f7d45a5.lean/declarations/map-span-singleton-eq-map--6c2c9489bf2d3e3d4abf648b.md) | 172 | `result-track:6c2c9489bf2d3e3d4abf648b0ebac80af3580591cfe8066f9c41d1d48b28654a` |
| 18 | `theorem` | [map₂_span_singleton_eq_map_flip](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variant5baa119146760ec0c6ce18517ca9f3f30e279dfd954edc84d6798c0a8f7d45a5.lean/declarations/map-span-singleton-eq-map-flip--f7ca43df5675dd34283fea9e.md) | 184 | `result-track:f7ca43df5675dd34283fea9ee1163cbcfbb05daae7b0882403896d1e511357a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
