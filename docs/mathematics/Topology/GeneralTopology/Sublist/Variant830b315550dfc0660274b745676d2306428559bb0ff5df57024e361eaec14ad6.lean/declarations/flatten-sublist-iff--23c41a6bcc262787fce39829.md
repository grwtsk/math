# flatten_sublist_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:361676b4-619b-ac94-5d8a-6b11567c4263",
  "kind": "theorem",
  "lexical_name": "flatten_sublist_iff",
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
  "slug": "flatten-sublist-iff--23c41a6bcc262787fce39829",
  "source": {
    "blob": "3048636ccb16906cf91c4310c0f9f85fcfc54623",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 642,
    "line": 617,
    "path": "GRWTSK/Topology/GeneralTopology/Sublist/Variant830b315550dfc0660274b745676d2306428559bb0ff5df57024e361eaec14ad6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23c41a6bcc262787fce39829795063383093179fc45b0f3ca54ee2d7ebab2399",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sublist/Variant830b315550dfc0660274b745676d2306428559bb0ff5df57024e361eaec14ad6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:361676b4-619b-ac94-5d8a-6b11567c4263`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 617–642.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem flatten_sublist_iff {L : List (List α)} {l} :
    L.flatten <+ l ↔
      ∃ L' : List (List α), l = L'.flatten ∧ ∀ i (_ : i < L.length), L[i] <+ L'[i]?.getD [] := by
  induction L generalizing l with
  | nil =>
    constructor
    · intro _
      exact ⟨[l], by simp, fun i x => by cases x⟩
    · rintro ⟨L', rfl, _⟩
      simp only [flatten_nil, nil_sublist]
  | cons l' L ih =>
    simp only [flatten_cons, append_sublist_iff, ih]
    constructor
    · rintro ⟨l₁, l₂, rfl, s, L', rfl, h⟩
      refine ⟨l₁ :: L', by simp, ?_⟩
      intro i lt
      cases i <;> simp_all
    · rintro ⟨L', rfl, h⟩
      cases L' with
      | nil =>
        exact ⟨[], [], by simp, by simpa using! h 0 (by simp), [], by simp,
          fun i x => by simpa using! h (i+1) (Nat.add_lt_add_right x 1)⟩
      | cons l₁ L' =>
        exact ⟨l₁, L'.flatten, by simp, by simpa using! h 0 (by simp), L', rfl,
          fun i lt => by simpa using! h (i+1) (Nat.add_lt_add_right lt 1)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sublist/Variant830b315550dfc0660274b745676d2306428559bb0ff5df57024e361eaec14ad6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sublist/Variant830b315550dfc0660274b745676d2306428559bb0ff5df57024e361eaec14ad6.lean#L617).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3048636ccb16906cf91c4310c0f9f85fcfc54623` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
