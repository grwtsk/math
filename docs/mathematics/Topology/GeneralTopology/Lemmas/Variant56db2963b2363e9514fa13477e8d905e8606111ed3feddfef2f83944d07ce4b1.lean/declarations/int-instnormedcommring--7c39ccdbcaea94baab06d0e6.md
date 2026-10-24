# Int.instNormedCommRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d4eae940d26b68604568eee928aa7e4ee71af8590df07b50f947d34bd2e76550",
  "kind": "instance",
  "lexical_name": "Int.instNormedCommRing",
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
  "slug": "int-instnormedcommring--7c39ccdbcaea94baab06d0e6",
  "source": {
    "blob": "b53364ecfaad1e515142b03cb51d946897adfc8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 208,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c39ccdbcaea94baab06d0e6ada431db2af53cbafa4417624e3c8ef54c2f578b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d4eae940d26b68604568eee928aa7e4ee71af8590df07b50f947d34bd2e76550`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Int.instNormedCommRing : NormedCommRing ℤ where
  __ := instCommRing
  __ := instNormedAddCommGroup
  norm_mul_le m n := by simp only [norm, Int.cast_mul, abs_mul, le_rfl]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant56db2963b2363e9514fa13477e8d905e8606111ed3feddfef2f83944d07ce4b1.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b53364ecfaad1e515142b03cb51d946897adfc8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
