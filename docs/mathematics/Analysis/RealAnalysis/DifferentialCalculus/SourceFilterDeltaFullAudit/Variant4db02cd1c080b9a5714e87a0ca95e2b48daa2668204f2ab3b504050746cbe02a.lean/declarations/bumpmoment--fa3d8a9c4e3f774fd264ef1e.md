# bumpMoment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a2d41ace2a95a1ae6e56b6b138626e55243f8483dd1f37380e89fda1b9da88f",
  "kind": "def",
  "lexical_name": "bumpMoment",
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
  "slug": "bumpmoment--fa3d8a9c4e3f774fd264ef1e",
  "source": {
    "blob": "b77464e992420e18375206e4327cf2bcb915d6ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 26,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa3d8a9c4e3f774fd264ef1e6a613a6a25429a9ade445c093b43479848c13b4a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a2d41ace2a95a1ae6e56b6b138626e55243f8483dd1f37380e89fda1b9da88f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bumpMoment (k : ℕ) (z : ℂ) : ℂ :=
  ∫ x : ℝ in (-1)..1, (x : ℂ) ^ k * (1 - (x : ℂ) ^ 2) ^ 4 *
    Complex.exp (z * (x : ℂ))

/-- Every moment is genuinely integrable before any integral algebra is applied. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaFullAudit/Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b77464e992420e18375206e4327cf2bcb915d6ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
