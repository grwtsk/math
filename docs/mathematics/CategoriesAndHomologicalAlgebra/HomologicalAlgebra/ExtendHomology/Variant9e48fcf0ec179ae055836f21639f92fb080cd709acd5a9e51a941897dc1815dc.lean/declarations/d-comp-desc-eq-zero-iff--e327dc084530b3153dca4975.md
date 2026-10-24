# d_comp_desc_eq_zero_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d5d00e3d6d6f7aa40f30bf85674754530b47fa4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b3075c32-fdc3-d3b4-a0f8-3ae54a3f64bd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f5e2ff84-c445-3cb7-00f9-c05970d052e1",
  "kind": "lemma",
  "lexical_name": "d_comp_desc_eq_zero_iff'",
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
  "slug": "d-comp-desc-eq-zero-iff--e327dc084530b3153dca4975",
  "source": {
    "blob": "2d5d00e3d6d6f7aa40f30bf85674754530b47fa4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 174,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e327dc084530b3153dca49755781ea1625d5a9fbd1d652d8c5bed47d2f0f2331",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5e2ff84-c445-3cb7-00f9-c05970d052e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma d_comp_desc_eq_zero_iff' ⦃W : C⦄ (f' : cocone.pt ⟶ K.X k)
    (hf' : cocone.π ≫ f' = K.d j k)
    (f'' : cocone.pt ⟶ (K.extend e).X k')
    (hf'' : (extendXIso K e hj').hom ≫ cocone.π ≫ f'' = (K.extend e).d j' k')
    (φ : W ⟶ cocone.pt) :
    φ ≫ f' = 0 ↔ φ ≫ f'' = 0 := by
  by_cases hjk : c.Rel j k
  · have hk'' : e.f k = k' := by rw [← hk', ← hj', c'.next_eq' (e.rel hjk)]
    have : f' ≫ (K.extendXIso e hk'').inv = f'' := by
      apply Cofork.IsColimit.hom_ext hcocone
      rw [reassoc_of% hf', ← cancel_epi (extendXIso K e hj').hom, hf'',
        K.extend_d_eq e hj' hk'']
    rw [← cancel_mono (K.extendXIso e hk'').inv, zero_comp, assoc, this]
  · have h₁ : f' = 0 := by
      apply Cofork.IsColimit.hom_ext hcocone
      simp only [hf', comp_zero, K.shape _ _ hjk]
    have h₂ : f'' = 0 := by
      apply Cofork.IsColimit.hom_ext hcocone
      rw [← cancel_epi (extendXIso K e hj').hom, hf'', comp_zero, comp_zero,
        K.extend_d_from_eq_zero e j' k' j hj']
      rw [hk]
      exact hjk
    simp [h₁, h₂]

include hk hk' in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d5d00e3d6d6f7aa40f30bf85674754530b47fa4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
