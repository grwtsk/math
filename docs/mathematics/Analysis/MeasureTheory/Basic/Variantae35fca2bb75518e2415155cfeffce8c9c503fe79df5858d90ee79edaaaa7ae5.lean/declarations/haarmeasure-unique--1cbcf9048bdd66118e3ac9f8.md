# haarMeasure_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a3dfeefbdc07b9ec2263ffba68caddeddc152583",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 662,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/ae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e7f56589-ba66-f43a-28c8-303caa3a92cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d378aa29-4ea7-a62d-87cf-7b246b6a52bd",
  "kind": "theorem",
  "lexical_name": "haarMeasure_unique",
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
  "slug": "haarmeasure-unique--1cbcf9048bdd66118e3ac9f8",
  "source": {
    "blob": "a3dfeefbdc07b9ec2263ffba68caddeddc152583",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 672,
    "line": 662,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cbcf9048bdd66118e3ac9f834f65832f84909f7f5eb06465ea626dc199acba7",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d378aa29-4ea7-a62d-87cf-7b246b6a52bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 662–672.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem haarMeasure_unique (μ : Measure G) [SigmaFinite μ] [IsMulLeftInvariant μ]
    (K₀ : PositiveCompacts G) : μ = μ K₀ • haarMeasure K₀ := by
  have A : Set.Nonempty (interior (closure (K₀ : Set G))) :=
    K₀.interior_nonempty.mono (interior_mono subset_closure)
  have := measure_eq_div_smul μ (haarMeasure K₀)
    (measure_pos_of_nonempty_interior _ A).ne' K₀.isCompact.closure.measure_ne_top
  rwa [haarMeasure_closure_self, div_one, K₀.isCompact.measure_closure] at this

/-- Let `μ` be a σ-finite left invariant measure on `G`. Then `μ` is equal to the Haar measure
defined by `K₀` iff `μ K₀ = 1`. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean#L662).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3dfeefbdc07b9ec2263ffba68caddeddc152583` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
