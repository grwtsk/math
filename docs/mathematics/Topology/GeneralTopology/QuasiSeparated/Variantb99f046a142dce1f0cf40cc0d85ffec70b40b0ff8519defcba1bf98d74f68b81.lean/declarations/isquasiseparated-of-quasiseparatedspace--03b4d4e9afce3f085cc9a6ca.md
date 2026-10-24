# IsQuasiSeparated.of_quasiSeparatedSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2bf66edf-d933-293d-ab58-354b11ce860c",
  "kind": "theorem",
  "lexical_name": "IsQuasiSeparated.of_quasiSeparatedSpace",
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
  "slug": "isquasiseparated-of-quasiseparatedspace--03b4d4e9afce3f085cc9a6ca",
  "source": {
    "blob": "3b8363dc1adf0bd064d073e722c54b24197d2b72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 131,
    "path": "GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variantb99f046a142dce1f0cf40cc0d85ffec70b40b0ff8519defcba1bf98d74f68b81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03b4d4e9afce3f085cc9a6cab12b4c40244705c7a0c028f46a2929e6f6d1a963",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/QuasiSeparated/Variantb99f046a142dce1f0cf40cc0d85ffec70b40b0ff8519defcba1bf98d74f68b81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bf66edf-d933-293d-ab58-354b11ce860c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsQuasiSeparated.of_quasiSeparatedSpace (s : Set α) [QuasiSeparatedSpace α] :
    IsQuasiSeparated s :=
  isQuasiSeparated_univ.of_subset (Set.subset_univ _)
#align is_quasi_separated.of_quasi_separated_space IsQuasiSeparated.of_quasiSeparatedSpace

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/QuasiSeparated/Variantb99f046a142dce1f0cf40cc0d85ffec70b40b0ff8519defcba1bf98d74f68b81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variantb99f046a142dce1f0cf40cc0d85ffec70b40b0ff8519defcba1bf98d74f68b81.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b8363dc1adf0bd064d073e722c54b24197d2b72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
