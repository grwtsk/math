# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f477c4d1ee0369604690357c6dffee1fb269dfb5960054139338aa749d683091",
  "kind": "builtin_initialize",
  "lexical_name": null,
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
  "slug": "builtin-initialize--11be4641a5f80f67c5b0255c",
  "source": {
    "blob": "dc22ec5dd0315225ce106d3c8c1185aa21b327a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 216,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant341d6b21f22295a1ceb622b6df5b47ff99a5aebb010f62f5092ae1c2db00380b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:11be4641a5f80f67c5b0255cd7b0a83bb2cce9c533636b619f6ab00358848eba",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant341d6b21f22295a1ceb622b6df5b47ff99a5aebb010f62f5092ae1c2db00380b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f477c4d1ee0369604690357c6dffee1fb269dfb5960054139338aa749d683091`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
builtin_initialize
  registerBuiltinAttribute {
    name  := `induction_eliminator
    descr := "custom `rec`-like eliminator for the `induction` tactic"
    add   := fun declName _ attrKind => do
      discard <| addCustomEliminator declName attrKind (induction := true) |>.run {} {}
  }

/--
Registers a custom eliminator for the `cases` tactic.

Whenever the types of the targets in an `cases` call matches a custom eliminator, it is used
instead of the `casesOn` eliminator. This can be useful for redefining the default eliminator to a
more useful one.

Example:
```lean example
structure Three where
  val : Fin 3

example (x : Three) (p : Three → Prop) : p x := by
  cases x
  -- val : Fin 3 ⊢ p ⟨val⟩

@[cases_eliminator, elab_as_elim]
def Three.myRec {motive : Three → Sort u}
    (zero : motive ⟨0⟩) (one : motive ⟨1⟩) (two : motive ⟨2⟩) :
    ∀ x, motive x
  | ⟨0⟩ => zero | ⟨1⟩ => one | ⟨2⟩ => two

example (x : Three) (p : Three → Prop) : p x := by
  cases x
  -- ⊢ p ⟨0⟩
  -- ⊢ p ⟨1⟩
  -- ⊢ p ⟨2⟩
```

`@[induction_eliminator]` works similarly for the `induction` tactic.
-/
@[builtin_doc]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant341d6b21f22295a1ceb622b6df5b47ff99a5aebb010f62f5092ae1c2db00380b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant341d6b21f22295a1ceb622b6df5b47ff99a5aebb010f62f5092ae1c2db00380b.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc22ec5dd0315225ce106d3c8c1185aa21b327a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
