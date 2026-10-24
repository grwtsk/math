# quotient_encloses

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:adfcbcaa-42b6-7ca5-3b68-4193985d92c3",
  "kind": "lemma",
  "lexical_name": "quotient_encloses",
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
  "slug": "quotient-encloses--24a6d1c61232eb6f59a80dd6",
  "source": {
    "blob": "361bc33c42c29b9a9e096ad4167790577200bea3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 48,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripNormalizedRationalPair.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24a6d1c61232eb6f59a80dd69f3e746d307d359034e4b43f26ff136740edc825",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripNormalizedRationalPair.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:adfcbcaa-42b6-7ca5-3b68-4193985d92c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma quotient_encloses {A : RationalFiniteEvaluation.Data} {N : ℕ} {s : Gaussian}
    (hc : A.check N s=true) (hs : s.value ∈ U.strip) :
    ‖U.model N s.value-(quotientCenter A N s).value‖ ≤ (quotientRadius A N s : ℝ) := by
  have he := RationalFiniteEvaluation.Data.encloses hc
  have hi := Gaussian.norm_value_le_l1 (inverse s)
  have hr : (0 : ℝ) ≤ (A.radius N s : ℝ) :=
    by exact_mod_cast RationalFiniteEvaluation.Data.radius_nonneg hc
  rw [inverse_value hs] at hi
  have heq : U.model N s.value-(quotientCenter A N s).value =
      (finiteModel N s.value-(A.center N s).value)*(multiplier s.value)⁻¹ := by
    rw [quotientCenter,Gaussian.value_qmul,inverse_value hs]
    unfold UnitNormalization.model
    ring
  rw [heq,norm_mul]
  exact (mul_le_mul he hi (norm_nonneg _) hr).trans_eq (by
    simp only [quotientRadius,Rat.cast_mul])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripNormalizedRationalPair.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripNormalizedRationalPair.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `361bc33c42c29b9a9e096ad4167790577200bea3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
