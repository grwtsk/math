# elabSimplifyingAssumptions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24f4b5a40dae5aecb597931b5d76bf8af4c44c56bc92542c006d97f3cf4f9407",
  "kind": "def",
  "lexical_name": "elabSimplifyingAssumptions",
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
  "slug": "elabsimplifyingassumptions--3e62b53490c3d09887634637",
  "source": {
    "blob": "50d694f071c8cecb8605609eb094a9ad12520edd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 208,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant7b94199725dcb95a8fa53ef0a56729f4b4f719645faaa95aa91fa0ca0ec53d18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e62b53490c3d09887634637b61d464d815d86997151b1b15acc2ff68a8edaa0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant7b94199725dcb95a8fa53ef0a56729f4b4f719645faaa95aa91fa0ca0ec53d18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24f4b5a40dae5aecb597931b5d76bf8af4c44c56bc92542c006d97f3cf4f9407`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def elabSimplifyingAssumptions (simpClause : Syntax) : MetaM (Option Sym.Simp.Methods) := do
  if simpClause.getNumArgs == 0 then return none
  let variantId? := if simpClause[1].getNumArgs != 0 then some ⟨simpClause[1][0]⟩ else none
  let extraIds? := if simpClause[2].getNumArgs != 0
    then some (simpClause[2][1].getSepArgs.map (⟨·⟩)) else none
  pure (some (← elabSymSimpParts variantId? extraIds?))

/--
Pre-parse the optional `invariantAlts` syntax into a map from invariant number
to alt syntax. Bullet form `· $rhs` is positional (1-based: bullet at index `i`
maps to key `i+1`); labelled form `| inv<n> $args* => $rhs` is keyed by the
parsed `n`, so out-of-order labels are supported.

Returns `none` for the `invariants?` form (delegated to upstream `elabInvariants`)
and `none` when no `invariants` clause is provided. Errors on mixed bullet/labelled
forms (one or the other is enforced by the `dotOrCase` flag in the upstream
elaborator; we replicate that check here).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant7b94199725dcb95a8fa53ef0a56729f4b4f719645faaa95aa91fa0ca0ec53d18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant7b94199725dcb95a8fa53ef0a56729f4b4f719645faaa95aa91fa0ca0ec53d18.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50d694f071c8cecb8605609eb094a9ad12520edd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
