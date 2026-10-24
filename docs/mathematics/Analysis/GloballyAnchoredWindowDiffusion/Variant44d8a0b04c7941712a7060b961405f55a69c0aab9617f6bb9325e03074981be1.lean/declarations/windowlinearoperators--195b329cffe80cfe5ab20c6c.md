# WindowLinearOperators

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:078c04c8f31d6b718507bfeb8ed17a34179c627b09d0c405742fe7c66f6be98a",
  "kind": "abbrev",
  "lexical_name": "WindowLinearOperators",
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
  "slug": "windowlinearoperators--195b329cffe80cfe5ab20c6c",
  "source": {
    "blob": "cc692a531dff62465f8691cd98c74c86d7cf188f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 34,
    "path": "GRWTSK/Analysis/GloballyAnchoredWindowDiffusion/Variant44d8a0b04c7941712a7060b961405f55a69c0aab9617f6bb9325e03074981be1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:195b329cffe80cfe5ab20c6c41dbc302842917f536a14693fab3045997aea194",
  "verification": {
    "reference": "docs/verification/Analysis/GloballyAnchoredWindowDiffusion/Variant44d8a0b04c7941712a7060b961405f55a69c0aab9617f6bb9325e03074981be1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:078c04c8f31d6b718507bfeb8ed17a34179c627b09d0c405742fe7c66f6be98a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev WindowLinearOperators
    {State : Type uState}
    {G : KnownMaximalState State}
    (W : GlobalWindowSystem G) :=
  ∀ i : W.WindowId,
    ((W.region i).LocalCoord → ℝ) →ₗ[ℝ]
      ((W.region i).LocalCoord → ℝ)

/--
A globally anchored family whose operator at every window is not merely
linear, but is the operator of a certified cycle convolution that squares to
the identity.  The instances for each dependent local-coordinate subtype are
supplied explicitly from the absolute region, so this structure does not
install global orphan instances.

This certificate concerns the local cores.  Weighted overlap fusion is still
not called involutive unless a separate `GlobalWindowInvolutionCertificate`
is supplied.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/GloballyAnchoredWindowDiffusion/Variant44d8a0b04c7941712a7060b961405f55a69c0aab9617f6bb9325e03074981be1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/GloballyAnchoredWindowDiffusion/Variant44d8a0b04c7941712a7060b961405f55a69c0aab9617f6bb9325e03074981be1.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc692a531dff62465f8691cd98c74c86d7cf188f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
