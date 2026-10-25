# Declaration.getTopLevelNames

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c3c0149d92e55ac374649e1cc6fa08c3738c2c65a04df3f2be8dc60b11c06bb4",
  "kind": "def",
  "lexical_name": "Declaration.getTopLevelNames",
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
  "slug": "declaration-gettoplevelnames--ddebc242af43c44d654d2040",
  "source": {
    "blob": "52a32d4fdeae1fe12e46cd46a1635420a3b62195",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 212,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantfcb928c1686f0655279a790f92bd61f8c0d6df3be51a5eccaa2880de058e5e24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ddebc242af43c44d654d20406870c95a6788cff48a142e366300c59ec28f2957",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantfcb928c1686f0655279a790f92bd61f8c0d6df3be51a5eccaa2880de058e5e24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c3c0149d92e55ac374649e1cc6fa08c3738c2c65a04df3f2be8dc60b11c06bb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Declaration.getTopLevelNames : Declaration → List Name
  | .axiomDecl val          => [val.name]
  | .defnDecl val           => [val.name]
  | .thmDecl val            => [val.name]
  | .opaqueDecl val         => [val.name]
  | .quotDecl               => [``Quot]
  | .mutualDefnDecl defns   => defns.map (·.name)
  | .inductDecl _ _ types _ => types.map (·.name)

/--
Returns all names to be defined by adding this declaration to the environment. This does not include
auxiliary definitions such as projections added by the elaborator, nor auxiliary recursors computed
by the kernel for nested inductive types.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantfcb928c1686f0655279a790f92bd61f8c0d6df3be51a5eccaa2880de058e5e24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantfcb928c1686f0655279a790f92bd61f8c0d6df3be51a5eccaa2880de058e5e24.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52a32d4fdeae1fe12e46cd46a1635420a3b62195` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
