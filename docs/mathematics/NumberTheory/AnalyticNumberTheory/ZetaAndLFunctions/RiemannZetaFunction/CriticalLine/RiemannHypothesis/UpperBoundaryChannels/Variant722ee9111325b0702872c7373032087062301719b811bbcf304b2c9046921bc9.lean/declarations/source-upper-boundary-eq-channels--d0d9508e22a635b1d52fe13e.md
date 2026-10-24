# source_upper_boundary_eq_channels

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fb93dbfa8e2b544f978ab23d37bf402f05535cd8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 51,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/722ee9111325b0702872c7373032087062301719b811bbcf304b2c9046921bc9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fc1041da-a4b4-95e3-1206-abb85d6ea58e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f610947b-2ae8-7f31-257e-9f2f9f4f56b6",
  "kind": "theorem",
  "lexical_name": "source_upper_boundary_eq_channels",
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
  "slug": "source-upper-boundary-eq-channels--d0d9508e22a635b1d52fe13e",
  "source": {
    "blob": "fb93dbfa8e2b544f978ab23d37bf402f05535cd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 51,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/UpperBoundaryChannels/Variant722ee9111325b0702872c7373032087062301719b811bbcf304b2c9046921bc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0d9508e22a635b1d52fe13ef5e7f60c3d06ab9b40b43d360ee34cdc58772102",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/UpperBoundaryChannels/Variant722ee9111325b0702872c7373032087062301719b811bbcf304b2c9046921bc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f610947b-2ae8-7f31-257e-9f2f9f4f56b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_upper_boundary_eq_channels (A : ℝ) :
    rectangle (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
      (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
      (fun q ↦ sourceSamplingKernel A q) = upperChannel A 2 + upperChannel A 3 := by
  calc
    _ = rectangle (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
        (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
        (fun q ↦ channelKernel A 2 q + channelKernel A 3 q) := by
      unfold rectangle
      apply sum_congr rfl
      intro i hi
      apply sum_congr rfl
      intro j hj
      dsimp only
      rw [sourceSamplingKernel_eq_channels A (i * j)
        (Nat.mul_pos (show 1 ≤ i by have := (mem_Ioc.mp hi).1; omega)
          (show 1 ≤ j by have := (mem_Ioc.mp hj).1; omega))
        (UpperRowInversion.upper_square_product_threshold A i j
          (mem_Ioc.mp hi).1 (mem_Ioc.mp hj).1)]
    _ = _ := by simp only [upperChannel, rectangle, mul_add, sum_add_distrib]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/UpperBoundaryChannels/Variant722ee9111325b0702872c7373032087062301719b811bbcf304b2c9046921bc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/UpperBoundaryChannels/Variant722ee9111325b0702872c7373032087062301719b811bbcf304b2c9046921bc9.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb93dbfa8e2b544f978ab23d37bf402f05535cd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
