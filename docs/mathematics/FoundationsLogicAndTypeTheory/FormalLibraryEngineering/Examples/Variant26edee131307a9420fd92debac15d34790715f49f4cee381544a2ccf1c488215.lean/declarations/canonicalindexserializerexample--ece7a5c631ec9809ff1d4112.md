# canonicalIndexSerializerExample

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eae2dce9b24f3a9b48b9cb468e8a0939a9ed60bfd2ec61dbc9b16d1bd44ae641",
  "kind": "def",
  "lexical_name": "canonicalIndexSerializerExample",
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
  "slug": "canonicalindexserializerexample--ece7a5c631ec9809ff1d4112",
  "source": {
    "blob": "bfe230e48b45e9ec78a4d1a244908dd9c376aa25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 798,
    "line": 783,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variant26edee131307a9420fd92debac15d34790715f49f4cee381544a2ccf1c488215.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ece7a5c631ec9809ff1d41126e37c6b522cd3db36e2bf512bbb31f2a9742ec3a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variant26edee131307a9420fd92debac15d34790715f49f4cee381544a2ccf1c488215.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eae2dce9b24f3a9b48b9cb468e8a0939a9ed60bfd2ec61dbc9b16d1bd44ae641`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 783–798.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def canonicalIndexSerializerExample : CanonicalIndexSerializer :=
  { normalize := fun _ => canonicalIndexSnapshotExample
    encode := fun _ => ByteArray.empty
    digest := fun _ =>
      ⟨"sha256:e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"⟩
    normalized := fun index =>
      index = canonicalIndexSnapshotExample ∧ index.Valid
    normalize_normalized := by
      intro _
      exact ⟨rfl, canonicalIndexSnapshotExample_valid⟩
    deterministic := by
      intro left right same
      cases same
      rfl }

/-- Exact concrete representation certificate from normalization through digest. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variant26edee131307a9420fd92debac15d34790715f49f4cee381544a2ccf1c488215.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variant26edee131307a9420fd92debac15d34790715f49f4cee381544a2ccf1c488215.lean#L783).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfe230e48b45e9ec78a4d1a244908dd9c376aa25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
