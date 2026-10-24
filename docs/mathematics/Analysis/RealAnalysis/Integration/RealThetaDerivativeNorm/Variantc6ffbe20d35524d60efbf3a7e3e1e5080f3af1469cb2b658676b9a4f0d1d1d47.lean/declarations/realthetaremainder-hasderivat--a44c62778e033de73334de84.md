# realThetaRemainder_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1ce226d32bd12d661bb1532a7597f06d48e14fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c6ffbe20d35524d60efbf3a7e3e1e5080f3af1469cb2b658676b9a4f0d1d1d47.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:09baf7bd-afe9-f872-7ef5-c2e5f41c60f0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3df7169f-e942-72c0-4670-ef54d8da4601",
  "kind": "theorem",
  "lexical_name": "realThetaRemainder_hasDerivAt",
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
  "slug": "realthetaremainder-hasderivat--a44c62778e033de73334de84",
  "source": {
    "blob": "f1ce226d32bd12d661bb1532a7597f06d48e14fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 105,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNorm/Variantc6ffbe20d35524d60efbf3a7e3e1e5080f3af1469cb2b658676b9a4f0d1d1d47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a44c62778e033de73334de8471eda65c16ad9f7514fd945dbc4b0cb11fc0fc12",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RealThetaDerivativeNorm/Variantc6ffbe20d35524d60efbf3a7e3e1e5080f3af1469cb2b658676b9a4f0d1d1d47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3df7169f-e942-72c0-4670-ef54d8da4601`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem realThetaRemainder_hasDerivAt (A q : ℝ) (hA : 1 ≤ A) (hq : 0 < q) :
    HasDerivAt (realThetaRemainder A)
      (1 / q * (realThetaDifferenceKernel A q + sourceRankOneCoefficient A / q)) q := by
  have hinv : HasDerivAt (fun x : ℝ ↦ sourceRankOneCoefficient A / x)
      (-sourceRankOneCoefficient A / q ^ 2) q := by
    simpa only [div_eq_mul_inv, mul_neg, neg_mul] using
      (hasDerivAt_inv hq.ne').const_mul (sourceRankOneCoefficient A)
  apply ((realThetaKernel_hasDerivAt A q hA hq).sub hinv).congr_deriv
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RealThetaDerivativeNorm/Variantc6ffbe20d35524d60efbf3a7e3e1e5080f3af1469cb2b658676b9a4f0d1d1d47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNorm/Variantc6ffbe20d35524d60efbf3a7e3e1e5080f3af1469cb2b658676b9a4f0d1d1d47.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1ce226d32bd12d661bb1532a7597f06d48e14fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
