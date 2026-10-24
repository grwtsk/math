# wienerSchwartzBoundaryRemainder_uniform_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9504116c-223c-5f8d-9e08-2038d5075612",
  "kind": "theorem",
  "lexical_name": "wienerSchwartzBoundaryRemainder_uniform_norm_le",
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
  "slug": "wienerschwartzboundaryremainder-uniform-norm-le--1280f77a441938fefece9d3f",
  "source": {
    "blob": "83f6eab7c8a1fc87bdfdc7d21b21c3b4546f077a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 259,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQuantitativeSchwartzError.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1280f77a441938fefece9d3fa4fa63dd3fc644da71053bdeebad901e9b624d32",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WienerIkeharaQuantitativeSchwartzError.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9504116c-223c-5f8d-9e08-2038d5075612`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerSchwartzBoundaryRemainder_uniform_norm_le
    (g : 𝓢(ℝ, ℂ)) {T : ℝ} (hT : 1 ≤ T) :
    ‖wienerSchwartzBoundaryRemainder g T‖ ≤
      wienerFourierSchwartzControl g *
        wienerSchwartzErrorConstant := by
  have ha := wienerSchwartzBoundaryArithmetic_norm_le g hT
  have hb := wienerSchwartzBoundaryTail_norm_le g T
  calc
    ‖wienerSchwartzBoundaryRemainder g T‖ ≤
        ‖wienerSchwartzBoundaryArithmetic g T‖ +
          ‖wienerSchwartzBoundaryTail g T‖ := norm_sub_le _ _
    _ ≤ wienerFourierSchwartzControl g *
          ((Real.log 4 + 4) * (1 + 2 * Real.pi ^ 2)) +
          wienerFourierSchwartzControl g * (2 * Real.pi ^ 2) :=
      add_le_add ha hb
    _ = wienerFourierSchwartzControl g *
          wienerSchwartzErrorConstant := by
      unfold wienerSchwartzErrorConstant
      ring

/-- Actual Schwartz-topological convergence implies convergence
of the explicit P, unlike an existential constant depending on g. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WienerIkeharaQuantitativeSchwartzError.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQuantitativeSchwartzError.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83f6eab7c8a1fc87bdfdc7d21b21c3b4546f077a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
