# CoverProblem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4365f3f1ddbec4d0b36e11fb3e9b3c249b5ce2018f1d001797611718aa04f7f",
  "kind": "structure",
  "lexical_name": "CoverProblem",
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
  "slug": "coverproblem--5fef50ae3be2a07608a0569c",
  "source": {
    "blob": "ec3343e177b1baf33c95be26c47e2674cba8c781",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceFixtures/Variantf7ed5ee2f753a2a045281ea1daecec80d24f11817a64ae9ca050190acc4f752c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5fef50ae3be2a07608a0569c85f1846d2546b9490646d3ab1d8182c04e849f35",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceFixtures/Variantf7ed5ee2f753a2a045281ea1daecec80d24f11817a64ae9ca050190acc4f752c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4365f3f1ddbec4d0b36e11fb3e9b3c249b5ce2018f1d001797611718aa04f7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CoverProblem (α ι : Type*) where
  /-- Domain on which the assembled conclusion is required. -/
  domain : Set α
  /-- Additional region requiring a separate tail proof. -/
  tail : Set α
  /-- Family of regions supporting the local proofs. -/
  cells : ι → Set α
  /-- Finite inventory of cells available to the coverage argument. -/
  indices : Finset ι
  /-- Pointwise property established by the local and tail proofs. -/
  property : α → Prop

/-- Reuse the accepted coverage theorem as an actual parameterized proof grammar. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceFixtures/Variantf7ed5ee2f753a2a045281ea1daecec80d24f11817a64ae9ca050190acc4f752c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceFixtures/Variantf7ed5ee2f753a2a045281ea1daecec80d24f11817a64ae9ca050190acc4f752c.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec3343e177b1baf33c95be26c47e2674cba8c781` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
