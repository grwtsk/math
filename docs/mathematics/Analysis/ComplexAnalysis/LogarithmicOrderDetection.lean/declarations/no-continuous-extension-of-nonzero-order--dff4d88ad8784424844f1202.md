# no_continuous_extension_of_nonzero_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:297ab433-608b-b95a-08dc-96ca3221ea5d",
  "kind": "theorem",
  "lexical_name": "no_continuous_extension_of_nonzero_order",
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
  "slug": "no-continuous-extension-of-nonzero-order--dff4d88ad8784424844f1202",
  "source": {
    "blob": "2a3d63d126b4c121db5dcf86485f9105674b0203",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 40,
    "path": "GRWTSK/Analysis/Complex/LogarithmicOrderDetection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dff4d88ad8784424844f1202867032a8f729a289acbe4fbe171dd3da69bf3cf3",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/LogarithmicOrderDetection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:297ab433-608b-b95a-08dc-96ca3221ea5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_continuous_extension_of_nonzero_order (f g : ℂ → ℂ) (a : ℂ) (k : ℤ)
    (hg : AnalyticAt ℂ g a) (hg0 : g a ≠ 0)
    (hfactor : f =ᶠ[𝓝[≠] a] fun s => (s - a) ^ k * g s) (hk : k ≠ 0) :
    ¬ ∃ H : ℂ → ℂ, ContinuousAt H a ∧ H =ᶠ[𝓝[≠] a] logDeriv f := by
  rintro ⟨H, hH, hext⟩
  exact hk (order_eq_zero_of_continuous_extension f g H a k hg hg0 hfactor hH hext)
end GRWTSK.Analysis.Complex.LogarithmicPrincipalPart
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/LogarithmicOrderDetection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/LogarithmicOrderDetection.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a3d63d126b4c121db5dcf86485f9105674b0203` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
