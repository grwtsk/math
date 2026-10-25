# registerGetUnfoldEqnFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1201bb27d0078f5dfe17cad21c9da1621ca6f4662c5a4bc2b197489086f50478",
  "kind": "def",
  "lexical_name": "registerGetUnfoldEqnFn",
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
  "slug": "registergetunfoldeqnfn--ec661ebde959661925fb0177",
  "source": {
    "blob": "33afd444b5f81a8226b888c484f9dfe0f948ca6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 310,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Varianta2ecf1775c6ef9561bdb336b59a0afa2aff193ebee5214e8491346ab863a2a32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec661ebde959661925fb0177e47e2aeafd9217bc716cff2ce16e512738d9c2aa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Varianta2ecf1775c6ef9561bdb336b59a0afa2aff193ebee5214e8491346ab863a2a32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1201bb27d0078f5dfe17cad21c9da1621ca6f4662c5a4bc2b197489086f50478`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def registerGetUnfoldEqnFn (f : GetUnfoldEqnFn) : IO Unit := do
  unless (← initializing) do
    throw (IO.userError "failed to register equation getter, this kind of extension can only be registered during initialization")
  getUnfoldEqnFnsRef.modify (f :: ·)

/--
Returns an "unfold" theorem (`f.eq_def`) for the given declaration.
By default, we do not create unfold theorems for nonrecursive definitions.
You can use `nonRec := true` to override this behavior.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Varianta2ecf1775c6ef9561bdb336b59a0afa2aff193ebee5214e8491346ab863a2a32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Varianta2ecf1775c6ef9561bdb336b59a0afa2aff193ebee5214e8491346ab863a2a32.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33afd444b5f81a8226b888c484f9dfe0f948ca6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
