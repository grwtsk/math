# actualMangoldtHalfWindowSeven

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88cff7fa1a9b76d5ba71f05dce3747c707a9568e10f89e05d5fb4dcb19d07d3e",
  "kind": "def",
  "lexical_name": "actualMangoldtHalfWindowSeven",
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
  "slug": "actualmangoldthalfwindowseven--55058ddf2dd1e27a39c3222e",
  "source": {
    "blob": "d67828f534b9473de280816c4ad8bd4fbd84ad56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 27,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiHalfFiniteReadout/Variant0a5a2e8af4574554f5e4c5ed95bd6d7ff226e7fe060b1f55d611855d8665ac0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:55058ddf2dd1e27a39c3222e40d36e76640f976cb726655a8b4719ec00293770",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiHalfFiniteReadout/Variant0a5a2e8af4574554f5e4c5ed95bd6d7ff226e7fe060b1f55d611855d8665ac0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88cff7fa1a9b76d5ba71f05dce3747c707a9568e10f89e05d5fb4dcb19d07d3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualMangoldtHalfWindowSeven (Y : ℝ) : ℝ :=
  ∑ n ∈ Finset.Ioc 7 (Nat.floor Y), (vonMangoldt n : ℝ) / Real.sqrt (n : ℝ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiHalfFiniteReadout/Variant0a5a2e8af4574554f5e4c5ed95bd6d7ff226e7fe060b1f55d611855d8665ac0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiHalfFiniteReadout/Variant0a5a2e8af4574554f5e4c5ed95bd6d7ff226e7fe060b1f55d611855d8665ac0f.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d67828f534b9473de280816c4ad8bd4fbd84ad56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
