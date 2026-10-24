# exists_left_schedule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57845c55-c03d-5dad-fd4a-376c6ed8c672",
  "kind": "theorem",
  "lexical_name": "exists_left_schedule",
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
  "slug": "exists-left-schedule--5877a675003a4098f9b40421",
  "source": {
    "blob": "199e8ec0815fdcc435a005b0c69bad3836909245",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 107,
    "path": "GRWTSK/NumberTheory/Chebyshev/TentLeftDecay.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5877a675003a4098f9b40421a5ae2857b2ba958afaf69a9b01601973b5de2ea7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/TentLeftDecay.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57845c55-c03d-5dad-fd4a-376c6ed8c672`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_left_schedule (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (T : ℕ → ℝ) (hT : ∀ J, 0 ≤ T J) :
    ∃ L : ℕ → ℕ, ∀ J : ℕ, J + 1 ≤ L J ∧
      ‖vertical (integrand x h) (leftEdge (L J)) (T J)‖ < 1 / ((J : ℝ) + 1) := by
  have hex : ∀ J : ℕ, ∃ N : ℕ, J + 1 ≤ N ∧ 1 ≤ N ∧
      ‖vertical (integrand x h) (leftEdge N) (T J)‖ < 1 / ((J : ℝ) + 1) :=
    fun J => exists_left_cutoff x h (T J) hh ha (hT J) (J + 1)
      (1 / ((J : ℝ) + 1)) (by positivity)
  choose L hL using hex
  exact ⟨L, fun J => ⟨(hL J).1, (hL J).2.2⟩⟩

/-- The complete trivial-zero correction replaces its prefix in a left-first limit.
The finite nontrivial head stays at the same FIXED admissible height. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/TentLeftDecay.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/TentLeftDecay.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `199e8ec0815fdcc435a005b0c69bad3836909245` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
