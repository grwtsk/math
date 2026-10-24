# actual_unnormalized_mellinConvergent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8017a7e5-b992-98e2-a700-4b3061e5619c",
  "kind": "theorem",
  "lexical_name": "actual_unnormalized_mellinConvergent",
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
  "slug": "actual-unnormalized-mellinconvergent--cadcb68739af16cbad48c83d",
  "source": {
    "blob": "957207ec7b0be3d573b3f496b67abc8e9b53064e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 46,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt02/Variant029d221292e2db62366eb5938183ed290499dc30ac039f7f57d2eea9f8f819f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cadcb68739af16cbad48c83d6aa213e5c35da6602532f9d8aaff8dcfffadae7b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt02/Variant029d221292e2db62366eb5938183ed290499dc30ac039f7f57d2eea9f8f819f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8017a7e5-b992-98e2-a700-4b3061e5619c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_unnormalized_mellinConvergent {A a : ℝ} (hA : 1 ≤ A) (ha : 0 < a)
    {s : ℂ} (hs : 0 < s.re) :
    MellinConvergent (unnormalizedFunc a (actualComplexOperator A)) s :=
  mellinConvergent_unnormalized ha (actual_muntz_mellinConvergent hA hs)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt02/Variant029d221292e2db62366eb5938183ed290499dc30ac039f7f57d2eea9f8f819f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt02/Variant029d221292e2db62366eb5938183ed290499dc30ac039f7f57d2eea9f8f819f0.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `957207ec7b0be3d573b3f496b67abc8e9b53064e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
