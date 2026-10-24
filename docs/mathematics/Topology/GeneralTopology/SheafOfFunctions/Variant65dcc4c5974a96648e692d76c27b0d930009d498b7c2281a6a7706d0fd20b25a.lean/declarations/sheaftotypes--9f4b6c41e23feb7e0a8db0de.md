# sheafToTypes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24539144101831859fbe9b788736c1311f362b93f2217a79afb7e582eea7120e",
  "kind": "def",
  "lexical_name": "sheafToTypes",
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
  "slug": "sheaftotypes--9f4b6c41e23feb7e0a8db0de",
  "source": {
    "blob": "b12b2922ac1ab5e6d65db74180bfa7c6c14a305e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 101,
    "path": "GRWTSK/Topology/GeneralTopology/SheafOfFunctions/Variant65dcc4c5974a96648e692d76c27b0d930009d498b7c2281a6a7706d0fd20b25a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f4b6c41e23feb7e0a8db0de4c82df8f1d2bc2544b6b87de0c43e6688ef6ba06",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SheafOfFunctions/Variant65dcc4c5974a96648e692d76c27b0d930009d498b7c2281a6a7706d0fd20b25a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24539144101831859fbe9b788736c1311f362b93f2217a79afb7e582eea7120e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sheafToTypes (T : X → Type*) : Sheaf (Type _) X :=
  ⟨presheafToTypes X T, Presheaf.toTypes_isSheaf _ _⟩

/-- The sheaf of not-necessarily-continuous functions on `X` with values in a type `T`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SheafOfFunctions/Variant65dcc4c5974a96648e692d76c27b0d930009d498b7c2281a6a7706d0fd20b25a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SheafOfFunctions/Variant65dcc4c5974a96648e692d76c27b0d930009d498b7c2281a6a7706d0fd20b25a.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b12b2922ac1ab5e6d65db74180bfa7c6c14a305e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
