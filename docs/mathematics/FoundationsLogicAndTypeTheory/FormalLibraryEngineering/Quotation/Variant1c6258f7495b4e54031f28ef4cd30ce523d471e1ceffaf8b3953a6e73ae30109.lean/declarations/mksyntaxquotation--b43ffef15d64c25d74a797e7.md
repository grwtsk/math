# mkSyntaxQuotation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6316382a7651656958e1d616e81a40836514c59b3c849bfbe8b7bdda062cd8d9",
  "kind": "def",
  "lexical_name": "mkSyntaxQuotation",
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
  "slug": "mksyntaxquotation--b43ffef15d64c25d74a797e7",
  "source": {
    "blob": "f853dd6ab2d659731df0875f0159b3e57c6c13b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 242,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quotation/Variant1c6258f7495b4e54031f28ef4cd30ce523d471e1ceffaf8b3953a6e73ae30109.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b43ffef15d64c25d74a797e78216fc2b97d2c4a8fc675981d82e988e23c17444",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quotation/Variant1c6258f7495b4e54031f28ef4cd30ce523d471e1ceffaf8b3953a6e73ae30109.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6316382a7651656958e1d616e81a40836514c59b3c849bfbe8b7bdda062cd8d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkSyntaxQuotation (stx : Syntax) (kind : Name) : TermElabM Syntax := do
  /- Syntax quotations are monadic values depending on the current macro scope. For efficiency, we bind
     the macro scope once for each quotation, then build the syntax tree in a completely pure computation
     depending on this binding. Note that regular function calls do not introduce a new macro scope (i.e.
     we preserve referential transparency), so we can refer to this same `scp` inside `quoteSyntax` by
     including it literally in a syntax quotation. -/
  `(Bind.bind MonadRef.mkInfoFromRefPos (fun info =>
      Bind.bind getCurrMacroScope (fun scp =>
        Bind.bind MonadQuotation.getContext (fun quotCtx => Pure.pure (@TSyntax.mk $(quote kind) $stx)))))
  /- NOTE: It may seem like the newly introduced binding `scp` may accidentally
     capture identifiers in an antiquotation introduced by `quoteSyntax`. However,
     note that the syntax quotation above enjoys the same hygiene guarantees as
     anywhere else in Lean; that is, we implement hygienic quotations by making
     use of the hygienic quotation support of the bootstrapped Lean compiler!

     Aside: While this might sound "dangerous", it is in fact less reliant on a
     "chain of trust" than other bootstrapping parts of Lean: because this
     implementation itself never uses `scp` (or any other identifier) both inside
     and outside quotations, it can actually correctly be compiled by an
     unhygienic (but otherwise correct) implementation of syntax quotations. As
     long as it is then compiled again with the resulting executable (i.e. up to
     stage 2), the result is a correct hygienic implementation. In this sense the
     implementation is "self-stabilizing". It was in fact originally compiled
     by an unhygienic prototype implementation. -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quotation/Variant1c6258f7495b4e54031f28ef4cd30ce523d471e1ceffaf8b3953a6e73ae30109.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quotation/Variant1c6258f7495b4e54031f28ef4cd30ce523d471e1ceffaf8b3953a6e73ae30109.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f853dd6ab2d659731df0875f0159b3e57c6c13b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
