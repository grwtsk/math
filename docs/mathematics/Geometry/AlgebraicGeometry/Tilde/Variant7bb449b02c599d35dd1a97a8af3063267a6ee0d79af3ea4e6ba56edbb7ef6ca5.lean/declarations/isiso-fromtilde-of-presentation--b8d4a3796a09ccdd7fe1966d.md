# isIso_fromTildeΓ_of_presentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "06d1d92a2293c66b68f27b9d03d863c6839eef5a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 464,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7b/7bb449b02c599d35dd1a97a8af3063267a6ee0d79af3ea4e6ba56edbb7ef6ca5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81010ee6-8cec-c89d-e59c-a7195296d966",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0e908c9-c066-fbd6-b92d-423874181017",
  "kind": "lemma",
  "lexical_name": "isIso_fromTildeΓ_of_presentation",
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
  "slug": "isiso-fromtilde-of-presentation--b8d4a3796a09ccdd7fe1966d",
  "source": {
    "blob": "06d1d92a2293c66b68f27b9d03d863c6839eef5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 483,
    "line": 464,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Tilde/Variant7bb449b02c599d35dd1a97a8af3063267a6ee0d79af3ea4e6ba56edbb7ef6ca5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8d4a3796a09ccdd7fe1966d45e8361667393c205cf62ed3c6c359b7765c7750",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Tilde/Variant7bb449b02c599d35dd1a97a8af3063267a6ee0d79af3ea4e6ba56edbb7ef6ca5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0e908c9-c066-fbd6-b92d-423874181017`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 464–483.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIso_fromTildeΓ_of_presentation (M : (Spec R).Modules) (P : M.Presentation) :
    IsIso M.fromTildeΓ := by
  rw [isIso_fromTildeΓ_iff]
  let g := (tilde.functor _).preimage <| (tildeFinsupp _).hom ≫ P.relations.π ≫ kernel.ι _ ≫
    (tildeFinsupp _).inv
  let iso : cokernel ((tilde.functor R).map g) ≅ cokernel (P.relations.π ≫ kernel.ι _) := by
    refine cokernel.mapIso _ _ (tildeFinsupp _) (tildeFinsupp _) ?_
    simp only [g, (tilde.functor R).map_preimage]
    simp
  exact ⟨cokernel g, ⟨PreservesCokernel.iso (tilde.functor R) g ≪≫ iso ≪≫
    IsColimit.coconePointUniqueUpToIso (colimit.isColimit _) P.isColimit⟩⟩

section IsLocalizing

variable (M : (Spec R).Modules) (f : R) {S : CommRingCat.{u}} (φ : R ⟶ S)

open TopologicalSpace

/-- A sheaf `M` of `R-modules` is localizing if for all `f` in `R`, the restriction map
from `M(⊤)` to `M(D(f))` is localization with respect to `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Tilde/Variant7bb449b02c599d35dd1a97a8af3063267a6ee0d79af3ea4e6ba56edbb7ef6ca5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Tilde/Variant7bb449b02c599d35dd1a97a8af3063267a6ee0d79af3ea4e6ba56edbb7ef6ca5.lean#L464).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06d1d92a2293c66b68f27b9d03d863c6839eef5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
