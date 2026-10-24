# tailEnvelope_not_eventually_polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:716f9a99-2515-006b-7764-463dfb753517",
  "kind": "theorem",
  "lexical_name": "tailEnvelope_not_eventually_polynomial",
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
  "slug": "tailenvelope-not-eventually-polynomial--15045a3475eb0919fe083793",
  "source": {
    "blob": "f4de82508eec3c948716c4442003d9b5b0bb99f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 108,
    "path": "GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant828ca0fd35f52b866d1bdc6f24f92338f404fd24de07164f6d5b0dee5fb5c00a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15045a3475eb0919fe08379344bf3bf99a326309ae454b96023df0e28b16cbb6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant828ca0fd35f52b866d1bdc6f24f92338f404fd24de07164f6d5b0dee5fb5c00a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:716f9a99-2515-006b-7764-463dfb753517`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tailEnvelope_not_eventually_polynomial :
    ¬ ∃ m : ℕ, ∃ D : ℝ, ∃ R : ℝ, 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A → tailEnvelope A ≤ D * A ^ m := by
  rintro ⟨m, D, R, hR, hb⟩
  obtain ⟨S, hS⟩ := (tendsto_atTop_atTop.mp (tailEnvelope_div_pow_tendsto_atTop m)) (D + 1)
  let A := max R S
  have hRA : R ≤ A := le_max_left _ _
  have hA : 1 ≤ A := hR.trans hRA
  have hl := hS A (le_max_right R S)
  have hu : tailEnvelope A / A ^ m ≤ D :=
    (div_le_iff₀ (pow_pos (by linarith : 0 < A) m)).2 (hb A hRA)
  linarith

end
end EstimateMovingTailEnvelope
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant828ca0fd35f52b866d1bdc6f24f92338f404fd24de07164f6d5b0dee5fb5c00a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant828ca0fd35f52b866d1bdc6f24f92338f404fd24de07164f6d5b0dee5fb5c00a.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4de82508eec3c948716c4442003d9b5b0bb99f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
