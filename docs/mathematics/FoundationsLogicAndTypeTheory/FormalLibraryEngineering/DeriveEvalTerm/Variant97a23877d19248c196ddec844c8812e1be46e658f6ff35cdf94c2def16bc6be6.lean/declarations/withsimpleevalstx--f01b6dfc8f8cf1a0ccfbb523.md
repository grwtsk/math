# withSimpleEvalStx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb8592d7fcde3cef10a3f8902359a62a96428cc6d34b98146f28949f233713be",
  "kind": "def",
  "lexical_name": "withSimpleEvalStx",
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
  "slug": "withsimpleevalstx--f01b6dfc8f8cf1a0ccfbb523",
  "source": {
    "blob": "caeb88378d14a3c57039860e0aae6789aeef9c63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 71,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant97a23877d19248c196ddec844c8812e1be46e658f6ff35cdf94c2def16bc6be6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f01b6dfc8f8cf1a0ccfbb523ee3c0ad4e6a7f399217e6579e7a5f3ed122bece6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant97a23877d19248c196ddec844c8812e1be46e658f6ff35cdf94c2def16bc6be6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb8592d7fcde3cef10a3f8902359a62a96428cc6d34b98146f28949f233713be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def withSimpleEvalStx {α} (indTypeName : Name) (evalStxImpl : String → TSyntaxArray `term → TermElabM (α × Expr)) : Term → TermElabM (α × Expr) :=
  evalTermWithInfo (Expr.const indTypeName []) fun
  | `($f:ident) => do
    let ctorName ← resolveAtomicNameForConstNamespace indTypeName f
    evalStxImpl ctorName #[]
  | `($f:ident $args*) => do
    let ctorName ← resolveAtomicNameForConstNamespace indTypeName f
    evalStxImpl ctorName args
  | `(.$f:ident) => do
    let ctorName ← resolveDottedAtomicNameForConstNamespace indTypeName f
    evalStxImpl ctorName #[]
  | `(.$f:ident $args*) => do
    let ctorName ← resolveDottedAtomicNameForConstNamespace indTypeName f
    evalStxImpl ctorName args
  | _ => throwUnsupportedSyntax

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant97a23877d19248c196ddec844c8812e1be46e658f6ff35cdf94c2def16bc6be6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant97a23877d19248c196ddec844c8812e1be46e658f6ff35cdf94c2def16bc6be6.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `caeb88378d14a3c57039860e0aae6789aeef9c63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
