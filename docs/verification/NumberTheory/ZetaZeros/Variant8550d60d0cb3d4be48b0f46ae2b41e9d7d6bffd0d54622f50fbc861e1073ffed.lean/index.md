# Verification target: GRWTSK.NumberTheory.ZetaZeros.Variant8550d60d0cb3d4be48b0f46ae2b41e9d7d6bffd0d54622f50fbc861e1073ffed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7216460a440a2398b75ad7edb9ebff33593db489",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ZetaZeros/Variant8550d60d0cb3d4be48b0f46ae2b41e9d7d6bffd0d54622f50fbc861e1073ffed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/ZetaZeros/Variant8550d60d0cb3d4be48b0f46ae2b41e9d7d6bffd0d54622f50fbc861e1073ffed.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/ZetaZeros/Variant8550d60d0cb3d4be48b0f46ae2b41e9d7d6bffd0d54622f50fbc861e1073ffed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7216460a440a2398b75ad7edb9ebff33593db489`.

Source path: `GRWTSK/NumberTheory/ZetaZeros/Variant8550d60d0cb3d4be48b0f46ae2b41e9d7d6bffd0d54622f50fbc861e1073ffed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ZetaZeros/Variant8550d60d0cb3d4be48b0f46ae2b41e9d7d6bffd0d54622f50fbc861e1073ffed.lean.json)

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
| 1 | `def` | [riemannZetaZeros](../../../../mathematics/NumberTheory/ZetaZeros/Variant8550d60d0cb3d4be48b0f46ae2b41e9d7d6bffd0d54622f50fbc861e1073ffed.lean/declarations/riemannzetazeros--4f0f961acb99401e0af41431.md) | 44 | `declaration-track:4f0f961acb99401e0af41431a6c35667f003be95116bb8262f5dcdbb93c572ef` |
| 2 | `lemma` | [mem_riemannZetaZeros](../../../../mathematics/NumberTheory/ZetaZeros/Variant8550d60d0cb3d4be48b0f46ae2b41e9d7d6bffd0d54622f50fbc861e1073ffed.lean/declarations/mem-riemannzetazeros--e7b2512ab8e2017f6e6630b8.md) | 46 | `result-track:e7b2512ab8e2017f6e6630b8875977c97031c1961b18fbd2baaf1f0a6cf59f24` |
| 3 | `lemma` | [riemannZetaZeros_codiscreteWithin_compl_one](../../../../mathematics/NumberTheory/ZetaZeros/Variant8550d60d0cb3d4be48b0f46ae2b41e9d7d6bffd0d54622f50fbc861e1073ffed.lean/declarations/riemannzetazeros-codiscretewithin-compl-one--2b9eb87d27c5f57787fb018b.md) | 50 | `result-track:2b9eb87d27c5f57787fb018b2afa7ca544d196ac4b2e6f67def709659099f094` |
| 4 | `lemma` | [compl_riemannZetaZeros_mem_codiscrete](../../../../mathematics/NumberTheory/ZetaZeros/Variant8550d60d0cb3d4be48b0f46ae2b41e9d7d6bffd0d54622f50fbc861e1073ffed.lean/declarations/compl-riemannzetazeros-mem-codiscrete--a5cdc13abeaa262927444b67.md) | 57 | `result-track:a5cdc13abeaa262927444b67cd63a138343d60d3d5929bf0a5d6173832bab182` |
| 5 | `lemma` | [isClosed_riemannZetaZeros](../../../../mathematics/NumberTheory/ZetaZeros/Variant8550d60d0cb3d4be48b0f46ae2b41e9d7d6bffd0d54622f50fbc861e1073ffed.lean/declarations/isclosed-riemannzetazeros--4976cabe2a5693d26c2d4b80.md) | 68 | `result-track:4976cabe2a5693d26c2d4b802c6bf548157cf2ca0152cb59f280aaf85ef9eeaf` |
| 6 | `lemma` | [isDiscrete_riemannZetaZeros](../../../../mathematics/NumberTheory/ZetaZeros/Variant8550d60d0cb3d4be48b0f46ae2b41e9d7d6bffd0d54622f50fbc861e1073ffed.lean/declarations/isdiscrete-riemannzetazeros--0d802a39b4fba278ee43bfd2.md) | 71 | `result-track:0d802a39b4fba278ee43bfd2c2f4d4d83c5e84149efeb526cd8222f0cc67dcaf` |
| 7 | `lemma` | [IsCompact.inter_riemannZetaZeros_finite](../../../../mathematics/NumberTheory/ZetaZeros/Variant8550d60d0cb3d4be48b0f46ae2b41e9d7d6bffd0d54622f50fbc861e1073ffed.lean/declarations/iscompact-inter-riemannzetazeros-finite--68c1fb4672fb1aa0908d0b7f.md) | 75 | `result-track:68c1fb4672fb1aa0908d0b7fb6d657364c73b6146b0cc96426bd59e01c2dc165` |
| 8 | `lemma` | [tendsto_riemannZeta_cofinite_cocompact](../../../../mathematics/NumberTheory/ZetaZeros/Variant8550d60d0cb3d4be48b0f46ae2b41e9d7d6bffd0d54622f50fbc861e1073ffed.lean/declarations/tendsto-riemannzeta-cofinite-cocompact--86bfff636165f05f52fe547f.md) | 81 | `result-track:86bfff636165f05f52fe547f8778c318be0f7687b2c228c93afd86b4d5e24733` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
