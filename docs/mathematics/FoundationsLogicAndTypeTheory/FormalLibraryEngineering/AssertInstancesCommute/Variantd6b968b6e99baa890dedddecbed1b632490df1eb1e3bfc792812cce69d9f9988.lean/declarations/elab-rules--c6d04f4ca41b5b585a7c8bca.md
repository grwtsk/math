# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a2dfb0496177f883e70e0855f5630e80b34efb620e88fc4ca7e66f40bc8cfa3",
  "kind": "elab_rules",
  "lexical_name": null,
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
  "slug": "elab-rules--c6d04f4ca41b5b585a7c8bca",
  "source": {
    "blob": "25212d19c86424a4670f66ba9e8e4926bbf1a3f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 58,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertInstancesCommute/Variantd6b968b6e99baa890dedddecbed1b632490df1eb1e3bfc792812cce69d9f9988.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6d04f4ca41b5b585a7c8bca0658f5e43689d587d39681c83412b9529e793d52",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertInstancesCommute/Variantd6b968b6e99baa890dedddecbed1b632490df1eb1e3bfc792812cce69d9f9988.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a2dfb0496177f883e70e0855f5630e80b34efb620e88fc4ca7e66f40bc8cfa3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : term <= expectedType | `(assumeInstancesCommute' $cont) => do
  match ← findRedundantLocalInstQuoted? with
  | some ⟨fvar, _, _, lhs, rhs⟩ =>
    let n ← mkFreshUserName ((← fvar.getUserName).eraseMacroScopes.appendAfter "_eq")
    let ty := q(QuotedDefEq $lhs $rhs)
    elabTerm (← `(
        have $(mkIdent n) : $(← exprToSyntax ty) := ⟨⟩
        assumeInstancesCommute' $cont))
      expectedType
  | none => elabTerm cont expectedType

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertInstancesCommute/Variantd6b968b6e99baa890dedddecbed1b632490df1eb1e3bfc792812cce69d9f9988.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertInstancesCommute/Variantd6b968b6e99baa890dedddecbed1b632490df1eb1e3bfc792812cce69d9f9988.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25212d19c86424a4670f66ba9e8e4926bbf1a3f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
