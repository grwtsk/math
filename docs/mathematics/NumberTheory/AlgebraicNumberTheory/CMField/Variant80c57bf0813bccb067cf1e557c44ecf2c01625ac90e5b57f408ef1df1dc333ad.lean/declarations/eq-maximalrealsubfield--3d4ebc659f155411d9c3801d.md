# eq_maximalRealSubfield

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e3757da-aac1-bd10-cd3a-118c6c8987de",
  "kind": "theorem",
  "lexical_name": "eq_maximalRealSubfield",
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
  "slug": "eq-maximalrealsubfield--3d4ebc659f155411d9c3801d",
  "source": {
    "blob": "21130fd5375f3d6de45c8e317078dde18a9d0bb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 487,
    "line": 465,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/CMField/Variant80c57bf0813bccb067cf1e557c44ecf2c01625ac90e5b57f408ef1df1dc333ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d4ebc659f155411d9c3801d09bce935f5f93c68fb9c4646a7d4e9eb665fed3f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/CMField/Variant80c57bf0813bccb067cf1e557c44ecf2c01625ac90e5b57f408ef1df1dc333ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e3757da-aac1-bd10-cd3a-118c6c8987de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 465–487.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_maximalRealSubfield (E : Subfield K) [IsTotallyReal E] [IsQuadraticExtension E K] :
    E = maximalRealSubfield K := by
  refine le_antisymm (IsTotallyReal.le_maximalRealSubfield E) ?_
  by_contra! h
  have h' : E ⊔ (maximalRealSubfield K) = ⊤ := by
    let L : IntermediateField E K := (E ⊔ (maximalRealSubfield K)).toIntermediateField
      (fun x ↦ (le_sup_left (a := E)) x.prop)
    have := ((IntermediateField.isSimpleOrder_of_finrank_prime E K
      (IsQuadraticExtension.finrank_eq_two E K ▸ Nat.prime_two)).eq_bot_or_eq_top L).resolve_left ?_
    · simpa [L] using congr_arg IntermediateField.toSubfield this
    · contrapose h
      rw [← SetLike.coe_set_eq, Subfield.coe_toIntermediateField] at h
      rw [← sup_eq_left, ← SetLike.coe_set_eq, h, IntermediateField.coe_bot]
      aesop
  have : Algebra.IsAlgebraic (maximalRealSubfield K) K :=
    Algebra.IsAlgebraic.tower_top (K := ℚ) (maximalRealSubfield K)
  have : IsTotallyReal K := (h' ▸ isTotallyReal_sup).ofRingEquiv Subring.topEquiv
  obtain w : InfinitePlace K := Classical.choice (inferInstance : Nonempty _)
  exact (not_isReal_iff_isComplex.mpr (IsTotallyComplex.isComplex w)) (IsTotallyReal.isReal w)

/--
Any field `F` such that `K/F` is a CM-extension is isomorphic to the maximal real subfield of `K`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/CMField/Variant80c57bf0813bccb067cf1e557c44ecf2c01625ac90e5b57f408ef1df1dc333ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/CMField/Variant80c57bf0813bccb067cf1e557c44ecf2c01625ac90e5b57f408ef1df1dc333ad.lean#L465).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21130fd5375f3d6de45c8e317078dde18a9d0bb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
