# EqCnstr.superposeWithAC

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ffbdf4ff7933996f6fd8f1e542a29a4424933b038e8cd56dd52cf97cc56f0c71",
  "kind": "def",
  "lexical_name": "EqCnstr.superposeWithAC",
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
  "slug": "eqcnstr-superposewithac--9d66d5930453221d2ee1163b",
  "source": {
    "blob": "2132d1d411da30e861fc3a1082696c4f1ffa15c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 231,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant0c1b3de2379e00ca07090a427592504058a72569c5a34cc7e28c68bcd0f40a23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d66d5930453221d2ee1163b4219f57b706a8fa3f34d78ffc40c118a531a4b21",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant0c1b3de2379e00ca07090a427592504058a72569c5a34cc7e28c68bcd0f40a23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ffbdf4ff7933996f6fd8f1e542a29a4424933b038e8cd56dd52cf97cc56f0c71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def EqCnstr.superposeWithAC (c₁ : EqCnstr) : ACM Unit := do
  if (← checkMaxSteps) then return ()
  let lhs₁ := c₁.lhs
  for c₂ in (← getStruct).basis do
    let lhs₂ := c₂.lhs
    trace[grind.debug.ac.superpose] "[{lhs₁.sharesVar lhs₂}]: {← lhs₁.denoteExpr}, {← lhs₂.denoteExpr}"
    if lhs₁.sharesVar lhs₂ then
      assert! lhs₁ != lhs₂
      let some (r₁, c, r₂) := lhs₁.superposeAC? lhs₂ | unreachable!
      if (← isDebugEnabled) then
        assert! lhs₁ == r₁.union c
        assert! lhs₂ == r₂.union c
      let c ← mkEqCnstr (c₁.rhs.union r₂) (c₂.rhs.union r₁) (.superpose_ac r₁ c r₂ c₁ c₂)
      c.addToQueue

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant0c1b3de2379e00ca07090a427592504058a72569c5a34cc7e28c68bcd0f40a23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eq/Variant0c1b3de2379e00ca07090a427592504058a72569c5a34cc7e28c68bcd0f40a23.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2132d1d411da30e861fc3a1082696c4f1ffa15c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
