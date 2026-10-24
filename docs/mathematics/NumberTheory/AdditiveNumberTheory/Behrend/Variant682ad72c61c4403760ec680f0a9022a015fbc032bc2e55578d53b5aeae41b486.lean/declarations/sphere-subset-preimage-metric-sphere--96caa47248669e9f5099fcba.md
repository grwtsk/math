# sphere_subset_preimage_metric_sphere

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c88d0cc6ea789f844c1965755e3aff73d42ed2f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:49bba1ca-5dd3-3d3a-c85e-4671d0a0aa76",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6efcedda-f287-e68b-a2c2-ef4833243e5c",
  "kind": "theorem",
  "lexical_name": "sphere_subset_preimage_metric_sphere",
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
  "slug": "sphere-subset-preimage-metric-sphere--96caa47248669e9f5099fcba",
  "source": {
    "blob": "c88d0cc6ea789f844c1965755e3aff73d42ed2f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 109,
    "path": "GRWTSK/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96caa47248669e9f5099fcba9501bde82f64a81b2f52836462b75d89b7f6b691",
  "verification": {
    "reference": "docs/verification/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6efcedda-f287-e68b-a2c2-ef4833243e5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sphere_subset_preimage_metric_sphere : (sphere n d k : Set (Fin n → ℕ)) ⊆
    (fun x : Fin n → ℕ => (WithLp.equiv 2 _).symm ((↑) ∘ x : Fin n → ℝ)) ⁻¹'
      Metric.sphere (0 : PiLp 2 fun _ : Fin n => ℝ) (Real.sqrt k) :=
  fun x hx => by rw [Set.mem_preimage, mem_sphere_zero_iff_norm, norm_of_mem_sphere hx]
#align behrend.sphere_subset_preimage_metric_sphere Behrend.sphere_subset_preimage_metric_sphere

/-- The map that appears in Behrend's bound on Roth numbers. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c88d0cc6ea789f844c1965755e3aff73d42ed2f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
