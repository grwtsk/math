# primitive_completedSource_one_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d54dd8f4-891a-e686-b691-9f7757ee0b22",
  "kind": "theorem",
  "lexical_name": "primitive_completedSource_one_sub",
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
  "slug": "primitive-completedsource-one-sub--910e4a47d354319d192d5521",
  "source": {
    "blob": "e381d356363bdcb5c240c702f0427047d8ce1f0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 69,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Bbc3d0e2b4ebb973cc8255293f1855062275bc5a660fa68f630db4137759c2dbDirichletComplet/Variantaadff856dbe051985548d8dc854762bc91273380f4a7f3ccb234358fe2554d98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:910e4a47d354319d192d5521f1c6e9cf4fe7f5f1f4b0a851d4edbbe6f2d37488",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Bbc3d0e2b4ebb973cc8255293f1855062275bc5a660fa68f630db4137759c2dbDirichletComplet/Variantaadff856dbe051985548d8dc854762bc91273380f4a7f3ccb234358fe2554d98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d54dd8f4-891a-e686-b691-9f7757ee0b22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitive_completedSource_one_sub (χ : DirichletCharacter ℂ N)
    (hχ : χ.IsPrimitive) (s : ℂ) :
    completedSource χ (1 - s) =
      DirichletCharacter.rootNumber χ * completedSource χ⁻¹ s := by
  have hN : (N : ℂ) ≠ 0 := by exact_mod_cast (NeZero.ne N)
  simp only [completedSource]
  rw [hχ.completedLFunction_one_sub]
  calc
    (N : ℂ) ^ ((1 - s) / 2) *
        ((N : ℂ) ^ (s - 1 / 2) * DirichletCharacter.rootNumber χ *
          DirichletCharacter.completedLFunction χ⁻¹ s) =
        ((N : ℂ) ^ ((1 - s) / 2) * (N : ℂ) ^ (s - 1 / 2)) *
          (DirichletCharacter.rootNumber χ *
            DirichletCharacter.completedLFunction χ⁻¹ s) := by ring
    _ = (N : ℂ) ^ (((1 - s) / 2) + (s - 1 / 2)) *
          (DirichletCharacter.rootNumber χ *
            DirichletCharacter.completedLFunction χ⁻¹ s) := by
      rw [← Complex.cpow_add _ _ hN]
    _ = (N : ℂ) ^ (s / 2) *
          (DirichletCharacter.rootNumber χ *
            DirichletCharacter.completedLFunction χ⁻¹ s) := by
      congr 1
      congr 1
      ring
    _ = DirichletCharacter.rootNumber χ *
          ((N : ℂ) ^ (s / 2) * DirichletCharacter.completedLFunction χ⁻¹ s) := by ring

/-- Central reflection retains both the root number and the conjugate character. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Bbc3d0e2b4ebb973cc8255293f1855062275bc5a660fa68f630db4137759c2dbDirichletComplet/Variantaadff856dbe051985548d8dc854762bc91273380f4a7f3ccb234358fe2554d98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Bbc3d0e2b4ebb973cc8255293f1855062275bc5a660fa68f630db4137759c2dbDirichletComplet/Variantaadff856dbe051985548d8dc854762bc91273380f4a7f3ccb234358fe2554d98.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e381d356363bdcb5c240c702f0427047d8ce1f0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
