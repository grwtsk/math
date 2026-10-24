# eq_zero_on_of_smooth_test_pairings_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2fbe8311-7674-fd34-255c-a54dedbe72fb",
  "kind": "theorem",
  "lexical_name": "eq_zero_on_of_smooth_test_pairings_zero",
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
  "slug": "eq-zero-on-of-smooth-test-pairings-zero--9734f45cd9d79c5afad390d2",
  "source": {
    "blob": "377dff55ada8f679a60abdfd345ef72898dda1b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 68,
    "path": "GRWTSK/Analysis/TestFunctions/Separation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9734f45cd9d79c5afad390d2f026e06d9f2a1cc0c4975b68a41b8bcb08d166cf",
  "verification": {
    "reference": "docs/verification/Analysis/TestFunctions/Separation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fbe8311-7674-fd34-255c-a54dedbe72fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_zero_on_of_smooth_test_pairings_zero {f : ℝ → ℝ} {s : Set ℝ}
    (hf : Continuous f) (hs : IsOpen s)
    (hzero : ∀ g : ℝ → ℝ, HasCompactSupport g → tsupport g ⊆ s →
      ContDiff ℝ ∞ g → (∫ t, f t * g t) = 0) : ∀ x ∈ s, f x = 0 := by
  intro x hx
  by_contra hn
  obtain ⟨g, hc, hsupport, hsmooth, _hi, hp⟩ :=
    exists_smooth_test_positive_pairing hf hs hx hn
  rw [hzero g hc hsupport hsmooth] at hp
  exact lt_irrefl 0 hp

/-- A continuous residual failing C² on an open set has a genuine smooth separator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/TestFunctions/Separation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/TestFunctions/Separation.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `377dff55ada8f679a60abdfd345ef72898dda1b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
