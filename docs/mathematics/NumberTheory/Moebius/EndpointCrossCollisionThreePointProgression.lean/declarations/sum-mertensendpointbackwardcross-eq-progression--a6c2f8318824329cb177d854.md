# sum_mertensEndpointBackwardCross_eq_progression

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ced9994-9441-6cff-a4b4-ae6d108e955e",
  "kind": "theorem",
  "lexical_name": "sum_mertensEndpointBackwardCross_eq_progression",
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
  "slug": "sum-mertensendpointbackwardcross-eq-progression--a6c2f8318824329cb177d854",
  "source": {
    "blob": "60832bdd30318040a29d3be790717f33c04e4df9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 124,
    "path": "GRWTSK/NumberTheory/Moebius/EndpointCrossCollisionThreePointProgression.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6c2f8318824329cb177d854898bba67f808ae4b47e1e1a23ce1191b592a10e3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/EndpointCrossCollisionThreePointProgression.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ced9994-9441-6cff-a4b4-ae6d108e955e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_mertensEndpointBackwardCross_eq_progression
    {b n : ℕ} (hnb : n < b) :
    (∑ p ∈ mertensEndpointStratumPairSet b n .backwardCross,
      mertensEndpointFourMobiusTerm b n p.1 p.2) =
      ∑ a ∈ mertensEndpointCrossCollisionBaseSet b n,
        mertensThreePointProgressionTerm (b - n) a := by
  classical
  let h : ℕ := b - n
  have hh : 0 < h := by
    dsimp [h]
    omega
  apply Finset.sum_bij'
    (fun p _hp => p.2)
    (fun a _ha => (a + h, a))
  · rintro ⟨a, c⟩ hp
    have hstr :
        mertensEndpointFourMobiusStratum b n a c = .backwardCross :=
      (Finset.mem_filter.mp hp).2
    have ha :
        a = c + h := by
      simpa [h] using
        ((mertensEndpointFourMobiusStratum_eq_backwardCross_iff
          (b := b) (n := n) (a := a) (c := c) hnb).mp hstr).2.2
    have hpair := (Finset.mem_filter.mp hp).1
    have ha_lt :
        a < n := by
      exact Finset.mem_range.mp (Finset.mem_product.mp hpair).1
    unfold mertensEndpointCrossCollisionBaseSet
    apply Finset.mem_range.mpr
    omega
  · intro c hc
    unfold mertensEndpointCrossCollisionBaseSet at hc
    have hc_lt : c < n - h := Finset.mem_range.mp hc
    have hc_n : c < n := by omega
    have hch_n : c + h < n := by omega
    unfold mertensEndpointStratumPairSet mertensEndpointPairSet
    simp only [Finset.mem_filter, Finset.product_eq_sprod, Finset.mem_product, Finset.mem_range]
    refine ⟨⟨hch_n, hc_n⟩, ?_⟩
    apply
      (mertensEndpointFourMobiusStratum_eq_backwardCross_iff
        (b := b) (n := n) (a := c + h) (c := c) hnb).2
    refine ⟨?_, ?_, ?_⟩
    · omega
    · omega
    · simp [h]
  · rintro ⟨a, c⟩ hp
    have hstr :
        mertensEndpointFourMobiusStratum b n a c = .backwardCross :=
      (Finset.mem_filter.mp hp).2
    have ha :
        a = c + h := by
      simpa [h] using
        ((mertensEndpointFourMobiusStratum_eq_backwardCross_iff
          (b := b) (n := n) (a := a) (c := c) hnb).mp hstr).2.2
    simp [ha]
  · intro c hc
    simp
  · rintro ⟨a, c⟩ hp
    have hstr :
        mertensEndpointFourMobiusStratum b n a c = .backwardCross :=
      (Finset.mem_filter.mp hp).2
    have ha :
        a = c + h := by
      simpa [h] using
        ((mertensEndpointFourMobiusStratum_eq_backwardCross_iff
          (b := b) (n := n) (a := a) (c := c) hnb).mp hstr).2.2
    subst a
    dsimp only [mertensEndpointFourMobiusTerm, mertensThreePointProgressionTerm]
    simp only [h, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm]
    ring

/-- The complete endpoint cross-collision contribution in one-dimensional
three-point progression coordinates.  The factor two pays both orientations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/EndpointCrossCollisionThreePointProgression.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/EndpointCrossCollisionThreePointProgression.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60832bdd30318040a29d3be790717f33c04e4df9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
