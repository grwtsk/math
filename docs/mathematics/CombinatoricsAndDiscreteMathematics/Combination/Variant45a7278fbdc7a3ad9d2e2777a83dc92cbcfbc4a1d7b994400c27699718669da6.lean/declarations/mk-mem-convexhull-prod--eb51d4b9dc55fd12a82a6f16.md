# mk_mem_convexHull_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "13417157804ac6de98e3dfaa75fd57cfc4acf27c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 411,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/45a7278fbdc7a3ad9d2e2777a83dc92cbcfbc4a1d7b994400c27699718669da6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d4f63002-85ca-2822-e22c-c9f17603f233",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ccc2ea6-bed0-f82e-6c95-4ee37df99207",
  "kind": "theorem",
  "lexical_name": "mk_mem_convexHull_prod",
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
  "slug": "mk-mem-convexhull-prod--eb51d4b9dc55fd12a82a6f16",
  "source": {
    "blob": "13417157804ac6de98e3dfaa75fd57cfc4acf27c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 411,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variant45a7278fbdc7a3ad9d2e2777a83dc92cbcfbc4a1d7b994400c27699718669da6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb51d4b9dc55fd12a82a6f160d782f41a4eac45d30b2e4d1b52e8e5e8d516318",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Combination/Variant45a7278fbdc7a3ad9d2e2777a83dc92cbcfbc4a1d7b994400c27699718669da6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ccc2ea6-bed0-f82e-6c95-4ee37df99207`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_mem_convexHull_prod {t : Set F} {x : E} {y : F} (hx : x ∈ convexHull R s)
    (hy : y ∈ convexHull R t) : (x, y) ∈ convexHull R (s ×ˢ t) := by
  rw [mem_convexHull_iff_exists_fintype] at hx hy ⊢
  obtain ⟨ι, _, w, f, hw₀, hw₁, hfs, hf⟩ := hx
  obtain ⟨κ, _, v, g, hv₀, hv₁, hgt, hg⟩ := hy
  have h_sum : ∑ i : ι × κ, w i.1 * v i.2 = 1 := by
    rw [Fintype.sum_prod_type, ← sum_mul_sum, hw₁, hv₁, mul_one]
  refine ⟨ι × κ, inferInstance, fun p => w p.1 * v p.2, fun p ↦ (f p.1, g p.2),
    fun p ↦ mul_nonneg (hw₀ _) (hv₀ _), h_sum, fun p ↦ ⟨hfs _, hgt _⟩, ?_⟩
  ext
  · simp_rw [Prod.fst_sum, Prod.smul_mk, Fintype.sum_prod_type, mul_comm (w _), mul_smul,
      sum_comm (γ := ι), ← Fintype.sum_smul_sum, hv₁, one_smul, hf]
  · simp_rw [Prod.snd_sum, Prod.smul_mk, Fintype.sum_prod_type, mul_smul, ← Fintype.sum_smul_sum,
      hw₁, one_smul, hg]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Combination/Variant45a7278fbdc7a3ad9d2e2777a83dc92cbcfbc4a1d7b994400c27699718669da6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variant45a7278fbdc7a3ad9d2e2777a83dc92cbcfbc4a1d7b994400c27699718669da6.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13417157804ac6de98e3dfaa75fd57cfc4acf27c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
