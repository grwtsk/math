# completedSource_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66da4e22-4964-046e-384c-3ce61c9b7feb",
  "kind": "theorem",
  "lexical_name": "completedSource_eq_zero_iff",
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
  "slug": "completedsource-eq-zero-iff--f82c22ff2b0764f90234e0c1",
  "source": {
    "blob": "e381d356363bdcb5c240c702f0427047d8ce1f0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 62,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Bbc3d0e2b4ebb973cc8255293f1855062275bc5a660fa68f630db4137759c2dbDirichletComplet/Variantaadff856dbe051985548d8dc854762bc91273380f4a7f3ccb234358fe2554d98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f82c22ff2b0764f90234e0c1db25ceeff79b5565d073a2945ff88af954958fde",
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

Occurrence: `result:66da4e22-4964-046e-384c-3ce61c9b7feb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completedSource_eq_zero_iff (χ : DirichletCharacter ℂ N) (s : ℂ) :
    completedSource χ s = 0 ↔ DirichletCharacter.completedLFunction χ s = 0 := by
  have hN : (N : ℂ) ≠ 0 := by exact_mod_cast (NeZero.ne N)
  have hp : (N : ℂ) ^ (s / 2) ≠ 0 := Complex.cpow_ne_zero_iff.mpr (Or.inl hN)
  simp only [completedSource, mul_eq_zero, hp, false_or]

/-- The conductor factor absorbs the power in Mathlib's primitive functional equation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Bbc3d0e2b4ebb973cc8255293f1855062275bc5a660fa68f630db4137759c2dbDirichletComplet/Variantaadff856dbe051985548d8dc854762bc91273380f4a7f3ccb234358fe2554d98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Bbc3d0e2b4ebb973cc8255293f1855062275bc5a660fa68f630db4137759c2dbDirichletComplet/Variantaadff856dbe051985548d8dc854762bc91273380f4a7f3ccb234358fe2554d98.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e381d356363bdcb5c240c702f0427047d8ce1f0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
