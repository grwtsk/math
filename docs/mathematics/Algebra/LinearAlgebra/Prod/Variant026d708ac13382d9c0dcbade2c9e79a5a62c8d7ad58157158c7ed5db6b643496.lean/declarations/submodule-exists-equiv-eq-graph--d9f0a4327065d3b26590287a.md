# Submodule.exists_equiv_eq_graph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d21c4a3e-f70e-ed73-720c-8854633a9056",
  "kind": "lemma",
  "lexical_name": "Submodule.exists_equiv_eq_graph",
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
  "slug": "submodule-exists-equiv-eq-graph--d9f0a4327065d3b26590287a",
  "source": {
    "blob": "73c2962126dbf9737027865b40d15fb0536251ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 998,
    "line": 992,
    "path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variant026d708ac13382d9c0dcbade2c9e79a5a62c8d7ad58157158c7ed5db6b643496.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9f0a4327065d3b26590287a3eabd7551f6b63ab35bfbe54b67d111ffbcc6bc3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Prod/Variant026d708ac13382d9c0dcbade2c9e79a5a62c8d7ad58157158c7ed5db6b643496.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d21c4a3e-f70e-ed73-720c-8854633a9056`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 992–998.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Submodule.exists_equiv_eq_graph {G : Submodule S (H × I)}
    (hG₁ : Bijective (Prod.fst ∘ G.subtype)) (hG₂ : Bijective (Prod.snd ∘ G.subtype)) :
    ∃ e : H ≃ₗ[S] I, G = e.toLinearMap.graph := by
  simpa only [range_subtype] using LinearMap.exists_linearEquiv_eq_graph
    hG₁.surjective hG₂.surjective fun _ _ ↦ hG₁.injective.eq_iff.trans hG₂.injective.eq_iff.symm

end LineTest
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Prod/Variant026d708ac13382d9c0dcbade2c9e79a5a62c8d7ad58157158c7ed5db6b643496.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Prod/Variant026d708ac13382d9c0dcbade2c9e79a5a62c8d7ad58157158c7ed5db6b643496.lean#L992).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73c2962126dbf9737027865b40d15fb0536251ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
