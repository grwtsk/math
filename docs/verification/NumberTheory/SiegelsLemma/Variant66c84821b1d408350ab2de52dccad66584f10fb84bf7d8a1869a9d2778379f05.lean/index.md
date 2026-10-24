# Verification target: GRWTSK.NumberTheory.SiegelsLemma.Variant66c84821b1d408350ab2de52dccad66584f10fb84bf7d8a1869a9d2778379f05

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f5f4512aabd9fec6e69a16e9cc72d6880bcdf3c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/SiegelsLemma/Variant66c84821b1d408350ab2de52dccad66584f10fb84bf7d8a1869a9d2778379f05.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/SiegelsLemma/Variant66c84821b1d408350ab2de52dccad66584f10fb84bf7d8a1869a9d2778379f05.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/SiegelsLemma/Variant66c84821b1d408350ab2de52dccad66584f10fb84bf7d8a1869a9d2778379f05.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f5f4512aabd9fec6e69a16e9cc72d6880bcdf3c`.

Source path: `GRWTSK/NumberTheory/SiegelsLemma/Variant66c84821b1d408350ab2de52dccad66584f10fb84bf7d8a1869a9d2778379f05.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/SiegelsLemma/Variant66c84821b1d408350ab2de52dccad66584f10fb84bf7d8a1869a9d2778379f05.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Pi.Interval` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Rify` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [image_T_subset_S](../../../../mathematics/NumberTheory/SiegelsLemma/Variant66c84821b1d408350ab2de52dccad66584f10fb84bf7d8a1869a9d2778379f05.lean/declarations/image-t-subset-s--d0d3f8bd1dc96af10f3c77e3.md) | 70 | `result-track:d0d3f8bd1dc96af10f3c77e3a4e501dc39e5c3976a417df2015657aa11d41ee9` |
| 2 | `lemma` | [card_T_eq](../../../../mathematics/NumberTheory/SiegelsLemma/Variant66c84821b1d408350ab2de52dccad66584f10fb84bf7d8a1869a9d2778379f05.lean/declarations/card-t-eq--500dfefe53b44ecd9d334299.md) | 94 | `result-track:500dfefe53b44ecd9d3342990680f6c4186e721855012c9172c6b7bd223bf8a9` |
| 3 | `lemma` | [N_le_P_add_one](../../../../mathematics/NumberTheory/SiegelsLemma/Variant66c84821b1d408350ab2de52dccad66584f10fb84bf7d8a1869a9d2778379f05.lean/declarations/n-le-p-add-one--62b9ae4c576cd59c120d0605.md) | 100 | `result-track:62b9ae4c576cd59c120d0605e70cdebd3dbb8e5ae2710f8a85875e62429e7a5c` |
| 4 | `lemma` | [card_S_eq](../../../../mathematics/NumberTheory/SiegelsLemma/Variant66c84821b1d408350ab2de52dccad66584f10fb84bf7d8a1869a9d2778379f05.lean/declarations/card-s-eq--19bd4a0defb281f5f239e6b1.md) | 112 | `result-track:19bd4a0defb281f5f239e6b198348fec8fa89a5f27efbf8bf1ddc0b1495c50b7` |
| 5 | `lemma` | [one_le_norm_A_of_ne_zero](../../../../mathematics/NumberTheory/SiegelsLemma/Variant66c84821b1d408350ab2de52dccad66584f10fb84bf7d8a1869a9d2778379f05.lean/declarations/one-le-norm-a-of-ne-zero--a715146d2295455e193d5584.md) | 120 | `result-track:a715146d2295455e193d5584001a9664cd6cb8f7f48b8d68616159df082bcaf9` |
| 6 | `lemma` | [card_S_lt_card_T](../../../../mathematics/NumberTheory/SiegelsLemma/Variant66c84821b1d408350ab2de52dccad66584f10fb84bf7d8a1869a9d2778379f05.lean/declarations/card-s-lt-card-t--11ba506e01a4b0f97c8ff5d5.md) | 135 | `result-track:11ba506e01a4b0f97c8ff5d555f77054b8b9d38f0f1af7ed6af45aa8bcb01c31` |
| 7 | `theorem` | [exists_ne_zero_int_vec_norm_le](../../../../mathematics/NumberTheory/SiegelsLemma/Variant66c84821b1d408350ab2de52dccad66584f10fb84bf7d8a1869a9d2778379f05.lean/declarations/exists-ne-zero-int-vec-norm-le--25eaca691d7d65f3f67684ab.md) | 176 | `result-track:25eaca691d7d65f3f67684ab59648e374f6861304a861d742ba922a06f655058` |
| 8 | `theorem` | [exists_ne_zero_int_vec_norm_le'](../../../../mathematics/NumberTheory/SiegelsLemma/Variant66c84821b1d408350ab2de52dccad66584f10fb84bf7d8a1869a9d2778379f05.lean/declarations/exists-ne-zero-int-vec-norm-le--9712eccf22d699fff1777d31.md) | 209 | `result-track:9712eccf22d699fff1777d314dbe254a0fa8f8a75d926f2e44184a990889e388` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
