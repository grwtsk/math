# Verification target: GRWTSK.Topology.AlgebraicTopology.Degenerate.Variante1f109251be2bcaa066061318b2a40987430d088b9d58f4499fedb31197560ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bcd2575ce3a19f772e1dd3f8042b4d3638e2867f",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Degenerate/Variante1f109251be2bcaa066061318b2a40987430d088b9d58f4499fedb31197560ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/Degenerate/Variante1f109251be2bcaa066061318b2a40987430d088b9d58f4499fedb31197560ea.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/Degenerate/Variante1f109251be2bcaa066061318b2a40987430d088b9d58f4499fedb31197560ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bcd2575ce3a19f772e1dd3f8042b4d3638e2867f`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Degenerate/Variante1f109251be2bcaa066061318b2a40987430d088b9d58f4499fedb31197560ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Degenerate/Variante1f109251be2bcaa066061318b2a40987430d088b9d58f4499fedb31197560ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialSet.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [degenerate](../../../../../mathematics/Topology/AlgebraicTopology/Degenerate/Variante1f109251be2bcaa066061318b2a40987430d088b9d58f4499fedb31197560ea.lean/declarations/degenerate--631b7177f0fa57fcdc01d5bf.md) | 32 | `declaration-track:631b7177f0fa57fcdc01d5bf15d64dff08ed0987f6557bf4d8827bd4dc14051d` |
| 2 | `def` | [nonDegenerate](../../../../../mathematics/Topology/AlgebraicTopology/Degenerate/Variante1f109251be2bcaa066061318b2a40987430d088b9d58f4499fedb31197560ea.lean/declarations/nondegenerate--3e8406bcfc6a0d0fe4741aff.md) | 38 | `declaration-track:3e8406bcfc6a0d0fe4741affa86cb5a92fe3c8b35cfbb69a70da2b1a21e24064` |
| 3 | `lemma` | [degenerate_zero](../../../../../mathematics/Topology/AlgebraicTopology/Degenerate/Variante1f109251be2bcaa066061318b2a40987430d088b9d58f4499fedb31197560ea.lean/declarations/degenerate-zero--084fdcf07b3195ae30a8758c.md) | 41 | `result-track:084fdcf07b3195ae30a8758c82eb53b8166b8b8a0c3bf9c761868f477bd15c4e` |
| 4 | `lemma` | [nondegenerate_zero](../../../../../mathematics/Topology/AlgebraicTopology/Degenerate/Variante1f109251be2bcaa066061318b2a40987430d088b9d58f4499fedb31197560ea.lean/declarations/nondegenerate-zero--ad14cb472aa7db192b97bc1f.md) | 48 | `result-track:ad14cb472aa7db192b97bc1f46dfc6af28437d0c216f1e1357bf062f7d250869` |
| 5 | `lemma` | [mem_nonDegenerate_iff_notMem_degenerate](../../../../../mathematics/Topology/AlgebraicTopology/Degenerate/Variante1f109251be2bcaa066061318b2a40987430d088b9d58f4499fedb31197560ea.lean/declarations/mem-nondegenerate-iff-notmem-degenerate--c724a3428ffb8e6ac0b64dbb.md) | 53 | `result-track:c724a3428ffb8e6ac0b64dbb47c7cdff049a6736e3ca334289d7ea1f9e156d05` |
| 6 | `lemma` | [mem_degenerate_iff_notMem_nonDegenerate](../../../../../mathematics/Topology/AlgebraicTopology/Degenerate/Variante1f109251be2bcaa066061318b2a40987430d088b9d58f4499fedb31197560ea.lean/declarations/mem-degenerate-iff-notmem-nondegenerate--4b91052a6d9ae0ce7e770fcd.md) | 59 | `result-track:4b91052a6d9ae0ce7e770fcddeadf4e7e96bb19b19fa2315bcb5f4794e61cf32` |
| 7 | `lemma` | [σ_mem_degenerate](../../../../../mathematics/Topology/AlgebraicTopology/Degenerate/Variante1f109251be2bcaa066061318b2a40987430d088b9d58f4499fedb31197560ea.lean/declarations/mem-degenerate--6d3ab18a014acd265789bb46.md) | 66 | `result-track:6d3ab18a014acd265789bb46773723e5ab85022005ea7c9962fc8710fca64106` |
| 8 | `lemma` | [mem_degenerate_iff](../../../../../mathematics/Topology/AlgebraicTopology/Degenerate/Variante1f109251be2bcaa066061318b2a40987430d088b9d58f4499fedb31197560ea.lean/declarations/mem-degenerate-iff--3e4d278e6d382871b3378f83.md) | 70 | `result-track:3e4d278e6d382871b3378f839218c9a4a77a24372d14e513a90a0f9402c08912` |
| 9 | `lemma` | [degenerate_eq_iUnion_range_σ](../../../../../mathematics/Topology/AlgebraicTopology/Degenerate/Variante1f109251be2bcaa066061318b2a40987430d088b9d58f4499fedb31197560ea.lean/declarations/degenerate-eq-iunion-range--de9f0fd6f9cc12bdc55480f9.md) | 81 | `result-track:de9f0fd6f9cc12bdc55480f9d6b35b3f2e0e504d4497b66bb671148b416e43f9` |
| 10 | `lemma` | [exists_nonDegenerate](../../../../../mathematics/Topology/AlgebraicTopology/Degenerate/Variante1f109251be2bcaa066061318b2a40987430d088b9d58f4499fedb31197560ea.lean/declarations/exists-nondegenerate--36f83465654ec1333493ab02.md) | 98 | `result-track:36f83465654ec1333493ab0218c35914c764152e7fcc1128310837422a04942d` |
| 11 | `lemma` | [isIso_of_nonDegenerate](../../../../../mathematics/Topology/AlgebraicTopology/Degenerate/Variante1f109251be2bcaa066061318b2a40987430d088b9d58f4499fedb31197560ea.lean/declarations/isiso-of-nondegenerate--2c25ce52b2e12d3655754cdc.md) | 113 | `result-track:2c25ce52b2e12d3655754cdc8e7688cc1b6ea9c8031942a9c2fccbf641fd4fce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
