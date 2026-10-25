# coerceToSort?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b2bce115a336fb1e64c6c9f1cb70788d68f87adac05f79ec80d1bd5bb54c1fd",
  "kind": "def",
  "lexical_name": "coerceToSort?",
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
  "slug": "coercetosort--421c56c956b9f9457afa0519",
  "source": {
    "blob": "c7a2b06c76242f0801d3039092f2687477984745",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 122,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variantca14c0a5c8508a6156eaea881981c8cfe58714264cf8782a1c28ae0b56bf6bb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:421c56c956b9f9457afa0519a19203257aefae4c5461da15ff5e63c970ee9bc8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variantca14c0a5c8508a6156eaea881981c8cfe58714264cf8782a1c28ae0b56bf6bb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b2bce115a336fb1e64c6c9f1cb70788d68f87adac05f79ec80d1bd5bb54c1fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coerceToSort? (expr : Expr) : MetaM (Option Expr) := do
  -- constructing expression manually because mkAppM wouldn't assign universe mvars
  let α ← inferType expr
  let u ← getLevel α
  let v ← mkFreshLevelMVar
  let β ← mkFreshExprMVar (mkSort v)
  let .some inst ← trySynthInstance (mkApp2 (.const ``CoeSort [u,v]) α β) | return none
  let (expanded, _) ← expandCoe (mkApp4 (.const ``CoeSort.coe [u,v]) α β inst expr)
  unless (← whnf (← inferType expanded)).isSort do
    throwError m!"Failed to coerce{indentExpr expr}\nto a type: After applying `CoeSort.coe`, result is still not a type{indentExpr expanded}"
      ++ .hint' m!"This is often due to incorrect `CoeSort` instances; the synthesized instance was{indentExpr inst}"
  return expanded

/-- Return `some (m, α)` if `type` can be reduced to an application of the form `m α` using `[reducible]` transparency. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variantca14c0a5c8508a6156eaea881981c8cfe58714264cf8782a1c28ae0b56bf6bb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variantca14c0a5c8508a6156eaea881981c8cfe58714264cf8782a1c28ae0b56bf6bb1.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7a2b06c76242f0801d3039092f2687477984745` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
