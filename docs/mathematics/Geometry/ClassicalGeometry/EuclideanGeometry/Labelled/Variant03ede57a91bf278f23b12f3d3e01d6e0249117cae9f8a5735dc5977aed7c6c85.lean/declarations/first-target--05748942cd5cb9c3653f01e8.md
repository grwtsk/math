# first_target

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b11d3d7-82a0-f0ff-e155-76dc48cf54d9",
  "kind": "theorem",
  "lexical_name": "first_target",
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
  "slug": "first-target--05748942cd5cb9c3653f01e8",
  "source": {
    "blob": "f89b53b22fb5c4bd4e3ea1cad0cfa6744a4dc606",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1371,
    "line": 1346,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Labelled/Variant03ede57a91bf278f23b12f3d3e01d6e0249117cae9f8a5735dc5977aed7c6c85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05748942cd5cb9c3653f01e8b0dba67976a6842654b1b935dd7afa98dffc55ba",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Labelled/Variant03ede57a91bf278f23b12f3d3e01d6e0249117cae9f8a5735dc5977aed7c6c85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b11d3d7-82a0-f0ff-e155-76dc48cf54d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1346–1371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem first_target (hM : M.Neutral) (h : HasType P Γ M T)
    (hm : WellModed γ M .proof) (hn : PureTypeSystem.Normal M.erase)
    (hΓ : ProofContext Γ γ) :
    (∃ n, M = .var n) ∨
    ∃ Q R, Q.weight < M.weight ∧ R.Target ∧ HasType P Γ Q R ∧
      WellModed γ Q .proof ∧ PureTypeSystem.Normal Q.erase := by
  induction hM generalizing T with
  | var n => exact .inl ⟨n, rfl⟩
  | @app l f a hM ih =>
      obtain ⟨D, E, hf, ha, _⟩ := h.generation_app
      obtain ⟨hl, hmf, hma⟩ := hm.app_inv
      have hmf' : WellModed γ f .proof := hl ▸ hmf
      obtain ⟨n, rfl⟩ | ⟨Q, R, hQ, hR, hQR, hmode, hnorm⟩ := ih hf hmf' hn.app_left
      · obtain ⟨A, hlookup, hc⟩ := hf.generation
        obtain ⟨R, F, rfl, hR⟩ := hΓ n A hlookup hmf'.var_inv
        obtain ⟨rfl, hDR, _⟩ := hc.product_compatibility
        obtain ⟨r, hPi⟩ := (HasType.lookup h.valid hlookup).product_type_sorted
        obtain ⟨s, hs⟩ := hPi.product_domain _ _ _ rfl
        exact .inr ⟨a, R, by simp only [weight]; omega, hR,
          .conversion ha hs hDR, hma, hn.app_right⟩
      · exact .inr ⟨Q, R, by simp only [weight]; omega, hR, hQR, hmode, hnorm⟩
end Expr.Neutral

/-- No normal erasure at a terminal. The stronger form allows a dependent
positive telescope: it uses only the outer labels, normality, typing and
the decreasing body/first-argument syntax measure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Labelled/Variant03ede57a91bf278f23b12f3d3e01d6e0249117cae9f8a5735dc5977aed7c6c85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Labelled/Variant03ede57a91bf278f23b12f3d3e01d6e0249117cae9f8a5735dc5977aed7c6c85.lean#L1346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f89b53b22fb5c4bd4e3ea1cad0cfa6744a4dc606` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
