# updateOccs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35b467b40f4a4db9537ce146bcc1c83a95da39e0e985b779afeab3b02d5aa41b",
  "kind": "def",
  "lexical_name": "updateOccs",
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
  "slug": "updateoccs--ae8722acb8fcf199f6554728",
  "source": {
    "blob": "bfc33f2c395a87402e7796b548588f6a687c8303",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 320,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantb4b592c37a45d4e0364142ee9019ae48038a3eb25f9b120ae3936e8e1a4df205.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae8722acb8fcf199f6554728139dc6b6b79a33c0980cbac6aa2d911e58e3b7fd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantb4b592c37a45d4e0364142ee9019ae48038a3eb25f9b120ae3936e8e1a4df205.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:35b467b40f4a4db9537ce146bcc1c83a95da39e0e985b779afeab3b02d5aa41b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def updateOccs (k : Int) (x : Var) (c : EqCnstr) : GoalM Unit := do
  let ys := (← get').occurs[x]!
  modify' fun s => { s with occurs := s.occurs.set x {} }
  updateOccsAt k x c x
  for y in ys do
    updateOccsAt k x c y
    updateElimEqs k x c y

/--
Similar to `updateOccs`, but does not assume first variable is `p`s "owner".
Recall that when eliminating equalities we do not necessarily eliminate the
maximal variable, but the one with unit coefficient.
Remark: we keep occurrences for equations in `elimEqs` because we want to maintain them
in solved form. Consider the following scenario:
1- Asserted `a + 2*b + 1 = 0`, and eliminated `a`
2- Asserted `b + 1 = 0`, and eliminated `b`.

At step 2, we want to substitute `b` at `a + 2*b + 1` to ensure `cutsat` knows
`a` is forced to be equal to a constant value. This is relevant for linearizing
nonlinear terms.

Remark: `x` is the variable that was eliminated using `p`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantb4b592c37a45d4e0364142ee9019ae48038a3eb25f9b120ae3936e8e1a4df205.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantb4b592c37a45d4e0364142ee9019ae48038a3eb25f9b120ae3936e8e1a4df205.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfc33f2c395a87402e7796b548588f6a687c8303` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
