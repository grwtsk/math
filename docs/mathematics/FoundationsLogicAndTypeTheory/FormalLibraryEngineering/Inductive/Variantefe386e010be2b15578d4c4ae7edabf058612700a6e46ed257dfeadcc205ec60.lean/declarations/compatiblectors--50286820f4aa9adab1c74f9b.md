# compatibleCtors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c3c948137067de5f39b9be77b0a206ef5a2eaa4f66790a93c44980fdb2520dd6",
  "kind": "def",
  "lexical_name": "compatibleCtors",
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
  "slug": "compatiblectors--50286820f4aa9adab1c74f9b",
  "source": {
    "blob": "034d5019951b26344f3ac5864ab0e57d706edda8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inductive/Variantefe386e010be2b15578d4c4ae7edabf058612700a6e46ed257dfeadcc205ec60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:50286820f4aa9adab1c74f9b87ee0cf7fb25d8a7b905dbcde717e3822421de65",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inductive/Variantefe386e010be2b15578d4c4ae7edabf058612700a6e46ed257dfeadcc205ec60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c3c948137067de5f39b9be77b0a206ef5a2eaa4f66790a93c44980fdb2520dd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compatibleCtors (ctorName₁ ctorName₂ : Name) : MetaM Bool := do
  let ctorInfo₁ ← getConstInfoCtor ctorName₁
  let ctorInfo₂ ← getConstInfoCtor ctorName₂
  if ctorInfo₁.induct != ctorInfo₂.induct then
    return false
  else
    let (_, _, ctorType₁) ← forallMetaTelescope ctorInfo₁.type
    let (_, _, ctorType₂) ← forallMetaTelescope ctorInfo₂.type
    isDefEq ctorType₁ ctorType₂

end Lean.Meta
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inductive/Variantefe386e010be2b15578d4c4ae7edabf058612700a6e46ed257dfeadcc205ec60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inductive/Variantefe386e010be2b15578d4c4ae7edabf058612700a6e46ed257dfeadcc205ec60.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `034d5019951b26344f3ac5864ab0e57d706edda8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
