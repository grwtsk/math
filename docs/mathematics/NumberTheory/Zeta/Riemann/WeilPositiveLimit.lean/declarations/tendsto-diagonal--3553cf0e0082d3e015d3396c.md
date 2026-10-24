# tendsto_diagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55dfba11-770d-b2bc-a2f9-bf0a60fb0386",
  "kind": "theorem",
  "lexical_name": "tendsto_diagonal",
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
  "slug": "tendsto-diagonal--3553cf0e0082d3e015d3396c",
  "source": {
    "blob": "33d3e6fe90f12a9f2837a6342c9dfb6c4f5b754b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 209,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WeilPositiveLimit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3553cf0e0082d3e015d3396c2b0afd2d33436cb5f71b05958ec73f9c0c22d070",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WeilPositiveLimit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55dfba11-770d-b2bc-a2f9-bf0a60fb0386`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_diagonal
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T}
    {form : WeilHermitianForm space}
    {H : ℕ → Type*}
    [∀ n, NormedAddCommGroup (H n)]
    [∀ n, InnerProductSpace ℂ (H n)]
    (bound : DiagonalErrorBound form H)
    (f : space.Vector) :
    Tendsto (fun n => bound.family.diagonal n f) atTop
      (𝓝 (form.diagonal f)) := by
  rw [tendsto_iff_norm_sub_tendsto_zero]
  exact squeeze_zero
    (fun n => norm_nonneg _)
    (fun n => by
      simpa [Real.norm_eq_abs, abs_sub_comm] using bound.comparison n f)
    (bound.error_tendsto_zero f)

/-- Convert the error profile to the direct limit profile. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WeilPositiveLimit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WeilPositiveLimit.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33d3e6fe90f12a9f2837a6342c9dfb6c4f5b754b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
