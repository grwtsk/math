# mapIdx_eq_append_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c26c2e32-2ef2-2359-4837-da3299c4a5e8",
  "kind": "theorem",
  "lexical_name": "mapIdx_eq_append_iff",
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
  "slug": "mapidx-eq-append-iff--10099f15458aa8fd3f5a0c53",
  "source": {
    "blob": "5c7890c3a6935e13e93fead5e236452bde73cc18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 477,
    "line": 465,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variant5ccf3e415321b7abc459f058ce830cd4a380ef9d2fdfdff511d1f2c78339d482.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10099f15458aa8fd3f5a0c536ce11737be0bd348356b941df04e739e01294528",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variant5ccf3e415321b7abc459f058ce830cd4a380ef9d2fdfdff511d1f2c78339d482.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c26c2e32-2ef2-2359-4837-da3299c4a5e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 465–477.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapIdx_eq_append_iff {l : List α} :
    mapIdx f l = l₁ ++ l₂ ↔
      ∃ (l₁' : List α) (l₂' : List α), l = l₁' ++ l₂' ∧
        mapIdx f l₁' = l₁ ∧
        mapIdx (fun i => f (i + l₁'.length)) l₂' = l₂ := by
  rw [mapIdx_eq_mapFinIdx, mapFinIdx_eq_append_iff]
  simp only [mapFinIdx_eq_mapIdx, exists_and_left, exists_prop]
  constructor
  · rintro ⟨l₁, rfl, l₂, rfl, h⟩
    refine ⟨l₁, l₂, by simp_all⟩
  · rintro ⟨l₁, l₂, rfl, rfl, rfl⟩
    refine ⟨l₁, rfl, l₂, by simp_all⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variant5ccf3e415321b7abc459f058ce830cd4a380ef9d2fdfdff511d1f2c78339d482.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variant5ccf3e415321b7abc459f058ce830cd4a380ef9d2fdfdff511d1f2c78339d482.lean#L465).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c7890c3a6935e13e93fead5e236452bde73cc18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
