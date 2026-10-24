# canonicalFourFamilyTerminalDelta_sourceEnergy_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:addb0875-0a5c-8aec-2d64-320c80d4f569",
  "kind": "theorem",
  "lexical_name": "canonicalFourFamilyTerminalDelta_sourceEnergy_pos",
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
  "slug": "canonicalfourfamilyterminaldelta-sourceenergy-pos--37a51659115bb9c0885a660a",
  "source": {
    "blob": "f9a4feff07ca6e25821a59b503815a128e030bad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 235,
    "path": "GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyTerminalColumnObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37a51659115bb9c0885a660a02148bf6a88eac07b0b04a7313b2b40278cbb5ab",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CanonicalFourFamilyTerminalColumnObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:addb0875-0a5c-8aec-2d64-320c80d4f569`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem canonicalFourFamilyTerminalDelta_sourceEnergy_pos
    (X : ℕ) (hX : 1 ≤ X) :
    0 < canonicalFourFamilyAmbientSourceEnergy X
      (canonicalFourFamilyTerminalDelta X) := by
  classical
  unfold canonicalFourFamilyAmbientSourceEnergy
  have hc : X + 1 ∈ Finset.range (2 * X + 1) :=
    Finset.mem_range.mpr (by omega)
  have hcell :
      0 < (canonicalFourFamilyTerminalDelta X
        (canonicalFourFamilyOfAnchor (2 * X)) (X + 1)) ^ 2 := by
    simp [canonicalFourFamilyTerminalDelta]
  have hinner :
      (canonicalFourFamilyTerminalDelta X
        (canonicalFourFamilyOfAnchor (2 * X)) (X + 1)) ^ 2 ≤
      ∑ c ∈ Finset.range (2 * X + 1),
        (canonicalFourFamilyTerminalDelta X
          (canonicalFourFamilyOfAnchor (2 * X)) c) ^ 2 :=
    Finset.single_le_sum (fun c _ => sq_nonneg _) hc
  have houter :
      (∑ c ∈ Finset.range (2 * X + 1),
        (canonicalFourFamilyTerminalDelta X
          (canonicalFourFamilyOfAnchor (2 * X)) c) ^ 2) ≤
      ∑ F : CanonicalFourFamily,
        ∑ c ∈ Finset.range (2 * X + 1),
          (canonicalFourFamilyTerminalDelta X F c) ^ 2 := by
    apply Finset.single_le_sum (f := fun F : CanonicalFourFamily =>
      ∑ c ∈ Finset.range (2 * X + 1),
        (canonicalFourFamilyTerminalDelta X F c) ^ 2)
    · intro F _hF
      exact Finset.sum_nonneg (by intro c _hc; positivity)
    · exact Finset.mem_univ _
  exact lt_of_lt_of_le hcell (hinner.trans houter)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CanonicalFourFamilyTerminalColumnObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyTerminalColumnObstruction.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9a4feff07ca6e25821a59b503815a128e030bad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
