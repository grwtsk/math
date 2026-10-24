# reconstruction_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36bdd3a0-f3c7-9e01-c2e4-ad5c8396ab42",
  "kind": "theorem",
  "lexical_name": "reconstruction_identity",
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
  "slug": "reconstruction-identity--c16d2180e134ca6643b213c6",
  "source": {
    "blob": "47590da95970d55ac5e2b49a24660ff0611083ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 139,
    "path": "GRWTSK/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c16d2180e134ca6643b213c6123b4f0d624a08dc0640e73efc2b3a2d0b286c03",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36bdd3a0-f3c7-9e01-c2e4-ad5c8396ab42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reconstruction_identity (s : Finset ι) (parent : Code 𝕜 X Y₁)
    (child : ι → Code 𝕜 X Y) (L : X →L[𝕜] Z)
    (aggregate : X) (source : ι → X) (parentData : Y₁) (childData : ι → Y)
    (coverage : CoverageCertificate s aggregate source) :
    L (parent.decode parentData) - L aggregate =
      (L.comp parent.decode)
          (parentData - ∑ i ∈ s, transport parent (child i) (childData i)) +
        ∑ i ∈ s, (L.comp (child i).decode)
          (childData i - (child i).encode (source i)) := by
  unfold CoverageCertificate at coverage
  subst aggregate
  simp only [ContinuousLinearMap.comp_apply, map_sub, map_sum,
    decode_transport_apply, Code.decode_encode_apply]
  rw [Finset.sum_sub_distrib]
  abel

/-- Source-preserving refinement with explicit error returned through the actual consumer.

This is the quantitative Reed--Solomon aggregation estimate.  The first term charges the
parent comparison seam; every remaining term charges an independently certified child
source error.  The operator norms make ill-conditioned decoders visible. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47590da95970d55ac5e2b49a24660ff0611083ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
