# DTExpr.hasLooseBVarsAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0df6c96360d1e0cb28aa51b24d7b98eaa864a22b9a0c75df5d4d98f495aff613",
  "kind": "def",
  "lexical_name": "DTExpr.hasLooseBVarsAux",
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
  "slug": "dtexpr-hasloosebvarsaux--17f0e85770d2a0f966c7ed38",
  "source": {
    "blob": "2409f656aa3e890785ae04694e94f248ee565da8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 227,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:17f0e85770d2a0f966c7ed3831053054ec1a41578039988d191110aa1750b4bd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0df6c96360d1e0cb28aa51b24d7b98eaa864a22b9a0c75df5d4d98f495aff613`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def DTExpr.hasLooseBVarsAux (i : Nat) : DTExpr → Bool
  | .const  _ as   => as.any (hasLooseBVarsAux i)
  | .fvar   _ as   => as.any (hasLooseBVarsAux i)
  | .bvar j as     => j ≥ i || as.any (hasLooseBVarsAux i)
  | .proj _ _ a as => a.hasLooseBVarsAux i || as.any (hasLooseBVarsAux i)
  | .forall d b    => d.hasLooseBVarsAux i || b.hasLooseBVarsAux (i+1)
  | .lam b         => b.hasLooseBVarsAux (i+1)
  | _              => false

/-- Return `true` if `e` contains a loose bound variable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2409f656aa3e890785ae04694e94f248ee565da8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
