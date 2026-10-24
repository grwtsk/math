# affine_analytic_example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48b17613-f87f-fdec-2094-342f7dc5c6d6",
  "kind": "theorem",
  "lexical_name": "affine_analytic_example",
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
  "slug": "affine-analytic-example--0e1eba716986cfdacab1ca97",
  "source": {
    "blob": "18f428f8f1211e205d6a9235b42f0575da1582b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 62,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/LocalNewtonControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e1eba716986cfdacab1ca9798b9f1464cef3a2d7ee6a09dbe35ca0cd0cac4f9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/LocalNewtonControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48b17613-f87f-fdec-2094-342f7dc5c6d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affine_analytic_example :
    ∃ z ∈ closedBall (0 : ℂ) (1 : ℝ), z - 1/2 = 0 ∧ (1 : ℂ) ≠ 0 ∧
      ∀ v ∈ closedBall (0 : ℂ) (1 : ℝ), v - 1/2 = 0 → v = z := by
  apply exists_unique_zero (f := fun z : ℂ => z - 1/2) (g := fun _ => (1 : ℂ))
    (c := 0) (A := 1) (R := 1) (κ := 0) (η := 1/2)
  · norm_num
  · norm_num
  · norm_num
  · intro z _
    exact (hasDerivAt_id z).sub_const (1/2)
  · intro z _
    norm_num
  · norm_num
  · norm_num

end GRWTSK.RiemannHypothesis.Checks.LocalNewtonControls
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/LocalNewtonControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/LocalNewtonControls.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18f428f8f1211e205d6a9235b42f0575da1582b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
