# isLoopAt_iff_inc_not_isNonloopAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6332b555-628c-f55e-141c-580d86b6fdfe",
  "kind": "lemma",
  "lexical_name": "isLoopAt_iff_inc_not_isNonloopAt",
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
  "slug": "isloopat-iff-inc-not-isnonloopat--8bab468667323d4ae38ca79a",
  "source": {
    "blob": "f09463bce183bc861639b790158b95847e51396f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 280,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bab468667323d4ae38ca79a412a81db276196ee7c91867dcb0529166c7fd494",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6332b555-628c-f55e-141c-580d86b6fdfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLoopAt_iff_inc_not_isNonloopAt : G.IsLoopAt e x ↔ G.Inc e x ∧ ¬ G.IsNonloopAt e x := by
  simp +contextual [isNonloopAt_iff_inc_not_isLoopAt, iff_def, IsLoopAt.inc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f09463bce183bc861639b790158b95847e51396f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
