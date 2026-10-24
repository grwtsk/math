# IsEulerian.isTrail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1b311c2-ac30-8feb-c41d-c37aa6134479",
  "kind": "theorem",
  "lexical_name": "IsEulerian.isTrail",
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
  "slug": "iseulerian-istrail--bb59de3fa6d25a11257d7ae4",
  "source": {
    "blob": "b0d7bac26e26355b7a68533de634e66c707d5c9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 97,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Trails/Variant38a4ca2bbb9cbce5f988c015ca895f1f1ad98e7bf27ddc4418dd6ba9ad9b498b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb59de3fa6d25a11257d7ae4406d1dc5138449788d07dc180152ff2038a5256c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Trails/Variant38a4ca2bbb9cbce5f988c015ca895f1f1ad98e7bf27ddc4418dd6ba9ad9b498b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1b311c2-ac30-8feb-c41d-c37aa6134479`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsEulerian.isTrail {u v : V} {p : G.Walk u v} (h : p.IsEulerian) : p.IsTrail := by
  rw [isTrail_def, List.nodup_iff_count_le_one]
  intro e
  by_cases he : e ∈ p.edges
  · exact (h e (edges_subset_edgeSet _ he)).le
  · simp [List.count_eq_zero_of_not_mem he]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Trails/Variant38a4ca2bbb9cbce5f988c015ca895f1f1ad98e7bf27ddc4418dd6ba9ad9b498b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Trails/Variant38a4ca2bbb9cbce5f988c015ca895f1f1ad98e7bf27ddc4418dd6ba9ad9b498b.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0d7bac26e26355b7a68533de634e66c707d5c9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
