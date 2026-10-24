# synTaut

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2dab810a6cc6b4f905b2a067ae5b4305c6254e5610f7512578be3539919a07aa",
  "kind": "def",
  "lexical_name": "synTaut",
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
  "slug": "syntaut--f03ff1441ed7503edf2f0ae7",
  "source": {
    "blob": "7625b7da3572857d451b69049ad1e52225d03b34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 157,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Misc/Variant82951a40671bdbb973b090ff49eff8f23319d1c9a556542830d3f04309d4a3fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f03ff1441ed7503edf2f0ae7db0a273a3d254b2542bd8d7966114ffdf2a24144",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Misc/Variant82951a40671bdbb973b090ff49eff8f23319d1c9a556542830d3f04309d4a3fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2dab810a6cc6b4f905b2a067ae5b4305c6254e5610f7512578be3539919a07aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[env_linter] def synTaut : Linter where
  noErrorsFound :=
    "No declarations are syntactic tautologies."
  errorsFound := "THE FOLLOWING DECLARATIONS ARE SYNTACTIC TAUTOLOGIES. \
    This usually means that they are of the form `∀ a b ... z, e₁ = e₂` where `e₁` and `e₂` are \
    identical expressions. We call declarations of this form syntactic tautologies. \
    Such lemmas are (mostly) useless and sometimes introduced unintentionally when proving \
    basic facts using `rfl`, when elaboration results in a different term than the user intended. \
    You should check that the declaration really says what you think it does."
  isFast := true
  test declName := do
    if ← isAutoDecl declName then return none
    if Linter.isDeprecated (← getEnv) declName then return none
    forallTelescope (← getConstInfo declName).type fun _ ty => do
      let some (lhs, rhs) := ty.eq?.map (fun (_, l, r) => (l, r)) <|> ty.iff?
        | return none
      if lhs == rhs then
        return m!"LHS equals RHS syntactically"
      return none

/--
Return a list of unused `let_fun` terms in an expression that introduce proofs.
-/
@[nolint unusedArguments]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Misc/Variant82951a40671bdbb973b090ff49eff8f23319d1c9a556542830d3f04309d4a3fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Misc/Variant82951a40671bdbb973b090ff49eff8f23319d1c9a556542830d3f04309d4a3fa.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7625b7da3572857d451b69049ad1e52225d03b34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
