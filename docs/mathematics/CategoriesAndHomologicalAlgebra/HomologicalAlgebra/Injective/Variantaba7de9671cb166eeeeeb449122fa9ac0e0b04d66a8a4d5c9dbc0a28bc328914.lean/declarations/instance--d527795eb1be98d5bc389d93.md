# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff8088fd5e097dd3526b7e93f7e66c40361e681aee3e3ffe856751b44e7a0de3",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--d527795eb1be98d5bc389d93",
  "source": {
    "blob": "6d04b5cee752779a82d782fd343e5da0dbd49387",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 181,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Injective/Variantaba7de9671cb166eeeeeb449122fa9ac0e0b04d66a8a4d5c9dbc0a28bc328914.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d527795eb1be98d5bc389d9348ae33b28b9536344cc425bc83701ac3a282c992",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Injective/Variantaba7de9671cb166eeeeeb449122fa9ac0e0b04d66a8a4d5c9dbc0a28bc328914.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff8088fd5e097dd3526b7e93f7e66c40361e681aee3e3ffe856751b44e7a0de3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : (trivialCofibrations (Plus C)).HasFactorization (fibrations (Plus C)) where
  nonempty_mapFactorizationData := by
    intro ⟨K, n, hn⟩ ⟨L, m, hm⟩ ⟨f⟩
    obtain ⟨d, _, _⟩ : ∃ (d : ℤ), K.IsStrictlyGE (d + 1) ∧ L.IsStrictlyGE d :=
      ⟨min (n - 1) m, K.isStrictlyGE_of_ge _ n (by grind),
        L.isStrictlyGE_of_ge _ m (by simp)⟩
    obtain ⟨K', _, i, p, _, _, hp, fac⟩ := cm5a f d
    exact ⟨{
      Z := ⟨K', d, inferInstance⟩
      i := ObjectProperty.homMk i
      p := ObjectProperty.homMk p
      hi :=
        ⟨by rwa [← HomotopicalAlgebra.cofibration_iff, cofibration_iff, Plus.mono_iff],
          by assumption⟩
      hp := hp }⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Injective/Variantaba7de9671cb166eeeeeb449122fa9ac0e0b04d66a8a4d5c9dbc0a28bc328914.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Injective/Variantaba7de9671cb166eeeeeb449122fa9ac0e0b04d66a8a4d5c9dbc0a28bc328914.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d04b5cee752779a82d782fd343e5da0dbd49387` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
