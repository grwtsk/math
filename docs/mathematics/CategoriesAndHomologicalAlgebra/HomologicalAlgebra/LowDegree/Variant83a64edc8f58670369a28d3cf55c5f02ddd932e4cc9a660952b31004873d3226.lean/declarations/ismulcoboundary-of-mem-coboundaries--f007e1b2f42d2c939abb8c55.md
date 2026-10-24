# isMulCoboundary₁_of_mem_coboundaries₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c9e08e8-368d-f6e6-6cf1-ebc70616e95e",
  "kind": "theorem",
  "lexical_name": "isMulCoboundary₁_of_mem_coboundaries₁",
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
  "slug": "ismulcoboundary-of-mem-coboundaries--f007e1b2f42d2c939abb8c55",
  "source": {
    "blob": "8a6e53aa4eaff2e4f9cf230191b46bdf74f43019",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 728,
    "line": 719,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variant83a64edc8f58670369a28d3cf55c5f02ddd932e4cc9a660952b31004873d3226.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f007e1b2f42d2c939abb8c554f237e1afa507a44290c1fa874c6d8d00bf87cc2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variant83a64edc8f58670369a28d3cf55c5f02ddd932e4cc9a660952b31004873d3226.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c9e08e8-368d-f6e6-6cf1-ebc70616e95e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 719–728.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isMulCoboundary₁_of_mem_coboundaries₁
    (f : G → M) (hf : f ∈ coboundaries₁ (Rep.ofMulDistribMulAction G M)) :
    IsMulCoboundary₁ (M := M) (Additive.ofMul ∘ f) := by
  rcases hf with ⟨x, rfl⟩
  exact ⟨x, fun _ =>  rfl⟩

/-- Given an abelian group `M` with a `MulDistribMulAction` of `G`, and a function
`f : G × G → M` satisfying the multiplicative 2-cocycle condition, produces a 2-cocycle for the
representation on `cochainsIso₁Additive M` induced by the `MulDistribMulAction`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variant83a64edc8f58670369a28d3cf55c5f02ddd932e4cc9a660952b31004873d3226.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variant83a64edc8f58670369a28d3cf55c5f02ddd932e4cc9a660952b31004873d3226.lean#L719).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a6e53aa4eaff2e4f9cf230191b46bdf74f43019` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
