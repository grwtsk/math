# Entries.addFVar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac2d123cdee2a3ce2053dc271f9e5c3e10b51d6ae34849f7994bb3d773f4d73b",
  "kind": "def",
  "lexical_name": "Entries.addFVar",
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
  "slug": "entries-addfvar--e7fd44991e6c533595bf2520",
  "source": {
    "blob": "602568f1498758ccd989769dc8aa40280d88206e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 173,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindPremises/Variant574c2af3dfb480d3683f41b43f427a16509130c39b03d856d231cb061947ce5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7fd44991e6c533595bf25200a41cfd5e4ca008eb218b60d82ec6c68d2371c50",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindPremises/Variant574c2af3dfb480d3683f41b43f427a16509130c39b03d856d231cb061947ce5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac2d123cdee2a3ce2053dc271f9e5c3e10b51d6ae34849f7994bb3d773f4d73b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Entries.addFVar (choice : Choice) (entries : Entries) (decl : LocalDecl) : MetaM Entries := do
  let (xs, _, e) ← forallMetaTelescopeReducing (← instantiateMVars decl.type)
  let mut { rw, grw, app, appAt } := entries
  -- apply
  if choice.app then
    app ← pushEntry app e ⟨.fvar decl.fvarId⟩
  -- apply at
  if choice.appAt then
    if let some x := xs.back? then
      let e ← inferType x
      appAt ← pushEntry appAt e ⟨.fvar decl.fvarId⟩
  -- rw
  if choice.rw then
    if let mkApp2 rel lhs rhs ← whnf e then
      if rel.getAppFn matches .const ``Iff _ | .const ``Eq _ then
        rw ← pushEntry rw lhs ⟨.fvar decl.fvarId, false⟩
        if !isMVarSwap lhs rhs then
          rw ← pushEntry rw rhs ⟨.fvar decl.fvarId, true⟩
  -- grw
  if choice.grw then
    if let mkApp2 rel lhs rhs := e.cleanupAnnotations then
      if let .const relName _ := rel.getAppFn then
        grw ← pushEntry grw lhs ⟨.fvar decl.fvarId, false, relName⟩
        grw ← pushEntry grw rhs ⟨.fvar decl.fvarId, true, relName⟩
  return { rw, grw, app, appAt }

/-- Structure used for constructing the root nodes of the 4 discrimination trees. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindPremises/Variant574c2af3dfb480d3683f41b43f427a16509130c39b03d856d231cb061947ce5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindPremises/Variant574c2af3dfb480d3683f41b43f427a16509130c39b03d856d231cb061947ce5a.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `602568f1498758ccd989769dc8aa40280d88206e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
