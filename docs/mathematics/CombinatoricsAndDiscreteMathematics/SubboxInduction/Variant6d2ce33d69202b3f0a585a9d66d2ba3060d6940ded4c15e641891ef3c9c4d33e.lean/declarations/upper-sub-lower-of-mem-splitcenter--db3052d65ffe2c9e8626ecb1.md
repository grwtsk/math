# upper_sub_lower_of_mem_splitCenter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d4dbeb7-d5cd-f0db-d1be-01f99dbcc4d0",
  "kind": "theorem",
  "lexical_name": "upper_sub_lower_of_mem_splitCenter",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "upper-sub-lower-of-mem-splitcenter--db3052d65ffe2c9e8626ecb1",
  "source": {
    "blob": "50dd7e9f464531059c5262f996a368c40fccaafa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 69,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant6d2ce33d69202b3f0a585a9d66d2ba3060d6940ded4c15e641891ef3c9c4d33e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db3052d65ffe2c9e8626ecb184fe447827b909d85b2de3134c0fc98aca7827f4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant6d2ce33d69202b3f0a585a9d66d2ba3060d6940ded4c15e641891ef3c9c4d33e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d4dbeb7-d5cd-f0db-d1be-01f99dbcc4d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upper_sub_lower_of_mem_splitCenter (h : J ∈ splitCenter I) (i : ι) :
    J.upper i - J.lower i = (I.upper i - I.lower i) / 2 :=
  let ⟨s, hs⟩ := mem_splitCenter.1 h
  hs ▸ I.upper_sub_lower_splitCenterBox s i

end Prepartition

namespace Box

open Prepartition TaggedPrepartition

/-- Let `p` be a predicate on `Box ι`, let `I` be a box. Suppose that the following two properties
hold true.

* Consider a smaller box `J ≤ I`. The hyperplanes passing through the center of `J` split it into
  `2 ^ n` boxes. If `p` holds true on each of these boxes, then it true on `J`.
* For each `z` in the closed box `I.Icc` there exists a neighborhood `U` of `z` within `I.Icc` such
  that for every box `J ≤ I` such that `z ∈ J.Icc ⊆ U`, if `J` is homothetic to `I` with a
  coefficient of the form `1 / 2 ^ m`, then `p` is true on `J`.

Then `p I` is true. See also `BoxIntegral.Box.subbox_induction_on'` for a version using
`BoxIntegral.Box.splitCenterBox` instead of `BoxIntegral.Prepartition.splitCenter`. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant6d2ce33d69202b3f0a585a9d66d2ba3060d6940ded4c15e641891ef3c9c4d33e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant6d2ce33d69202b3f0a585a9d66d2ba3060d6940ded4c15e641891ef3c9c4d33e.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50dd7e9f464531059c5262f996a368c40fccaafa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
