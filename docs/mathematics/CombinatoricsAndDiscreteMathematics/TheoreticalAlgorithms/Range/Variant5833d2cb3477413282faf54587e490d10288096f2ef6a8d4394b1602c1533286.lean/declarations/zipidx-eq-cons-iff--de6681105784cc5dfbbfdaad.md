# zipIdx_eq_cons_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "258b26ad38358658689eee58d88978c735c717dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 387,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:635674e1-7261-ae69-6453-1af18aab99af",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2b7db1a5-e51d-c471-6832-3087c05fe4c0",
  "kind": "theorem",
  "lexical_name": "zipIdx_eq_cons_iff",
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
  "slug": "zipidx-eq-cons-iff--de6681105784cc5dfbbfdaad",
  "source": {
    "blob": "258b26ad38358658689eee58d88978c735c717dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 387,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de6681105784cc5dfbbfdaad9b70dbbb8fef331c3df28dc029159ec5049db571",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b7db1a5-e51d-c471-6832-3087c05fe4c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zipIdx_eq_cons_iff {l : List α} {k : Nat} :
    zipIdx l k = x :: l' ↔ ∃ a as, l = a :: as ∧ x = (a, k) ∧ l' = zipIdx as (k + 1) := by
  rw [zipIdx_eq_zip_range', zip_eq_cons_iff]
  constructor
  · rintro ⟨l₁, l₂, rfl, h, rfl⟩
    rw [range'_eq_cons_iff] at h
    obtain ⟨rfl, -, rfl⟩ := h
    exact ⟨x.1, l₁, by simp [zipIdx_eq_zip_range']⟩
  · rintro ⟨a, as, rfl, rfl, rfl⟩
    refine ⟨as, range' (k+1) as.length, ?_⟩
    simp [zipIdx_eq_zip_range', range'_succ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `258b26ad38358658689eee58d88978c735c717dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
