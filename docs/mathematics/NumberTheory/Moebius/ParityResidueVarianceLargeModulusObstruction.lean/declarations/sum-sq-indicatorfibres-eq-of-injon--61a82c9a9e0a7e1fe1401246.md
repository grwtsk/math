# sum_sq_indicatorFibres_eq_of_injOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48bb8b8d-33f8-c20c-fa08-f5df33f2937d",
  "kind": "theorem",
  "lexical_name": "sum_sq_indicatorFibres_eq_of_injOn",
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
  "slug": "sum-sq-indicatorfibres-eq-of-injon--61a82c9a9e0a7e1fe1401246",
  "source": {
    "blob": "1d1ec38cf19de026fec5a6303c686037851a750f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 166,
    "path": "GRWTSK/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61a82c9a9e0a7e1fe1401246b154b9da9f92c6db1d1ede684749ab757131e71b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48bb8b8d-33f8-c20c-fa08-f5df33f2937d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_sq_indicatorFibres_eq_of_injOn
    {α β : Type*}
    [DecidableEq α] [Fintype β] [DecidableEq β]
    (s : Finset α)
    (f : α → β)
    (w : α → ℝ)
    (hf : Set.InjOn f (s : Set α)) :
    (∑ y : β,
      (∑ x ∈ s, if f x = y then w x else 0) ^ 2) =
      ∑ x ∈ s, w x ^ 2 := by
  classical
  simp_rw [pow_two, Finset.sum_mul]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro x hx
  rw [show (∑ y : β, (if f x = y then w x else 0) *
      ∑ z ∈ s, if f z = y then w z else 0) =
      w x * ∑ z ∈ s, if f z = f x then w z else 0 by simp]
  congr 1
  rw [Finset.sum_eq_single x]
  · simp
  · intro z hz hzx
    have hne : f z ≠ f x := fun h => hzx (hf hz hx h)
    simp [hne]
  · intro hnot
    exact (hnot hx).elim

/-- For a large square modulus, every parity residue bucket is a singleton and
its L2 energy is exactly the parity squarefree diagonal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d1ec38cf19de026fec5a6303c686037851a750f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
