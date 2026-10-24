# riesz_zero_sum_norm_le_of_rh

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1dfb121-6b25-44ff-b9a8-2297ab4f8523",
  "kind": "theorem",
  "lexical_name": "riesz_zero_sum_norm_le_of_rh",
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
  "slug": "riesz-zero-sum-norm-le-of-rh--0676afe06695592bb13955c9",
  "source": {
    "blob": "8efa9bdd38506dec34f6a5f7fcfbbb867f6bcf33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 252,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant2793972d0d610f2a41b041e7ed9d03ca774d61e4bd62d5c7730df8bfb2f33e3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0676afe06695592bb13955c9e6366c5721fe2d205486fa2eb9b2a241618b17cd",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant2793972d0d610f2a41b041e7ed9d03ca774d61e4bd62d5c7730df8bfb2f33e3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1dfb121-6b25-44ff-b9a8-2297ab4f8523`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riesz_zero_sum_norm_le_of_rh (hRH : _root_.RiemannHypothesis)
    (A : ℝ) (hA : 1 ≤ A) :
    ‖∑' o : ZeroOccurrence, rieszZeroWeight A o‖ ≤ rieszZeroMajorantMass :=
  (norm_tsum_le_tsum_norm (riesz_zero_weights_norm_summable A hA)).trans
    (riesz_zero_absolute_sum_le_of_rh hRH A hA)

end
end FormalResearch.RiemannHypothesis.RieszZeroSummability
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant2793972d0d610f2a41b041e7ed9d03ca774d61e4bd62d5c7730df8bfb2f33e3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant2793972d0d610f2a41b041e7ed9d03ca774d61e4bd62d5c7730df8bfb2f33e3d.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8efa9bdd38506dec34f6a5f7fcfbbb867f6bcf33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
