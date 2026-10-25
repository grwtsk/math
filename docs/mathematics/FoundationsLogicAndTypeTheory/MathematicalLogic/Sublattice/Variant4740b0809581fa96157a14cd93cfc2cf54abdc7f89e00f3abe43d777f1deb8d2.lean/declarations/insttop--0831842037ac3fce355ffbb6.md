# instTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e6952b4f628eddf72d76bdf1c685daa0094bd0c53c31687dec12552f8535d44",
  "kind": "instance",
  "lexical_name": "instTop",
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
  "slug": "insttop--0831842037ac3fce355ffbb6",
  "source": {
    "blob": "54fe5a82eb4cdd4b3398e9bcc6c3ccaf5bbe584b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 132,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sublattice/Variant4740b0809581fa96157a14cd93cfc2cf54abdc7f89e00f3abe43d777f1deb8d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0831842037ac3fce355ffbb6806b78c21b694cfbd6b8550f83c93a8075feae56",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sublattice/Variant4740b0809581fa96157a14cd93cfc2cf54abdc7f89e00f3abe43d777f1deb8d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e6952b4f628eddf72d76bdf1c685daa0094bd0c53c31687dec12552f8535d44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instTop : Top (Sublattice α) where
  top.carrier := univ
  top.supClosed' := supClosed_univ
  top.infClosed' := infClosed_univ

/-- The empty sublattice of a lattice. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sublattice/Variant4740b0809581fa96157a14cd93cfc2cf54abdc7f89e00f3abe43d777f1deb8d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sublattice/Variant4740b0809581fa96157a14cd93cfc2cf54abdc7f89e00f3abe43d777f1deb8d2.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54fe5a82eb4cdd4b3398e9bcc6c3ccaf5bbe584b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
