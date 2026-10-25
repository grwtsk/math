# simpHaveAndZetaUnused

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f0bef201cb2a152f75b8437d76e18277f9c31f032c7b956561198cca0c8d22e2",
  "kind": "def",
  "lexical_name": "simpHaveAndZetaUnused",
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
  "slug": "simphaveandzetaunused--fa1000d4054e75b1811370ed",
  "source": {
    "blob": "0ed2a6ee84d0cbc2c7a6a9017012c4bb4c314006",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 412,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant0dde26b193925cbcc4f9f285e5ecb1e746e8167bab6159538d08a4ad4d3032fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa1000d4054e75b1811370ed587c494d62795fbd25398cd9856faebc1c17e4d9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant0dde26b193925cbcc4f9f285e5ecb1e746e8167bab6159538d08a4ad4d3032fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f0bef201cb2a152f75b8437d76e18277f9c31f032c7b956561198cca0c8d22e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def simpHaveAndZetaUnused (e₁ : Expr) (simpBody : Simproc) : SimpM Result := do
  let r ← simpHaveCore e₁ simpBody
  match r.result with
  | .rfl _ cd =>
    let e₂ ← zetaUnused e₁
    if isSameExpr e₁ e₂ then
      return mkRflResultCD cd
    else
      let h := mkApp2 (mkConst ``Eq.refl [r.u]) r.α e₂
      return .step e₂ h (contextDependent := cd)
  | .step e₂ h _ cd =>
    let e₃ ← zetaUnused e₂
    if isSameExpr e₂ e₃ then
      return r.result
    else
      let h := mkApp6 (mkConst ``Eq.trans [r.u]) r.α e₁ e₂ e₃ h
        (mkApp2 (mkConst ``Eq.refl [r.u]) r.α e₃)
      return .step e₃ h (contextDependent := cd)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant0dde26b193925cbcc4f9f285e5ecb1e746e8167bab6159538d08a4ad4d3032fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant0dde26b193925cbcc4f9f285e5ecb1e746e8167bab6159538d08a4ad4d3032fc.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ed2a6ee84d0cbc2c7a6a9017012c4bb4c314006` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
