# ExcenterExists.excenterWeights_eq_excenterWeights_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1d7b5902c403049b85d9ff01a8f82d74ea7abe4d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 652,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e5962d6b1d3e0349e014edb5d8521040076ebb0a0c71f286616a044d8157e68c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0b1581bf-c174-1a22-42a3-6bc214b28f1b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:327cc362-b246-aee1-d79f-bd998d59db1d",
  "kind": "lemma",
  "lexical_name": "ExcenterExists.excenterWeights_eq_excenterWeights_iff",
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
  "slug": "excenterexists-excenterweights-eq-excenterweights-iff--defda09138f13c8ca11f777d",
  "source": {
    "blob": "1d7b5902c403049b85d9ff01a8f82d74ea7abe4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 680,
    "line": 652,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variante5962d6b1d3e0349e014edb5d8521040076ebb0a0c71f286616a044d8157e68c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:defda09138f13c8ca11f777d4de24f9a574ad01a932b434f65b232d339b702ec",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variante5962d6b1d3e0349e014edb5d8521040076ebb0a0c71f286616a044d8157e68c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:327cc362-b246-aee1-d79f-bd998d59db1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 652–680.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ExcenterExists.excenterWeights_eq_excenterWeights_iff {signs₁ signs₂ : Finset (Fin (n + 1))}
    (h₁ : s.ExcenterExists signs₁) (h₂ : s.ExcenterExists signs₂) :
    s.excenterWeights signs₁ = s.excenterWeights signs₂ ↔ signs₁ = signs₂ ∨ signs₁ = signs₂ᶜ := by
  refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
  · have hi : ∀ i, SignType.sign (s.excenterWeights signs₁ i) =
        SignType.sign (s.excenterWeights signs₂ i) := by
      simp [h]
    simp_rw [excenterWeights, Pi.smul_apply, smul_eq_mul, sign_mul] at hi
    have hn₁ : ∑ i, s.excenterWeightsUnnorm signs₁ i ≠ 0 := h₁
    have hn₂ : ∑ i, s.excenterWeightsUnnorm signs₂ i ≠ 0 := h₂
    rcases sign_eq_sign_or_eq_neg (inv_ne_zero hn₁) (inv_ne_zero hn₂) with hs | hs
    · simp only [hs, mul_eq_mul_left_iff, sign_eq_zero_iff, inv_eq_zero, hn₂, or_false] at hi
      simp only [excenterWeightsUnnorm, sign_mul, inv_pos, height_pos, sign_pos, mul_one] at hi
      left
      ext i
      replace hi := hi i
      split_ifs at hi <;> simp_all
    · simp_rw [hs, neg_mul, ← mul_neg, mul_eq_mul_left_iff] at hi
      simp only [sign_eq_zero_iff, inv_eq_zero, hn₂, or_false] at hi
      simp only [excenterWeightsUnnorm, sign_mul, inv_pos, height_pos, sign_pos, mul_one] at hi
      right
      ext i
      replace hi := hi i
      split_ifs at hi <;> simp_all
  · rcases h with rfl | rfl
    · rfl
    · simp

variable {s} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variante5962d6b1d3e0349e014edb5d8521040076ebb0a0c71f286616a044d8157e68c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variante5962d6b1d3e0349e014edb5d8521040076ebb0a0c71f286616a044d8157e68c.lean#L652).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d7b5902c403049b85d9ff01a8f82d74ea7abe4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
