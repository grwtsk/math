# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Memcmp.Variant93176f08e3ffb73a217022b0d418eeb2e0256804c078175acd58dc1c20e5bcb4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "455b30ac9a30acf1a159a9f4291be0164dd381b1",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Memcmp/Variant93176f08e3ffb73a217022b0d418eeb2e0256804c078175acd58dc1c20e5bcb4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Memcmp/Variant93176f08e3ffb73a217022b0d418eeb2e0256804c078175acd58dc1c20e5bcb4.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Memcmp/Variant93176f08e3ffb73a217022b0d418eeb2e0256804c078175acd58dc1c20e5bcb4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `455b30ac9a30acf1a159a9f4291be0164dd381b1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Memcmp/Variant93176f08e3ffb73a217022b0d418eeb2e0256804c078175acd58dc1c20e5bcb4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Memcmp/Variant93176f08e3ffb73a217022b0d418eeb2e0256804c078175acd58dc1c20e5bcb4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.ByteArray.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.MinMax` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [memcmpStr_eq_true_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Memcmp/Variant93176f08e3ffb73a217022b0d418eeb2e0256804c078175acd58dc1c20e5bcb4.lean/declarations/memcmpstr-eq-true-iff--41719589365a020a7ada1c61.md) | 19 | `result-track:41719589365a020a7ada1c6181b9504ae1f7896a68e09d4811c23b3e190a6925` |
| 2 | `theorem` | [memcmpSlice_eq_true_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Memcmp/Variant93176f08e3ffb73a217022b0d418eeb2e0256804c078175acd58dc1c20e5bcb4.lean/declarations/memcmpslice-eq-true-iff--2dbb8983ce895b660e06b70c.md) | 52 | `result-track:2dbb8983ce895b660e06b70c0cc248cb4f33f94b31eeb34a62fd25a2989cb803` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
