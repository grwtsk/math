# minkowskiBound_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b476eb4ed08625e70f96597062f535e968c201d3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 468,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ecdd3e54-5e03-83c1-9d27-32f59ebc13e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:15809a4f-97c1-bee8-3f5a-df40a47b38a7",
  "kind": "theorem",
  "lexical_name": "minkowskiBound_pos",
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
  "slug": "minkowskibound-pos--b1fa376083a8bcc8ee737d93",
  "source": {
    "blob": "b476eb4ed08625e70f96597062f535e968c201d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 481,
    "line": 468,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1fa376083a8bcc8ee737d9388c1b55b506bb355fe8b3cacaa36c6fdc21c9ffa",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15809a4f-97c1-bee8-3f5a-df40a47b38a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 468–481.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minkowskiBound_pos : 0 < minkowskiBound K I := by
  classical
  refine zero_lt_iff.mpr (mul_ne_zero ?_ ?_)
  · exact ZSpan.measure_fundamentalDomain_ne_zero _
  · exact ENNReal.pow_ne_zero two_ne_zero _

variable {f : InfinitePlace K → ℝ≥0} (I : (FractionalIdeal (𝓞 K)⁰ K)ˣ)

open scoped Classical in
/-- Let `I` be a fractional ideal of `K`. Assume that `f : InfinitePlace K → ℝ≥0` is such that
`minkowskiBound K I < volume (convexBodyLT K f)` where `convexBodyLT K f` is the set of
points `x` such that `‖x w‖ < f w` for all infinite places `w` (see `convexBodyLT_volume` for
the computation of this volume), then there exists a nonzero algebraic number `a` in `I` such
that `w a < f w` for all infinite places `w`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean#L468).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b476eb4ed08625e70f96597062f535e968c201d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
