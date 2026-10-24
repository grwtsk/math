# finiteCyclicMultiplier_inv_norm_le_cutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:924a6b8a-c176-da48-0e83-f3ede13c2d8d",
  "kind": "theorem",
  "lexical_name": "finiteCyclicMultiplier_inv_norm_le_cutoff",
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
  "slug": "finitecyclicmultiplier-inv-norm-le-cutoff--25cf35f289f1a492bb01a2b8",
  "source": {
    "blob": "e7afc88eac8ba7c8f23acee83df6811dc4d61659",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 255,
    "path": "GRWTSK/NumberTheory/CharacterSums/FiniteCyclicDistance.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25cf35f289f1a492bb01a2b8d50c17e67e4ca1870451edf93fe5425637ef6b95",
  "verification": {
    "reference": "docs/verification/NumberTheory/CharacterSums/FiniteCyclicDistance.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:924a6b8a-c176-da48-0e83-f3ede13c2d8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteCyclicMultiplier_inv_norm_le_cutoff
    {q : ℕ} [NeZero q]
    {t : ZMod q}
    {L : ℕ}
    (hq : 0 < q)
    (hLt : L < finiteCyclicCircularDistance t) :
    ‖(finiteCyclicMultiplier t)⁻¹‖ ≤
      (q : ℝ) / (4 * ((L + 1 : ℕ) : ℝ)) := by
  have ht : t ≠ 0 := by
    intro ht0
    subst t
    simp [finiteCyclicCircularDistance] at hLt
  let d := finiteCyclicCircularDistance t
  have hsucc : L + 1 ≤ d := Nat.succ_le_iff.mpr hLt
  have hsuccR : ((L + 1 : ℕ) : ℝ) ≤ (d : ℝ) := by
    exact_mod_cast hsucc
  have hden :
      (4 : ℝ) * ((L + 1 : ℕ) : ℝ) ≤ 4 * (d : ℝ) := by
    gcongr
  have hrecip :
      1 / (4 * (d : ℝ)) ≤
        1 / (4 * ((L + 1 : ℕ) : ℝ)) :=
    one_div_le_one_div_of_le (by positivity) hden
  calc
    ‖(finiteCyclicMultiplier t)⁻¹‖ ≤
        (q : ℝ) / (4 * (d : ℝ)) := by
          simpa [d] using finiteCyclicMultiplier_inv_norm_le_distance hq ht
    _ = (q : ℝ) * (1 / (4 * (d : ℝ))) := by
      rw [div_eq_mul_inv, one_div]
    _ ≤ (q : ℝ) * (1 / (4 * ((L + 1 : ℕ) : ℝ))) := by
      exact mul_le_mul_of_nonneg_left hrecip (by positivity)
    _ = (q : ℝ) / (4 * ((L + 1 : ℕ) : ℝ)) := by
      rw [div_eq_mul_inv, one_div]

end GRWTSK.NumberTheory.CharacterSums

#print axioms GRWTSK.NumberTheory.CharacterSums.finiteCyclicMultiplier_norm_lowerBound
#print axioms GRWTSK.NumberTheory.CharacterSums.finiteCyclicMultiplier_inv_norm_le_distance
#print axioms GRWTSK.NumberTheory.CharacterSums.finiteCyclicMultiplier_inv_norm_le_cutoff
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/CharacterSums/FiniteCyclicDistance.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/CharacterSums/FiniteCyclicDistance.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7afc88eac8ba7c8f23acee83df6811dc4d61659` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
