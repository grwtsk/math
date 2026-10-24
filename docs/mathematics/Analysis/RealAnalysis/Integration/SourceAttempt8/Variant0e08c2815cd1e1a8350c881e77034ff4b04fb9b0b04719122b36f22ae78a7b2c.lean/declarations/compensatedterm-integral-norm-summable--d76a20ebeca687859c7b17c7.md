# compensatedTerm_integral_norm_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c448cf0-98eb-3d03-cc54-4bcaf110c8d6",
  "kind": "theorem",
  "lexical_name": "compensatedTerm_integral_norm_summable",
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
  "slug": "compensatedterm-integral-norm-summable--d76a20ebeca687859c7b17c7",
  "source": {
    "blob": "d3a5a015e85b6e477f0b7ee5bb344cd6310eee41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 192,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d76a20ebeca687859c7b17c7ede99feae35f1a3ad09bb6217ddb5d8706625f3b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c448cf0-98eb-3d03-cc54-4bcaf110c8d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compensatedTerm_integral_norm_summable {x : ℝ} (hx : -2 < x) :
    Summable (fun n : ℕ ↦ ∫ t : ℝ in Ioi 0, ‖compensatedTerm x n t‖) := by
  have he : (fun n : ℕ ↦ ∫ t : ℝ in Ioi 0, ‖compensatedTerm x n t‖) =
      ContinuousResearch.CompensatedGammaProfile.term x := by
    ext n
    exact compensatedTerm_integral_norm hx n
  rw [he]
  exact ContinuousResearch.CompensatedGammaProfile.term_summable hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3a5a015e85b6e477f0b7ee5bb344cd6310eee41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
