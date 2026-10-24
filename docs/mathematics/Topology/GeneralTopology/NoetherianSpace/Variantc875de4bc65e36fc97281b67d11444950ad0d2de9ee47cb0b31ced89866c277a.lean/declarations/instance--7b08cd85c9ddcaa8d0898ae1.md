# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50ddb997ffda00ee90218af65f6a704e665c6040e27eec21e639ee4d9f4c2f0b",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--7b08cd85c9ddcaa8d0898ae1",
  "source": {
    "blob": "fb4b2f547532ff6a01ed6cf3618f0e8dcc960b5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 67,
    "path": "GRWTSK/Topology/GeneralTopology/NoetherianSpace/Variantc875de4bc65e36fc97281b67d11444950ad0d2de9ee47cb0b31ced89866c277a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b08cd85c9ddcaa8d0898ae13aff5a8af4187323a482c3ad2b5f8616ce4fc5bf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NoetherianSpace/Variantc875de4bc65e36fc97281b67d11444950ad0d2de9ee47cb0b31ced89866c277a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50ddb997ffda00ee90218af65f6a704e665c6040e27eec21e639ee4d9f4c2f0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) NoetherianSpace.compactSpace [h : NoetherianSpace α] : CompactSpace α :=
  ⟨(noetherianSpace_iff_opens α).mp h ⊤⟩

variable {α β}

/-- In a Noetherian space, all sets are compact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NoetherianSpace/Variantc875de4bc65e36fc97281b67d11444950ad0d2de9ee47cb0b31ced89866c277a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NoetherianSpace/Variantc875de4bc65e36fc97281b67d11444950ad0d2de9ee47cb0b31ced89866c277a.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb4b2f547532ff6a01ed6cf3618f0e8dcc960b5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
