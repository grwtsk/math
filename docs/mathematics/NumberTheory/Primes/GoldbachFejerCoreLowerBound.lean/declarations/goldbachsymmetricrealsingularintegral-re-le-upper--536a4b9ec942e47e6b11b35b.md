# goldbachSymmetricRealSingularIntegral_re_le_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4634d3c9-b34a-b116-3b3b-5986a44e5401",
  "kind": "theorem",
  "lexical_name": "goldbachSymmetricRealSingularIntegral_re_le_upper",
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
  "slug": "goldbachsymmetricrealsingularintegral-re-le-upper--536a4b9ec942e47e6b11b35b",
  "source": {
    "blob": "bf516f0e84b56741728594781af922e362708f05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 344,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:536a4b9ec942e47e6b11b35b6527023354a26ad2b72c84f83a7ea9dec03dfc2c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4634d3c9-b34a-b116-3b3b-5986a44e5401`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachSymmetricRealSingularIntegral_re_le_upper
    (Q N q : ℕ) :
    (goldbachSymmetricRealSingularIntegral Q N q).re ≤
      goldbachFejerWindowUpper Q N q := by
  have hr :
      0 ≤ goldbachRationalArcRadius Q N q :=
    goldbachRationalArcRadius_nonneg Q N q
  have hmeasure :
      volume
        (Set.Icc
          (-goldbachRationalArcRadius Q N q)
          (goldbachRationalArcRadius Q N q)) < ∞ := by
    exact measure_Icc_lt_top
  have hnorm :
      ‖goldbachSymmetricRealSingularIntegral Q N q‖ ≤
        goldbachFejerWindowUpper Q N q := by
    unfold goldbachSymmetricRealSingularIntegral
      goldbachFejerWindowUpper
    calc
      ‖∫ β in Set.Icc
          (-goldbachRationalArcRadius Q N q)
          (goldbachRationalArcRadius Q N q),
          goldbachFiniteSingularKernel N β‖ ≤
        ((N + 1 : ℝ) ^ 2) *
          volume.real
            (Set.Icc
              (-goldbachRationalArcRadius Q N q)
              (goldbachRationalArcRadius Q N q)) := by
                exact norm_setIntegral_le_of_norm_le_const hmeasure
                  (fun β hβ =>
                    norm_goldbachFiniteSingularKernel_le N β)
      _ =
        ((N + 1 : ℝ) ^ 2) *
          (2 * goldbachRationalArcRadius Q N q) := by
            rw [Real.volume_real_Icc_of_le (by linarith)]
            ring
  exact (Complex.re_le_norm _).trans hnorm

/-- The symmetric singular integral itself is real. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf516f0e84b56741728594781af922e362708f05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
