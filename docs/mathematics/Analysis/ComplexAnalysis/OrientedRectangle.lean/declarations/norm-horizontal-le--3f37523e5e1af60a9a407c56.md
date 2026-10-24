# norm_horizontal_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f73c61f2-a0b3-9962-a24d-7cc4d4213ffc",
  "kind": "theorem",
  "lexical_name": "norm_horizontal_le",
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
  "slug": "norm-horizontal-le--3f37523e5e1af60a9a407c56",
  "source": {
    "blob": "dd9f0b6116c0627419afc55ccc1d11abc6b192b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 60,
    "path": "GRWTSK/Analysis/Complex/OrientedRectangle.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f37523e5e1af60a9a407c560c87801f449ab52e272c8c83aabd1ea877567fa8",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/OrientedRectangle.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f73c61f2-a0b3-9962-a24d-7cc4d4213ffc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_horizontal_le (f : ℂ → ℂ) (l r y C : ℝ) (hlr : l ≤ r)
    (hf : ∀ u ∈ Icc l r, ‖f ((u : ℂ) + (y : ℂ) * Complex.I)‖ ≤ C) :
    ‖horizontal f l r y‖ ≤ (r - l) * C := by
  have h := intervalIntegral.norm_integral_le_of_norm_le_const
    (a := l) (b := r) (f := fun u : ℝ => f ((u : ℂ) + (y : ℂ) * Complex.I))
    (C := C) (fun u hu => by
      rw [uIoc_of_le hlr] at hu
      exact hf u ⟨hu.1.le, hu.2⟩)
  simpa only [horizontal, abs_of_nonneg (sub_nonneg.mpr hlr), mul_comm] using h

/-- Both horizontal edges are charged. A uniform norm bound does not assert decay. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/OrientedRectangle.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/OrientedRectangle.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd9f0b6116c0627419afc55ccc1d11abc6b192b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
