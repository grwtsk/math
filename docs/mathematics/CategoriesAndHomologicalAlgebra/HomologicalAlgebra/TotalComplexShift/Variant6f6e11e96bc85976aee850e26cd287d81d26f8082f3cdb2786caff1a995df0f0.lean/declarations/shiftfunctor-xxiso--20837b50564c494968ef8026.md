# shiftFunctor₁XXIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6572b51d4bbc606b966fb983bd2e6dc56bc9d98b7c36448f49e9ada2ee742b5b",
  "kind": "def",
  "lexical_name": "shiftFunctor₁XXIso",
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
  "slug": "shiftfunctor-xxiso--20837b50564c494968ef8026",
  "source": {
    "blob": "2d91aa6f4ce8e18edc862d3e7dbe896edd414046",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 60,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20837b50564c494968ef8026fd0a3055815ab8d6a8045b5944112302078d1c5d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6572b51d4bbc606b966fb983bd2e6dc56bc9d98b7c36448f49e9ada2ee742b5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def shiftFunctor₁XXIso (a x a' : ℤ) (h : a' = a + x) (b : ℤ) :
    (((shiftFunctor₁ C x).obj K).X a).X b ≅ (K.X a').X b := eqToIso (by subst h; rfl)

/-- The isomorphism `(((shiftFunctor₂ C y).obj K).X a).X b ≅ (K.X a).X b'` when `b' = b + y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d91aa6f4ce8e18edc862d3e7dbe896edd414046` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
