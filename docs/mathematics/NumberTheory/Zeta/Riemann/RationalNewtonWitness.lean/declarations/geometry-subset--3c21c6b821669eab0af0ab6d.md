# geometry_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83abee5d-60f9-5371-ca50-4306ac8e3c16",
  "kind": "theorem",
  "lexical_name": "geometry_subset",
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
  "slug": "geometry-subset--3c21c6b821669eab0af0ab6d",
  "source": {
    "blob": "72d89bdb76077d55f3c532fbd673330078c251e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 88,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalNewtonWitness.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c21c6b821669eab0af0ab6dee047c13e4bda4d5e141b51a9d427d5a4efef44a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RationalNewtonWitness.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83abee5d-60f9-5371-ca50-4306ac8e3c16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem geometry_subset (N : ℕ) (positive : Bool) (p : Data)
    (hg : Geometry N positive p) :
    closedBall (QComplex.embed p.center) (p.radius : ℝ) ⊆
      closedBall (QComplex.embed (chartCenter N positive)) (5 / 2 : ℝ) := by
  have hr : (p.radius : ℝ) ≤ 5 / 2 := by
    have h := (Rat.cast_le (K := ℝ)).2 hg.2.2.1
    norm_num only [Rat.cast_div, Rat.cast_ofNat] at h
    exact h
  have hd : ‖QComplex.embed p.center - QComplex.embed (chartCenter N positive)‖ ^ 2 ≤
      (5 / 2 - (p.radius : ℝ)) ^ 2 := by
    have h : (QComplex.normSq (QComplex.sub p.center (chartCenter N positive)) : ℝ) ≤
        (5 / 2 - (p.radius : ℝ)) ^ 2 := by
      have hc := (Rat.cast_le (K := ℝ)).2 hg.2.2.2
      simpa only [Rat.cast_pow, Rat.cast_sub, Rat.cast_div, Rat.cast_ofNat] using hc
    simpa only [QComplex.cast_normSq, QComplex.embed_sub] using h
  have hdist : dist (QComplex.embed p.center) (QComplex.embed (chartCenter N positive)) ≤
      5 / 2 - (p.radius : ℝ) := by
    rw [dist_eq_norm]
    exact (sq_le_sq₀ (norm_nonneg _) (by linarith : (0 : ℝ) ≤ 5 / 2 - (p.radius : ℝ))).mp hd
  intro z hz
  have hz' : dist z (QComplex.embed p.center) ≤ (p.radius : ℝ) := hz
  have ht := dist_triangle z (QComplex.embed p.center) (QComplex.embed (chartCenter N positive))
  change dist z (QComplex.embed (chartCenter N positive)) ≤ 5 / 2
  linarith

/-- The actual residual and the WHOLE-disk derivative defect acquire rational ceilings. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RationalNewtonWitness.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RationalNewtonWitness.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72d89bdb76077d55f3c532fbd673330078c251e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
