# primitive_eq_finite_arithmetic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0f90d0a-da6f-471c-f7fc-601a905bd482",
  "kind": "theorem",
  "lexical_name": "primitive_eq_finite_arithmetic",
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
  "slug": "primitive-eq-finite-arithmetic--b3b2f5edf7065220960712a9",
  "source": {
    "blob": "f1e2a637ac3a70aba6cc7e5f6266af32ae0ba367",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 81,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt01/Variantd1df4a470ddf82072edac229f9d4b4c65c0bf0bf185ef8011430cb0bb6567ef2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3b2f5edf7065220960712a9659b5e82e89d9d980c9deb96bbd5bd23b2b82e1a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceAttempt01/Variantd1df4a470ddf82072edac229f9d4b4c65c0bf0bf185ef8011430cb0bb6567ef2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0f90d0a-da6f-471c-f7fc-601a905bd482`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitive_eq_finite_arithmetic {t : ℝ} (ht : 0 ≤ t) :
    primitive t = 2*Real.exp (t/2)*(mangoldtLogError t+Real.eulerMascheroniConstant+2)
      -2*halfPrefix t-4-2*Real.eulerMascheroniConstant := by
  have he : (fun s : ℝ => Real.exp (s/2)*(mangoldtLogError s+Real.eulerMascheroniConstant)) =
      fun s => mangoldtLogPrefix s*Real.exp (s/2) +
        Real.exp (s/2)*(Real.eulerMascheroniConstant-s) := by
    funext s
    unfold mangoldtLogError
    ring
  unfold primitive
  rw [he, intervalIntegral.integral_add (prefix_weight_integrable 0 t ht)
    ((by fun_prop : Continuous (fun s : ℝ => Real.exp (s/2)*
      (Real.eulerMascheroniConstant-s))).intervalIntegrable 0 t),
    prefix_weight_integral ht, background_integral]
  unfold mangoldtLogError
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceAttempt01/Variantd1df4a470ddf82072edac229f9d4b4c65c0bf0bf185ef8011430cb0bb6567ef2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt01/Variantd1df4a470ddf82072edac229f9d4b4c65c0bf0bf185ef8011430cb0bb6567ef2.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1e2a637ac3a70aba6cc7e5f6266af32ae0ba367` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
