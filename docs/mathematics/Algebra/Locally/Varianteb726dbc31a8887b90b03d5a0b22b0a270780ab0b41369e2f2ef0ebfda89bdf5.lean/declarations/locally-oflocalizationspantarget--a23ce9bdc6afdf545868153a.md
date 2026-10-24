# locally_ofLocalizationSpanTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f85c8a54f243bcdf1c1d9bb230f9b631848e488f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/eb726dbc31a8887b90b03d5a0b22b0a270780ab0b41369e2f2ef0ebfda89bdf5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e9a8f83-67d2-6744-476b-998e9d253fe5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8fb90e3e-f832-7453-07d3-d25b844aec20",
  "kind": "lemma",
  "lexical_name": "locally_ofLocalizationSpanTarget",
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
  "slug": "locally-oflocalizationspantarget--a23ce9bdc6afdf545868153a",
  "source": {
    "blob": "f85c8a54f243bcdf1c1d9bb230f9b631848e488f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 155,
    "path": "GRWTSK/Algebra/Locally/Varianteb726dbc31a8887b90b03d5a0b22b0a270780ab0b41369e2f2ef0ebfda89bdf5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a23ce9bdc6afdf545868153a873061f89e703fddcfbccbad958d6631f7457786",
  "verification": {
    "reference": "docs/verification/Algebra/Locally/Varianteb726dbc31a8887b90b03d5a0b22b0a270780ab0b41369e2f2ef0ebfda89bdf5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fb90e3e-f832-7453-07d3-d25b844aec20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma locally_ofLocalizationSpanTarget (hP : RespectsIso P) :
    OfLocalizationSpanTarget (Locally P) := by
  intro R S _ _ f s hsone hs
  choose t htone ht using hs
  rw [locally_iff_exists hP]
  refine ⟨(a : s) × t a, IsLocalization.Away.mulNumerator s t,
      IsLocalization.Away.span_range_mulNumerator_eq_top hsone htone,
      fun ⟨a, b⟩ ↦ Localization.Away b.val, inferInstance, inferInstance, fun ⟨a, b⟩ ↦ ?_, ?_⟩
  · have : IsLocalization.Away ((algebraMap S (Localization.Away a.val))
        (IsLocalization.Away.sec a.val b.val).1) (Localization.Away b.val) := by
      apply IsLocalization.Away.of_associated (r := b.val)
      rw [← IsLocalization.Away.sec_spec]
      apply associated_mul_unit_right
      rw [map_pow _ _]
      exact IsUnit.pow _ (IsLocalization.Away.algebraMap_isUnit _)
    apply IsLocalization.Away.mul' (Localization.Away a.val) (Localization.Away b.val)
  · intro ⟨a, b⟩
    rw [IsScalarTower.algebraMap_eq S (Localization.Away a.val) (Localization.Away b.val)]
    apply ht _ _ b.property

end OfLocalizationSpanTarget

section Stability

set_option backward.isDefEq.respectTransparency.types false in
/-- If `P` respects isomorphism, so does `Locally P`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Locally/Varianteb726dbc31a8887b90b03d5a0b22b0a270780ab0b41369e2f2ef0ebfda89bdf5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Locally/Varianteb726dbc31a8887b90b03d5a0b22b0a270780ab0b41369e2f2ef0ebfda89bdf5.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f85c8a54f243bcdf1c1d9bb230f9b631848e488f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
