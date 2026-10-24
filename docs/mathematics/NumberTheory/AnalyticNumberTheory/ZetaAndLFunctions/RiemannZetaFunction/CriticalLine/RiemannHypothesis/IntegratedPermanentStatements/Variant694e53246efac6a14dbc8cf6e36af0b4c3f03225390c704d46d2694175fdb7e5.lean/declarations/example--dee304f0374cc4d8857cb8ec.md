# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:662b8d43ba028f9e8fbf8ea2b2f810f1af4dba1b5ecd9bdfca59207a7f93a8de",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--dee304f0374cc4d8857cb8ec",
  "source": {
    "blob": "a9699a7bfbbb9e00735789cb3f4a4adb1231e9d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 7782,
    "line": 7776,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant694e53246efac6a14dbc8cf6e36af0b4c3f03225390c704d46d2694175fdb7e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dee304f0374cc4d8857cb8ec31b412c0f101e209e012c933498c1008f74f603e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant694e53246efac6a14dbc8cf6e36af0b4c3f03225390c704d46d2694175fdb7e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:662b8d43ba028f9e8fbf8ea2b2f810f1af4dba1b5ecd9bdfca59207a7f93a8de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 7776–7782.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (F : ℂ → ℂ) (hF : ∀ z : ℂ, 0 ≤ z.re → DifferentiableAt ℂ F z)
    (φ : ℝ → ℝ) (hφ : Integrable φ)
    (hb : ∀ σ t : ℝ, 0 ≤ σ → ‖F ((σ : ℂ) + (t : ℂ) * I)‖ ≤ φ t)
    (htop : Tendsto φ atTop (nhds 0)) (hbot : Tendsto φ atBot (nhds 0))
    (x : ℝ) (hx : x < 0) : boundaryInverse F x = 0 :=
  boundaryInverse_eq_zero_of_neg F hF φ hφ hb htop hbot x hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant694e53246efac6a14dbc8cf6e36af0b4c3f03225390c704d46d2694175fdb7e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant694e53246efac6a14dbc8cf6e36af0b4c3f03225390c704d46d2694175fdb7e5.lean#L7776).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9699a7bfbbb9e00735789cb3f4a4adb1231e9d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
