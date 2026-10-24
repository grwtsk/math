# LocallyLipschitz

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a002abd137daabf9f3f7af1f97b8c4e41e68238d6a0306416153bb084577adb5",
  "kind": "def",
  "lexical_name": "LocallyLipschitz",
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
  "slug": "locallylipschitz--c493f40df3a0bd55af125294",
  "source": {
    "blob": "3cda21f452976f8889755209e29428dadc9f10f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 70,
    "path": "GRWTSK/Topology/GeneralTopology/Lipschitz/Variant54a1d16cffa458c6d96f6821df391a3a2164be4a2df4a21fa36c6a79951d58ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c493f40df3a0bd55af1252941f51cf801b2b8bd26b85cece009d4b8a5c895dc3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lipschitz/Variant54a1d16cffa458c6d96f6821df391a3a2164be4a2df4a21fa36c6a79951d58ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a002abd137daabf9f3f7af1f97b8c4e41e68238d6a0306416153bb084577adb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LocallyLipschitz (f : α → β) : Prop := ∀ x, ∃ K, ∃ t ∈ 𝓝 x, LipschitzOnWith K f t

/-- `f : α → β` is called **locally Lipschitz continuous** on `s` iff every point `x` of `s`
has a neighbourhood within `s` on which `f` is Lipschitz. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lipschitz/Variant54a1d16cffa458c6d96f6821df391a3a2164be4a2df4a21fa36c6a79951d58ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lipschitz/Variant54a1d16cffa458c6d96f6821df391a3a2164be4a2df4a21fa36c6a79951d58ca.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cda21f452976f8889755209e29428dadc9f10f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
