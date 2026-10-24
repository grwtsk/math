# toList_emptyBefore_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a18d8b0-b336-3d2c-52c1-45fafb54b63e",
  "kind": "theorem",
  "lexical_name": "toList_emptyBefore_eq",
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
  "slug": "tolist-emptybefore-eq--4c98cb66b4b3120519c10f93",
  "source": {
    "blob": "69dcabad9a4acdbff59ede3becc2a23b932a3639",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 595,
    "line": 583,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardSearcher/Variant979ff9cc471ad60cf6935bb105198b2db7a9aff98ce23f45762a7ee2e5f0bd11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c98cb66b4b3120519c10f93d57208d1d50310553e8be50f6fe14aba21092cfa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardSearcher/Variant979ff9cc471ad60cf6935bb105198b2db7a9aff98ce23f45762a7ee2e5f0bd11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a18d8b0-b336-3d2c-52c1-45fafb54b63e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 583–595.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem toList_emptyBefore_eq (s : Slice) (pos : s.Pos) :
    (Std.Iter.mk (.emptyBefore pos : ForwardSliceSearcher s)).toList =
      if h : pos = s.endPos then
        [.matched pos pos]
      else
        .matched pos pos ::
          (Std.Iter.mk (.emptyAt pos h : ForwardSliceSearcher s)).toList := by
  rw [Std.Iter.toList_eq_match_step, Std.Iter.step_eq]
  by_cases h : pos = s.endPos
  · simp [h]
  · rw [dif_neg h, Std.Iter.toList_eq_match_step]
    simp [Std.Iter.step_eq, h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardSearcher/Variant979ff9cc471ad60cf6935bb105198b2db7a9aff98ce23f45762a7ee2e5f0bd11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardSearcher/Variant979ff9cc471ad60cf6935bb105198b2db7a9aff98ce23f45762a7ee2e5f0bd11.lean#L583).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69dcabad9a4acdbff59ede3becc2a23b932a3639` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
