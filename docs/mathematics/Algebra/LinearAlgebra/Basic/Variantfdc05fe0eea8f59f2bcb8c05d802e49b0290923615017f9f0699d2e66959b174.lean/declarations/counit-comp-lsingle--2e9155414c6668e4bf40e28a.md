# counit_comp_lsingle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8c2a81f-1ac6-246c-0a4d-7a108cf8cb0a",
  "kind": "theorem",
  "lexical_name": "counit_comp_lsingle",
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
  "slug": "counit-comp-lsingle--2e9155414c6668e4bf40e28a",
  "source": {
    "blob": "bf9a1717a2ff69f61f03d974cf19e7061cb7abc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 356,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e9155414c6668e4bf40e28a9360c8dcc29349a7365529d0705b8ed889cd7d79",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8c2a81f-1ac6-246c-0a4d-7a108cf8cb0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem counit_comp_lsingle (i : ι) : counit ∘ₗ (lsingle i : A →ₗ[R] _) = counit := by
  ext; simp

/-- The `R`-module whose elements are functions `ι → A` which are zero on all but finitely many
elements of `ι` has a coalgebra structure. The coproduct `Δ` is given by `Δ(fᵢ a) = fᵢ a₁ ⊗ fᵢ a₂`
where `Δ(a) = a₁ ⊗ a₂` and the counit `ε` by `ε(fᵢ a) = ε(a)`, where `fᵢ a` is the function sending
`i` to `a` and all other elements of `ι` to zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf9a1717a2ff69f61f03d974cf19e7061cb7abc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
