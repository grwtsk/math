# consumeImplicitPrefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99017c979c6ae6d28458aea58107a877eb043ef01cad54db3e3e11a1f5a9a6ee",
  "kind": "def",
  "lexical_name": "consumeImplicitPrefix",
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
  "slug": "consumeimplicitprefix--69356ab90762156fe707a9be",
  "source": {
    "blob": "6afccaa8e5087b2b11d9067c52d8f35b32cf6ecb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 17,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionResolution/Variant483db5840fa22a557390e2fcbe7914c8f2a1c0aa4d515567d2f5e9b38b87d76f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69356ab90762156fe707a9be27ff84adf65c7133c755f644f3a9dd1bc4829013",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionResolution/Variant483db5840fa22a557390e2fcbe7914c8f2a1c0aa4d515567d2f5e9b38b87d76f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99017c979c6ae6d28458aea58107a877eb043ef01cad54db3e3e11a1f5a9a6ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def consumeImplicitPrefix (e : Expr) (k : Expr → MetaM α) : MetaM α := do
  match e with
  | Expr.forallE n d b c =>
    -- We do not consume instance implicit arguments because the user probably wants be aware of this dependency
    if c == .implicit then
      Meta.withLocalDecl n c d fun arg =>
        consumeImplicitPrefix (b.instantiate1 arg) k
    else
      k e
  | _ => k e

/--
Fills the `CompletionItem.detail?` field of `item` using the pretty-printed type identified by `id`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionResolution/Variant483db5840fa22a557390e2fcbe7914c8f2a1c0aa4d515567d2f5e9b38b87d76f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionResolution/Variant483db5840fa22a557390e2fcbe7914c8f2a1c0aa4d515567d2f5e9b38b87d76f.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6afccaa8e5087b2b11d9067c52d8f35b32cf6ecb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
