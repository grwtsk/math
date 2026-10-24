# toSingle₀ProjectiveResolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a38c81b5bb3950205dda29c2fe1672f51620d4dc5d4bb9cfb6a8139cc91577a",
  "kind": "def",
  "lexical_name": "toSingle₀ProjectiveResolution",
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
  "slug": "tosingle-projectiveresolution--7ecc2a17097888b2743e3da5",
  "source": {
    "blob": "590ad87dde755ae335bda07388b0a88a5aa102c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 174,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant7c23686175143cb12991102ca06bc501263b51c7891458258cb674d04cb0c22b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ecc2a17097888b2743e3da5739cee293179a0c8d6de134571926819dd78a0cc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant7c23686175143cb12991102ca06bc501263b51c7891458258cb674d04cb0c22b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a38c81b5bb3950205dda29c2fe1672f51620d4dc5d4bb9cfb6a8139cc91577a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toSingle₀ProjectiveResolution {X : ChainComplex C ℕ} {Y : C}
    -- porting note: autoporter incorrectly went for `X.pt` at the end there
    (f : X ⟶ (ChainComplex.single₀ C).obj Y) [QuasiIso f] (H : ∀ n, Projective (X.X n)) :
    ProjectiveResolution Y where
  complex := X
  π := f
  projective := H
  -- porting note: Lean 3 used dot notation `f.to_single₀_exact_d_f_at_zero` etc
  exact₀ := HomologicalComplex.Hom.to_single₀_exact_d_f_at_zero f
  exact := HomologicalComplex.Hom.to_single₀_exact_at_succ f
  epi := HomologicalComplex.Hom.to_single₀_epi_at_zero f
set_option linter.uppercaseLean3 false in
#align homological_complex.hom.to_single₀_ProjectiveResolution HomologicalComplex.Hom.toSingle₀ProjectiveResolution

end HomologicalComplex.Hom
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant7c23686175143cb12991102ca06bc501263b51c7891458258cb674d04cb0c22b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant7c23686175143cb12991102ca06bc501263b51c7891458258cb674d04cb0c22b.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `590ad87dde755ae335bda07388b0a88a5aa102c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
