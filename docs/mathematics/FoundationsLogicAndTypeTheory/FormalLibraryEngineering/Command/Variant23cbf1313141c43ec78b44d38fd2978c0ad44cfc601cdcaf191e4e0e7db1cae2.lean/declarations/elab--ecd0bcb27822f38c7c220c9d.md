# Anonymous elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:62338b4fc943428283990ac280c0d0d396a89ed2b4fc9cfd83e735dd35cb446d",
  "kind": "elab",
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
  "slug": "elab--ecd0bcb27822f38c7c220c9d",
  "source": {
    "blob": "253e469c3ee6177b6f9ef813e9143ec2031535ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant23cbf1313141c43ec78b44d38fd2978c0ad44cfc601cdcaf191e4e0e7db1cae2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ecd0bcb27822f38c7c220c9d774a1ba63f8372b316af2c5d38694210f470bd75",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant23cbf1313141c43ec78b44d38fd2978c0ad44cfc601cdcaf191e4e0e7db1cae2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:62338b4fc943428283990ac280c0d0d396a89ed2b4fc9cfd83e735dd35cb446d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab (name := addRules)
    attrKind:attrKind "add_aesop_rules " e:Aesop.rule_expr : command => do
  let attrKind :=
    match attrKind with
    | `(Lean.Parser.Term.attrKind| local) => .local
    | `(Lean.Parser.Term.attrKind| scoped) => .scoped
    | _ => .global
  let rules ← liftTermElabM do
    let e ← RuleExpr.elab e |>.run (← ElabM.Context.forAdditionalGlobalRules)
    e.buildAdditionalGlobalRules none
  for (rule, rsNames) in rules do
    for rsName in rsNames do
      liftCoreM $ addGlobalRule rsName rule attrKind (checkNotExists := true)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant23cbf1313141c43ec78b44d38fd2978c0ad44cfc601cdcaf191e4e0e7db1cae2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant23cbf1313141c43ec78b44d38fd2978c0ad44cfc601cdcaf191e4e0e7db1cae2.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `253e469c3ee6177b6f9ef813e9143ec2031535ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
