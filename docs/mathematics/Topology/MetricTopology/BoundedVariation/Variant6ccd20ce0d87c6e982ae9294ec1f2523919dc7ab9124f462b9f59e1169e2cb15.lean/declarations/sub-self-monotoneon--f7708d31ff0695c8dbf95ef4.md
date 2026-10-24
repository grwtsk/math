# sub_self_monotoneOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4d28797699551140f9f7b377513cb20df5c6f1bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 693,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6ccd20ce0d87c6e982ae9294ec1f2523919dc7ab9124f462b9f59e1169e2cb15.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e09a2525-a845-56ec-8ef8-5af9a3429b47",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d3f0e65f-1bd0-81a0-a466-0e9b4577c57b",
  "kind": "theorem",
  "lexical_name": "sub_self_monotoneOn",
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
  "slug": "sub-self-monotoneon--f7708d31ff0695c8dbf95ef4",
  "source": {
    "blob": "4d28797699551140f9f7b377513cb20df5c6f1bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 707,
    "line": 693,
    "path": "GRWTSK/Topology/MetricTopology/BoundedVariation/Variant6ccd20ce0d87c6e982ae9294ec1f2523919dc7ab9124f462b9f59e1169e2cb15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7708d31ff0695c8dbf95ef4e1b47cf792fee94f2dde5af899ff9f00e1b77e6f",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/BoundedVariation/Variant6ccd20ce0d87c6e982ae9294ec1f2523919dc7ab9124f462b9f59e1169e2cb15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3f0e65f-1bd0-81a0-a466-0e9b4577c57b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 693–707.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem sub_self_monotoneOn {f : α → ℝ} {s : Set α} (hf : LocallyBoundedVariationOn f s)
    {a : α} (as : a ∈ s) : MonotoneOn (variationOnFromTo f s a - f) s := by
  rintro b bs c cs bc
  rw [Pi.sub_apply, Pi.sub_apply, le_sub_iff_add_le, add_comm_sub, ← le_sub_iff_add_le']
  calc
    f c - f b ≤ |f c - f b| := le_abs_self _
    _ = dist (f b) (f c) := by rw [dist_comm, Real.dist_eq]
    _ ≤ variationOnFromTo f s b c := by
      rw [variationOnFromTo.eq_of_le f s bc, dist_edist]
      apply ENNReal.toReal_mono (hf b c bs cs)
      apply eVariationOn.edist_le f
      exacts [⟨bs, le_rfl, bc⟩, ⟨cs, bc, le_rfl⟩]
    _ = variationOnFromTo f s a c - variationOnFromTo f s a b := by
      rw [← variationOnFromTo.add hf as bs cs, add_sub_cancel_left]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/BoundedVariation/Variant6ccd20ce0d87c6e982ae9294ec1f2523919dc7ab9124f462b9f59e1169e2cb15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/BoundedVariation/Variant6ccd20ce0d87c6e982ae9294ec1f2523919dc7ab9124f462b9f59e1169e2cb15.lean#L693).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d28797699551140f9f7b377513cb20df5c6f1bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
