# corners_theorem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "168711c875fcdfc746b63bdd2af19f27542b86cc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/eef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1d649efe-73b0-773f-3620-f5ddf2073fce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bebebb63-1e51-f7e7-4fa9-3b0a172dbf1b",
  "kind": "theorem",
  "lexical_name": "corners_theorem",
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
  "slug": "corners-theorem--69ed6bdac27a46765426020d",
  "source": {
    "blob": "168711c875fcdfc746b63bdd2af19f27542b86cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 80,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Roth/Varianteef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69ed6bdac27a46765426020d752a89404f872d1b485f3829dc3b6c1072c35d3f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Roth/Varianteef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bebebb63-1e51-f7e7-4fa9-3b0a172dbf1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem corners_theorem (ε : ℝ) (hε : 0 < ε) (hG : cornersTheoremBound ε ≤ card G)
    (A : Finset (G × G)) (hAε : ε * card G ^ 2 ≤ #A) : ¬ IsCornerFree (A : Set (G × G)) := by
  rintro hA
  rw [cornersTheoremBound, Nat.add_one_le_iff] at hG
  have hε₁ : ε ≤ 1 := by
    have := hAε.trans (Nat.cast_le.2 A.card_le_univ)
    simp only [sq, Nat.cast_mul, Fintype.card_prod, Fintype.card_fin] at this
    rwa [mul_le_iff_le_one_left] at this
    positivity
  have := noAccidental hA
  rw [Nat.floor_lt' (by positivity), inv_lt_iff_one_lt_mul₀'] at hG
  swap
  · have : ε / 9 ≤ 1 := by linarith
    positivity
  refine hG.not_le (le_of_mul_le_mul_right ?_ (by positivity : (0 : ℝ) < card G ^ 2))
  classical
  have h₁ := (farFromTriangleFree_graph hAε).le_card_cliqueFinset
  rw [card_triangles, card_triangleIndices] at h₁
  convert h₁.trans (Nat.cast_le.2 <| card_le_univ _) using 1 <;> simp <;> ring

/-- The **corners theorem** for `ℕ`.

The maximum density of a corner-free set in `{1, ..., n} × {1, ..., n}` goes to zero as `n` tends to
infinity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Roth/Varianteef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Roth/Varianteef4d942089322676d523795b35c3873952918cbef48dcd3ee91ccce926f91c2.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `168711c875fcdfc746b63bdd2af19f27542b86cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
