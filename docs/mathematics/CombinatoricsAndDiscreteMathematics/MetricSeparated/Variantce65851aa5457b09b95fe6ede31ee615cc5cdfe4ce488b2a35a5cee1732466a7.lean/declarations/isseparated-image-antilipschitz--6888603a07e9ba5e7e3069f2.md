# IsSeparated.image_antilipschitz

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "77f85cb54578ce8c7a275ceed2867159bc91e9f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce65851aa5457b09b95fe6ede31ee615cc5cdfe4ce488b2a35a5cee1732466a7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:251089f4-d9ca-4a43-3f5a-e87deb2ec900",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eef44144-95a5-2bb7-3f5e-ed2c71397d3b",
  "kind": "lemma",
  "lexical_name": "IsSeparated.image_antilipschitz",
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
  "slug": "isseparated-image-antilipschitz--6888603a07e9ba5e7e3069f2",
  "source": {
    "blob": "77f85cb54578ce8c7a275ceed2867159bc91e9f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 80,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantce65851aa5457b09b95fe6ede31ee615cc5cdfe4ce488b2a35a5cee1732466a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6888603a07e9ba5e7e3069f25579f43c0d8216fd10587b781d6b30ec36c6a9f6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantce65851aa5457b09b95fe6ede31ee615cc5cdfe4ce488b2a35a5cee1732466a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eef44144-95a5-2bb7-3f5e-ed2c71397d3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsSeparated.image_antilipschitz {ε K₁ : ℝ≥0} {f : X → Y}
    (hs : IsSeparated ε s) (hf : AntilipschitzWith K₁ f) (hK₁ : 0 < K₁) :
    IsSeparated ↑(ε / K₁) (f '' s) := by
  rintro x' ⟨x, hx, rfl⟩ y' ⟨y, hy, rfl⟩ hne
  have hmul : (↑ε : ℝ≥0∞) < edist (f x) (f y) * ↑K₁ :=
    lt_of_lt_of_le (hs hx hy (by grind)) (by rw [mul_comm]; exact hf x y)
  exact ENNReal.coe_div hK₁.ne' ▸ ENNReal.div_lt_of_lt_mul hmul

/-!
### Metric separated pairs of sets

In this section we define the predicate `Metric.AreSeparated`. We say that two sets in an
(extended) metric space are *metric separated* if the (extended) distance between `x ∈ s` and
`y ∈ t` is bounded from below by a positive constant.

This notion is useful, e.g., to define metric outer measures.
-/

/-- Two sets in an (extended) metric space are called *metric separated* if the (extended) distance
between `x ∈ s` and `y ∈ t` is bounded from below by a positive constant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantce65851aa5457b09b95fe6ede31ee615cc5cdfe4ce488b2a35a5cee1732466a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantce65851aa5457b09b95fe6ede31ee615cc5cdfe4ce488b2a35a5cee1732466a7.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77f85cb54578ce8c7a275ceed2867159bc91e9f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
