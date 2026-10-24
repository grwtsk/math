# CellPartitionCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34f783a892b9e18dba3dca76683c41e4c7d9541fa89ee0200c72cb0422da05d4",
  "kind": "structure",
  "lexical_name": "CellPartitionCertificate",
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
  "slug": "cellpartitioncertificate--16f8a41fb649bd38ae98e640",
  "source": {
    "blob": "27a201609f53d73f6b0b1e45ff0e9d89634281d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 18,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Refinement/Variant266a865b8bbdc92f786e5611f9c8e8f56d584735b05593a6b1844ac3d830c968.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:16f8a41fb649bd38ae98e640496f7b437cd20bf1d6e0ee63abf4da44ff791e08",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Refinement/Variant266a865b8bbdc92f786e5611f9c8e8f56d584735b05593a6b1844ac3d830c968.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34f783a892b9e18dba3dca76683c41e4c7d9541fa89ee0200c72cb0422da05d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CellPartitionCertificate
    (xi : ℂ → ℂ)
    (parent : AnalyticCell) where
  Child : Type uChild
  childFintype : Fintype Child
  childDecEq : DecidableEq Child
  child : Child → AnalyticCell
  nonempty : Nonempty Child
  coversInterior :
    ∀ z,
      z ∈ parent.interior ↔
        ∃ index,
          z ∈ (child index).interior
  pairwiseDisjointInteriors :
    PairwiseDisjointInteriors child
  internalBoundariesZeroFree :
    ∀ index,
      BoundaryZeroFreeCertificate xi
        (child index)

attribute [instance]
  CellPartitionCertificate.childFintype
  CellPartitionCertificate.childDecEq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Refinement/Variant266a865b8bbdc92f786e5611f9c8e8f56d584735b05593a6b1844ac3d830c968.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Refinement/Variant266a865b8bbdc92f786e5611f9c8e8f56d584735b05593a6b1844ac3d830c968.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27a201609f53d73f6b0b1e45ff0e9d89634281d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
