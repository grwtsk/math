# DiseqCnstr.denoteExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e208961855fe8adbd7f7a5bc6b8546886cffa17790f56bffe01416ef2c4c5241",
  "kind": "def",
  "lexical_name": "DiseqCnstr.denoteExpr",
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
  "slug": "diseqcnstr-denoteexpr--22aa55b045efa41ab5dfe66b",
  "source": {
    "blob": "3f8453d6869965a2fde50ce43867b6c37d6a0c07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DenoteExpr/Variantfe197313dd0b4392ab400b3c39d4f743bb123a69bf06e6b05b58231f99c0a851.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22aa55b045efa41ab5dfe66b62a28043dca08ac69306766ef9f1bc61533ea134",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DenoteExpr/Variantfe197313dd0b4392ab400b3c39d4f743bb123a69bf06e6b05b58231f99c0a851.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e208961855fe8adbd7f7a5bc6b8546886cffa17790f56bffe01416ef2c4c5241`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DiseqCnstr.denoteExpr (c : DiseqCnstr) : M Expr := do
  let s ← getStruct
  return mkApp3 (mkConst ``Ne [s.u]) s.type (← c.lhs.denoteExpr) (← c.rhs.denoteExpr)

end Lean.Meta.Grind.AC
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DenoteExpr/Variantfe197313dd0b4392ab400b3c39d4f743bb123a69bf06e6b05b58231f99c0a851.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DenoteExpr/Variantfe197313dd0b4392ab400b3c39d4f743bb123a69bf06e6b05b58231f99c0a851.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f8453d6869965a2fde50ce43867b6c37d6a0c07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
