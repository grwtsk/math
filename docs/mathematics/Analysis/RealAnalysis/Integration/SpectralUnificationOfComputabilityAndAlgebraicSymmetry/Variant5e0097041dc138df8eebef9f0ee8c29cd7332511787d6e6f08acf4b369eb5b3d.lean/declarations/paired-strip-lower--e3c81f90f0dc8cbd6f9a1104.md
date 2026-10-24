# paired_strip_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30c521f1-c983-a8ce-75d6-8ccff2d4baa9",
  "kind": "theorem",
  "lexical_name": "paired_strip_lower",
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
  "slug": "paired-strip-lower--e3c81f90f0dc8cbd6f9a1104",
  "source": {
    "blob": "ee02b2e977f5d2f8bf0171b18fd60a0b929ea73a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 280,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5e0097041dc138df8eebef9f0ee8c29cd7332511787d6e6f08acf4b369eb5b3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3c81f90f0dc8cbd6f9a1104a68b441fe21099e1515b0ed206eb6bf0bb2acc92",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5e0097041dc138df8eebef9f0ee8c29cd7332511787d6e6f08acf4b369eb5b3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30c521f1-c983-a8ce-75d6-8ccff2d4baa9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem paired_strip_lower (T u : ℝ) (m d : ℕ) (hT : 2 ≤ T)
    (hu : 1 / 4 ≤ u) (hu1 : u ≤ 1 / 2) (hm : T ^ 2 ≤ (m : ℝ)) (hd : T ^ 2 ≤ (d : ℝ))
    (hlog : Real.log ((m * d : ℕ) : ℝ) = 2 * T - u) :
    T ^ 8 / (23592960 * Real.sqrt ((m * d : ℕ) : ℝ)) ≤
      integratedKernel T m d - integratedKernel T m (2 * d) := by
  rw [integratedKernel_dilate_zero T m d 2
    (by exact_mod_cast (show (1 : ℝ) ≤ m by nlinarith))
    (by exact_mod_cast (show (1 : ℝ) ≤ d by nlinarith)) (by omega) (by rw [hlog]; linarith),
    sub_zero]
  exact integratedKernel_strip_lower T u m d hT hu hu1 hm hd hlog


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5e0097041dc138df8eebef9f0ee8c29cd7332511787d6e6f08acf4b369eb5b3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5e0097041dc138df8eebef9f0ee8c29cd7332511787d6e6f08acf4b369eb5b3d.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee02b2e977f5d2f8bf0171b18fd60a0b929ea73a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
