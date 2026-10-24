# apply_eq_apply_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "80493a048ab16bb1db1a5cf2fa3b5028ea865e61",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 476,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/938549bddbb4dd7a429679ab94ef6c4d330d2b0e0526d6f3a009b47b8e616674.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3f584618-52d4-07b2-6f8d-33e4105724f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2137d37a-7193-6b41-055c-999cd4b0b26e",
  "kind": "lemma",
  "lexical_name": "apply_eq_apply_iff",
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
  "slug": "apply-eq-apply-iff--e35942dddac5f24feaead4c9",
  "source": {
    "blob": "80493a048ab16bb1db1a5cf2fa3b5028ea865e61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 488,
    "line": 476,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant938549bddbb4dd7a429679ab94ef6c4d330d2b0e0526d6f3a009b47b8e616674.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e35942dddac5f24feaead4c926ef7250e693c4b7a50a79d6b72f7978f1507a5a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant938549bddbb4dd7a429679ab94ef6c4d330d2b0e0526d6f3a009b47b8e616674.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2137d37a-7193-6b41-055c-999cd4b0b26e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 476–488.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma apply_eq_apply_iff (hf : IsRepFun P f) : f a = f b ↔ a = b ∨ P.Rel a b := by
  simp only [or_iff_not_imp_left, ← ne_eq]
  refine ⟨fun hab hne ↦ ?_, fun h ↦ ?_⟩
  · obtain (ha | ha) := em (a ∈ u)
    · exact hf.apply_eq_apply_iff_rel ha |>.mp hab
    obtain (hb | hb) := em (b ∈ u)
    · exact (hf.apply_eq_apply_iff_rel hb |>.mp hab.symm).symm
    rw [hf.apply_of_notMem ha, hf.apply_of_notMem hb] at hab
    contradiction
  obtain rfl | hne := eq_or_ne a b
  · rfl
  exact hf.apply_eq_apply (h hne)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant938549bddbb4dd7a429679ab94ef6c4d330d2b0e0526d6f3a009b47b8e616674.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant938549bddbb4dd7a429679ab94ef6c4d330d2b0e0526d6f3a009b47b8e616674.lean#L476).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80493a048ab16bb1db1a5cf2fa3b5028ea865e61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
