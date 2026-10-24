# toLocallyRingedSpaceCoproductCofanIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f3320ab204af30463ad2285fe8dcb2885631116b735f5abd79fc4d0116a907a",
  "kind": "def",
  "lexical_name": "toLocallyRingedSpaceCoproductCofanIsColimit",
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
  "slug": "tolocallyringedspacecoproductcofaniscolimit--b83c800c7c037e6e7f0354b5",
  "source": {
    "blob": "0dacb8a8190e7d397c53f5d9348910f99d156968",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 195,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Limits/Variant340964db2f4336957c8c8bf769f8b4a2937c46c9a57673f0b8926e529db3b0ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b83c800c7c037e6e7f0354b598bfddc8c015feeac4f781d4313a84cebd143dc6",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Limits/Variant340964db2f4336957c8c8bf769f8b4a2937c46c9a57673f0b8926e529db3b0ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f3320ab204af30463ad2285fe8dcb2885631116b735f5abd79fc4d0116a907a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toLocallyRingedSpaceCoproductCofanIsColimit :
    IsColimit (toLocallyRingedSpaceCoproductCofan f) := by
  fapply mkCofanColimit
  · refine fun t ↦ Multicoequalizer.desc _ _ t.inj ?_
    rintro ⟨i, j⟩
    simp only [GlueData.diagram, disjointGlueData_J, disjointGlueData_V, disjointGlueData_U,
      disjointGlueData_f, disjointGlueData_t, Category.comp_id, Category.assoc,
      GlueData.mapGlueData_J, disjointGlueData_J, GlueData.mapGlueData_V,
      disjointGlueData_V, Scheme.forgetToLocallyRingedSpace_obj, GlueData.mapGlueData_U,
      disjointGlueData_U, GlueData.mapGlueData_f, disjointGlueData_f, Category.comp_id,
      Scheme.forgetToLocallyRingedSpace_map, GlueData.mapGlueData_t, disjointGlueData_t]
    split_ifs with h
    · subst h
      simp only [eqToHom_refl, ↓reduceDIte, ← Category.assoc, GlueData'.f']
      congr
    · apply Limits.IsInitial.hom_ext
      rw [if_neg h]
      exact LocallyRingedSpace.emptyIsInitial
  · exact fun _ _ ↦ Multicoequalizer.π_desc _ _ _ _ _
  · intro i m h
    apply Multicoequalizer.hom_ext _ _ _ fun j ↦ ?_
    rw [Multicoequalizer.π_desc]
    exact h j

noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Limits/Variant340964db2f4336957c8c8bf769f8b4a2937c46c9a57673f0b8926e529db3b0ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Limits/Variant340964db2f4336957c8c8bf769f8b4a2937c46c9a57673f0b8926e529db3b0ae.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0dacb8a8190e7d397c53f5d9348910f99d156968` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
