# reduceProjAndUnfold?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b14ee2edb4fb06e0a1001a02e41d83a5f3b9786added83615d2f573bde04b799",
  "kind": "def",
  "lexical_name": "reduceProjAndUnfold?",
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
  "slug": "reduceprojandunfold--61f7ced6fd97a41aa8322f34",
  "source": {
    "blob": "0e6b905cb03d35b0fd257d085eace49bb5f85fdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reduce/Variant66341c2dde2ad46763c0088d3ced172e86fda7989bc908f1bc3754261b3ad410.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:61f7ced6fd97a41aa8322f34917e143e44b56c8296ed79951d659ffb8311796a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reduce/Variant66341c2dde2ad46763c0088d3ced172e86fda7989bc908f1bc3754261b3ad410.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b14ee2edb4fb06e0a1001a02e41d83a5f3b9786added83615d2f573bde04b799`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def reduceProjAndUnfold? (e : Expr) : MetaM (Option Expr) := do
  let .proj _ idx s := e | return none
  let s' ← Lean.Meta.whnf s
  let some f ← Lean.Meta.projectCore? s' idx | return none
  if isSameExpr s s' then return some f else return some (← Sym.unfoldReducible f)

/--
Repeatedly reduces head redexes in `e`, cycling through the following reductions until
no further progress is made:

1. **Beta**: `(fun x₁ ... xₘ => b) a₁ ... aₙ` → `b[a₁/x₁, aₘ/xₘ] aₘ₊₁ ... aₙ`
2. **Iota**: `MyType.casesOn (MyType.ctor args) alts` → `altᵢ args`
   (matcher/recursor applied to a constructor, at reducible transparency)
3. **Proj-reduction**: `⟨a, b, c⟩.1` → `a` (kernel `.proj` nodes)
4. **Projection delta**: `Struct.field x` → `x.5` (unfolds projection *functions*,
   progress only if followed by proj-reduction)

Returns `none` when no reduction was possible. Maintains maximal sharing via `shareCommonInc`
and the SymM no-exposed-reducibles invariant.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reduce/Variant66341c2dde2ad46763c0088d3ced172e86fda7989bc908f1bc3754261b3ad410.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reduce/Variant66341c2dde2ad46763c0088d3ced172e86fda7989bc908f1bc3754261b3ad410.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e6b905cb03d35b0fd257d085eace49bb5f85fdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
