# isSetGoal?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5f9c80a6bf3045112eaae1fc2b5209006c3f6b9b55ed517d1111d5bbab6f036",
  "kind": "def",
  "lexical_name": "isSetGoal?",
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
  "slug": "issetgoal--d30b02ddff1b858de200d292",
  "source": {
    "blob": "f85d11d09b1a23d5bb51f05f16d6fde5497d845c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 70,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variantc5baccb58ed0ecc0be5ca7629e7c77bf544dee738a9c16a2fe3f8fa7e1abf892.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d30b02ddff1b858de200d2923174733fffd962eb5ea8611fbda48e4006b8567f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variantc5baccb58ed0ecc0be5ca7629e7c77bf544dee738a9c16a2fe3f8fa7e1abf892.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d5f9c80a6bf3045112eaae1fc2b5209006c3f6b9b55ed517d1111d5bbab6f036`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isSetGoal? (hyps : Array LocalDecl) : MetaM (Option Html) := do
  let mut sub := "AutoLabel All\n"
  let mut sets : Std.HashMap String Expr := ∅
  for assm in hyps do
    let tp ← instantiateMVars assm.type
    if let some (S, T) := isSubsetPred? tp then
      let sS ← toString <$> Lean.Meta.ppExpr S
      let sT ← toString <$> Lean.Meta.ppExpr T
      let (cS, sets') := sets.containsThenInsert sS S
      let (cT, sets') := sets'.containsThenInsert sT T
      sets := sets'
      if !cS then
        sub := sub ++ s!"Set {sS}\n"
      if !cT then
        sub := sub ++ s!"Set {sT}\n"
      sub := sub ++ s!"IsSubset({sS}, {sT})\n"
  if sets.isEmpty then return none
  some <$> mkSetDiag sub sets.toArray

/-! # Implementation of the widget -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variantc5baccb58ed0ecc0be5ca7629e7c77bf544dee738a9c16a2fe3f8fa7e1abf892.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variantc5baccb58ed0ecc0be5ca7629e7c77bf544dee738a9c16a2fe3f8fa7e1abf892.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f85d11d09b1a23d5bb51f05f16d6fde5497d845c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
