# Anonymous macro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d4ea798870d27c93662d35c78201a4391bdffceca3c25ff5bf120ff8e1a779c1",
  "kind": "macro",
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
  "slug": "macro--233c6c44f90ffed14f98ec47",
  "source": {
    "blob": "bca0e24738d78f3daabbdb9fb7e66be26ced0ade",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 81,
    "path": "GRWTSK/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:233c6c44f90ffed14f98ec479254ffcdf621ab82e5cb302d1cc5c96961d22166",
  "verification": {
    "reference": "docs/verification/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d4ea798870d27c93662d35c78201a4391bdffceca3c25ff5bf120ff8e1a779c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
macro (name := restrict_tac?) "restrict_tac?" c:Aesop.tactic_clause* : tactic =>
`(tactic|
  aesop? $c*
    (config := { terminal := true
                 assumptionTransparency := .reducible
                 enableSimp := false
                 maxRuleApplications := 300 })
  (rule_sets := [-default, -builtin, $(Lean.mkIdent `Restrict):ident]))

attribute[aesop 10% (rule_sets := [Restrict])] le_trans
attribute[aesop safe destruct (rule_sets := [Restrict])] Eq.trans_le
attribute[aesop safe -50 (rule_sets := [Restrict])] Aesop.BuiltinRules.assumption

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bca0e24738d78f3daabbdb9fb7e66be26ced0ade` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
