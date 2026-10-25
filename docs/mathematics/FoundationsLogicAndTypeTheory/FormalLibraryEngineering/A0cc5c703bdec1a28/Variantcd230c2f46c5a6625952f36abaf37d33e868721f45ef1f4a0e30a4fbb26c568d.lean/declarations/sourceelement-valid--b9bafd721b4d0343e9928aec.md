# SourceElement.Valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7386088abd659f4393d1bceab3671b7c5d3d13f08d52bd5826fb57f7d2b51fed",
  "kind": "def",
  "lexical_name": "SourceElement.Valid",
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
  "slug": "sourceelement-valid--b9bafd721b4d0343e9928aec",
  "source": {
    "blob": "c68e777871e56b42e0058644d5bd47f70b8c03c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 17,
    "line": 13,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A0cc5c703bdec1a28/Variantcd230c2f46c5a6625952f36abaf37d33e868721f45ef1f4a0e30a4fbb26c568d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9bafd721b4d0343e9928aec9d906247eb7e018ae6fe890f20f33eb2e1a32953",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A0cc5c703bdec1a28/Variantcd230c2f46c5a6625952f36abaf37d33e868721f45ef1f4a0e30a4fbb26c568d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7386088abd659f4393d1bceab3671b7c5d3d13f08d52bd5826fb57f7d2b51fed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–17.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SourceElement.Valid (element : SourceElement) : Prop :=
  element.id.Valid ∧ element.commands.size > 0 ∧ element.probeValidated = true ∧
    element.barriers.all (fun barrier ↦ barrier.state != .unresolved) = true

end Mathematics.Element
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A0cc5c703bdec1a28/Variantcd230c2f46c5a6625952f36abaf37d33e868721f45ef1f4a0e30a4fbb26c568d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A0cc5c703bdec1a28/Variantcd230c2f46c5a6625952f36abaf37d33e868721f45ef1f4a0e30a4fbb26c568d.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c68e777871e56b42e0058644d5bd47f70b8c03c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
