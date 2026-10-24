# _root_.GRWTSK.Algebra.LinearAlgebra.IsLinearMap.Variant9dee020ad79bc05f0b62a02974a26b1256212491583387d69d4b4d0521be5aae.preimage_smul_setₛₗ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a52ef217-7d3c-ea46-6faa-35ccaf2ba633",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.IsLinearMap.Variant9dee020ad79bc05f0b62a02974a26b1256212491583387d69d4b4d0521be5aae.preimage_smul_setₛₗ",
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
  "slug": "root-grwtsk-algebra-linearalgebra-islinearmap-variant9dee020ad79bc05f0b6--aa3c7f86fc4b8ef662eefde4",
  "source": {
    "blob": "228502941109329435282b9aad1f8aa47da946ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 403,
    "line": 389,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant082cf928f4f8e9fb45f05a8162c31bd5c9d1a369566e4134791acd9d71709e08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa3c7f86fc4b8ef662eefde4041c01f2d717ac55cdcdcec9f692a369fba1c80c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearMap/Variant082cf928f4f8e9fb45f05a8162c31bd5c9d1a369566e4134791acd9d71709e08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a52ef217-7d3c-ea46-6faa-35ccaf2ba633`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–403.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.IsLinearMap.Variant9dee020ad79bc05f0b62a02974a26b1256212491583387d69d4b4d0521be5aae.preimage_smul_setₛₗ [SemilinearMapClass F σ M M₃] {c : R} (hc : IsUnit c)
    (s : Set M₃) :
    h ⁻¹' (σ c • s) = c • h ⁻¹' s := by
  apply Set.Subset.antisymm
  · rintro x ⟨y, ys, hy⟩
    refine' ⟨(hc.unit.inv : R) • x, _, _⟩
    · simp only [← hy, smul_smul, Set.mem_preimage, Units.inv_eq_val_inv, map_smulₛₗ h, ← map_mul,
        IsUnit.val_inv_mul, one_smul, map_one, ys]
    · simp only [smul_smul, IsUnit.mul_val_inv, one_smul, Units.inv_eq_val_inv]
  · rintro x ⟨y, hy, rfl⟩
    refine' ⟨h y, hy, by simp only [RingHom.id_apply, map_smulₛₗ h]⟩
#align preimage_smul_setₛₗ preimage_smul_setₛₗ

variable (R M₂)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearMap/Variant082cf928f4f8e9fb45f05a8162c31bd5c9d1a369566e4134791acd9d71709e08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant082cf928f4f8e9fb45f05a8162c31bd5c9d1a369566e4134791acd9d71709e08.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `228502941109329435282b9aad1f8aa47da946ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
