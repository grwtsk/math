# deriv_source_products_eq_neg_curvature

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe2e4e08-ae0b-67f1-9b86-e24c8a62ba34",
  "kind": "theorem",
  "lexical_name": "deriv_source_products_eq_neg_curvature",
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
  "slug": "deriv-source-products-eq-neg-curvature--4c2a102760b5a834abb48d2b",
  "source": {
    "blob": "c6e045884df9203c1f495c87f420c4a07a55f6ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 382,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Reference29/Variantf867fec88ac9ed82fc3a120b2e1a5555f679827c3e51fba593cd62fb68676d20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c2a102760b5a834abb48d2b12ee119ddcbf339ef34faf99f76f0b86484de7ac",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Reference29/Variantf867fec88ac9ed82fc3a120b2e1a5555f679827c3e51fba593cd62fb68676d20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe2e4e08-ae0b-67f1-9b86-e24c8a62ba34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem deriv_source_products_eq_neg_curvature
    {A : ℝ} (hA : 0 < A) (t u : ℝ) :
    (∫ v : ℝ, deriv (normalizedTest explicitSecondDerivative A) (v - t) *
      deriv (normalizedTest explicitSecondDerivative A) (v + Real.log u)) =
      -deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (t + Real.log u) := by
  have h := reflected_mixed_kernel_eq_negative_products hA t u
  rw [source_products_eq_correlation] at h
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Reference29/Variantf867fec88ac9ed82fc3a120b2e1a5555f679827c3e51fba593cd62fb68676d20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Reference29/Variantf867fec88ac9ed82fc3a120b2e1a5555f679827c3e51fba593cd62fb68676d20.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6e045884df9203c1f495c87f420c4a07a55f6ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
