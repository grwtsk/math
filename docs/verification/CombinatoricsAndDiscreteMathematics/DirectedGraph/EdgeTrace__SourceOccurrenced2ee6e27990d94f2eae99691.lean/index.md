# Verification target: GRWTSK.Combinatorics.DirectedGraph.EdgeTrace

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdd2edc3348c6f9e299e4a21b6db8cc6280ae9a3",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/EdgeTrace.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrenced2ee6e27990d94f2eae99691.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrenced2ee6e27990d94f2eae99691.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdd2edc3348c6f9e299e4a21b6db8cc6280ae9a3`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/EdgeTrace.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/EdgeTrace.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedGraph.PathOccurrences`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrenced7aa482f201bffca18c14fe8.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Combinatorics.Quiver.Covering` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [TotalEdge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrenced2ee6e27990d94f2eae99691.lean/declarations/totaledge--6afa24623cf7352a45290b24.md) | 34 | `declaration-track:6afa24623cf7352a45290b241ab3ce1c5cee50d2acd8a3179e1798321d0c4cba` |
| 2 | `def` | [taggedPrefunctor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrenced2ee6e27990d94f2eae99691.lean/declarations/taggedprefunctor--851a34bcdd1e0ef225cb6d9a.md) | 37 | `declaration-track:851a34bcdd1e0ef225cb6d9a957067f002149319b89f3f7acc507fb5990bd9a7` |
| 3 | `def` | [encodePath](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrenced2ee6e27990d94f2eae99691.lean/declarations/encodepath--70a6f3662dbad58b964e448d.md) | 42 | `declaration-track:70a6f3662dbad58b964e448d1aea6bb74716004fd61d1eed4794ed2112d3aaa7` |
| 4 | `def` | [encode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrenced2ee6e27990d94f2eae99691.lean/declarations/encode--fb41f2e9d532fc187a12a149.md) | 46 | `declaration-track:fb41f2e9d532fc187a12a149ed3ef5ccf15144b3a002be2cf4a2798844480604` |
| 5 | `theorem` | [encodePath_nil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrenced2ee6e27990d94f2eae99691.lean/declarations/encodepath-nil--b583a8c4f23090e2ec2611b0.md) | 49 | `result-track:b583a8c4f23090e2ec2611b0a92f8f02f7ecc724a23a808c907a0f2d9b3fc589` |
| 6 | `theorem` | [encodePath_toPath](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrenced2ee6e27990d94f2eae99691.lean/declarations/encodepath-topath--1b18132ef8f2230e96b43c89.md) | 52 | `result-track:1b18132ef8f2230e96b43c896f055b804468490ea9a988ca799d5b9e3b7ef54a` |
| 7 | `theorem` | [encodePath_comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrenced2ee6e27990d94f2eae99691.lean/declarations/encodepath-comp--f11e6f869df6131854074033.md) | 56 | `result-track:f11e6f869df6131854074033d31a540aa840e51d8fb139ac9b57d57f93717ffc` |
| 8 | `theorem` | [encodePath_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrenced2ee6e27990d94f2eae99691.lean/declarations/encodepath-cons--474cd73e494c34ee36fdff10.md) | 61 | `result-track:474cd73e494c34ee36fdff100f04afdb33b0acdcd71544bb6bc631f5fb22d61d` |
| 9 | `def` | [ValidFrom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrenced2ee6e27990d94f2eae99691.lean/declarations/validfrom--1d5d4eb9a1e5c22e89866c22.md) | 66 | `declaration-track:1d5d4eb9a1e5c22e89866c22a04b050de212f6dd31ee255c9efacfaaa8f8d32a` |
| 10 | `def` | [finish](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrenced2ee6e27990d94f2eae99691.lean/declarations/finish--450c6687f0481102718aeb7d.md) | 71 | `declaration-track:450c6687f0481102718aeb7d1a49146ab0711d60cbbb22e257836af325fdad9a` |
| 11 | `theorem` | [finish_append](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrenced2ee6e27990d94f2eae99691.lean/declarations/finish-append--bfa781c8573158150fd59999.md) | 75 | `result-track:bfa781c8573158150fd5999948412c68bc2123958fb70669451193bfebd6f676` |
| 12 | `theorem` | [validFrom_append_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrenced2ee6e27990d94f2eae99691.lean/declarations/validfrom-append-iff--b965f29979ef2e3f821803a3.md) | 81 | `result-track:b965f29979ef2e3f821803a3bd7934ae079f83ea235bf3f4ef1736d192f92dad` |
| 13 | `theorem` | [finish_encodePath](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrenced2ee6e27990d94f2eae99691.lean/declarations/finish-encodepath--d8317b2b10fc18e4d6a9336e.md) | 90 | `result-track:d8317b2b10fc18e4d6a9336e9f48e854d644c4e911c53664da24f782ebbff9a0` |
| 14 | `theorem` | [validFrom_encodePath](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrenced2ee6e27990d94f2eae99691.lean/declarations/validfrom-encodepath--8575f551c315c5bf33ecc06d.md) | 97 | `result-track:8575f551c315c5bf33ecc06da1bd0a0f763e3f36aeae21c21c5f2bb614959f5e` |
| 15 | `theorem` | [tagged_star_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrenced2ee6e27990d94f2eae99691.lean/declarations/tagged-star-injective--6011b6095d51f261d7db1229.md) | 105 | `result-track:6011b6095d51f261d7db1229b45c44d2fa4db4128af5f8e88accc16cd25ef4cb` |
| 16 | `theorem` | [encode_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrenced2ee6e27990d94f2eae99691.lean/declarations/encode-injective--d732e145bf5e17ff9e765952.md) | 114 | `result-track:d732e145bf5e17ff9e7659529bed74a34630d946465e3d2efff22fbed35fedf7` |
| 17 | `def` | [decode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrenced2ee6e27990d94f2eae99691.lean/declarations/decode--2b72246a2f881089b0a55e10.md) | 123 | `declaration-track:2b72246a2f881089b0a55e106e3dc6ffda316fee6ee0cc4760ce5c98fe50a7af` |
| 18 | `theorem` | [encode_decode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrenced2ee6e27990d94f2eae99691.lean/declarations/encode-decode--84794c0f4bfc7e39b0bc1ea8.md) | 131 | `result-track:84794c0f4bfc7e39b0bc1ea8bbe506fbf381e19d3afab17d2175d2d453a42dc0` |
| 19 | `theorem` | [decode_encode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrenced2ee6e27990d94f2eae99691.lean/declarations/decode-encode--5da0b32ef15867400f734f68.md) | 145 | `result-track:5da0b32ef15867400f734f6897d9eb79a2c5015285d1b41383905540fb02d4fa` |
| 20 | `theorem` | [decode_endpoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrenced2ee6e27990d94f2eae99691.lean/declarations/decode-endpoint--26465e3a0e13aa5bd078b895.md) | 151 | `result-track:26465e3a0e13aa5bd078b89521fdf107131c6a98f2b226a8c96e0325a2a1dbfb` |
| 21 | `def` | [pathStarEquivTrace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrenced2ee6e27990d94f2eae99691.lean/declarations/pathstarequivtrace--6a7c4958d45ad83359c3b9e3.md) | 159 | `declaration-track:6a7c4958d45ad83359c3b9e3018d6ef5f6a6b985b1c25d3198a3030f849b0ce2` |
| 22 | `theorem` | [wrong_root_not_valid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrenced2ee6e27990d94f2eae99691.lean/declarations/wrong-root-not-valid--58caab107ed95e6ca33bca01.md) | 167 | `result-track:58caab107ed95e6ca33bca012909c708be0e418bf60057cdba4cf017c5e35bba` |
| 23 | `theorem` | [broken_join_not_valid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrenced2ee6e27990d94f2eae99691.lean/declarations/broken-join-not-valid--8f570177f1432d4d6f8e9d91.md) | 171 | `result-track:8f570177f1432d4d6f8e9d91f228a33b853605b7e0340cf8a084d168298e5870` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
