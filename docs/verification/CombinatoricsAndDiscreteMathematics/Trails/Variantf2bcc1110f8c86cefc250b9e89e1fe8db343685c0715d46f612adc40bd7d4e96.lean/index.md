# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Trails.Variantf2bcc1110f8c86cefc250b9e89e1fe8db343685c0715d46f612adc40bd7d4e96

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0677989c1f1f91a9b5029b594c2353c6daa674fe",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Trails/Variantf2bcc1110f8c86cefc250b9e89e1fe8db343685c0715d46f612adc40bd7d4e96.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Variantf2bcc1110f8c86cefc250b9e89e1fe8db343685c0715d46f612adc40bd7d4e96.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Variantf2bcc1110f8c86cefc250b9e89e1fe8db343685c0715d46f612adc40bd7d4e96.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0677989c1f1f91a9b5029b594c2353c6daa674fe`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Trails/Variantf2bcc1110f8c86cefc250b9e89e1fe8db343685c0715d46f612adc40bd7d4e96.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Trails/Variantf2bcc1110f8c86cefc250b9e89e1fe8db343685c0715d46f612adc40bd7d4e96.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Parity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Path` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsTrail.edgesFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Variantf2bcc1110f8c86cefc250b9e89e1fe8db343685c0715d46f612adc40bd7d4e96.lean/declarations/istrail-edgesfinset--b82ad290bc4f17e7ec60d4ff.md) | 45 | `declaration-track:b82ad290bc4f17e7ec60d4ff9117694c7d787abd2d41ad82d9dedf3570983e03` |
| 2 | `theorem` | [IsTrail.even_countP_edges_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Variantf2bcc1110f8c86cefc250b9e89e1fe8db343685c0715d46f612adc40bd7d4e96.lean/declarations/istrail-even-countp-edges-iff--a3cc93ac44055f4f8e0c5e4c.md) | 50 | `result-track:a3cc93ac44055f4f8e0c5e4c630ed16088920dc8b10ec7d6d9c95d1505285946` |
| 3 | `def` | [IsEulerian](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Variantf2bcc1110f8c86cefc250b9e89e1fe8db343685c0715d46f612adc40bd7d4e96.lean/declarations/iseulerian--baf022114899f55fb6ef0263.md) | 86 | `declaration-track:baf022114899f55fb6ef02633e5f65180a7c4fb6034a225d0e1b40a1726e0337` |
| 4 | `theorem` | [IsEulerian.isTrail](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Variantf2bcc1110f8c86cefc250b9e89e1fe8db343685c0715d46f612adc40bd7d4e96.lean/declarations/iseulerian-istrail--9fbe03208a456252e34803f4.md) | 89 | `result-track:9fbe03208a456252e34803f4c73d39a54feb514cc5b08804ccb3a2f623dc0422` |
| 5 | `theorem` | [IsEulerian.mem_edges_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Variantf2bcc1110f8c86cefc250b9e89e1fe8db343685c0715d46f612adc40bd7d4e96.lean/declarations/iseulerian-mem-edges-iff--ca8f15c7fe9f4eaae04c234f.md) | 96 | `result-track:ca8f15c7fe9f4eaae04c234fff2d4f32d2180add56b5d05a2d78d84321b314ed` |
| 6 | `def` | [IsEulerian.fintypeEdgeSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Variantf2bcc1110f8c86cefc250b9e89e1fe8db343685c0715d46f612adc40bd7d4e96.lean/declarations/iseulerian-fintypeedgeset--777aaf934e9f8b0ad4993964.md) | 102 | `declaration-track:777aaf934e9f8b0ad4993964f10f992f6985bcef83ac95c98b764336d1090f15` |
| 7 | `theorem` | [IsTrail.isEulerian_of_forall_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Variantf2bcc1110f8c86cefc250b9e89e1fe8db343685c0715d46f612adc40bd7d4e96.lean/declarations/istrail-iseulerian-of-forall-mem--2f2457eda53969d9308f86ff.md) | 107 | `result-track:2f2457eda53969d9308f86ff0b2512e9c884ae9debe36ff928c7bed858769a63` |
| 8 | `theorem` | [isEulerian_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Variantf2bcc1110f8c86cefc250b9e89e1fe8db343685c0715d46f612adc40bd7d4e96.lean/declarations/iseulerian-iff--731a5d3f9a6997bf7afd1e0b.md) | 111 | `result-track:731a5d3f9a6997bf7afd1e0b5198fe451d75d86744fd48e7e40157ebf2b2edfa` |
| 9 | `theorem` | [IsEulerian.edgesFinset_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Variantf2bcc1110f8c86cefc250b9e89e1fe8db343685c0715d46f612adc40bd7d4e96.lean/declarations/iseulerian-edgesfinset-eq--e4d3383162b6e8218bf06d17.md) | 119 | `result-track:e4d3383162b6e8218bf06d1764cc5824f3e5e002f3d793878357c5dda2bd6a2a` |
| 10 | `theorem` | [IsEulerian.even_degree_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Variantf2bcc1110f8c86cefc250b9e89e1fe8db343685c0715d46f612adc40bd7d4e96.lean/declarations/iseulerian-even-degree-iff--5c23cf8729fc11ba241fe23b.md) | 124 | `result-track:5c23cf8729fc11ba241fe23bcc2e06a8b3be75c8edcd4bdfcebdc43c87d06f4a` |
| 11 | `theorem` | [IsEulerian.card_filter_odd_degree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Variantf2bcc1110f8c86cefc250b9e89e1fe8db343685c0715d46f612adc40bd7d4e96.lean/declarations/iseulerian-card-filter-odd-degree--d484fcd548ad3bfa0764b245.md) | 134 | `result-track:d484fcd548ad3bfa0764b2456794b72e92b1b6a5a1f6a2c499a0f56f472da4f9` |
| 12 | `theorem` | [IsEulerian.card_odd_degree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Trails/Variantf2bcc1110f8c86cefc250b9e89e1fe8db343685c0715d46f612adc40bd7d4e96.lean/declarations/iseulerian-card-odd-degree--84e2630c0aa30065dd7992dc.md) | 151 | `result-track:84e2630c0aa30065dd7992dcbd0871ab45f7380384e0515bde626d3162710724` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
