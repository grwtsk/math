# window_succ_of_interior_covers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d4786b4-85d9-0f9b-ce79-be48edb10240",
  "kind": "theorem",
  "lexical_name": "window_succ_of_interior_covers",
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
  "slug": "window-succ-of-interior-covers--705d71a5110fb17e60ed72be",
  "source": {
    "blob": "0cde97b4d3760c0ab2de7c0e653442de3c15fc55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 200,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:705d71a5110fb17e60ed72becef7c96d3eefb11ee8ac7d72fcec2ec3d7de6828",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d4786b4-85d9-0f9b-ce79-be48edb10240`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem window_succ_of_interior_covers {N : ℕ} (hN : WindowRH N)
    (collar : RightBoundaryCollar (N + 1))
    (covers : ∀ m : ℕ,
      FiniteVariationCover poleNormalizedZeta (rightInteriorShell N m collar.width)) :
    WindowRH (N + 1) := by
  apply (window_succ_iff N).mpr
  refine ⟨hN, (shellRH_iff_interior_exclusion N collar).mpr ?_⟩
  intro m
  exact noTargetZero_of_poleNormalized_cover (covers m)

end

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cde97b4d3760c0ab2de7c0e653442de3c15fc55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
