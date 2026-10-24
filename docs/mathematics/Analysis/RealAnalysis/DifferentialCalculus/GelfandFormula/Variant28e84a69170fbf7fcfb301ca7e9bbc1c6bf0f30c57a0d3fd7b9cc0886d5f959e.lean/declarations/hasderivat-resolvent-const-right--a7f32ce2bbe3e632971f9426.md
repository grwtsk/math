# hasDerivAt_resolvent_const_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d1eccbf5bc656f2a48b9cf9849d04afb95443b02",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28e84a69170fbf7fcfb301ca7e9bbc1c6bf0f30c57a0d3fd7b9cc0886d5f959e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c8b48c7d-f307-e838-d4c1-7e4a9e02fa91",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7380df42-0033-c3d8-001d-dbf17bc9d7bb",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_resolvent_const_right",
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
  "slug": "hasderivat-resolvent-const-right--a7f32ce2bbe3e632971f9426",
  "source": {
    "blob": "d1eccbf5bc656f2a48b9cf9849d04afb95443b02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 75,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variant28e84a69170fbf7fcfb301ca7e9bbc1c6bf0f30c57a0d3fd7b9cc0886d5f959e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7f32ce2bbe3e632971f94266eafab953bb07a456d688b596fe6fc6232845699",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variant28e84a69170fbf7fcfb301ca7e9bbc1c6bf0f30c57a0d3fd7b9cc0886d5f959e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7380df42-0033-c3d8-001d-dbf17bc9d7bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_resolvent_const_right [NontriviallyNormedField 𝕜] [NontriviallyNormedField A]
    [NormedAlgebra 𝕜 A] [CompleteSpace A] {a : A} {k : 𝕜} (hk : k ∈ resolventSet 𝕜 a) :
    HasDerivAt (resolvent · k) (resolvent a k ^ 2) a := by
  convert! hasFDerivAt_resolvent (𝕜 := A) hk |>.hasDerivAt
  simp [resolvent, pow_two]

open ENNReal in
/-- In a Banach algebra `A` over `𝕜`, for `a : A` the function `fun z ↦ (1 - z • a)⁻¹` is
differentiable on any closed ball centered at zero of radius `r < (spectralRadius 𝕜 a)⁻¹`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variant28e84a69170fbf7fcfb301ca7e9bbc1c6bf0f30c57a0d3fd7b9cc0886d5f959e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variant28e84a69170fbf7fcfb301ca7e9bbc1c6bf0f30c57a0d3fd7b9cc0886d5f959e.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1eccbf5bc656f2a48b9cf9849d04afb95443b02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
