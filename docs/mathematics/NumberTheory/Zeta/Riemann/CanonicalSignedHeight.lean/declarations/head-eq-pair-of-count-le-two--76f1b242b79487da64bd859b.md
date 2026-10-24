# head_eq_pair_of_count_le_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7aefd7fd-2d6d-8b2b-8336-298f7c67d42d",
  "kind": "theorem",
  "lexical_name": "head_eq_pair_of_count_le_two",
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
  "slug": "head-eq-pair-of-count-le-two--76f1b242b79487da64bd859b",
  "source": {
    "blob": "07203d6c78db306a567165a1fa2f3d469962b279",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 226,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76f1b242b79487da64bd859b34dc776b342fbe860903e67be02fb923f750be34",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7aefd7fd-2d6d-8b2b-8336-298f7c67d42d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem head_eq_pair_of_count_le_two {T : ℝ} {z w : ZeroPoint}
    (hzw : z ≠ w) (hz : z ∈ heightHead T) (hw : w ∈ heightHead T)
    (hu : heightCount T ≤ 2) : heightHead T = {z, w} := by
  apply Finset.Subset.antisymm
  · intro v hv
    by_contra hnot
    have hvz : v ≠ z := fun h => hnot (by simp [h])
    have hvw : v ≠ w := fun h => hnot (by simp [h])
    have hsub : ({v, z, w} : Finset ZeroPoint) ⊆ heightHead T := by
      intro a ha
      simp only [Finset.mem_insert, Finset.mem_singleton] at ha
      rcases ha with rfl | rfl | rfl
      · exact hv
      · exact hz
      · exact hw
    have hc := Finset.card_le_card hsub
    have hcard : ({v, z, w} : Finset ZeroPoint).card = 3 := by
      simp [hvz, hvw, hzw]
    rw [hcard] at hc
    have hh := head_card_le_heightCount T
    omega
  · intro v hv
    simp only [Finset.mem_insert, Finset.mem_singleton] at hv
    rcases hv with rfl | rfl
    · exact hz
    · exact hw

end
end GRWTSK.RiemannHypothesis.CanonicalSignedHeight
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07203d6c78db306a567165a1fa2f3d469962b279` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
