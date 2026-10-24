# exists_pow_mul_eq_zero_of_res_basicOpen_eq_zero_of_isAffineOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "204fbbc4c45b97912d69fc5fe5ceaa0b3b166663",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 252,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0640f429-13b0-7b52-46d8-9f528140b6cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:29e7e420-2b35-c3d4-c647-890411d3ea40",
  "kind": "theorem",
  "lexical_name": "exists_pow_mul_eq_zero_of_res_basicOpen_eq_zero_of_isAffineOpen",
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
  "slug": "exists-pow-mul-eq-zero-of-res-basicopen-eq-zero-of-isaffineopen--145180a384aba9b4f983b71e",
  "source": {
    "blob": "204fbbc4c45b97912d69fc5fe5ceaa0b3b166663",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 252,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:145180a384aba9b4f983b71e1641325e0e3d99b67ec8600e2c2e5a684872b3c4",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29e7e420-2b35-c3d4-c647-890411d3ea40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_pow_mul_eq_zero_of_res_basicOpen_eq_zero_of_isAffineOpen (X : Scheme)
    {U : X.Opens} (hU : IsAffineOpen U) (x f : Γ(X, U))
    (H : x |_ (X.basicOpen f) = 0) :
    ∃ n : ℕ, f ^ n * x = 0 := by
  rw [← map_zero (X.presheaf.map (homOfLE <| X.basicOpen_le f : X.basicOpen f ⟶ U).op).hom] at H
  #adaptation_note /-- nightly-2024-09-29
  we could use dot notation here:
  `(hU.isLocalization_basicOpen f).exists_of_eq H`
  This is no longer possible;
  likely changing the signature of `IsLocalization.Away.exists_of_eq` is in order.
-/
  obtain ⟨n, e⟩ :=
    @IsLocalization.Away.exists_of_eq _ _ _ _ _ _ (hU.isLocalization_basicOpen f) _ _ H
  exact ⟨n, by simpa [mul_comm x] using e⟩

/-- If `x : Γ(X, U)` is zero on `D(f)` for some `f : Γ(X, U)`, and `U` is quasi-compact, then
`f ^ n * x = 0` for some `n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `204fbbc4c45b97912d69fc5fe5ceaa0b3b166663` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
