# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Heuristic.Variant93a03edf96bad5f255247dce5b8bab8e817caa91d3cdbd95c13f75a6b4318e95

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17b79962b1fa7caf337a5bad3cac30aa2cb9a453",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant93a03edf96bad5f255247dce5b8bab8e817caa91d3cdbd95c13f75a6b4318e95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant93a03edf96bad5f255247dce5b8bab8e817caa91d3cdbd95c13f75a6b4318e95.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant93a03edf96bad5f255247dce5b8bab8e817caa91d3cdbd95c13f75a6b4318e95.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17b79962b1fa7caf337a5bad3cac30aa2cb9a453`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant93a03edf96bad5f255247dce5b8bab8e817caa91d3cdbd95c13f75a6b4318e95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant93a03edf96bad5f255247dce5b8bab8e817caa91d3cdbd95c13f75a6b4318e95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.FloatEval` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimization.Box` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [intToFloat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant93a03edf96bad5f255247dce5b8bab8e817caa91d3cdbd95c13f75a6b4318e95.lean/declarations/inttofloat--97e451a548a47eb3d71734ce.md) | 52 | `declaration-track:97e451a548a47eb3d71734ce48b97b2a8086920ea24790c90aa57e74fcd3d15b` |
| 2 | `def` | [ratToFloat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant93a03edf96bad5f255247dce5b8bab8e817caa91d3cdbd95c13f75a6b4318e95.lean/declarations/rattofloat--450680e649ed292d2510c407.md) | 57 | `declaration-track:450680e649ed292d2510c4075b0ba56a1c1bfc910c91e9239e8117ad33d986d7` |
| 3 | `structure` | [FloatBox](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant93a03edf96bad5f255247dce5b8bab8e817caa91d3cdbd95c13f75a6b4318e95.lean/declarations/floatbox--ef46d08ced16de6ad528ba27.md) | 63 | `declaration-track:ef46d08ced16de6ad528ba275aaf2efc1c199a00668d19d84d454924e9d7b0df` |
| 4 | `def` | [boxToFloatBox](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant93a03edf96bad5f255247dce5b8bab8e817caa91d3cdbd95c13f75a6b4318e95.lean/declarations/boxtofloatbox--cc5f06c3b2b946ad2c335bac.md) | 71 | `declaration-track:cc5f06c3b2b946ad2c335bac56e4a59010b755916380343f1e901f9e60a3bcd2` |
| 5 | `def` | [FloatBox.dim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant93a03edf96bad5f255247dce5b8bab8e817caa91d3cdbd95c13f75a6b4318e95.lean/declarations/floatbox-dim--de05c36b5180193495d250db.md) | 77 | `declaration-track:de05c36b5180193495d250db433edfa90976bad57c3d22de7abdc9969a22d2e3` |
| 6 | `structure` | [PRNG](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant93a03edf96bad5f255247dce5b8bab8e817caa91d3cdbd95c13f75a6b4318e95.lean/declarations/prng--12cfca3a14b2ef045fd21a76.md) | 83 | `declaration-track:12cfca3a14b2ef045fd21a762d7a52740a99e8a335df5c867e24881b24826621` |
| 7 | `def` | [PRNG.new](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant93a03edf96bad5f255247dce5b8bab8e817caa91d3cdbd95c13f75a6b4318e95.lean/declarations/prng-new--8895602c1f0cf6fa907f0a6c.md) | 88 | `declaration-track:8895602c1f0cf6fa907f0a6c100fb390e611b7b7ba17f97ba9309895595664ad` |
| 8 | `def` | [PRNG.nextUnit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant93a03edf96bad5f255247dce5b8bab8e817caa91d3cdbd95c13f75a6b4318e95.lean/declarations/prng-nextunit--a90b5a1c6de75d7360e08230.md) | 92 | `declaration-track:a90b5a1c6de75d7360e082308e33f80e78b13fbec179dcd1955d0697144de01d` |
| 9 | `def` | [PRNG.next](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant93a03edf96bad5f255247dce5b8bab8e817caa91d3cdbd95c13f75a6b4318e95.lean/declarations/prng-next--84f9e2a0262cb752bcf5311f.md) | 101 | `declaration-track:84f9e2a0262cb752bcf5311f7882af017be3a535ba68f0c384f4d1b804979990` |
| 10 | `def` | [PRNG.nextN](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant93a03edf96bad5f255247dce5b8bab8e817caa91d3cdbd95c13f75a6b4318e95.lean/declarations/prng-nextn--60fe04fb0ecfabccd14f2deb.md) | 106 | `declaration-track:60fe04fb0ecfabccd14f2deb5cd84d0658e32304b7f1eb4aff0fe03f21dd78e6` |
| 11 | `def` | [samplePoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant93a03edf96bad5f255247dce5b8bab8e817caa91d3cdbd95c13f75a6b4318e95.lean/declarations/samplepoint--28c205f36f7a6964ece13411.md) | 118 | `declaration-track:28c205f36f7a6964ece134110cd466535f358a47113ce7d606e0b8a6dea4ecb2` |
| 12 | `def` | [samplePoints](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant93a03edf96bad5f255247dce5b8bab8e817caa91d3cdbd95c13f75a6b4318e95.lean/declarations/samplepoints--a302ff2331df3eb75e6304f1.md) | 127 | `declaration-track:a302ff2331df3eb75e6304f1a6db504ccf1d523fe6e47de9a18712403090c1e9` |
| 13 | `def` | [FloatBox.center](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant93a03edf96bad5f255247dce5b8bab8e817caa91d3cdbd95c13f75a6b4318e95.lean/declarations/floatbox-center--05c388ee55d59877c1d7e693.md) | 137 | `declaration-track:05c388ee55d59877c1d7e6937647204494fe0d2b46f5d5a8528df8537b48ef77` |
| 14 | `def` | [findBestCandidate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant93a03edf96bad5f255247dce5b8bab8e817caa91d3cdbd95c13f75a6b4318e95.lean/declarations/findbestcandidate--982896a107f271728d801b8c.md) | 149 | `declaration-track:982896a107f271728d801b8c556db31e1502a6b4602f70ea30d94f24417088e9` |
| 15 | `def` | [findTopCandidates](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant93a03edf96bad5f255247dce5b8bab8e817caa91d3cdbd95c13f75a6b4318e95.lean/declarations/findtopcandidates--87f4d734e59deb58061fd932.md) | 173 | `declaration-track:87f4d734e59deb58061fd932d6a23f54c1009878cfccb47f375af91f1ad9fa85` |
| 16 | `def` | [gridSearch](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant93a03edf96bad5f255247dce5b8bab8e817caa91d3cdbd95c13f75a6b4318e95.lean/declarations/gridsearch--b81d01884327c72eeaf16f84.md) | 202 | `declaration-track:b81d01884327c72eeaf16f841e03b7340ba76ce900e1c0ca9d4d989476f6f861` |
| 17 | `def` | [hybridSearch](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heuristic/Variant93a03edf96bad5f255247dce5b8bab8e817caa91d3cdbd95c13f75a6b4318e95.lean/declarations/hybridsearch--66d97f198ac54dab22de576e.md) | 252 | `declaration-track:66d97f198ac54dab22de576e89646029ca9333b823eed3d62c0b1c3462e1c31c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
