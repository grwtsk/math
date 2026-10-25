# VarStateM.computeCoefficients

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:23722ee835602b61393cf0938a33e600cdc2a1c6a83acd26ccbc050991dd9055",
  "kind": "def",
  "lexical_name": "VarStateM.computeCoefficients",
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
  "slug": "varstatem-computecoefficients--c9bbcbcf5130b488174729fc",
  "source": {
    "blob": "6a9994eafd980f68b3c9d54be33bec8eda1599be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 172,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c9bbcbcf5130b488174729fc22afe49b668706756d7ff09631295183b3653886",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:23722ee835602b61393cf0938a33e600cdc2a1c6a83acd26ccbc050991dd9055`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def VarStateM.computeCoefficients (op : Op) (e : Expr) : VarStateM CoefficientsMap :=
  go {} e
where
  incrVar (coeff : CoefficientsMap) (e : Expr) : VarStateM CoefficientsMap := do
    let idx ← exprToVar e
    return coeff.alter idx (fun c => some <| (c.getD 0) + 1)
  go (coeff : CoefficientsMap) : Expr → VarStateM CoefficientsMap
    | e@(AC.bin op' x y) => do
        if op.isSameKind op' then
          let coeff ← go coeff x
          let coeff ← go coeff y
          return coeff
        else
          trace[Meta.Tactic.bv] "Found binary operation '{op'} {x} {y}', expected '{op}'.\
            Treating as atom."
          incrVar coeff e
    | e => incrVar coeff e

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantd9994b35ea271e31fc546d3c76fd3cc4b565bdb9f4df2a5530f590d77ded3214.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a9994eafd980f68b3c9d54be33bec8eda1599be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
