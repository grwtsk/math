# simpTheoremsOfNames

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ddde3339455e20138809d874e92b9af2ee84a6c01d39368e4f2f45e4077d368",
  "kind": "def",
  "lexical_name": "simpTheoremsOfNames",
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
  "slug": "simptheoremsofnames--5418c98f397ea656a253dba1",
  "source": {
    "blob": "64be566a136b59ddf3f98dd9d752d398ccbe8531",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 185,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant6bdc9dab5954eab5487c6f99c22e9a3a90b49e0804b038b90146e147ba3226f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5418c98f397ea656a253dba156c12375d324b6e8bfd1e2a6964cbd13d899455c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant6bdc9dab5954eab5487c6f99c22e9a3a90b49e0804b038b90146e147ba3226f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0ddde3339455e20138809d874e92b9af2ee84a6c01d39368e4f2f45e4077d368`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def simpTheoremsOfNames (lemmas : List Name := []) (simpOnly : Bool := false) :
    MetaM SimpTheorems := do
  lemmas.foldlM (·.addConst ·)
    (if simpOnly then
      ← simpOnlyBuiltins.foldlM (·.addConst ·) {}
    else
      ← getSimpTheorems)

-- TODO We need to write a `mkSimpContext` in `MetaM`
-- that supports all the bells and whistles in `simp`.
-- It should generalize this, and another partial implementation in `Tactic.Simps.Basic`.

/-- Construct a `Simp.Context` from a list of names. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant6bdc9dab5954eab5487c6f99c22e9a3a90b49e0804b038b90146e147ba3226f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant6bdc9dab5954eab5487c6f99c22e9a3a90b49e0804b038b90146e147ba3226f4.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64be566a136b59ddf3f98dd9d752d398ccbe8531` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
