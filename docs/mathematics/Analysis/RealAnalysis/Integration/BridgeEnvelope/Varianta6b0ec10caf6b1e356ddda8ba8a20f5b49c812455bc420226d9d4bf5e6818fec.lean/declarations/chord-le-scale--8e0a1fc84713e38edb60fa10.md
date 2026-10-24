# chord_le_scale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15ba554e-5c2a-fa1c-67d0-dc49c32c1f8d",
  "kind": "theorem",
  "lexical_name": "chord_le_scale",
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
  "slug": "chord-le-scale--8e0a1fc84713e38edb60fa10",
  "source": {
    "blob": "df0d13c10c93bcb16f6e3a1e9c482c266038a574",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 94,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/BridgeEnvelope/Varianta6b0ec10caf6b1e356ddda8ba8a20f5b49c812455bc420226d9d4bf5e6818fec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e0a1fc84713e38edb60fa1023a79c0ad80d22bb8f10c2ffb3e02349bd446500",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/BridgeEnvelope/Varianta6b0ec10caf6b1e356ddda8ba8a20f5b49c812455bc420226d9d4bf5e6818fec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15ba554e-5c2a-fa1c-67d0-dc49c32c1f8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chord_le_scale {A u : ℝ} (hA : 0<A) :
    (389/40:ℝ)*u*(2*A-u)/(2*A)≤(389/80:ℝ)*A := by
  apply (div_le_iff₀ (by linarith : 0<2*A)).mpr
  nlinarith [sq_nonneg (u-A)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/BridgeEnvelope/Varianta6b0ec10caf6b1e356ddda8ba8a20f5b49c812455bc420226d9d4bf5e6818fec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/BridgeEnvelope/Varianta6b0ec10caf6b1e356ddda8ba8a20f5b49c812455bc420226d9d4bf5e6818fec.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df0d13c10c93bcb16f6e3a1e9c482c266038a574` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
