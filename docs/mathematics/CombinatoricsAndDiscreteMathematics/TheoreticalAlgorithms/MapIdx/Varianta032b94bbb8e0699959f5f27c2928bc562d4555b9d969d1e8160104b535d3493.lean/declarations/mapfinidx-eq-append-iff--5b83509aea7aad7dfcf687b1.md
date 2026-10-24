# mapFinIdx_eq_append_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:adf836ce-03de-a035-60d5-c9e5c65bc94f",
  "kind": "theorem",
  "lexical_name": "mapFinIdx_eq_append_iff",
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
  "slug": "mapfinidx-eq-append-iff--5b83509aea7aad7dfcf687b1",
  "source": {
    "blob": "c8445ed52939034edd19a0fe427fde8b60d7f120",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 177,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Varianta032b94bbb8e0699959f5f27c2928bc562d4555b9d969d1e8160104b535d3493.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b83509aea7aad7dfcf687b18b08cac7f8b2f23126b16b7e8e95c741d0e4a668",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Varianta032b94bbb8e0699959f5f27c2928bc562d4555b9d969d1e8160104b535d3493.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:adf836ce-03de-a035-60d5-c9e5c65bc94f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapFinIdx_eq_append_iff {xs : Vector α (n + m)} {f : (i : Nat) → α → (h : i < n + m) → β}
    {ys : Vector β n} {zs : Vector β m} :
    xs.mapFinIdx f = ys ++ zs ↔
      ∃ (ys' : Vector α n) (zs' : Vector α m), xs = ys' ++ zs' ∧
        ys'.mapFinIdx (fun i a h => f i a (by omega)) = ys ∧
        zs'.mapFinIdx (fun i a h => f (i + n) a (by omega)) = zs := by
  rcases xs with ⟨xs, h⟩
  rcases ys with ⟨ys, rfl⟩
  rcases zs with ⟨zs, rfl⟩
  simp only [mapFinIdx_mk, mk_append_mk, eq_mk, Array.mapFinIdx_eq_append_iff, toArray_mapFinIdx,
    mk_eq, toArray_append]
  constructor
  · rintro ⟨ys', zs', rfl, h₁, h₂⟩
    have h₁' := congrArg Array.size h₁
    have h₂' := congrArg Array.size h₂
    simp only [Array.size_mapFinIdx] at h₁' h₂'
    exact ⟨⟨ys', h₁'⟩, ⟨zs', h₂'⟩, by simp_all⟩
  · rintro ⟨⟨ys', s₁⟩, ⟨zs', s₂⟩, rfl, h₁, h₂⟩
    refine ⟨ys', zs', by simp_all⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Varianta032b94bbb8e0699959f5f27c2928bc562d4555b9d969d1e8160104b535d3493.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Varianta032b94bbb8e0699959f5f27c2928bc562d4555b9d969d1e8160104b535d3493.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8445ed52939034edd19a0fe427fde8b60d7f120` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
