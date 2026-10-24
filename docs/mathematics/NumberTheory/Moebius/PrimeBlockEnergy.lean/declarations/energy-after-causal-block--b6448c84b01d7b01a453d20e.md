# energy_after_causal_block

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc15335e-45a6-735d-d508-41d6e241476d",
  "kind": "theorem",
  "lexical_name": "energy_after_causal_block",
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
  "slug": "energy-after-causal-block--b6448c84b01d7b01a453d20e",
  "source": {
    "blob": "3a083b29e3728de5a9395cf4008c1268efe3631d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 90,
    "path": "GRWTSK/NumberTheory/Moebius/PrimeBlockEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6448c84b01d7b01a453d20e7499a3f3302261dfcdf591417f929601860a70e2",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/PrimeBlockEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc15335e-45a6-735d-d508-41d6e241476d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem energy_after_causal_block {P B : Finset ℕ}
    (hP : ∀ p ∈ P, p.Prime) (hB : ∀ p ∈ B, p.Prime) (hd : Disjoint P B)
    {T : ℝ} (hT : 0 ≤ T)
    (hpair : ∀ p ∈ B, ∀ q ∈ B, p ≠ q → T ≤ log p + log q) :
    noteEnergy (primeNoteCascade (P ∪ B)) T =
      noteEnergy (primeNoteCascade P) T + noteEnergy (primeBlockEcho P B) T -
        2 * ∫ u in (0 : ℝ)..T, primeNoteCascade P u * primeBlockEcho P B u := by
  have hf := primeNoteCascade_continuous hP
  have hg := primeBlockEcho_continuous (B := B) hP
  unfold noteEnergy
  rw [max_eq_right hT]
  calc
    _ = ∫ u in (0 : ℝ)..T, primeNoteCascade P u ^ 2 + primeBlockEcho P B u ^ 2 -
        2 * (primeNoteCascade P u * primeBlockEcho P B u) := by
      apply intervalIntegral.integral_congr
      intro u hu
      rw [uIcc_of_le hT] at hu
      change primeNoteCascade (P ∪ B) u ^ 2 = _
      rw [cascade_union_eq_sub_echo hP hB hd hu.2 hpair]
      ring
    _ = _ := by
      have hi : IntervalIntegrable (fun u ↦ primeNoteCascade P u ^ 2) volume 0 T :=
        (hf.pow 2).intervalIntegrable _ _
      have hj : IntervalIntegrable (fun u ↦ primeBlockEcho P B u ^ 2) volume 0 T :=
        (hg.pow 2).intervalIntegrable _ _
      have hk : IntervalIntegrable (fun u ↦ 2 * (primeNoteCascade P u * primeBlockEcho P B u))
          volume 0 T := ((hf.mul hg).const_mul 2).intervalIntegrable _ _
      rw [intervalIntegral.integral_sub (hi.add hj) hk,
        intervalIntegral.integral_add hi hj, intervalIntegral.integral_const_mul]

/-- The upper half of the logarithmic recording window satisfies the exact
no-double-delay condition, independently of a correlation estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/PrimeBlockEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/PrimeBlockEnergy.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a083b29e3728de5a9395cf4008c1268efe3631d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
