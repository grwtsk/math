# typePriority

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7522e8c283c5536f8ba13c27bf11e633bbcf9f94fcb0b3af8fd2da855cd928f",
  "kind": "def",
  "lexical_name": "typePriority",
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
  "slug": "typepriority--610e5a0ca080c6c65ead8743",
  "source": {
    "blob": "3bbdd89daf17f8cff9a9a10ec08c3f3032b8c41c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 61,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attribute/Variant24030f6e5b6a83ed57c52e30f54360791a0fd6a27e5800cad8f12fb7023022d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:610e5a0ca080c6c65ead8743bb5f49acd9b6610cedca34a8617b3373c087da7e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attribute/Variant24030f6e5b6a83ed57c52e30f54360791a0fd6a27e5800cad8f12fb7023022d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7522e8c283c5536f8ba13c27bf11e633bbcf9f94fcb0b3af8fd2da855cd928f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def typePriority (decl : Lean.Name) (type : Lean.Expr) : MetaM Nat :=
  Lean.Meta.forallTelescope type fun xs t ↦ do
    checkResult t
    xs.foldlM (fun (t : Nat) x ↦ do return t + (← argPriority x)) 0
where
  /-- Score the type of argument `x` -/
  argPriority (x : Lean.Expr) : MetaM Nat := do
    hypPriority (← Lean.Meta.inferType x)
  /-- Insist that our conclusion is an inequality -/
  checkResult (t : Q(Prop)) : MetaM Unit := do match t with
    | ~q(@LE.le _ $i $a $b) => return ()
    | ~q(@LT.lt _ $i $a $b) => return ()
    | ~q(@GE.ge _ $i $b $a) => return ()
    | ~q(@GT.gt _ $i $b $a) => return ()
    | _ => throwError (f!"`{decl}` has invalid type `{type}` as a 'bound' lemma: \
                          it should be an inequality")

/-- Map a theorem decl to a score (0 means `norm apply`, `0 <` means `safe apply`) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attribute/Variant24030f6e5b6a83ed57c52e30f54360791a0fd6a27e5800cad8f12fb7023022d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attribute/Variant24030f6e5b6a83ed57c52e30f54360791a0fd6a27e5800cad8f12fb7023022d8.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bbdd89daf17f8cff9a9a10ec08c3f3032b8c41c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
