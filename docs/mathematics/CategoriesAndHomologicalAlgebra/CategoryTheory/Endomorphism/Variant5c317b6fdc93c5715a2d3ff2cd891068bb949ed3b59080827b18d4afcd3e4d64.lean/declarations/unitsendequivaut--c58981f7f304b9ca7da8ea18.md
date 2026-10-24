# unitsEndEquivAut

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11eec9665119d999ce9e90cd0ea2e0df46fccf2a577623af3b080e721a7ffdc5",
  "kind": "def",
  "lexical_name": "unitsEndEquivAut",
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
  "slug": "unitsendequivaut--c58981f7f304b9ca7da8ea18",
  "source": {
    "blob": "551d334b184f2acd5129bf832af581cab54149ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 153,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant5c317b6fdc93c5715a2d3ff2cd891068bb949ed3b59080827b18d4afcd3e4d64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c58981f7f304b9ca7da8ea1817673b0b82f02c15c3402c8c9fb778ed03f8f1df",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant5c317b6fdc93c5715a2d3ff2cd891068bb949ed3b59080827b18d4afcd3e4d64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11eec9665119d999ce9e90cd0ea2e0df46fccf2a577623af3b080e721a7ffdc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unitsEndEquivAut : (End X)ˣ ≃* Aut X where
  toFun f := ⟨f.1, f.2, f.4, f.3⟩
  invFun f := ⟨f.1, f.2, f.4, f.3⟩
  map_mul' f g := by cases f; cases g; rfl

/-- The inclusion of `Aut X` to `End X` as a monoid homomorphism. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant5c317b6fdc93c5715a2d3ff2cd891068bb949ed3b59080827b18d4afcd3e4d64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant5c317b6fdc93c5715a2d3ff2cd891068bb949ed3b59080827b18d4afcd3e4d64.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `551d334b184f2acd5129bf832af581cab54149ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
