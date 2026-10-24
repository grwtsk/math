# Pos.apply_revSkipWhile_prop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b7806d7-e378-5e40-c22c-2856a260ffa7",
  "kind": "theorem",
  "lexical_name": "Pos.apply_revSkipWhile_prop",
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
  "slug": "pos-apply-revskipwhile-prop--bd17dd5a1d05fb9311df865b",
  "source": {
    "blob": "e62c364877606ec1d06631b20cb4765b2fd7d3c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 514,
    "line": 508,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant42dbf4e594efe083a9d72be300742ee380768576a351ec250528cba7752a9959.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd17dd5a1d05fb9311df865ba6a703634c43480198164951f8cb0ea9d1dc4c83",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant42dbf4e594efe083a9d72be300742ee380768576a351ec250528cba7752a9959.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b7806d7-e378-5e40-c22c-2856a260ffa7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 508–514.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Pos.apply_revSkipWhile_prop {P : Char → Prop} [DecidablePred P] {s : String} {pos : s.Pos} {h} :
    ¬ P (((pos.revSkipWhile P).prev h).get (by simp)) := by
  have h' : pos.toSlice.revSkipWhile P ≠ s.toSlice.startPos := by
    simpa [Pos.revSkipWhile_eq_revSkipWhile_toSlice, ← toSlice_inj] using h
  have := Slice.Pos.apply_revSkipWhile_prop (pos := pos.toSlice) (h := h')
  simpa [Pos.revSkipWhile_eq_revSkipWhile_toSlice, Pos.prev_ofToSlice]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant42dbf4e594efe083a9d72be300742ee380768576a351ec250528cba7752a9959.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant42dbf4e594efe083a9d72be300742ee380768576a351ec250528cba7752a9959.lean#L508).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e62c364877606ec1d06631b20cb4765b2fd7d3c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
