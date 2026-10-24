# isBoundedLinearMap_prod_multilinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50c5e3a7-66c6-1260-146e-295be5aee0fa",
  "kind": "theorem",
  "lexical_name": "isBoundedLinearMap_prod_multilinear",
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
  "slug": "isboundedlinearmap-prod-multilinear--fcfe7bf4302225796282eadd",
  "source": {
    "blob": "37d71acde5dc46c9c8bd1dc72868db8e1cc791f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 222,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant6c5fbe35d181af2ece8a4b2927ab5043a091c741de4ca75a82cb92dcc472095b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcfe7bf4302225796282eadd0f4e0c59e4c3c887c07dee59d4e517c59e56e201",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant6c5fbe35d181af2ece8a4b2927ab5043a091c741de4ca75a82cb92dcc472095b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50c5e3a7-66c6-1260-146e-295be5aee0fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBoundedLinearMap_prod_multilinear {E : ι → Type*} [∀ i, NormedAddCommGroup (E i)]
    [∀ i, NormedSpace 𝕜 (E i)] :
    IsBoundedLinearMap 𝕜 fun p : ContinuousMultilinearMap 𝕜 E F × ContinuousMultilinearMap 𝕜 E G =>
      p.1.prod p.2 :=
  { map_add := fun p₁ p₂ => by
      ext1 m
      rfl
    map_smul := fun c p => by
      ext1 m
      rfl
    bound :=
      ⟨1, zero_lt_one, fun p => by
        rw [one_mul]
        apply ContinuousMultilinearMap.op_norm_le_bound _ (norm_nonneg _) _
        intro m
        rw [ContinuousMultilinearMap.prod_apply, norm_prod_le_iff]
        constructor
        · exact (p.1.le_op_norm m).trans (mul_le_mul_of_nonneg_right (norm_fst_le p)
            (Finset.prod_nonneg fun i _ => norm_nonneg _))
        · exact (p.2.le_op_norm m).trans (mul_le_mul_of_nonneg_right (norm_snd_le p)
            (Finset.prod_nonneg fun i _ => norm_nonneg _))⟩ }
#align is_bounded_linear_map_prod_multilinear isBoundedLinearMap_prod_multilinear

/-- Given a fixed continuous linear map `g`, associating to a continuous multilinear map `f` the
continuous multilinear map `f (g m₁, ..., g mₙ)` is a bounded linear operation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant6c5fbe35d181af2ece8a4b2927ab5043a091c741de4ca75a82cb92dcc472095b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant6c5fbe35d181af2ece8a4b2927ab5043a091c741de4ca75a82cb92dcc472095b.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37d71acde5dc46c9c8bd1dc72868db8e1cc791f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
