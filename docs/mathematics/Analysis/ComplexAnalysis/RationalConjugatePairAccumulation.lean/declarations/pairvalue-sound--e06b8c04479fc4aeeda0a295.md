# pairValue_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f2f8882-1967-a742-cfdb-8a7051eff411",
  "kind": "theorem",
  "lexical_name": "pairValue_sound",
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
  "slug": "pairvalue-sound--e06b8c04479fc4aeeda0a295",
  "source": {
    "blob": "ea84f1e7925495337cd58bb9b7456489d9a5012f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 93,
    "path": "GRWTSK/Analysis/Complex/RationalConjugatePairAccumulation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e06b8c04479fc4aeeda0a29533afa97baf45d42f163eae7c005c37871f21f622",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RationalConjugatePairAccumulation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f2f8882-1967-a742-cfdb-8a7051eff411`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairValue_sound
    (x h : ℚ) (p : RationalTentEvaluation.Input)
    (hp : RationalTentEvaluation.Admissible x h p)
    (z : ℂ) (hz : z.re ≤ 1) (him : z.im ≠ 0)
    (hcoord : ‖z - QComplex.embed p.center‖ ≤ (p.coordinateError : ℝ)) :
    ‖tentKernel (x : ℝ) (h : ℝ) z +
        tentKernel (x : ℝ) (h : ℝ) (conj z) -
      QComplex.embed (pairValue x h p)‖ ≤ (pairError x h p : ℝ) := by
  have hh : (0 : ℝ) < (h : ℝ) := by exact_mod_cast hp.1
  have ha : (1 : ℝ) < (x : ℝ) - (h : ℝ) := by exact_mod_cast hp.2.1
  let v := QComplex.embed (RationalTentEvaluation.compute x h p).value
  have hv :
      ‖tentKernel (x : ℝ) (h : ℝ) z - v‖ ≤
        ((RationalTentEvaluation.compute x h p).error : ℝ) := by
    exact RationalTentEvaluation.compute_sound x h p hp z hz hcoord
  have hconj : tentKernel (x : ℝ) (h : ℝ) (conj z) =
      conj (tentKernel (x : ℝ) (h : ℝ) z) :=
    tentKernel_conj_of_im_ne_zero (x : ℝ) (h : ℝ) hh ha z him
  have hvconj :
      ‖tentKernel (x : ℝ) (h : ℝ) (conj z) - conj v‖ ≤
        ((RationalTentEvaluation.compute x h p).error : ℝ) := by
    calc
      _ = ‖conj (tentKernel (x : ℝ) (h : ℝ) z - v)‖ := by
        rw [hconj, map_sub]
      _ = ‖tentKernel (x : ℝ) (h : ℝ) z - v‖ := by simp
      _ ≤ _ := hv
  calc
    _ = ‖(tentKernel (x : ℝ) (h : ℝ) z - v) +
        (tentKernel (x : ℝ) (h : ℝ) (conj z) - conj v)‖ := by
      rw [embed_pairValue]
      congr 1
      ring
    _ ≤ ‖tentKernel (x : ℝ) (h : ℝ) z - v‖ +
        ‖tentKernel (x : ℝ) (h : ℝ) (conj z) - conj v‖ := norm_add_le _ _
    _ ≤ ((RationalTentEvaluation.compute x h p).error : ℝ) +
        ((RationalTentEvaluation.compute x h p).error : ℝ) :=
      add_le_add hv hvconj
    _ = (pairError x h p : ℝ) := by simp [pairError, two_mul]

/-- Exact rational center for a finite family of positive rows. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RationalConjugatePairAccumulation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RationalConjugatePairAccumulation.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea84f1e7925495337cd58bb9b7456489d9a5012f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
