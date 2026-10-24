# fusedWindowNumerator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6dab2199fec86c675daaf20ea1d3c6f62ccc0bfe2986a6ce570de7829705d77c",
  "kind": "def",
  "lexical_name": "fusedWindowNumerator",
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
  "slug": "fusedwindownumerator--edaf4238e6713bf8b1122039",
  "source": {
    "blob": "cc692a531dff62465f8691cd98c74c86d7cf188f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 104,
    "path": "GRWTSK/Analysis/GloballyAnchoredWindowDiffusion/Variant44d8a0b04c7941712a7060b961405f55a69c0aab9617f6bb9325e03074981be1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:edaf4238e6713bf8b11220393b6d65515ef913d7bad9ce92506350c6ebe67e0b",
  "verification": {
    "reference": "docs/verification/Analysis/GloballyAnchoredWindowDiffusion/Variant44d8a0b04c7941712a7060b961405f55a69c0aab9617f6bb9325e03074981be1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6dab2199fec86c675daaf20ea1d3c6f62ccc0bfe2986a6ce570de7829705d77c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fusedWindowNumerator
    {State : Type uState}
    {G : KnownMaximalState State}
    (W : GlobalWindowSystem G)
    (localOps : WindowLinearOperators W)
    (signal : G.Coord → ℝ)
    (c : G.Coord) : ℝ := by
  letI : Fintype W.WindowId := W.windowFintype
  exact ∑ i : W.WindowId,
    W.weight i c *
      extendSignal (W.region i)
        (localOps i (restrictSignal (W.region i) signal)) c

/-- The denotational globally fused operator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/GloballyAnchoredWindowDiffusion/Variant44d8a0b04c7941712a7060b961405f55a69c0aab9617f6bb9325e03074981be1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/GloballyAnchoredWindowDiffusion/Variant44d8a0b04c7941712a7060b961405f55a69c0aab9617f6bb9325e03074981be1.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc692a531dff62465f8691cd98c74c86d7cf188f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
