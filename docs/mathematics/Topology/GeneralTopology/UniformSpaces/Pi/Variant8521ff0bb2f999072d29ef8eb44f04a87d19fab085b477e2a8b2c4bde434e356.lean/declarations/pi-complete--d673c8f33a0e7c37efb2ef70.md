# Pi.complete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc0b7b62089ce4360a9790e6a78dace73a8e27dea4e25241fbacecca4e1904c4",
  "kind": "instance",
  "lexical_name": "Pi.complete",
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
  "slug": "pi-complete--d673c8f33a0e7c37efb2ef70",
  "source": {
    "blob": "132ac49b25b5c5558a173eacad5d8d8967610e1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 109,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Pi/Variant8521ff0bb2f999072d29ef8eb44f04a87d19fab085b477e2a8b2c4bde434e356.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d673c8f33a0e7c37efb2ef70cb5ad68f532df744c8a86c21aae04f49c20c2750",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Pi/Variant8521ff0bb2f999072d29ef8eb44f04a87d19fab085b477e2a8b2c4bde434e356.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc0b7b62089ce4360a9790e6a78dace73a8e27dea4e25241fbacecca4e1904c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Pi.complete [∀ i, CompleteSpace (α i)] : CompleteSpace (∀ i, α i) where
  complete {f} hf := by
    have := hf.1
    simp_rw [cauchy_pi_iff', cauchy_iff_exists_le_nhds] at hf
    choose x hx using hf
    use x
    rwa [nhds_pi, le_pi]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Pi/Variant8521ff0bb2f999072d29ef8eb44f04a87d19fab085b477e2a8b2c4bde434e356.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Pi/Variant8521ff0bb2f999072d29ef8eb44f04a87d19fab085b477e2a8b2c4bde434e356.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `132ac49b25b5c5558a173eacad5d8d8967610e1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
