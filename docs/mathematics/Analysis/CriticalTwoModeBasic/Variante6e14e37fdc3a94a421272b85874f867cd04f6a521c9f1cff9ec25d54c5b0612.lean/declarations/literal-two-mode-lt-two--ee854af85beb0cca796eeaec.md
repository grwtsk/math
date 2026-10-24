# literal_two_mode_lt_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1506af90-e2a6-714d-e3b9-e460b7ec8b87",
  "kind": "theorem",
  "lexical_name": "literal_two_mode_lt_two",
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
  "slug": "literal-two-mode-lt-two--ee854af85beb0cca796eeaec",
  "source": {
    "blob": "e80692e7c6eb5a01be13737be28ddb4bc57a1f9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 41,
    "path": "GRWTSK/Analysis/CriticalTwoModeBasic/Variante6e14e37fdc3a94a421272b85874f867cd04f6a521c9f1cff9ec25d54c5b0612.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee854af85beb0cca796eeaec6e7928f98e2ff078ffafc6ae396beb9944562e16",
  "verification": {
    "reference": "docs/verification/Analysis/CriticalTwoModeBasic/Variante6e14e37fdc3a94a421272b85874f867cd04f6a521c9f1cff9ec25d54c5b0612.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1506af90-e2a6-714d-e3b9-e460b7ec8b87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_two_mode_lt_two {α t : ℝ} (hα : Irrational α) (ht : 0 < t) :
    twoMode α t < 2 := by
  have hle : twoMode α t ≤ 2 := (le_abs_self _).trans (literal_two_mode_abs_le_two α t)
  apply lt_of_le_of_ne hle
  intro he
  have hc1 : Real.cos t = 1 := by
    unfold twoMode at he
    linarith [Real.cos_le_one t, Real.cos_le_one (α*t)]
  have hc2 : Real.cos (α*t) = 1 := by
    unfold twoMode at he
    linarith [Real.cos_le_one t, Real.cos_le_one (α*t)]
  obtain ⟨m, hm⟩ := (Real.cos_eq_one_iff t).mp hc1
  obtain ⟨n, hn⟩ := (Real.cos_eq_one_iff (α*t)).mp hc2
  have hm0 : m ≠ 0 := by
    intro h
    simp [h] at hm
    linarith
  have heq : α * (m : ℝ) = (n : ℝ) := by
    apply mul_right_cancel₀ (by positivity : (2 * Real.pi : ℝ) ≠ 0)
    calc
      α * (m : ℝ) * (2 * Real.pi) = α * t := by rw [← hm]; ring
      _ = (n : ℝ) * (2 * Real.pi) := hn.symm
  exact (hα.mul_intCast hm0).ne_int n heq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CriticalTwoModeBasic/Variante6e14e37fdc3a94a421272b85874f867cd04f6a521c9f1cff9ec25d54c5b0612.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CriticalTwoModeBasic/Variante6e14e37fdc3a94a421272b85874f867cd04f6a521c9f1cff9ec25d54c5b0612.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e80692e7c6eb5a01be13737be28ddb4bc57a1f9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
