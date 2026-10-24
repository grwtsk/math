# setIntegral_eq_integral_of_ae_compl_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2ea1f09-9e4c-9446-ed70-2206602680b4",
  "kind": "theorem",
  "lexical_name": "setIntegral_eq_integral_of_ae_compl_eq_zero",
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
  "slug": "setintegral-eq-integral-of-ae-compl-eq-zero--72f22175c81702234a7fce59",
  "source": {
    "blob": "44c0192c42240884d8c5ec272a56c3ae52098d06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 379,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Set/Variantceb9b24b9c5df474beb72d7ac8ce9a67af7229187cd7c8c2ab5ca8887b160e4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72f22175c81702234a7fce59619f50fb9acdd4afccab9a369c7752c390c71806",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Set/Variantceb9b24b9c5df474beb72d7ac8ce9a67af7229187cd7c8c2ab5ca8887b160e4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2ea1f09-9e4c-9446-ed70-2206602680b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setIntegral_eq_integral_of_ae_compl_eq_zero (h : ∀ᵐ x ∂μ, x ∉ s → f x = 0) :
    ∫ x in s, f x ∂μ = ∫ x, f x ∂μ := by
  symm
  nth_rw 1 [← setIntegral_univ]
  apply setIntegral_eq_of_subset_of_ae_diff_eq_zero nullMeasurableSet_univ (subset_univ _)
  filter_upwards [h] with x hx h'x using hx h'x.2

/-- If a function vanishes on `sᶜ`, then its integral on `s` coincides with its integral on the
whole space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Set/Variantceb9b24b9c5df474beb72d7ac8ce9a67af7229187cd7c8c2ab5ca8887b160e4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Set/Variantceb9b24b9c5df474beb72d7ac8ce9a67af7229187cd7c8c2ab5ca8887b160e4f.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44c0192c42240884d8c5ec272a56c3ae52098d06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
