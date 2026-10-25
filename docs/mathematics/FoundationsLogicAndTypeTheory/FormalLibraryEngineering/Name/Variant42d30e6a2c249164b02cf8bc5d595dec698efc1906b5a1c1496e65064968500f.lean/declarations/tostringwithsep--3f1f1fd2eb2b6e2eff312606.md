# toStringWithSep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af1426b154edcba7c5ce61ee60a76eba430bdebbc252ba2cc4c7b87b2c6bff22",
  "kind": "def",
  "lexical_name": "toStringWithSep",
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
  "slug": "tostringwithsep--3f1f1fd2eb2b6e2eff312606",
  "source": {
    "blob": "3495478f2a130107d07afac424a31487dfe5021b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Name/Variant42d30e6a2c249164b02cf8bc5d595dec698efc1906b5a1c1496e65064968500f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f1f1fd2eb2b6e2eff312606edcc9838ffce665a79d15a97cb463c98351b3919",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Name/Variant42d30e6a2c249164b02cf8bc5d595dec698efc1906b5a1c1496e65064968500f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af1426b154edcba7c5ce61ee60a76eba430bdebbc252ba2cc4c7b87b2c6bff22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toStringWithSep (n : Name) (isToken : String → Bool := fun _ => false) : String :=
  match n with
  | anonymous       => "[anonymous]"
  | str anonymous s => maybeEscape s (isToken s)
  | num anonymous v => toString v
  | str n s         =>
    -- Escape the last component if the identifier would otherwise be a token
    let r := toStringWithSep n isToken
    let r' := r ++ sep ++ (maybeEscape s false)
    if escape && isToken r' then r ++ sep ++ (maybeEscape s true) else r'
  | num n v         => toStringWithSep n (isToken := fun _ => false) ++ sep ++ Nat.repr v
where
  maybeEscape s force := if escape then escapePart s force |>.getD s else s

/--
Converts a name to a string.

- If `escape` is `true`, then escapes name components using `«` and `»` to ensure that
  those names that can appear in source files round trip.
  Names with number components, anonymous names, and names containing `»` might not round trip.
  Furthermore, "pseudo-syntax" produced by the delaborator, such as `_`, `#0` or `?u`, is not escaped.
- The optional `isToken` function is used when `escape` is `true` to determine whether more
  escaping is necessary to avoid parser tokens.
  The insertion algorithm works so long as parser tokens do not themselves contain `«` or `»`.
-/
-- If you change this, also change the corresponding function in `Init.Meta`.
@[specialize]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Name/Variant42d30e6a2c249164b02cf8bc5d595dec698efc1906b5a1c1496e65064968500f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Name/Variant42d30e6a2c249164b02cf8bc5d595dec698efc1906b5a1c1496e65064968500f.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3495478f2a130107d07afac424a31487dfe5021b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
