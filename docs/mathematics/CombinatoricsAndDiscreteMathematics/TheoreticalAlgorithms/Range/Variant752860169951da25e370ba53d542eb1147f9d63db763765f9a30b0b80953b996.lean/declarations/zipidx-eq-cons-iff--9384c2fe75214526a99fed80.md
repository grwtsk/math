# zipIdx_eq_cons_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b344d74a-46aa-77a9-0885-1e94b38717d0",
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
  "slug": "zipidx-eq-cons-iff--9384c2fe75214526a99fed80",
  "source": {
    "blob": "5d7912fc8dab4abffd0d9bf645a60e8f89af64b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 395,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9384c2fe75214526a99fed807403cb5f0d97fb23ad0d1159ccea8cbca009b9f6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b344d74a-46aa-77a9-0885-1e94b38717d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–406.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant752860169951da25e370ba53d542eb1147f9d63db763765f9a30b0b80953b996.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d7912fc8dab4abffd0d9bf645a60e8f89af64b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
