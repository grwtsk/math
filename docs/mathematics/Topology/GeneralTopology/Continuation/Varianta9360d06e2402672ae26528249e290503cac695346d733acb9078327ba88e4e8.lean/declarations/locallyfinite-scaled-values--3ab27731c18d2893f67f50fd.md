# locallyFinite_scaled_values

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b34ada12-eb25-370c-790c-e6ce70ad69b4",
  "kind": "theorem",
  "lexical_name": "locallyFinite_scaled_values",
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
  "slug": "locallyfinite-scaled-values--3ab27731c18d2893f67f50fd",
  "source": {
    "blob": "34e2567e57a9c60b8a98af3dbea45e7c756e786f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 86,
    "path": "GRWTSK/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ab27731c18d2893f67f50fddf321d29b6c4b1529248dd9dfdd58c4761e317fa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b34ada12-eb25-370c-790c-e6ce70ad69b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem locallyFinite_scaled_values
    (c : ℂ) (hc : c ≠ 0) :
    LocallyFinite
      (fun o : ZeroOccurrence ↦
        ({c * shiftedValue o} : Set ℂ)) := by
  intro s
  refine ⟨ball s 1, ball_mem_nhds s zero_lt_one, ?_⟩
  apply
    (finite_occurrences_scaled_norm_le c hc (‖s‖ + 1)).subset
  rintro o ⟨w, hw, hb⟩
  simp only [mem_singleton_iff] at hw
  subst w
  have hdist :
      ‖c * shiftedValue o - s‖ < 1 :=
    mem_ball_iff_norm.mp hb
  have hnorm :=
    norm_add_le (c * shiftedValue o - s) s
  rw [sub_add_cancel] at hnorm
  change ‖c * shiftedValue o‖ ≤ ‖s‖ + 1
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34e2567e57a9c60b8a98af3dbea45e7c756e786f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
