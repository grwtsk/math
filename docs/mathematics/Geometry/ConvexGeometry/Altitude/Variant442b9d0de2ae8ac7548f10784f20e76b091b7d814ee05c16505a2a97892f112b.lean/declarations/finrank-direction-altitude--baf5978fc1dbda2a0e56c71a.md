# finrank_direction_altitude

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2c5bc5abfaadb27fc553500d4a200105f0d1d2c3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fb882380-43af-702c-8d45-8a3bf55d3436",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:67ca4775-648a-a9c2-8b31-1820c2fdb014",
  "kind": "theorem",
  "lexical_name": "finrank_direction_altitude",
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
  "slug": "finrank-direction-altitude--baf5978fc1dbda2a0e56c71a",
  "source": {
    "blob": "2c5bc5abfaadb27fc553500d4a200105f0d1d2c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 123,
    "path": "GRWTSK/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:baf5978fc1dbda2a0e56c71aac227c212dadc7f513a89fa15f599d04460ef60d",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67ca4775-648a-a9c2-8b31-1820c2fdb014`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finrank_direction_altitude {n : ℕ} [NeZero n] (s : Simplex ℝ P n) (i : Fin (n + 1)) :
    finrank ℝ (s.altitude i).direction = 1 := by
  rw [direction_altitude]
  have h := Submodule.finrank_add_inf_finrank_orthogonal
    (vectorSpan_mono ℝ (Set.image_subset_range s.points {i}ᶜ))
  have hn : (n - 1) + 1 = n := by
    have := NeZero.ne n
    cases n <;> lia
  have hc : #({i}ᶜ) = (n - 1) + 1 := by
    rw [card_compl, card_singleton, Fintype.card_fin, hn, add_tsub_cancel_right]
  refine add_left_cancel (_root_.trans h ?_)
  classical
  rw [s.independent.finrank_vectorSpan (Fintype.card_fin _), ← Finset.coe_singleton,
    ← Finset.coe_compl, ← Finset.coe_image,
    s.independent.finrank_vectorSpan_image_finset hc, hn]

/-- A line through a vertex is the altitude through that vertex if and
only if it is orthogonal to the opposite face. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c5bc5abfaadb27fc553500d4a200105f0d1d2c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
