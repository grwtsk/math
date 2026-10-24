# map_eq_append_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:410fbf0d-8a30-1366-b359-07e3984c97d5",
  "kind": "theorem",
  "lexical_name": "map_eq_append_iff",
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
  "slug": "map-eq-append-iff--f25a4c24871ab6a382d451fe",
  "source": {
    "blob": "246b5ae394f20250df7c7fd86e3553ab8150420a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1912,
    "line": 1900,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2b1858ea3c3058f9e36464924be4c3ecfe3bf8b4fae68a4af365ba6edf29279a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f25a4c24871ab6a382d451fed7d9e4b439b4a0b18a37013908266c86d5b12f5d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2b1858ea3c3058f9e36464924be4c3ecfe3bf8b4fae68a4af365ba6edf29279a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:410fbf0d-8a30-1366-b359-07e3984c97d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1900–1912.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_eq_append_iff {f : α → β} :
    map f xs = ys ++ zs ↔ ∃ as bs, xs = as ++ bs ∧ map f as = ys ∧ map f bs = zs := by
  rcases xs with ⟨xs, h⟩
  rcases ys with ⟨ys, rfl⟩
  rcases zs with ⟨zs, rfl⟩
  simp only [map_mk, mk_append_mk, eq_mk, Array.map_eq_append_iff, mk_eq, toArray_append,
    toArray_map]
  constructor
  · rintro ⟨as, bs, rfl, rfl, rfl⟩
    exact ⟨as.toVector.cast (by simp), bs.toVector.cast (by simp), by simp⟩
  · rintro ⟨⟨as⟩, ⟨bs⟩, rfl, h₁, h₂⟩
    exact ⟨as, bs, by simp_all⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2b1858ea3c3058f9e36464924be4c3ecfe3bf8b4fae68a4af365ba6edf29279a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2b1858ea3c3058f9e36464924be4c3ecfe3bf8b4fae68a4af365ba6edf29279a.lean#L1900).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `246b5ae394f20250df7c7fd86e3553ab8150420a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
