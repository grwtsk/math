# half_mem_current_octave_of_mem_next

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07045a40-9f67-3ec4-e232-d88237fd8cc0",
  "kind": "theorem",
  "lexical_name": "half_mem_current_octave_of_mem_next",
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
  "slug": "half-mem-current-octave-of-mem-next--6463cb9751909b9ea5539d79",
  "source": {
    "blob": "cc9b7614f6542bad4ba84f580b19e64fc7eb4930",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 57,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaShellCancellation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6463cb9751909b9ea5539d792ede9e2cce43b2563cd8e7856ce4ff486f43ea29",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaShellCancellation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07045a40-9f67-3ec4-e232-d88237fd8cc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem half_mem_current_octave_of_mem_next
    (j : ℕ) {v : ℝ}
    (hv :
      v ∈ Set.Icc
        (((dyadicScale (j + 1) : ℕ) : ℝ))
        (((2 * dyadicScale (j + 1) : ℕ) : ℝ))) :
    v / 2 ∈ Set.Icc
      (((dyadicScale j : ℕ) : ℝ))
      (((2 * dyadicScale j : ℕ) : ℝ)) := by
  have hscale :
      (((dyadicScale (j + 1) : ℕ) : ℝ)) =
        2 * (((dyadicScale j : ℕ) : ℝ)) := by
    exact_mod_cast dyadicScale_succ_eq_two_mul j
  have hupper :
      (((2 * dyadicScale (j + 1) : ℕ) : ℝ)) =
        4 * (((dyadicScale j : ℕ) : ℝ)) := by
    calc
      (((2 * dyadicScale (j + 1) : ℕ) : ℝ))
          = 2 * (((dyadicScale (j + 1) : ℕ) : ℝ)) := by
              norm_num
      _ = 4 * (((dyadicScale j : ℕ) : ℝ)) := by
              rw [hscale]
              ring
  constructor
  · have h := hv.1
    rw [hscale] at h
    linarith
  · have h := hv.2
    rw [hupper] at h
    linarith

/-- Doubling a current-octave point lands in the next octave. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaShellCancellation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaShellCancellation.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc9b7614f6542bad4ba84f580b19e64fc7eb4930` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
