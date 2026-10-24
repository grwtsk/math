# range_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:108b8ff2-b513-67d9-c4b5-788b76f31c48",
  "kind": "theorem",
  "lexical_name": "range_iff",
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
  "slug": "range-iff--9acf95e3d8ac70f9c03b60bc",
  "source": {
    "blob": "f2ee08735394e2339024cdb08817b8bcb3ef3b96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 117,
    "path": "GRWTSK/Topology/Homotopy/FiniteConcatenation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9acf95e3d8ac70f9c03b60bc3c522a189191ed474e77c6e898de9a35ca035c29",
  "verification": {
    "reference": "docs/verification/Topology/Homotopy/FiniteConcatenation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:108b8ff2-b513-67d9-c4b5-788b76f31c48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem range_iff (v : ℕ → C(X, Y)) (n : ℕ)
    (e : ∀ i, i < n → Homotopy (v i) (v (i + 1))) (x : X) (y : Y) :
    (∃ t : I, concat v n e (t, x) = y) ↔
      y = v 0 x ∨ ∃ i, ∃ hi : i < n, ∃ u : I, e i hi (u, x) = y := by
  constructor
  · rintro ⟨t, rfl⟩
    rcases value_cases v n e t x with h | ⟨i, hi, u, h⟩
    · exact Or.inl h
    · exact Or.inr ⟨i, hi, u, h.symm⟩
  · rintro (rfl | ⟨i, hi, u, h⟩)
    · exact ⟨0, concat_start v n e x⟩
    · obtain ⟨t, ht⟩ := hits_cell v n e i hi u x
      exact ⟨t, ht.trans h⟩

/-- A pointwise transformation commutes with the exact SAME dyadic schedule.
Continuity of g is not needed for this equality; both homotopy inputs already
carry their own continuity proofs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Homotopy/FiniteConcatenation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Homotopy/FiniteConcatenation.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2ee08735394e2339024cdb08817b8bcb3ef3b96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
