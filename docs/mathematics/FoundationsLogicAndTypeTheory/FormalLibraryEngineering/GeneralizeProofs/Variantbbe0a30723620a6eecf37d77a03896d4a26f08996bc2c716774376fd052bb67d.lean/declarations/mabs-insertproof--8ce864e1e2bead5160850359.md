# MAbs.insertProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f7b3d964a30468426472c179c158df3700a2bd16590eb4e4e43f03a2de7b07e2",
  "kind": "def",
  "lexical_name": "MAbs.insertProof",
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
  "slug": "mabs-insertproof--8ce864e1e2bead5160850359",
  "source": {
    "blob": "d34f5eb32aee3e3b197dc9c213c98dc012213b7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 130,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8ce864e1e2bead5160850359330b6b9303390fb08dad59417fcbcf8681bf12b7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f7b3d964a30468426472c179c158df3700a2bd16590eb4e4e43f03a2de7b07e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MAbs.insertProof (prop pf : Expr) : MAbs Unit := do
  if (← read).config.debug then
    unless ← isDefEq prop (← inferType pf) do
      throwError "insertProof: proof{indentD pf}does not have type{indentD prop}"
    unless ← Lean.MetavarContext.isWellFormed (← read).initLCtx pf do
      throwError "insertProof: proof{indentD pf}\nis not well-formed in the initial context\n\
        fvars: {(← read).fvars}"
    unless ← Lean.MetavarContext.isWellFormed (← read).initLCtx prop do
      throwError "insertProof: proof{indentD prop}\nis not well-formed in the initial context\n\
        fvars: {(← read).fvars}"
  modify fun s ↦
    { s with
      generalizations := s.generalizations.push (prop, pf)
      propToProof := s.propToProof.insert prop pf }

/-- Runs `x` with an additional local variable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d34f5eb32aee3e3b197dc9c213c98dc012213b7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
