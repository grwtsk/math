# range_linearIsometry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dd3c2190d4244b48b8beb6401f4c61dee8c741d1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 255,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c36ad931c9f6bd65a3ba4a16c2d53dac372866db36782486b62e02cf1e4762f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:07c0cfa4-cd05-4421-e136-bf2056572a02",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b84df79-65b2-368f-f5d9-e7e6bf98a823",
  "kind": "theorem",
  "lexical_name": "range_linearIsometry",
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
  "slug": "range-linearisometry--ad4aa1c63fe83a7d82477459",
  "source": {
    "blob": "dd3c2190d4244b48b8beb6401f4c61dee8c741d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 255,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variantc36ad931c9f6bd65a3ba4a16c2d53dac372866db36782486b62e02cf1e4762f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad4aa1c63fe83a7d824774592f852855595061fd0bd50fd136af5b713b2c390d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/L2Space/Variantc36ad931c9f6bd65a3ba4a16c2d53dac372866db36782486b62e02cf1e4762f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b84df79-65b2-368f-f5d9-e7e6bf98a823`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem range_linearIsometry [∀ i, CompleteSpace (G i)] :
    LinearMap.range hV.linearIsometry.toLinearMap =
      (⨆ i, LinearMap.range (V i).toLinearMap).topologicalClosure := by
    -- porting note: dot notation broken
  refine' le_antisymm _ _
  · rintro x ⟨f, rfl⟩
    refine' mem_closure_of_tendsto (hV.hasSum_linearIsometry f) (eventually_of_forall _)
    intro s
    rw [SetLike.mem_coe]
    refine' sum_mem _
    intro i _
    refine' mem_iSup_of_mem i _
    exact LinearMap.mem_range_self _ (f i)
  · apply topologicalClosure_minimal
    · refine' iSup_le _
      rintro i x ⟨x, rfl⟩
      use lp.single 2 i x
      exact hV.linearIsometry_apply_single x
    exact hV.linearIsometry.isometry.uniformInducing.isComplete_range.isClosed
#align orthogonal_family.range_linear_isometry OrthogonalFamily.range_linearIsometry

end OrthogonalFamily

section IsHilbertSum

variable (𝕜 G)

variable (V : ∀ i, G i →ₗᵢ[𝕜] E) (F : ι → Submodule 𝕜 E)

/-- Given a family of Hilbert spaces `G : ι → Type*`, a Hilbert sum of `G` consists of a Hilbert
space `E` and an orthogonal family `V : Π i, G i →ₗᵢ[𝕜] E` such that the induced isometry
`Φ : lp G 2 → E` is surjective.

Keeping in mind that `lp G 2` is "the" external Hilbert sum of `G : ι → Type*`, this is analogous
to `DirectSum.IsInternal`, except that we don't express it in terms of actual submodules. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/L2Space/Variantc36ad931c9f6bd65a3ba4a16c2d53dac372866db36782486b62e02cf1e4762f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variantc36ad931c9f6bd65a3ba4a16c2d53dac372866db36782486b62e02cf1e4762f8.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd3c2190d4244b48b8beb6401f4c61dee8c741d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
