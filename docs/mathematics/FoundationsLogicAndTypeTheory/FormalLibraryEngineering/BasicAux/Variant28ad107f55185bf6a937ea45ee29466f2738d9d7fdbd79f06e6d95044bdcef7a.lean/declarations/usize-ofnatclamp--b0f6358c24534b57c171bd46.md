# USize.ofNatClamp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cfb0f8d47dbaef1c82bd09daec76791d4cfe1eeb7874599f0c08728255326337",
  "kind": "def",
  "lexical_name": "USize.ofNatClamp",
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
  "slug": "usize-ofnatclamp--b0f6358c24534b57c171bd46",
  "source": {
    "blob": "59e640b45f328b4820de1fefa134541279ee18e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 367,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BasicAux/Variant28ad107f55185bf6a937ea45ee29466f2738d9d7fdbd79f06e6d95044bdcef7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b0f6358c24534b57c171bd46c7721da184f542ac9cfd1150b0fdc9e191cc089b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BasicAux/Variant28ad107f55185bf6a937ea45ee29466f2738d9d7fdbd79f06e6d95044bdcef7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cfb0f8d47dbaef1c82bd09daec76791d4cfe1eeb7874599f0c08728255326337`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 367–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def USize.ofNatClamp (n : Nat) : USize :=
  if h : n < USize.size then
    USize.ofNatLT n h
  else
    USize.ofNatLT (USize.size - 1) (Nat.pred_lt (Nat.ne_zero_of_lt USize.size_pos))

@[inherit_doc USize.ofNatClamp, deprecated USize.ofNatClamp (since := "2026-05-04")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BasicAux/Variant28ad107f55185bf6a937ea45ee29466f2738d9d7fdbd79f06e6d95044bdcef7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BasicAux/Variant28ad107f55185bf6a937ea45ee29466f2738d9d7fdbd79f06e6d95044bdcef7a.lean#L367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59e640b45f328b4820de1fefa134541279ee18e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
