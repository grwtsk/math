# diracProbaInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02ec8bbaedc0fde0f3b1d09b1bee363937b422ac02eb8c17b1ef8665a3c47b6f",
  "kind": "def",
  "lexical_name": "diracProbaInverse",
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
  "slug": "diracprobainverse--6912d146b8e1bc9eefdefde7",
  "source": {
    "blob": "45d512a1a20b2bd016de2c132e19daa96d384fd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 130,
    "path": "GRWTSK/Topology/GeneralTopology/DiracProba/Variant7a9c8727836bf075001a4e71e827353a58a565db9b6e3f4d3018a32122064a68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6912d146b8e1bc9eefdefde741546136cccf04f1148ea65a58a80020fd369ea2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DiracProba/Variant7a9c8727836bf075001a4e71e827353a58a565db9b6e3f4d3018a32122064a68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:02ec8bbaedc0fde0f3b1d09b1bee363937b422ac02eb8c17b1ef8665a3c47b6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def diracProbaInverse : range (diracProba (X := X)) → X :=
  fun μ' ↦ (mem_range.mp μ'.prop).choose

-- We redeclare `X` here to temporarily avoid the `[TopologicalSpace X]` instance.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DiracProba/Variant7a9c8727836bf075001a4e71e827353a58a565db9b6e3f4d3018a32122064a68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DiracProba/Variant7a9c8727836bf075001a4e71e827353a58a565db9b6e3f4d3018a32122064a68.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45d512a1a20b2bd016de2c132e19daa96d384fd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
