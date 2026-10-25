# letTelescopeImpl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee59b3b80d9cb64a7f85bda8bfdb4744bccebb8e7488e203a5c52f6aa822d000",
  "kind": "def",
  "lexical_name": "letTelescopeImpl",
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
  "slug": "lettelescopeimpl--6ef5ca1cb097c8cdfd76743a",
  "source": {
    "blob": "cc0e123384fe9c1326ea22bf25ef5cfc86d36aeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToBatteries/Variantb2454ebc23d54c8def4b6bdf11d8d21b8edf2e45c9395a59f144ab8670cb1efd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6ef5ca1cb097c8cdfd76743a57f8962228bb3444a5dce49b91bb7b588c39aaee",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToBatteries/Variantb2454ebc23d54c8def4b6bdf11d8d21b8edf2e45c9395a59f144ab8670cb1efd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee59b3b80d9cb64a7f85bda8bfdb4744bccebb8e7488e203a5c52f6aa822d000`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def letTelescopeImpl {α} (e : Expr) (k : Array Expr → Expr → MetaM α) :
    MetaM α :=
  lambdaLetTelescope e fun xs b ↦ do
    if let .some i ← xs.findIdxM? (fun x ↦ do pure !(← x.fvarId!.isLetVar)) then
      k xs[0:i] (← mkLambdaFVars xs[i:] b)
    else
      k xs b

/-- Telescope consuming only let bindings -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToBatteries/Variantb2454ebc23d54c8def4b6bdf11d8d21b8edf2e45c9395a59f144ab8670cb1efd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToBatteries/Variantb2454ebc23d54c8def4b6bdf11d8d21b8edf2e45c9395a59f144ab8670cb1efd.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc0e123384fe9c1326ea22bf25ef5cfc86d36aeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
