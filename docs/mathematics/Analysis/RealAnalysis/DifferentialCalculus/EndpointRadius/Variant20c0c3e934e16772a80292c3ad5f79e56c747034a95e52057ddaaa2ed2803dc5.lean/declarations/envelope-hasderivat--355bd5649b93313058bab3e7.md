# envelope_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc3ece93-a7b2-2cb0-9181-b3afa02daaa3",
  "kind": "theorem",
  "lexical_name": "envelope_hasDerivAt",
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
  "slug": "envelope-hasderivat--355bd5649b93313058bab3e7",
  "source": {
    "blob": "3af1880ae6b6018bf8637dacfb0027821d4232cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 23,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant20c0c3e934e16772a80292c3ad5f79e56c747034a95e52057ddaaa2ed2803dc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:355bd5649b93313058bab3e7362160560ff7e924aaefce476155aa848a74386b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant20c0c3e934e16772a80292c3ad5f79e56c747034a95e52057ddaaa2ed2803dc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc3ece93-a7b2-2cb0-9181-b3afa02daaa3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem envelope_hasDerivAt (A : ℝ) :
    HasDerivAt envelope (2 * A ^ 2 * Real.exp (-A) * (3 - A)) A := by
  have hd : HasDerivAt (fun x : ℝ => 2 * x ^ 3 * Real.exp (-x))
      (2 * (3 * A ^ 2 * 1) * Real.exp (-A) +
        2 * A ^ 3 * (Real.exp (-A) * -1)) A :=
    (((hasDerivAt_id A).pow 3).const_mul 2).mul ((hasDerivAt_id A).neg.exp)
  convert hd using 1 <;> first | rfl | ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant20c0c3e934e16772a80292c3ad5f79e56c747034a95e52057ddaaa2ed2803dc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant20c0c3e934e16772a80292c3ad5f79e56c747034a95e52057ddaaa2ed2803dc5.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3af1880ae6b6018bf8637dacfb0027821d4232cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
