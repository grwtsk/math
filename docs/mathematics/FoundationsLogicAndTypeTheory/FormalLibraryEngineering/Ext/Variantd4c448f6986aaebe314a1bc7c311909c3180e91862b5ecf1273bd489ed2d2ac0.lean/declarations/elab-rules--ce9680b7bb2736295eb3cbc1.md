# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b07822e43dc9c969100b5663d30f6f4064f1fa992c308268bdb4aff5537259eb",
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
  "slug": "elab-rules--ce9680b7bb2736295eb3cbc1",
  "source": {
    "blob": "e80cb9849228dda1a7536d70bcb3a48d76d9383a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 178,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantd4c448f6986aaebe314a1bc7c311909c3180e91862b5ecf1273bd489ed2d2ac0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce9680b7bb2736295eb3cbc1d397fc83062d247825ecb60729631627b4b34e85",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantd4c448f6986aaebe314a1bc7c311909c3180e91862b5ecf1273bd489ed2d2ac0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b07822e43dc9c969100b5663d30f6f4064f1fa992c308268bdb4aff5537259eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : tactic
  | `(tactic| ext $pats* $[: $n]?) => do
    let pats := RCases.expandRIntroPats pats
    let depth := n.map (·.getNat) |>.getD 1000000
    let (used, gs) ← extCore (← getMainGoal) pats.toList depth
    if RCases.linter.unusedRCasesPattern.get (← getOptions) then
      if used < pats.size then
        Linter.logLint RCases.linter.unusedRCasesPattern (mkNullNode pats[used:].toArray)
          m!"`ext` did not consume the patterns: {pats[used:]}"
    replaceMainGoal <| gs.map (·.1) |>.toList

/--
`ext1 pat*` is like `ext pat*` except it only applies one extensionality lemma instead
of recursing as much as possible.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantd4c448f6986aaebe314a1bc7c311909c3180e91862b5ecf1273bd489ed2d2ac0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantd4c448f6986aaebe314a1bc7c311909c3180e91862b5ecf1273bd489ed2d2ac0.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e80cb9849228dda1a7536d70bcb3a48d76d9383a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
