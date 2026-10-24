# sum_fin_pair_indicator_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29db84db-e21b-6bed-1cba-2597325997af",
  "kind": "theorem",
  "lexical_name": "sum_fin_pair_indicator_eq",
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
  "slug": "sum-fin-pair-indicator-eq--524ec77d285764e96370efbc",
  "source": {
    "blob": "b9deb36196c1e5f3414f44dfba228190f2f45900",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 44,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:524ec77d285764e96370efbcbc78988f348478e04b4de804e1592ee6e13c48fa",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointFourier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29db84db-e21b-6bed-1cba-2597325997af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sum_fin_pair_indicator_eq
    {Q : ℕ}
    (S : Finset (ℕ × ℕ))
    (hS : ∀ p ∈ S, p.1 < Q ∧ p.2 < Q)
    (F : ℕ × ℕ → ℂ) :
    (∑ x : Fin Q, ∑ y : Fin Q,
      if (x.val, y.val) ∈ S then F (x.val, y.val) else 0) =
      ∑ p ∈ S, F p := by
  classical
  let T : Finset (Fin Q × Fin Q) :=
    ((Finset.univ : Finset (Fin Q)).product
      (Finset.univ : Finset (Fin Q))).filter fun q =>
        (q.1.val, q.2.val) ∈ S
  calc
    (∑ x : Fin Q, ∑ y : Fin Q,
      if (x.val, y.val) ∈ S then F (x.val, y.val) else 0) =
        ∑ q ∈ ((Finset.univ : Finset (Fin Q)).product
          (Finset.univ : Finset (Fin Q))),
          if (q.1.val, q.2.val) ∈ S then
            F (q.1.val, q.2.val) else 0 := by
              rw [Finset.sum_product]
    _ = ∑ q ∈ T, F (q.1.val, q.2.val) := by
      unfold T
      rw [Finset.sum_filter]
    _ = ∑ p ∈ S, F p := by
      symm
      apply Finset.sum_bij
        (fun p hp =>
          (⟨p.1, (hS p hp).1⟩,
            ⟨p.2, (hS p hp).2⟩))
      · intro p hp
        simp [T, hp]
      · intro p hp q hq hpq
        apply Prod.ext
        · exact congrArg (fun z => z.1.val) hpq
        · exact congrArg (fun z => z.2.val) hpq
      · intro q hq
        have hmem : (q.1.val, q.2.val) ∈ S := by
          simpa [T] using hq
        refine ⟨(q.1.val, q.2.val), hmem, ?_⟩
        apply Prod.ext <;> rfl
      · intro p hp
        rfl

/-- One fixed-prefix slice of the real endpoint-bilinear packet. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointFourier.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9deb36196c1e5f3414f44dfba228190f2f45900` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
