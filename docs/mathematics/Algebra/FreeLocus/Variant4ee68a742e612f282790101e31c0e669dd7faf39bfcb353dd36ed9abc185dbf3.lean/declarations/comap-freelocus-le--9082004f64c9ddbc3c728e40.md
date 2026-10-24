# comap_freeLocus_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a579eb95-3caf-5ec6-73fa-70372a6a8bfc",
  "kind": "lemma",
  "lexical_name": "comap_freeLocus_le",
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
  "slug": "comap-freelocus-le--9082004f64c9ddbc3c728e40",
  "source": {
    "blob": "5f1574cb933fd263ea32c0c5f761afb2621e9fa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 93,
    "path": "GRWTSK/Algebra/FreeLocus/Variant4ee68a742e612f282790101e31c0e669dd7faf39bfcb353dd36ed9abc185dbf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9082004f64c9ddbc3c728e407bb82fb557e3e1546f5b40dfff17d611504be681",
  "verification": {
    "reference": "docs/verification/Algebra/FreeLocus/Variant4ee68a742e612f282790101e31c0e669dd7faf39bfcb353dd36ed9abc185dbf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a579eb95-3caf-5ec6-73fa-70372a6a8bfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comap_freeLocus_le {A} [CommRing A] [Algebra R A] :
    comap (algebraMap R A) ⁻¹' freeLocus R M ≤ freeLocus A (A ⊗[R] M) := by
  intro p hp
  let Rₚ := Localization.AtPrime (comap (algebraMap R A) p).asIdeal
  let Aₚ := Localization.AtPrime p.asIdeal
  rw [Set.mem_preimage, mem_freeLocus_iff_tensor _ Rₚ] at hp
  rw [mem_freeLocus_iff_tensor _ Aₚ]
  letI algebra : Algebra Rₚ Aₚ := (Localization.localRingHom
    (comap (algebraMap R A) p).asIdeal p.asIdeal (algebraMap R A) rfl).toAlgebra
  have : IsScalarTower R Rₚ Aₚ := IsScalarTower.of_algebraMap_eq'
    (by simp [Rₚ, Aₚ, algebra, RingHom.algebraMap_toAlgebra, Localization.localRingHom,
        ← IsScalarTower.algebraMap_eq])
  let e := AlgebraTensorModule.cancelBaseChange R Rₚ Aₚ Aₚ M ≪≫ₗ
    (AlgebraTensorModule.cancelBaseChange R A Aₚ Aₚ M).symm
  exact .of_equiv e

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FreeLocus/Variant4ee68a742e612f282790101e31c0e669dd7faf39bfcb353dd36ed9abc185dbf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FreeLocus/Variant4ee68a742e612f282790101e31c0e669dd7faf39bfcb353dd36ed9abc185dbf3.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f1574cb933fd263ea32c0c5f761afb2621e9fa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
