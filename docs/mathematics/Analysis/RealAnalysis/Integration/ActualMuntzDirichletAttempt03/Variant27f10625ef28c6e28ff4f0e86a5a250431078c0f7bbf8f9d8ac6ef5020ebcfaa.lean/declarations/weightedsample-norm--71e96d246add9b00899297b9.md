# weightedSample_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ba6af36-3597-5f01-f6b3-0bd714eec3da",
  "kind": "theorem",
  "lexical_name": "weightedSample_norm",
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
  "slug": "weightedsample-norm--71e96d246add9b00899297b9",
  "source": {
    "blob": "d0f055b6bd780b06fde5a208c502a98ddd06236f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 35,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt03/Variant27f10625ef28c6e28ff4f0e86a5a250431078c0f7bbf8f9d8ac6ef5020ebcfaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71e96d246add9b00899297b9c1807c332e909f8a2681fd4e412bae4d800511af",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt03/Variant27f10625ef28c6e28ff4f0e86a5a250431078c0f7bbf8f9d8ac6ef5020ebcfaa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ba6af36-3597-5f01-f6b3-0bd714eec3da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedSample_norm {A x : ℝ} (s : ℂ) (n : ℕ) (hx : 0 < x) :
    ‖weightedSample A s n x‖ = x ^ (s.re-1) *
      ‖complexSource A (((n+1 : ℕ) : ℝ)*x)‖ := by
  simp only [weightedSample,norm_mul,Complex.norm_cpow_eq_rpow_re_of_pos hx,
    Complex.sub_re,Complex.one_re]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt03/Variant27f10625ef28c6e28ff4f0e86a5a250431078c0f7bbf8f9d8ac6ef5020ebcfaa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt03/Variant27f10625ef28c6e28ff4f0e86a5a250431078c0f7bbf8f9d8ac6ef5020ebcfaa.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0f055b6bd780b06fde5a208c502a98ddd06236f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
