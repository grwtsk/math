# quarter_compensated_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:709c8ba7-c981-3160-e421-c35960ec21b3",
  "kind": "theorem",
  "lexical_name": "quarter_compensated_integrable",
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
  "slug": "quarter-compensated-integrable--acfcc0c70e602e0952b087e9",
  "source": {
    "blob": "05a7d143364885ccdbc0cdd6a62e4d2cbab01928",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 86,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Variant6ee4d60fcdc42d2bfa8b0ab32c55fa4a94962011dea5576602fb71e1ba0acf90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acfcc0c70e602e0952b087e96024b322d494c1d025f112cf69d759220f416407",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Variant6ee4d60fcdc42d2bfa8b0ab32c55fa4a94962011dea5576602fb71e1ba0acf90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:709c8ba7-c981-3160-e421-c35960ec21b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quarter_compensated_integrable (ξ : ℝ) (n : ℕ) :
    IntegrableOn (fun t : ℝ =>
      Real.exp (-((2:ℝ)*n+1/2)*t)*(1-Real.cos (ξ*t))) (Ioi 0) :=
  compensated_integrable (by positivity) ξ

/-- The actual quarter-line multiplier is a sum of genuine compensated integrals.
This does not yet interchange the sum and the improper integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Variant6ee4d60fcdc42d2bfa8b0ab32c55fa4a94962011dea5576602fb71e1ba0acf90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Variant6ee4d60fcdc42d2bfa8b0ab32c55fa4a94962011dea5576602fb71e1ba0acf90.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05a7d143364885ccdbc0cdd6a62e4d2cbab01928` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
