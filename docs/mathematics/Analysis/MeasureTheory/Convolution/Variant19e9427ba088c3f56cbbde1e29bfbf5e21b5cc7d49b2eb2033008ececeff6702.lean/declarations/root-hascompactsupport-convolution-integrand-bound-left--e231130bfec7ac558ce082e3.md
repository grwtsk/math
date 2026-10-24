# _root_.HasCompactSupport.convolution_integrand_bound_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "01ac3fc1f4d36b203933f575dde6b0931b0b8556",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/19e9427ba088c3f56cbbde1e29bfbf5e21b5cc7d49b2eb2033008ececeff6702.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ce044e6-ca4a-faca-d5f2-c462ae2d540f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:588de22a-662b-d615-ca93-e25cb33c55f2",
  "kind": "theorem",
  "lexical_name": "_root_.HasCompactSupport.convolution_integrand_bound_left",
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
  "slug": "root-hascompactsupport-convolution-integrand-bound-left--e231130bfec7ac558ce082e3",
  "source": {
    "blob": "01ac3fc1f4d36b203933f575dde6b0931b0b8556",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 141,
    "path": "GRWTSK/Analysis/MeasureTheory/Convolution/Variant19e9427ba088c3f56cbbde1e29bfbf5e21b5cc7d49b2eb2033008ececeff6702.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e231130bfec7ac558ce082e335d8188d2e7098cd0e8292086fc5dfc919968cf0",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Convolution/Variant19e9427ba088c3f56cbbde1e29bfbf5e21b5cc7d49b2eb2033008ececeff6702.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:588de22a-662b-d615-ca93-e25cb33c55f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.HasCompactSupport.convolution_integrand_bound_left (hcf : HasCompactSupport f)
    (hf : Continuous f) {x t : G} {s : Set G} (hx : x ∈ s) :
    ‖L (f (x - t)) (g t)‖ ≤
      (-tsupport f + s).indicator (fun t => (‖L‖ * ⨆ i, ‖f i‖) * ‖g t‖) t := by
  convert! hcf.convolution_integrand_bound_right L.flip hf hx using 1
  simp_rw [L.opNorm_flip, mul_right_comm]

end NoMeasurability

section Measurability
variable [MeasurableSpace G] {μ ν : Measure G}

/-- The convolution of `f` and `g` exists at `x` when the function `t ↦ L (f t) (g (x - t))` is
integrable. There are various conditions on `f` and `g` to prove this. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Convolution/Variant19e9427ba088c3f56cbbde1e29bfbf5e21b5cc7d49b2eb2033008ececeff6702.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Convolution/Variant19e9427ba088c3f56cbbde1e29bfbf5e21b5cc7d49b2eb2033008ececeff6702.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01ac3fc1f4d36b203933f575dde6b0931b0b8556` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
