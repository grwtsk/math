# existsAndEqCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b6ad77d8312e244ea861e87f5b12a54bd63aed7c320686f6a8ed5fd05658081b",
  "kind": "def",
  "lexical_name": "existsAndEqCore",
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
  "slug": "existsandeqcore--45202f9ef68d4e720b6b4b0f",
  "source": {
    "blob": "35b2a2071b9d3b88e9247b3ac0e2bfdb0ed43f60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 345,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExistsAndEq/Variant35f2d258e5c11d2f6e361da8a617ea8d55062467e9ec8d8637c266bd82958bd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:45202f9ef68d4e720b6b4b0f03c38d2e95d76834bd4322f5863ec07ce14fe09a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExistsAndEq/Variant35f2d258e5c11d2f6e361da8a617ea8d55062467e9ec8d8637c266bd82958bd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b6ad77d8312e244ea861e87f5b12a54bd63aed7c320686f6a8ed5fd05658081b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def existsAndEqCore (e : Expr) : MetaM Simp.Step := do
  let_expr f@Exists α p := e | return .continue
  lambdaBoundedTelescope p 1 fun xs (body : Q(Prop)) => do
    let some u := f.constLevels![0]? | unreachable!
    have α : Q(Sort $u) := α; have p : Q($α → Prop) := p
    let some (a : Q($α)) := xs[0]? | return .continue
    let some path ← findEqPath a body | return .continue
    let (fvars, lctx, newBody, a') ← findEq a body path
    let newBody := newBody.replaceFVar a a'
    withLCtx' lctx do
      let P' : Q(Prop) ← mkNestedExists fvars newBody
      let pfBeforeAfter : Q((∃ a, $p a) → $P') ← mkBeforeToAfter fvars path
      let pfAfterBefore : Q($P' → (∃ a, $p a)) ← mkAfterToBefore a' fvars path
      let pf := q(propext ⟨$pfBeforeAfter, $pfAfterBefore⟩)
      return .visit <| Simp.ResultQ.mk _ <| some q($pf)

/-- Triggers at goals of the form `∃ a, body` and checks if `body` allows a single value `a'`
for `a`. If so, replaces `a` with `a'` and removes quantifier.

It looks through nested quantifiers and conjunctions searching for a `a = a'`
or `a' = a` subexpression. -/
simproc ↓ existsAndEq (Exists _) := fun e => withAbstractMVars e existsAndEqCore

end ExistsAndEq

export ExistsAndEq (existsAndEq)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExistsAndEq/Variant35f2d258e5c11d2f6e361da8a617ea8d55062467e9ec8d8637c266bd82958bd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExistsAndEq/Variant35f2d258e5c11d2f6e361da8a617ea8d55062467e9ec8d8637c266bd82958bd7.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35b2a2071b9d3b88e9247b3ac0e2bfdb0ed43f60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
