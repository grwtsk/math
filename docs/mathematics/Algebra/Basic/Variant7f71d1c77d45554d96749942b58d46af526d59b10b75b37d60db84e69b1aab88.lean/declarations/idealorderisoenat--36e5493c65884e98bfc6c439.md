# idealOrderIsoENat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:241d9de06a999fe5a40f1b0944f2e52d07347f6299631bd0515cb3d7a366ce11",
  "kind": "def",
  "lexical_name": "idealOrderIsoENat",
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
  "slug": "idealorderisoenat--36e5493c65884e98bfc6c439",
  "source": {
    "blob": "53041e618e1f678d5e628dd16224abd21b84ebbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 546,
    "line": 520,
    "path": "GRWTSK/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:36e5493c65884e98bfc6c439fe95a4740d260d1de8106e5f612fadb03c0d3464",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:241d9de06a999fe5a40f1b0944f2e52d07347f6299631bd0515cb3d7a366ce11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 520–546.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def idealOrderIsoENat : Ideal R ≃o ENatᵒᵈ where
  toFun I := .toDual (addVal R (generator I))
  invFun n := n.ofDual.recTopCoe ⊥ (fun n ↦ maximalIdeal R ^ n)
  left_inv I := by
    let x := generator I
    suffices (addVal R x).recTopCoe ⊥ (fun n ↦ maximalIdeal R ^ n) = span {x} by
      rwa [Ideal.span_singleton_generator] at this
    by_cases hx0 : x = 0
    · simp [hx0]
    · obtain ⟨ϖ, hϖ⟩ := exists_irreducible R
      obtain ⟨n, u, hu⟩ := eq_unit_mul_pow_irreducible hx0 hϖ
      rw [hu, addVal_def' u hϖ, span_singleton_mul_left_unit u.isUnit,
        ENat.recTopCoe_natCast, hϖ.maximalIdeal_eq, span_singleton_pow]
  right_inv n := by
    obtain ⟨k, rfl⟩ := OrderDual.toDual.surjective n
    dsimp
    induction k with
    | top => simp
    | coe k =>
      obtain ⟨ϖ, hϖ⟩ := exists_irreducible R
      rw [OrderDual.toDual_inj, ENat.recTopCoe_natCast, hϖ.maximalIdeal_eq,
        span_singleton_pow, ← hϖ.addVal_pow k, addVal_eq_iff_associated]
      exact associated_generator_span_self (ϖ ^ k)
  map_rel_iff' {I J} := by
    simp [addVal_le_iff_dvd, ← span_singleton_le_span_singleton]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant7f71d1c77d45554d96749942b58d46af526d59b10b75b37d60db84e69b1aab88.lean#L520).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53041e618e1f678d5e628dd16224abd21b84ebbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
