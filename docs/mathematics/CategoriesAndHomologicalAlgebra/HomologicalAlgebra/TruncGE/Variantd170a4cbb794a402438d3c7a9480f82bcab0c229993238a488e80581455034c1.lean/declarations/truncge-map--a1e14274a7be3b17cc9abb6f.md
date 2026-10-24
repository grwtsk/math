# truncGE'Map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:826107dab907e4cb9dcdd350cdabde6c7ac32846213dc0260d71844267797984",
  "kind": "def",
  "lexical_name": "truncGE'Map",
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
  "slug": "truncge-map--a1e14274a7be3b17cc9abb6f",
  "source": {
    "blob": "03996ae67de034213eb56516b7abc126862946d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 169,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGE/Variantd170a4cbb794a402438d3c7a9480f82bcab0c229993238a488e80581455034c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1e14274a7be3b17cc9abb6fdf0b0021aebbd5ef38be53334184f46064a7f391",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGE/Variantd170a4cbb794a402438d3c7a9480f82bcab0c229993238a488e80581455034c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:826107dab907e4cb9dcdd350cdabde6c7ac32846213dc0260d71844267797984`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def truncGE'Map : K.truncGE' e ⟶ L.truncGE' e where
  f i :=
    if hi : e.BoundaryGE i
    then
      (K.truncGE'XIsoOpcycles e rfl hi).hom ≫ opcyclesMap φ (e.f i) ≫
        (L.truncGE'XIsoOpcycles e rfl hi).inv
    else
      (K.truncGE'XIso e rfl hi).hom ≫ φ.f (e.f i) ≫ (L.truncGE'XIso e rfl hi).inv
  comm' i j hij := by
    rw [dif_neg (e.not_boundaryGE_next hij)]
    by_cases hi : e.BoundaryGE i
    · rw [dif_pos hi]
      simp [truncGE'_d_eq_fromOpcycles _ e hij rfl rfl hi,
        ← cancel_epi (K.pOpcycles (e.f i))]
    · rw [dif_neg hi]
      simp [truncGE'_d_eq _ e hij rfl rfl hi]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGE/Variantd170a4cbb794a402438d3c7a9480f82bcab0c229993238a488e80581455034c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGE/Variantd170a4cbb794a402438d3c7a9480f82bcab0c229993238a488e80581455034c1.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03996ae67de034213eb56516b7abc126862946d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
