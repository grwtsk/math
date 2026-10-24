# hasDerivAt_combined

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e66ded7-4ab8-2e5d-27f4-6c718c7d9c71",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_combined",
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
  "slug": "hasderivat-combined--4d703ca526d18261b1926aec",
  "source": {
    "blob": "47883a7af5b108dddc7303c6a48db4c51b7fde32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 75,
    "path": "GRWTSK/Analysis/Real/CubicEulerMaclaurin.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d703ca526d18261b1926aec663caba0228256404a0af11c933ea9fa1935783e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/CubicEulerMaclaurin.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e66ded7-4ab8-2e5d-27f4-6c718c7d9c71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_combined (f f₁ f₂ : ℝ → ℂ) (u : ℝ) (v₁ v₂ v₃ : ℂ)
    (hf : HasDerivAt f v₁ u) (hf₁ : HasDerivAt f₁ v₂ u) (hf₂ : HasDerivAt f₂ v₃ u)
    (h₁ : v₁ = f₁ u) (h₂ : v₂ = f₂ u) :
    HasDerivAt (fun t : ℝ => (first t : ℂ) * f t -
      (second t : ℂ) * f₁ t + (third t : ℂ) * f₂ t)
      (f u + (third u : ℂ) * v₃) u := by
  have hd := (((hasDerivAt_first u).ofReal_comp.mul hf).sub
    ((hasDerivAt_second u).ofReal_comp.mul hf₁)).add
    ((hasDerivAt_third u).ofReal_comp.mul hf₂)
  apply hd.congr_deriv
  rw [h₁, h₂]
  simp only [Complex.ofReal_one]
  ring

/-- Exact one-cell summation. Continuity of the third derivative is explicit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/RealAnalysis/CubicEulerMaclaurin.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Real/CubicEulerMaclaurin.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47883a7af5b108dddc7303c6a48db4c51b7fde32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
