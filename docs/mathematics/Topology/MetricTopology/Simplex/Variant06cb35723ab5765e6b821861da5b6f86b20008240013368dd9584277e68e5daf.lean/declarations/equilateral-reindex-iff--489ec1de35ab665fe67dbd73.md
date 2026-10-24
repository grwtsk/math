# equilateral_reindex_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb8d1e1c-8454-2b92-078d-bd421cdb1439",
  "kind": "lemma",
  "lexical_name": "equilateral_reindex_iff",
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
  "slug": "equilateral-reindex-iff--489ec1de35ab665fe67dbd73",
  "source": {
    "blob": "230d2160a32882d6098735e31cdce61e10eb79da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 99,
    "path": "GRWTSK/Topology/MetricTopology/Simplex/Variant06cb35723ab5765e6b821861da5b6f86b20008240013368dd9584277e68e5daf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:489ec1de35ab665fe67dbd73d7de906bee7320a04f2f9955e40e2eb6822f7f29",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Simplex/Variant06cb35723ab5765e6b821861da5b6f86b20008240013368dd9584277e68e5daf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb8d1e1c-8454-2b92-078d-bd421cdb1439`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma equilateral_reindex_iff {s : Simplex R P m} (e : Fin (m + 1) ≃ Fin (n + 1)) :
    (s.reindex e).Equilateral ↔ s.Equilateral := by
  refine ⟨fun ⟨r, hr⟩ ↦ ⟨r, fun i j hij ↦ ?_⟩, fun ⟨r, hr⟩ ↦ ⟨r, fun i j hij ↦ ?_⟩⟩
  · convert hr (e i) (e j) (e.injective.ne hij) using 2 <;> simp
  · convert hr (e.symm i) (e.symm j) (e.symm.injective.ne hij) using 2

/-- A simplex is regular if it is equivalent under an isometry to any reindexing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Simplex/Variant06cb35723ab5765e6b821861da5b6f86b20008240013368dd9584277e68e5daf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Simplex/Variant06cb35723ab5765e6b821861da5b6f86b20008240013368dd9584277e68e5daf.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `230d2160a32882d6098735e31cdce61e10eb79da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
