# tsub_le_tsub_iff_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3d803ac09a30400e63ef4ac419cf420b0633723d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 363,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4dad60c8fc9e017a80730002a59a7863e7440b4fec5507f06749273e21f99992.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e8cf91b6-84cf-cb30-3b59-5d43dd6f8ac9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e012ca6-31e4-979b-7fdb-263673a3ff84",
  "kind": "theorem",
  "lexical_name": "tsub_le_tsub_iff_left",
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
  "slug": "tsub-le-tsub-iff-left--addf8125e4d651e0877d5b26",
  "source": {
    "blob": "3d803ac09a30400e63ef4ac419cf420b0633723d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 363,
    "path": "GRWTSK/Algebra/GroupTheory/Canonical/Variant4dad60c8fc9e017a80730002a59a7863e7440b4fec5507f06749273e21f99992.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:addf8125e4d651e0877d5b260bda99e12406baba26f9f5b9b8a8411ba3e7c981",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Canonical/Variant4dad60c8fc9e017a80730002a59a7863e7440b4fec5507f06749273e21f99992.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e012ca6-31e4-979b-7fdb-263673a3ff84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem tsub_le_tsub_iff_left (ha : AddLECancellable a) (hc : AddLECancellable c)
    (h : c ≤ a) : a - b ≤ a - c ↔ c ≤ b := by
  refine' ⟨_, fun h => tsub_le_tsub_left h a⟩
  rw [tsub_le_iff_left, ← hc.add_tsub_assoc_of_le h, hc.le_tsub_iff_right (h.trans le_add_self),
    add_comm b]
  apply ha
#align add_le_cancellable.tsub_le_tsub_iff_left AddLECancellable.tsub_le_tsub_iff_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Canonical/Variant4dad60c8fc9e017a80730002a59a7863e7440b4fec5507f06749273e21f99992.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Canonical/Variant4dad60c8fc9e017a80730002a59a7863e7440b4fec5507f06749273e21f99992.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d803ac09a30400e63ef4ac419cf420b0633723d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
