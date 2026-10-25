# expandDoLetExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24a890677efeaff3a39105b527af8ce1588713b0b2fb4ab4191fc091596124f4",
  "kind": "def",
  "lexical_name": "expandDoLetExpr",
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
  "slug": "expanddoletexpr--5212c304cfd86c6d721e3ae1",
  "source": {
    "blob": "d9cdd0ec15c9a128f0774a6af3e73b34bbe6021b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 20,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchExpr/Variant6e19c5e39dd6df29fc0563e4c9b63c8f3f9cd71df00dbfe4c528546ff15d570f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5212c304cfd86c6d721e3ae131c945b841229d6c571cfca888ef4cbc2b438be9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchExpr/Variant6e19c5e39dd6df29fc0563e4c9b63c8f3f9cd71df00dbfe4c528546ff15d570f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24a890677efeaff3a39105b527af8ce1588713b0b2fb4ab4191fc091596124f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_macro Lean.Parser.Term.doLetExpr] def expandDoLetExpr : Macro := fun stx => match stx with
  | `(doElem| let_expr $pat:matchExprPat := $discr:term
                | $elseBranch
              $thenBranch) =>
    `(doElem| match_expr (meta := false) $discr:term with
              | $pat:matchExprPat => $thenBranch:doSeqIndent
              | _ => $elseBranch:doSeqIndent)
  | _ => Macro.throwUnsupported

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchExpr/Variant6e19c5e39dd6df29fc0563e4c9b63c8f3f9cd71df00dbfe4c528546ff15d570f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchExpr/Variant6e19c5e39dd6df29fc0563e4c9b63c8f3f9cd71df00dbfe4c528546ff15d570f.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9cdd0ec15c9a128f0774a6af3e73b34bbe6021b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
