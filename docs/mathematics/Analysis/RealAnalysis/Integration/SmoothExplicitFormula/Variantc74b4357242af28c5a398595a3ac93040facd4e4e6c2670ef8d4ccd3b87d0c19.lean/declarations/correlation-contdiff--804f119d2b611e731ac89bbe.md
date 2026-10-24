# correlation_contDiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d506027-f4ca-7759-ea12-3ce0ad4452a4",
  "kind": "theorem",
  "lexical_name": "correlation_contDiff",
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
  "slug": "correlation-contdiff--804f119d2b611e731ac89bbe",
  "source": {
    "blob": "4a4d0ecee183686a9028c465233acd57b64fc3b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 226,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variantc74b4357242af28c5a398595a3ac93040facd4e4e6c2670ef8d4ccd3b87d0c19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:804f119d2b611e731ac89bbe403781dee47ca40cfac11cb719965a7cb44418e0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variantc74b4357242af28c5a398595a3ac93040facd4e4e6c2670ef8d4ccd3b87d0c19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d506027-f4ca-7759-ea12-3ce0ad4452a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem correlation_contDiff (f : ℝ → ℝ) (hf : ContDiff ℝ ∞ f)
    (hc : HasCompactSupport f) (he : Function.Even f) : ContDiff ℝ ∞ (correlation f) := by
  rw [correlation_eq_convolution f he]
  exact hc.contDiff_convolution_left (ContinuousLinearMap.lsmul ℝ ℝ) hf
    (hf.continuous.integrable_of_hasCompactSupport hc).locallyIntegrable

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variantc74b4357242af28c5a398595a3ac93040facd4e4e6c2670ef8d4ccd3b87d0c19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variantc74b4357242af28c5a398595a3ac93040facd4e4e6c2670ef8d4ccd3b87d0c19.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a4d0ecee183686a9028c465233acd57b64fc3b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
