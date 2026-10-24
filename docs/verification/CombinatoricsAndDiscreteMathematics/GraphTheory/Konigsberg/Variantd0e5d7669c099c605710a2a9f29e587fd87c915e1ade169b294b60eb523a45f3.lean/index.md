# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Konigsberg.Variantd0e5d7669c099c605710a2a9f29e587fd87c915e1ade169b294b60eb523a45f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6de9bf589348485898be0eb2ff7022b239432a7b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantd0e5d7669c099c605710a2a9f29e587fd87c915e1ade169b294b60eb523a45f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantd0e5d7669c099c605710a2a9f29e587fd87c915e1ade169b294b60eb523a45f3.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantd0e5d7669c099c605710a2a9f29e587fd87c915e1ade169b294b60eb523a45f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6de9bf589348485898be0eb2ff7022b239432a7b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantd0e5d7669c099c605710a2a9f29e587fd87c915e1ade169b294b60eb523a45f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantd0e5d7669c099c605710a2a9f29e587fd87c915e1ade169b294b60eb523a45f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Trails` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Verts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantd0e5d7669c099c605710a2a9f29e587fd87c915e1ade169b294b60eb523a45f3.lean/declarations/verts--0767bbf446f2d80e3a25cd88.md) | 31 | `declaration-track:0767bbf446f2d80e3a25cd88f2484dce6ecb2bba3a53cb6d189984997ef7e958` |
| 2 | `def` | [edges](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantd0e5d7669c099c605710a2a9f29e587fd87c915e1ade169b294b60eb523a45f3.lean/declarations/edges--c0b4ac2f4b7a00f46b38d4d6.md) | 43 | `declaration-track:c0b4ac2f4b7a00f46b38d4d63548a65eea1d60336e3ab2838516d69c169a5dd0` |
| 3 | `def` | [adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantd0e5d7669c099c605710a2a9f29e587fd87c915e1ade169b294b60eb523a45f3.lean/declarations/adj--bfa01c47e4f6252a68d426f3.md) | 51 | `declaration-track:bfa01c47e4f6252a68d426f321ff2e2b613eece54f8e41bfbe19e863b927f06f` |
| 4 | `def` | [graph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantd0e5d7669c099c605710a2a9f29e587fd87c915e1ade169b294b60eb523a45f3.lean/declarations/graph--68d3626e16380cb6375fa2d5.md) | 62 | `declaration-track:68d3626e16380cb6375fa2d52321fabe3948e3fd47afff374a16f1f497fc7e8d` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantd0e5d7669c099c605710a2a9f29e587fd87c915e1ade169b294b60eb523a45f3.lean/declarations/instance--88e1803c3a8be0d1cfff68b2.md) | 72 | `declaration-track:88e1803c3a8be0d1cfff68b2f40c39a5579c38b8a3186b4c3d45c021e8112374` |
| 6 | `def` | [degree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantd0e5d7669c099c605710a2a9f29e587fd87c915e1ade169b294b60eb523a45f3.lean/declarations/degree--6aed0892891e4836aed4872a.md) | 76 | `declaration-track:6aed0892891e4836aed4872a736498cc83deb7c0828b21dc2772ef47352b3439` |
| 7 | `lemma` | [degree_eq_degree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantd0e5d7669c099c605710a2a9f29e587fd87c915e1ade169b294b60eb523a45f3.lean/declarations/degree-eq-degree--694d0cf61e2563e3bb663b89.md) | 82 | `result-track:694d0cf61e2563e3bb663b8992c749903e34c31f9baa0173a9d49d054a0be775` |
| 8 | `lemma` | [not_even_degree_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantd0e5d7669c099c605710a2a9f29e587fd87c915e1ade169b294b60eb523a45f3.lean/declarations/not-even-degree-iff--469594e5bb4bd10e4793ad16.md) | 85 | `result-track:469594e5bb4bd10e4793ad1672a67c41143c2ace724b176c8550140ccf08434a` |
| 9 | `lemma` | [setOf_odd_degree_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantd0e5d7669c099c605710a2a9f29e587fd87c915e1ade169b294b60eb523a45f3.lean/declarations/setof-odd-degree-eq--117090f56086d322be9c96b9.md) | 88 | `result-track:117090f56086d322be9c96b98577e290e9c7f217a38e93f65eeb037e28b49bc2` |
| 10 | `theorem` | [not_isEulerian](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantd0e5d7669c099c605710a2a9f29e587fd87c915e1ade169b294b60eb523a45f3.lean/declarations/not-iseulerian--9757ec3aabaacb7c5d2404b8.md) | 94 | `result-track:9757ec3aabaacb7c5d2404b817d56898f79c4dc4a8e4b4cabd3f0d93f8552c30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
