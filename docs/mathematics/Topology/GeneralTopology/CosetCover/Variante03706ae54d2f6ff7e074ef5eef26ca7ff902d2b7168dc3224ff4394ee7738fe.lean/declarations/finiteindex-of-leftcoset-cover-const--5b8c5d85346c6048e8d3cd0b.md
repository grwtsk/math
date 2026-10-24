# finiteIndex_of_leftCoset_cover_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "37b507a6c6f810c77b88bd72a6d78639136ff249",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89160f3b-d1a8-5a8b-9952-45055c8c0c09",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1c76072a-65fd-7239-6f7d-5dafe6daf66b",
  "kind": "theorem",
  "lexical_name": "finiteIndex_of_leftCoset_cover_const",
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
  "slug": "finiteindex-of-leftcoset-cover-const--5b8c5d85346c6048e8d3cd0b",
  "source": {
    "blob": "37b507a6c6f810c77b88bd72a6d78639136ff249",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 85,
    "path": "GRWTSK/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b8c5d85346c6048e8d3cd0bb72c36e0150b450aa361a5685e84678573bafe6a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c76072a-65fd-7239-6f7d-5dafe6daf66b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteIndex_of_leftCoset_cover_const : H.FiniteIndex := by
  simp_rw [leftCoset_cover_const_iff_surjOn] at hcovers
  have := Set.finite_univ_iff.mp <| Set.Finite.of_surjOn _ hcovers s.finite_toSet
  exact H.finiteIndex_of_finite_quotient

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37b507a6c6f810c77b88bd72a6d78639136ff249` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
