# cascade_compensated_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff90c9ca-cca6-09af-1f71-6ea7f2a4cefe",
  "kind": "theorem",
  "lexical_name": "cascade_compensated_bound",
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
  "slug": "cascade-compensated-bound--409c70a55548cb98750d0d0e",
  "source": {
    "blob": "e300e722b9da7add5e68de24a3f47e5817e8412f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 46,
    "path": "GRWTSK/NumberTheory/Moebius/PrimeFilterGrowth.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:409c70a55548cb98750d0d0e399a9ce9c412fb4e3571e63ebec3e72a7a57ea02",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/PrimeFilterGrowth.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff90c9ca-cca6-09af-1f71-6ea7f2a4cefe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem cascade_compensated_bound {C q T : ℝ} (_hC : 0 ≤ C) (hT : 0 ≤ T)
    (hstep : ∀ P : Finset ℕ, (∀ p ∈ P, p.Prime) → ∀ p : ℕ, p.Prime → p ∉ P →
      noteEnergy (primeNoteCascade (insert p P)) T + (1 + T)^q ≤
        exp (C / p) * (noteEnergy (primeNoteCascade P) T + (1 + T)^q))
    {P : Finset ℕ} (hP : ∀ p ∈ P, p.Prime) :
    noteEnergy (primeNoteCascade P) T + (1 + T)^q ≤
      exp (C * harmonicPrimeMass P) * (4 * T + (1 + T)^q) := by
  induction P using Finset.induction_on with
  | empty =>
    simpa [harmonicPrimeMass] using add_le_add_right (baseNote_energy_bound hT) ((1 + T)^q)
  | @insert p P hpP ih =>
    have hp := hP p (by simp)
    have hP' : ∀ r ∈ P, r.Prime := fun r hr ↦ hP r (by simp [hr])
    calc
      _ ≤ exp (C / p) * (noteEnergy (primeNoteCascade P) T + (1 + T)^q) := hstep P hP' p hp hpP
      _ ≤ exp (C / p) * (exp (C * harmonicPrimeMass P) * (4 * T + (1 + T)^q)) :=
        mul_le_mul_of_nonneg_left (ih hP') (exp_pos _).le
      _ = _ := by
        simp only [harmonicPrimeMass, Finset.sum_insert hpP, mul_add, div_eq_mul_inv]
        rw [exp_add]
        ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/PrimeFilterGrowth.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/PrimeFilterGrowth.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e300e722b9da7add5e68de24a3f47e5817e8412f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
