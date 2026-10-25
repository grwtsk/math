# mkAnnotatedIdent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1da33dc6052413f5b37ff84f2a9660acaf25f8e03a69f3669aabec9e0196fbc8",
  "kind": "def",
  "lexical_name": "mkAnnotatedIdent",
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
  "slug": "mkannotatedident--482563e62595f31a6180bc44",
  "source": {
    "blob": "291d618e54e6b8ae7671e551b11d113825336ce1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 317,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf109b13153edb8c12b2bf86edf7b334b7b0a3f3d02b73a43a7a0f4d9d911544a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:482563e62595f31a6180bc44179e96a6f3eb120d7af59a92160de7224c3358ff",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf109b13153edb8c12b2bf86edf7b334b7b0a3f3d02b73a43a7a0f4d9d911544a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1da33dc6052413f5b37ff84f2a9660acaf25f8e03a69f3669aabec9e0196fbc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkAnnotatedIdent (n : Name) (e : Expr) : DelabM Ident := do
  let pos ← nextExtraPos
  let stx : Syntax := annotatePos pos (mkIdent n)
  addTermInfo pos stx e
  return ⟨stx⟩

/--
Enters the body of the current expression, which must be a lambda or forall.
The binding variable is passed to `d` as `Syntax`, and it is an identifier that has been annotated with the fvar expression
for the variable.

If `pp.safeShadowing` is true, then the name is allowed to shadow a name in the local context
if the name does not appear in the body or in the `avoid` set.
(The `avoid` set is assumed to be a subset of the names used by the local context.)

If `preserveName` is `false` (the default), gives the binder an unused name.
Otherwise, it tries to preserve the textual form of the name, preserving whether it is hygienic.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf109b13153edb8c12b2bf86edf7b334b7b0a3f3d02b73a43a7a0f4d9d911544a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf109b13153edb8c12b2bf86edf7b334b7b0a3f3d02b73a43a7a0f4d9d911544a.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `291d618e54e6b8ae7671e551b11d113825336ce1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
