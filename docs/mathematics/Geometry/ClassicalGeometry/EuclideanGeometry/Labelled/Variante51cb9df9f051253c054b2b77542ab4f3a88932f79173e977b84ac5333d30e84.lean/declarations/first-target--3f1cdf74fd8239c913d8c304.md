# first_target

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94f77685-f2e9-f50e-0e3a-b500d29f85b2",
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
  "slug": "first-target--3f1cdf74fd8239c913d8c304",
  "source": {
    "blob": "0d0549c047940f4f2a4f84c5df3e53c54f8cf0d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1356,
    "line": 1331,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Labelled/Variante51cb9df9f051253c054b2b77542ab4f3a88932f79173e977b84ac5333d30e84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f1cdf74fd8239c913d8c304cccc83bb51db24fa0767d542fd29b21de8b7b2da",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Labelled/Variante51cb9df9f051253c054b2b77542ab4f3a88932f79173e977b84ac5333d30e84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94f77685-f2e9-f50e-0e3a-b500d29f85b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1331–1356.

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

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Labelled/Variante51cb9df9f051253c054b2b77542ab4f3a88932f79173e977b84ac5333d30e84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Labelled/Variante51cb9df9f051253c054b2b77542ab4f3a88932f79173e977b84ac5333d30e84.lean#L1331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d0549c047940f4f2a4f84c5df3e53c54f8cf0d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
