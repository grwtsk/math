# signedProfile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:954a319f246051da7bfde4acf75070814126b2eb6e3b7497744f13b791f8e6a4",
  "kind": "def",
  "lexical_name": "signedProfile",
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
  "slug": "signedprofile--35b7cfed8d9846170c390ed7",
  "source": {
    "blob": "c0d9c7f1efed4b385020c98feece283847a955a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 25,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceSchedulingSignedProfile/Variant079f9e923881719feb00f71f29584e00f3f5cb76f5cbc43ffcc91d86e863a15a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:35b7cfed8d9846170c390ed7d64b62da27889d08274c3d82ed960bafdad077b1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceSchedulingSignedProfile/Variant079f9e923881719feb00f71f29584e00f3f5cb76f5cbc43ffcc91d86e863a15a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:954a319f246051da7bfde4acf75070814126b2eb6e3b7497744f13b791f8e6a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def signedProfile (A t : ℝ) : ℝ :=
  ∑ n ∈ primePowerInventory (2 * A),
    (ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n *
      (if Real.log n ≤ t then t - Real.log n else 0)

/-- The profile before the real cutoff has a source formula independent of A. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceSchedulingSignedProfile/Variant079f9e923881719feb00f71f29584e00f3f5cb76f5cbc43ffcc91d86e863a15a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceSchedulingSignedProfile/Variant079f9e923881719feb00f71f29584e00f3f5cb76f5cbc43ffcc91d86e863a15a.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0d9c7f1efed4b385020c98feece283847a955a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
