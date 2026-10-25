# compactRelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:43f3ee5604cc2b95c4e23eee66e1d1e408483891f2de0b3a9f9c0ae42c3b41d0",
  "kind": "def",
  "lexical_name": "compactRelation",
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
  "slug": "compactrelation--2a4a7b0e149dae1c007caecf",
  "source": {
    "blob": "f2d32632fd7a4eb1a9e6cdd00cec0d9bf672693f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 61,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant1b42730728e750fbf51ea1b0de2224e57bcbc8696c9a61f1b02938a4c1743fa7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2a4a7b0e149dae1c007caecfa8f732799e4ecb3259f6fc7b26ec82e220828b14",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant1b42730728e750fbf51ea1b0de2224e57bcbc8696c9a61f1b02938a4c1743fa7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:43f3ee5604cc2b95c4e23eee66e1d1e408483891f2de0b3a9f9c0ae42c3b41d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def compactRelation :
  List Expr → List (Expr × Expr) → List (Option Expr) × List (Expr × Expr) × (Expr → Expr)
| [],    as_ps => ([], as_ps, id)
| b::bs, as_ps =>
  match as_ps.span (λ⟨_,p⟩ => ¬ p == b) with
    | (_, []) => -- found nothing in ps equal to b
        let (bs, as_ps', subst) := compactRelation bs as_ps
        (b::bs, as_ps', subst)
    | (ps₁, (a, _) :: ps₂) => -- found one that matches b. Remove it.
      let i := fun e ↦ e.replaceFVar b a
      let (bs, as_ps', subst) := compactRelation (bs.map i) ((ps₁ ++ ps₂).map (λ⟨a, p⟩ => (a, i p)))
      (none :: bs, as_ps', i ∘ subst)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant1b42730728e750fbf51ea1b0de2224e57bcbc8696c9a61f1b02938a4c1743fa7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant1b42730728e750fbf51ea1b0de2224e57bcbc8696c9a61f1b02938a4c1743fa7.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2d32632fd7a4eb1a9e6cdd00cec0d9bf672693f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
