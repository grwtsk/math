# isExprEvalName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2bf1aa7f1f048e992c2595b6bc3b55eefb469d70cc4a511cdb2362ed871139ae",
  "kind": "def",
  "lexical_name": "isExprEvalName",
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
  "slug": "isexprevalname--b8b32c529a94d6fc46000034",
  "source": {
    "blob": "6c77d081b41121bbdfbdc8e2ced4bf5e22fea306",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 844,
    "line": 840,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant64285f6159d1d850ee5ba515217d6e79bf5fd1260118c408b01a64d5346dbaee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b8b32c529a94d6fc46000034a112b717205a497fc995c094ab0ad4a83cd93f57",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant64285f6159d1d850ee5ba515217d6e79bf5fd1260118c408b01a64d5346dbaee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2bf1aa7f1f048e992c2595b6bc3b55eefb469d70cc4a511cdb2362ed871139ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 840–844.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isExprEvalName (name : Lean.Name) : Bool :=
  (`Expr.eval).isSuffixOf name

/-- Try to parse an already-intro'd goal as a global optimization bound.
    After intro ρ hρ hzero, the goal should be a comparison: Expr.eval ρ e ≤ c or c ≤ Expr.eval ρ e -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant64285f6159d1d850ee5ba515217d6e79bf5fd1260118c408b01a64d5346dbaee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant64285f6159d1d850ee5ba515217d6e79bf5fd1260118c408b01a64d5346dbaee.lean#L840).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c77d081b41121bbdfbdc8e2ced4bf5e22fea306` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
