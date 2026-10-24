# causalErrorKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e26497f6622ba05ecaf49f00f8af67a3238c20a6ce7c9ae900919d7d217d7cc",
  "kind": "def",
  "lexical_name": "causalErrorKernel",
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
  "slug": "causalerrorkernel--1f7e833b9e6bf964e2f6c87f",
  "source": {
    "blob": "5f76c5aee6612c19b48f7037e641e33e7cda748c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 52,
    "path": "GRWTSK/Topology/GeneralTopology/A57f0077b8af324707c70a795d96ef8c7c73d0628b609f73940d260a7d4d257dSourceActualShor/Variant2d22028721e0afb07dde6dbef9703ae2780c54b50f15338ad2407242d0067c19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f7e833b9e6bf964e2f6c87f5427c3e4ea35b09596c4118a26678f3bd1a68589",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/A57f0077b8af324707c70a795d96ef8c7c73d0628b609f73940d260a7d4d257dSourceActualShor/Variant2d22028721e0afb07dde6dbef9703ae2780c54b50f15338ad2407242d0067c19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e26497f6622ba05ecaf49f00f8af67a3238c20a6ce7c9ae900919d7d217d7cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def causalErrorKernel (lam T r : ℝ) : ℝ :=
  (Iic T).indicator (fun r =>
    actualCenteredMangoldtLogError r * Real.exp (lam * (r - T))) r

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/A57f0077b8af324707c70a795d96ef8c7c73d0628b609f73940d260a7d4d257dSourceActualShor/Variant2d22028721e0afb07dde6dbef9703ae2780c54b50f15338ad2407242d0067c19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/A57f0077b8af324707c70a795d96ef8c7c73d0628b609f73940d260a7d4d257dSourceActualShor/Variant2d22028721e0afb07dde6dbef9703ae2780c54b50f15338ad2407242d0067c19.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f76c5aee6612c19b48f7037e641e33e7cda748c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
