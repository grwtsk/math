# nativeMellin_two_eq_sourceFourier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc1ee4f5-b144-0dc7-7b1b-d4db0b164eea",
  "kind": "theorem",
  "lexical_name": "nativeMellin_two_eq_sourceFourier",
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
  "slug": "nativemellin-two-eq-sourcefourier--b594fe8d41ed36d1e8b9935d",
  "source": {
    "blob": "43d32f31edaa8977c2d490c768a6699143f8e182",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 38,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeReadout/Variant6e32724e236ac11e54146d866587f23797db62a0a25b6abe6ab89ac402e6e053.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b594fe8d41ed36d1e8b9935dc14633a34f5b88b50d2c04cbe61d379b2cab7e2d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceNativeReadout/Variant6e32724e236ac11e54146d866587f23797db62a0a25b6abe6ab89ac402e6e053.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc1ee4f5-b144-0dc7-7b1b-d4db0b164eea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nativeMellin_two_eq_sourceFourier (A t : ℝ) :
    nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) =
      sourceFourier (weightedCorrelation A) t := by
  unfold nativeMellinTransform sourceFourier weightedCorrelation
  apply integral_congr_ae
  filter_upwards [] with x
  simp only [Complex.ofReal_mul]
  have he : (((2 : ℂ) + Complex.I * (t : ℂ)) - 1 / 2) * (x : ℂ) =
      ((3 * x / 2 : ℝ) : ℂ) + Complex.I * (t : ℂ) * (x : ℂ) := by
    push_cast
    ring
  rw [he, Complex.exp_add, ← Complex.ofReal_exp]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceNativeReadout/Variant6e32724e236ac11e54146d866587f23797db62a0a25b6abe6ab89ac402e6e053.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeReadout/Variant6e32724e236ac11e54146d866587f23797db62a0a25b6abe6ab89ac402e6e053.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43d32f31edaa8977c2d490c768a6699143f8e182` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
