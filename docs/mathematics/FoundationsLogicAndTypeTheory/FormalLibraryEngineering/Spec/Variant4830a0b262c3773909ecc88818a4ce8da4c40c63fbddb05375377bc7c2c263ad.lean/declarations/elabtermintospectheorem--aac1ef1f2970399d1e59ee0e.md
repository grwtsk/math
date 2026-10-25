# elabTermIntoSpecTheorem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a1c8183124cb30a3526b3c06cf8520c042dae798ba5674c0bad4f4ae1be37c9",
  "kind": "def",
  "lexical_name": "elabTermIntoSpecTheorem",
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
  "slug": "elabtermintospectheorem--aac1ef1f2970399d1e59ee0e",
  "source": {
    "blob": "3ed4cee461e180cd263668c196adeeafb35cde0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spec/Variant4830a0b262c3773909ecc88818a4ce8da4c40c63fbddb05375377bc7c2c263ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aac1ef1f2970399d1e59ee0e588f9a568b09fab25e7b5ddbe86c98c5c14d798e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spec/Variant4830a0b262c3773909ecc88818a4ce8da4c40c63fbddb05375377bc7c2c263ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a1c8183124cb30a3526b3c06cf8520c042dae798ba5674c0bad4f4ae1be37c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabTermIntoSpecTheorem (stx : TSyntax `term) (expectedTy : Expr) : TacticM SpecTheorem := do
  if stx.raw.isIdent then
    match ← Term.resolveId? stx.raw (withInfo := true) with
    | some (.const declName _) => mkSpecTheoremFromConst declName
    | some (.fvar fvarId) => mkSpecTheoremFromLocal fvarId
    | _      => throwError "invalid spec"
  else try
    let (prf, _mvars) ← elabTermWithHoles stx expectedTy `mspec (allowNaturalHoles := true)
    mkSpecTheoremFromStx stx.raw prf
  catch e : Exception =>
    trace[Elab.Tactic.Do.spec] "Internal error. This happens for example when the head symbol of the spec is wrong. Message:\n  {e.toMessageData}"
    throw e

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spec/Variant4830a0b262c3773909ecc88818a4ce8da4c40c63fbddb05375377bc7c2c263ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spec/Variant4830a0b262c3773909ecc88818a4ce8da4c40c63fbddb05375377bc7c2c263ad.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ed4cee461e180cd263668c196adeeafb35cde0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
