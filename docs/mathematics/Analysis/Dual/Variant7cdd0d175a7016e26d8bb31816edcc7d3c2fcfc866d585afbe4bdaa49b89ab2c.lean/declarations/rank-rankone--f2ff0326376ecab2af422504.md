# rank_rankOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71b8d5c3-44a0-59c9-fd6e-434d9a1d693a",
  "kind": "lemma",
  "lexical_name": "rank_rankOne",
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
  "slug": "rank-rankone--f2ff0326376ecab2af422504",
  "source": {
    "blob": "0742335c3f20d554fa9f1b6c3adfcb3242ff6ea4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 236,
    "path": "GRWTSK/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2ff0326376ecab2af422504b864b9ccb5d712d80665ff931d29222931c05fd2",
  "verification": {
    "reference": "docs/verification/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71b8d5c3-44a0-59c9-fd6e-434d9a1d693a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rank_rankOne {𝕜 E F : Type*} [RCLike 𝕜] [SeminormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [InnerProductSpace 𝕜 F] {x : E} {y : F} (hx : x ≠ 0) (hy : y ≠ 0) :
    (rankOne 𝕜 x y).rank = 1 := by
  rw [LinearMap.rank, rankOne_def, range_smulRight_apply, Module.rank_eq_one_iff_finrank_eq_one]
  · exact finrank_span_singleton hx
  · exact map_eq_zero_iff _ (toDualMap 𝕜 F).injective |>.not.mpr hy

end InnerProductSpace

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0742335c3f20d554fa9f1b6c3adfcb3242ff6ea4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
