# exists_fixedPoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "64454561487ef7d9de2c2bc470af142d221fda95",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15c88e62-f08b-ef9f-4abe-5bdf75b79126",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88fffc58-52ed-a64c-0c8a-1839f3addeb7",
  "kind": "theorem",
  "lexical_name": "exists_fixedPoint",
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
  "slug": "exists-fixedpoint--9412a294f4d1be99b491ff60",
  "source": {
    "blob": "64454561487ef7d9de2c2bc470af142d221fda95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 90,
    "path": "GRWTSK/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9412a294f4d1be99b491ff6014ad006d5b15a68472a943b39d0a9ed1a7b64253",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88fffc58-52ed-a64c-0c8a-1839f3addeb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_fixedPoint (hf : ContractingWith K f) (x : α) (hx : edist x (f x) ≠ ∞) :
    ∃ y, IsFixedPt f y ∧ Tendsto (fun n ↦ f^[n] x) atTop (𝓝 y) ∧
      ∀ n : ℕ, edist (f^[n] x) y ≤ edist x (f x) * (K : ℝ≥0∞) ^ n / (1 - K) :=
  have : CauchySeq fun n ↦ f^[n] x :=
    cauchySeq_of_edist_le_geometric K (edist x (f x)) (ENNReal.coe_lt_one_iff.2 hf.1) hx
      (hf.toLipschitzWith.edist_iterate_succ_le_geometric x)
  let ⟨y, hy⟩ := cauchySeq_tendsto_of_complete this
  ⟨y, isFixedPt_of_tendsto_iterate hy hf.2.continuous.continuousAt, hy,
    edist_le_of_edist_le_geometric_of_tendsto K (edist x (f x))
      (hf.toLipschitzWith.edist_iterate_succ_le_geometric x) hy⟩

variable (f) in
-- avoid `efixedPoint _` in pretty printer
/-- Let `x` be a point of a complete emetric space. Suppose that `f` is a contracting map,
and `edist x (f x) ≠ ∞`. Then `efixedPoint` is the unique fixed point of `f`
in `EMetric.ball x ∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Contracting/Variant133a7550f9ca6d46bcf0c9fe26ebba65dd290efb0d041f4f63759c584d083178.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64454561487ef7d9de2c2bc470af142d221fda95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
