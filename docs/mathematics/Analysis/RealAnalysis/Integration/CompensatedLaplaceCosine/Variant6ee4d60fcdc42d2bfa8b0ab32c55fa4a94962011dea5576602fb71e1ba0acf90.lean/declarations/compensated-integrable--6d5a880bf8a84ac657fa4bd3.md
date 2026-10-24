# compensated_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d0f013a-a886-4ecd-694a-91d99ea2049c",
  "kind": "theorem",
  "lexical_name": "compensated_integrable",
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
  "slug": "compensated-integrable--6d5a880bf8a84ac657fa4bd3",
  "source": {
    "blob": "05a7d143364885ccdbc0cdd6a62e4d2cbab01928",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 47,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Variant6ee4d60fcdc42d2bfa8b0ab32c55fa4a94962011dea5576602fb71e1ba0acf90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d5a880bf8a84ac657fa4bd37339d2b5a64f72682c552bf795028698444eb7e7",
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

Occurrence: `result:9d0f013a-a886-4ecd-694a-91d99ea2049c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compensated_integrable {a : ℝ} (ha : 0 < a) (b : ℝ) :
    IntegrableOn (fun t : ℝ => Real.exp (-a*t)*(1-Real.cos (b*t))) (Ioi 0) := by
  have he : (fun t : ℝ => Real.exp (-a*t)*(1-Real.cos (b*t))) =
      (fun t => Real.exp (-a*t) - Real.exp (-a*t)*Real.cos (b*t)) := by
    funext t; ring
  rw [he]
  exact (integrableOn_exp_mul_Ioi (by linarith : -a < 0) 0).sub
    (damped_cosine_integrable ha b)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Variant6ee4d60fcdc42d2bfa8b0ab32c55fa4a94962011dea5576602fb71e1ba0acf90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Variant6ee4d60fcdc42d2bfa8b0ab32c55fa4a94962011dea5576602fb71e1ba0acf90.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05a7d143364885ccdbc0cdd6a62e4d2cbab01928` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
