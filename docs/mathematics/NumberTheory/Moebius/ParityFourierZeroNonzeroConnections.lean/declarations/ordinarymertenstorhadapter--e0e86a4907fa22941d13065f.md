# OrdinaryMertensToRHAdapter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ec399c27c03a6c9d60acb060d438daf77fc2340e5630cfa7cd3ec7d9b28793b",
  "kind": "structure",
  "lexical_name": "OrdinaryMertensToRHAdapter",
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
  "slug": "ordinarymertenstorhadapter--e0e86a4907fa22941d13065f",
  "source": {
    "blob": "593d5f49b9fcabbecd668f6adebada0720b6f8ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 234,
    "path": "GRWTSK/NumberTheory/Moebius/ParityFourierZeroNonzeroConnections.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e0e86a4907fa22941d13065fb81254b767f0027edea967af8c4391a5877eefb2",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ParityFourierZeroNonzeroConnections.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ec399c27c03a6c9d60acb060d438daf77fc2340e5630cfa7cd3ec7d9b28793b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure OrdinaryMertensToRHAdapter : Type where
  toRH :
    DyadicOrdinaryMertensSquareRootEnergy → _root_.RiemannHypothesis

/-! ## Nonzero-frequency sources -/

/-- Local Fourier/Gowers source profile specialized to the nonzero frequencies.

Average-in-endpoint statements remain insufficient until an every-endpoint or
matching aggregate theorem is supplied. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ParityFourierZeroNonzeroConnections.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ParityFourierZeroNonzeroConnections.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `593d5f49b9fcabbecd668f6adebada0720b6f8ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
