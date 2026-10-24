# scalene_reindex_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e515e53-13f2-9884-9d6b-603e1b0de86d",
  "kind": "lemma",
  "lexical_name": "scalene_reindex_iff",
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
  "slug": "scalene-reindex-iff--b3c9e6cadcd70a8f12954212",
  "source": {
    "blob": "9395ead8a380c9b5d995f9694b0e8d5450646a48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 65,
    "path": "GRWTSK/Topology/MetricTopology/Simplex/Variant903474e535d07b3b88845fdaead2e782172bcee8c520f231d13604a7d318747f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3c9e6cadcd70a8f12954212582fff521d50672bcf94d5359df57164d9b7c247",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Simplex/Variant903474e535d07b3b88845fdaead2e782172bcee8c520f231d13604a7d318747f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e515e53-13f2-9884-9d6b-603e1b0de86d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma scalene_reindex_iff {s : Simplex R P m} (e : Fin (m + 1) ≃ Fin (n + 1)) :
    (s.reindex e).Scalene ↔ s.Scalene := by
  let f : {x : Fin (m + 1) × Fin (m + 1) // x.1 < x.2} ≃
    {y : Fin (n + 1) × Fin (n + 1) // y.1 < y.2} :=
    ⟨fun x ↦ if h : e x.val.1 < e x.val.2 then ⟨(e x.val.1, e x.val.2), h⟩ else
      ⟨(e x.val.2, e x.val.1), Ne.lt_of_le (e.injective.ne x.property.ne') (not_lt.1 h)⟩,
     fun y ↦ if h : e.symm y.val.1 < e.symm y.val.2 then ⟨(e.symm y.val.1, e.symm y.val.2), h⟩ else
      ⟨(e.symm y.val.2, e.symm y.val.1),
       Ne.lt_of_le (e.symm.injective.ne y.property.ne') (not_lt.1 h)⟩,
     by
       simp only [LeftInverse, Subtype.forall, Prod.forall]
       intro i j h
       split_ifs with h₁ h₂ h₃
       · simp
       · simp [h] at h₂
       · simp [h, lt_asymm] at h₃
       · simp,
     by
       simp only [RightInverse, LeftInverse, Subtype.forall, Prod.forall]
       intro i j h
       split_ifs with h₁ h₂ h₃
       · simp
       · simp [h] at h₂
       · simp [h, lt_asymm] at h₃
       · simp⟩
  simp_rw [Scalene]
  convert (Injective.of_comp_iff' _ (Equiv.bijective f)).symm
  simp only [reindex_points, comp_apply, Equiv.coe_fn_mk, f]
  split_ifs with h
  · simp
  · simp [dist_comm]

/-- A simplex is equilateral if all the edge lengths are equal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Simplex/Variant903474e535d07b3b88845fdaead2e782172bcee8c520f231d13604a7d318747f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Simplex/Variant903474e535d07b3b88845fdaead2e782172bcee8c520f231d13604a7d318747f.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9395ead8a380c9b5d995f9694b0e8d5450646a48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
