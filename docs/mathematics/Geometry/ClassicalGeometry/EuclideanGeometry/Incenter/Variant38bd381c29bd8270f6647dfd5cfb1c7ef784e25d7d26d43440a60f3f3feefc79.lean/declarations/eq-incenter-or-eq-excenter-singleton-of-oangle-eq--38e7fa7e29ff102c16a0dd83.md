# eq_incenter_or_eq_excenter_singleton_of_oangle_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "86a227ab743ccccb78a0a4897c9fd34277dea709",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f5f03ee2-00a8-bba1-69d9-c8fcb9a77f41",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:70b9004a-c201-cefc-55c7-45b22143ef1f",
  "kind": "lemma",
  "lexical_name": "eq_incenter_or_eq_excenter_singleton_of_oangle_eq",
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
  "slug": "eq-incenter-or-eq-excenter-singleton-of-oangle-eq--38e7fa7e29ff102c16a0dd83",
  "source": {
    "blob": "86a227ab743ccccb78a0a4897c9fd34277dea709",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 186,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38e7fa7e29ff102c16a0dd830c2fc5a99af749490e78465012efa5407d7aa865",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70b9004a-c201-cefc-55c7-45b22143ef1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_incenter_or_eq_excenter_singleton_of_oangle_eq {signs : Finset (Fin 3)}
    (h : ∡ (t.points i₂) (t.points i₁) (t.excenter signs) =
      ∡ (t.excenter signs) (t.points i₁) (t.points i₃)) :
    t.excenter signs = t.incenter ∨ t.excenter signs = t.excenter {i₁} := by
  have hs := t.excenter_eq_incenter_or_excenter_singleton_of_ne signs h₁₂ h₁₃ h₂₃
  rcases hs with hs | hs | hs | hs
  · exact .inl hs
  · exact .inr hs
  · rw [hs, t.oangle_excenter_singleton_eq_add_pi h₁₂.symm h₂₃ h₁₃] at h
    simp [Real.Angle.pi_ne_zero] at h
  · rw [hs, oangle_rev (t.points i₃), t.oangle_excenter_singleton_eq_add_pi h₁₃.symm h₂₃.symm h₁₂,
      oangle_rev] at h
    simp [Real.Angle.pi_ne_zero] at h

variable {t} in
/-- An excenter lying on the external angle bisector from a vertex is the excenter opposite
another vertex. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant38bd381c29bd8270f6647dfd5cfb1c7ef784e25d7d26d43440a60f3f3feefc79.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86a227ab743ccccb78a0a4897c9fd34277dea709` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
