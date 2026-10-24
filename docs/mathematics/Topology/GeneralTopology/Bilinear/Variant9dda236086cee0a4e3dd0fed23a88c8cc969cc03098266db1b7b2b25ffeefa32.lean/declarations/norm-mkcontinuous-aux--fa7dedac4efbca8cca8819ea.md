# norm_mkContinuous₂_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce8a5891-e299-c045-dd8a-c0baf9aecdbe",
  "kind": "lemma",
  "lexical_name": "norm_mkContinuous₂_aux",
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
  "slug": "norm-mkcontinuous-aux--fa7dedac4efbca8cca8819ea",
  "source": {
    "blob": "e29af5a9f1c2503b635ae247b0a71851e4db60eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 98,
    "path": "GRWTSK/Topology/GeneralTopology/Bilinear/Variant9dda236086cee0a4e3dd0fed23a88c8cc969cc03098266db1b7b2b25ffeefa32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa7dedac4efbca8cca8819eabb456963f5d86866f23165b89db93261b57b548a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bilinear/Variant9dda236086cee0a4e3dd0fed23a88c8cc969cc03098266db1b7b2b25ffeefa32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce8a5891-e299-c045-dd8a-c0baf9aecdbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_mkContinuous₂_aux (f : E →ₛₗ[σ₁₃] F →ₛₗ[σ₂₃] G) (C : ℝ)
    (h : ∀ x y, ‖f x y‖ ≤ C * ‖x‖ * ‖y‖) (x : E) :
    ‖(f x).mkContinuous (C * ‖x‖) (h x)‖ ≤ max C 0 * ‖x‖ :=
  (mkContinuous_norm_le' (f x) (h x)).trans_eq <| by
    rw [max_mul_of_nonneg _ _ (norm_nonneg x), zero_mul]

variable [RingHomIsometric σ₂₃]

/-- Create a bilinear map (represented as a map `E →L[𝕜] F →L[𝕜] G`) from the corresponding linear
map and existence of a bound on the norm of the image. The linear map can be constructed using
`LinearMap.mk₂`.

If you have an explicit bound, use `LinearMap.mkContinuous₂` instead, as a norm estimate will
follow automatically in `LinearMap.mkContinuous₂_norm_le`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bilinear/Variant9dda236086cee0a4e3dd0fed23a88c8cc969cc03098266db1b7b2b25ffeefa32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bilinear/Variant9dda236086cee0a4e3dd0fed23a88c8cc969cc03098266db1b7b2b25ffeefa32.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e29af5a9f1c2503b635ae247b0a71851e4db60eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
