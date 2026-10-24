# exists_finite_submodule_right_of_setFinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57fb818d-6423-e7ae-ab08-31ff33e9efcf",
  "kind": "theorem",
  "lexical_name": "exists_finite_submodule_right_of_setFinite",
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
  "slug": "exists-finite-submodule-right-of-setfinite--58bf2336c3521744d3dd7e7c",
  "source": {
    "blob": "d0ee288ab0f9b26f61f64e09ebbb2ce355ac604a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 146,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finiteness/Variantf233b4cf39d1c224de5bac02282e0db3c0e6660939d53776f420c54cac97e2e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58bf2336c3521744d3dd7e7c7a719de601fe2bf7194802dd927eac2d2c75ac22",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finiteness/Variantf233b4cf39d1c224de5bac02282e0db3c0e6660939d53776f420c54cac97e2e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57fb818d-6423-e7ae-ab08-31ff33e9efcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_finite_submodule_right_of_setFinite (s : Set (M ⊗[R] N)) (hs : s.Finite) :
    ∃ N' : Submodule R N, Module.Finite R N' ∧ s ⊆ LinearMap.range (N'.subtype.lTensor M) := by
  obtain ⟨_, N', _, hfin, h⟩ := exists_finite_submodule_of_setFinite s hs
  refine ⟨N', hfin, ?_⟩
  rw [mapIncl, ← LinearMap.lTensor_comp_rTensor] at h
  exact h.trans (LinearMap.range_comp_le_range _ _)

/-- Variation of `TensorProduct.exists_finite_submodule_of_setFinite` where `M` and `N` are
already submodules. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finiteness/Variantf233b4cf39d1c224de5bac02282e0db3c0e6660939d53776f420c54cac97e2e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finiteness/Variantf233b4cf39d1c224de5bac02282e0db3c0e6660939d53776f420c54cac97e2e3.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0ee288ab0f9b26f61f64e09ebbb2ce355ac604a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
