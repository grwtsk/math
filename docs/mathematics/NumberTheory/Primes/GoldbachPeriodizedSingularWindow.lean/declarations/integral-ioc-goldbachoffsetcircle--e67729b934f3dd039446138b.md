# integral_Ioc_goldbachOffsetCircle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce52c131-9b71-07d0-1168-a3bb6fa6cc7c",
  "kind": "theorem",
  "lexical_name": "integral_Ioc_goldbachOffsetCircle",
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
  "slug": "integral-ioc-goldbachoffsetcircle--e67729b934f3dd039446138b",
  "source": {
    "blob": "c04cba84c6dd1708741ae14ac01ad2cc9c36f102",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 100,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e67729b934f3dd039446138b95c5a96e3bc52b7b0fc7b95fbde1949cfc4a8ce5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce52c131-9b71-07d0-1168-a3bb6fa6cc7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_Ioc_goldbachOffsetCircle
    (a q : ℕ) (F : AddCircle (1 : ℝ) → ℂ) :
    (∫ x in Set.Ioc (0 : ℝ) 1,
        F (goldbachOffsetCircle a q x)) =
      ∫ z : AddCircle (1 : ℝ), F z := by
  let c := goldbachRationalArcCenter a q
  have htranslate :
      (∫ x in Set.Ioc (0 : ℝ) 1,
          F ((x - c : ℝ) : AddCircle (1 : ℝ))) =
        ∫ β in Set.Ioc (-c) (-c + 1),
          F (β : AddCircle (1 : ℝ)) := by
    rw [← intervalIntegral.integral_of_le zero_le_one,
      ← intervalIntegral.integral_of_le (by linarith : -c ≤ -c + 1)]
    simpa [sub_eq_add_neg, add_comm] using
      (intervalIntegral.integral_comp_add_right
        (fun β : ℝ => F (β : AddCircle (1 : ℝ))) (-c)
        (a := (0 : ℝ)) (b := 1))
  rw [show
      (fun x : ℝ => F (goldbachOffsetCircle a q x)) =
        fun x : ℝ =>
          F ((x - c : ℝ) : AddCircle (1 : ℝ)) by
      funext x
      rfl,
    htranslate]
  exact AddCircle.integral_preimage (1 : ℝ) (-c) F

/-- The integral over the clipped pullback of a circle window is the intrinsic
circle-window integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c04cba84c6dd1708741ae14ac01ad2cc9c36f102` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
