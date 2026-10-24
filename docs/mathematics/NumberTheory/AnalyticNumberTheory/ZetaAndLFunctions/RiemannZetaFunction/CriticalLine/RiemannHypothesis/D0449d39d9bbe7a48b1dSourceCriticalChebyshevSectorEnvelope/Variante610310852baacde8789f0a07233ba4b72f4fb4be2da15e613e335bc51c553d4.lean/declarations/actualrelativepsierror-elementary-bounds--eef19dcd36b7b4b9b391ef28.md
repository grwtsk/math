# actualRelativePsiError_elementary_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4464be9d-1e8d-9b26-beca-4e0c9b01fe7a",
  "kind": "theorem",
  "lexical_name": "actualRelativePsiError_elementary_bounds",
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
  "slug": "actualrelativepsierror-elementary-bounds--eef19dcd36b7b4b9b391ef28",
  "source": {
    "blob": "06e82ae422ad0f1a2d0509842058ca9c8d41cc92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 21,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D0449d39d9bbe7a48b1dSourceCriticalChebyshevSectorEnvelope/Variante610310852baacde8789f0a07233ba4b72f4fb4be2da15e613e335bc51c553d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eef19dcd36b7b4b9b391ef281a390c0519ce497cc0f92715a53b40f39c9fbd84",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D0449d39d9bbe7a48b1dSourceCriticalChebyshevSectorEnvelope/Variante610310852baacde8789f0a07233ba4b72f4fb4be2da15e613e335bc51c553d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4464be9d-1e8d-9b26-beca-4e0c9b01fe7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRelativePsiError_elementary_bounds (t : ℝ) :
    -1 ≤ relativePsiError t ∧ relativePsiError t ≤ Real.log 4 + 3 := by
  have hp := Chebyshev.psi_nonneg (Real.exp t)
  have he := (Real.exp_pos (-t)).le
  have hc := Chebyshev.psi_le_const_mul_self (Real.exp_pos t).le
  have hm := mul_le_mul_of_nonneg_left hc he
  have hid : Real.exp (-t) * Real.exp t = 1 := by
    rw [← Real.exp_add]
    simp
  constructor
  · unfold relativePsiError
    nlinarith [mul_nonneg he hp]
  · unfold relativePsiError
    calc
      Real.exp (-t) * Chebyshev.psi (Real.exp t) - 1 ≤
          Real.exp (-t) * ((Real.log 4 + 4) * Real.exp t) - 1 :=
        sub_le_sub_right hm 1
      _ = Real.log 4 + 3 := by
        calc
          _ = (Real.log 4 + 4) * (Real.exp (-t) * Real.exp t) - 1 := by ring
          _ = _ := by rw [hid]; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D0449d39d9bbe7a48b1dSourceCriticalChebyshevSectorEnvelope/Variante610310852baacde8789f0a07233ba4b72f4fb4be2da15e613e335bc51c553d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D0449d39d9bbe7a48b1dSourceCriticalChebyshevSectorEnvelope/Variante610310852baacde8789f0a07233ba4b72f4fb4be2da15e613e335bc51c553d4.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06e82ae422ad0f1a2d0509842058ca9c8d41cc92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
