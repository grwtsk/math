# getMaxFVar?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:733409035ea4897e889863f7d2ada6d51d0c0f849bbefb90545f447f9cdd396e",
  "kind": "def",
  "lexical_name": "getMaxFVar?",
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
  "slug": "getmaxfvar--0da9a1d71e179f4cae7470f6",
  "source": {
    "blob": "930cbe4a4206ca0f7815529e4eba655ce64f98a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MaxFVar/Variant518e2bff2862d2f62c896626c855363ddb56df10f9eb681f0e7e7afaa0b23ca9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0da9a1d71e179f4cae7470f6d984074e2ec9b519eda2ced7e1d540d36d1e672d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MaxFVar/Variant518e2bff2862d2f62c896626c855363ddb56df10f9eb681f0e7e7afaa0b23ca9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:733409035ea4897e889863f7d2ada6d51d0c0f849bbefb90545f447f9cdd396e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getMaxFVar? (e : Expr) : SymM (Option FVarId) := do
  match e with
  | .fvar fvarId => return some fvarId
  | .const .. | .bvar .. | .sort .. | .lit .. => return none
  | .app f a => check e do max (← getMaxFVar? f) (← getMaxFVar? a)
  | .proj _ _ s => check e do getMaxFVar? s
  | .lam _ d b _ | .forallE _ d b _ => check e do max (← getMaxFVar? d) (← getMaxFVar? b)
  | .letE _ t v b _ => check e do max (← max (← getMaxFVar? t) (← getMaxFVar? v)) (← getMaxFVar? b)
  | .mdata _ e => check e do getMaxFVar? e
  | .mvar mvarId => check e do
    let mvarDecl ← mvarId.getDecl
    let lctx := mvarDecl.lctx
    if lctx.decls.isEmpty then return none
    let some last := lctx.lastDecl | unreachable! -- SymM local contexts do not have holes
    return some last.fvarId

end Lean.Meta.Sym
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MaxFVar/Variant518e2bff2862d2f62c896626c855363ddb56df10f9eb681f0e7e7afaa0b23ca9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MaxFVar/Variant518e2bff2862d2f62c896626c855363ddb56df10f9eb681f0e7e7afaa0b23ca9.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `930cbe4a4206ca0f7815529e4eba655ce64f98a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
