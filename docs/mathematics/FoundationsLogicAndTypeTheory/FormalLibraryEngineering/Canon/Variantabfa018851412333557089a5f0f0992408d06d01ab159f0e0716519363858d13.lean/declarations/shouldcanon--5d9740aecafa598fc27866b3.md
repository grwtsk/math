# shouldCanon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a41aee3d46470f4e37a0ca72e43f2ee3860d2ce202ccb7d7c7000c2c4763766f",
  "kind": "def",
  "lexical_name": "shouldCanon",
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
  "slug": "shouldcanon--5d9740aecafa598fc27866b3",
  "source": {
    "blob": "cb5d3537569010ca1a8c9babd677dd72bb8b7a52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 198,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canon/Variantabfa018851412333557089a5f0f0992408d06d01ab159f0e0716519363858d13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d9740aecafa598fc27866b3371653fdea81d8d267e4452aff843f461d3aac4f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canon/Variantabfa018851412333557089a5f0f0992408d06d01ab159f0e0716519363858d13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a41aee3d46470f4e37a0ca72e43f2ee3860d2ce202ccb7d7c7000c2c4763766f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def shouldCanon (pinfos : Array ParamInfo) (i : Nat) (arg : Expr) : MetaM ShouldCanonResult := do
  if h : i < pinfos.size then
    let pinfo := pinfos[i]
    if pinfo.isInstance then
      return .canonInst
    else if pinfo.isProp then
      return .visit
    else if pinfo.isImplicit then
      if (← isTypeFormer arg) then
        return .canonType
      else
        return .canonImplicit
  if (← isProp arg) then
    return .visit
  else if (← isTypeFormer arg) then
    return .canonType
  else
    return .visit

/--
Reduce a projection function application (e.g., `@Sigma.fst _ _ ⟨a, b⟩` → `a`).
Class projections are not reduced — they are support elements handled by instance synthesis.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canon/Variantabfa018851412333557089a5f0f0992408d06d01ab159f0e0716519363858d13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canon/Variantabfa018851412333557089a5f0f0992408d06d01ab159f0e0716519363858d13.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb5d3537569010ca1a8c9babd677dd72bb8b7a52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
