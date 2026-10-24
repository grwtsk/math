# symm_trans_restr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9d90988-de3f-98a6-5253-4b3c9ab3b0e3",
  "kind": "theorem",
  "lexical_name": "symm_trans_restr",
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
  "slug": "symm-trans-restr--ff1ba2df7909d2afa595afaf",
  "source": {
    "blob": "02df1b0d77d6913ab1a12a4e9685376afb0c8a4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 181,
    "path": "GRWTSK/Topology/GeneralTopology/Composition/Variant174598786d605d06f98f702129d1b7f37decc62a852d155137db4b07b4260e4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff1ba2df7909d2afa595afafb2268332388447ca5335a32fa1322c4040e2824a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Composition/Variant174598786d605d06f98f702129d1b7f37decc62a852d155137db4b07b4260e4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9d90988-de3f-98a6-5253-4b3c9ab3b0e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symm_trans_restr (e' : OpenPartialHomeomorph X Y) (hs : IsOpen s) :
    e'.symm.trans (e.restr s) ≈ (e'.symm.trans e).restr (e'.target ∩ e'.symm ⁻¹' s) := by
  have ht : IsOpen (e'.target ∩ e'.symm ⁻¹' s) := by
    rw [← image_source_inter_eq']
    exact isOpen_image_source_inter e' hs
  refine ⟨?_, ?_⟩
  · simp only [trans_toPartialEquiv, symm_toPartialEquiv, restr_toPartialEquiv,
      PartialEquiv.trans_source, PartialEquiv.symm_source, coe_toPartialEquiv_symm,
      PartialEquiv.restr_source, preimage_inter]
    -- Shuffle the intersections, pull e'.target into the interior and use interior_inter.
    rw [interior_eq_iff_isOpen.mpr hs,
      ← inter_assoc, inter_comm e'.target, inter_assoc, inter_assoc]
    congr 1
    nth_rw 2 [← interior_eq_iff_isOpen.mpr e'.open_target]
    rw [← interior_inter, ← inter_assoc, inter_self, interior_eq_iff_isOpen.mpr ht]
  · simp [Set.eqOn_refl]

end OpenPartialHomeomorph

namespace Homeomorph

variable (e : X ≃ₜ Y) (e' : Y ≃ₜ Z)

@[simp, mfld_simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Composition/Variant174598786d605d06f98f702129d1b7f37decc62a852d155137db4b07b4260e4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Composition/Variant174598786d605d06f98f702129d1b7f37decc62a852d155137db4b07b4260e4a.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02df1b0d77d6913ab1a12a4e9685376afb0c8a4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
