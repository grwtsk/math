# residual_tail_of_finite_triangular_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c1cadf0-cc01-67c0-311a-9b8784abc33a",
  "kind": "theorem",
  "lexical_name": "residual_tail_of_finite_triangular_tail",
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
  "slug": "residual-tail-of-finite-triangular-tail--2c1f5908996ebfdcdf9c3b3e",
  "source": {
    "blob": "72c8804d7014dd88d441d7277e963d42a492ca96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 29,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceAdaptiveRadiusFollowthrough/Variant7095c7c1801fefd0d55325eb6f35ab3c4e0a4220b92738403c15ac28c5011dcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c1f5908996ebfdcdf9c3b3e49d007abbda515cc0c74ca1507a373a57f009574",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceAdaptiveRadiusFollowthrough/Variant7095c7c1801fefd0d55325eb6f35ab3c4e0a4220b92738403c15ac28c5011dcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c1cadf0-cc01-67c0-311a-9b8784abc33a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_tail_of_finite_triangular_tail (D R : ℝ) (hR : 1 ≤ R)
    (hG : ∀ A : ℝ, R ≤ A → triangularInterior A ≤ D) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, R ≤ A →
      mertensResidual A ≤ D + 1 / 2 + RH16EndpointRadius.endpointBudget R + C_F := by
  exact SourceEndpointRadiusConsumer.residual_tail_of_strictColumnInterior_tail
    (D + 1 / 2) R hR (fun A hRA => strict_upper_of_triangular_tail D R A hR hG hRA)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceAdaptiveRadiusFollowthrough/Variant7095c7c1801fefd0d55325eb6f35ab3c4e0a4220b92738403c15ac28c5011dcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceAdaptiveRadiusFollowthrough/Variant7095c7c1801fefd0d55325eb6f35ab3c4e0a4220b92738403c15ac28c5011dcb.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72c8804d7014dd88d441d7277e963d42a492ca96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
