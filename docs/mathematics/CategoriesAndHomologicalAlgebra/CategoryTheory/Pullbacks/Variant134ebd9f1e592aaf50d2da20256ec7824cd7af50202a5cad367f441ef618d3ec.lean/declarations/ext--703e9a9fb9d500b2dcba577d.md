# ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d89e396089a8ccfdee7d4df8aae8a81f7b4455011f436e68510c2ac4f5b3da40",
  "kind": "def",
  "lexical_name": "ext",
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
  "slug": "ext--703e9a9fb9d500b2dcba577d",
  "source": {
    "blob": "491c5ad64b6bb8914918c2875cb764857511420e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 925,
    "line": 918,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant134ebd9f1e592aaf50d2da20256ec7824cd7af50202a5cad367f441ef618d3ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:703e9a9fb9d500b2dcba577d000ca6a2cb2a494d25b16218244f5f129375d910",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant134ebd9f1e592aaf50d2da20256ec7824cd7af50202a5cad367f441ef618d3ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d89e396089a8ccfdee7d4df8aae8a81f7b4455011f436e68510c2ac4f5b3da40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 918–925.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ext {s t : PushoutCocone f g} (i : s.pt ≅ t.pt) (w₁ : s.inl ≫ i.hom = t.inl)
    (w₂ : s.inr ≫ i.hom = t.inr) : s ≅ t :=
  WalkingSpan.ext i w₁ w₂
#align category_theory.limits.pushout_cocone.ext CategoryTheory.Limits.PushoutCocone.ext

/-- This is a more convenient formulation to show that a `PushoutCocone` constructed using
`PushoutCocone.mk` is a colimit cocone.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant134ebd9f1e592aaf50d2da20256ec7824cd7af50202a5cad367f441ef618d3ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant134ebd9f1e592aaf50d2da20256ec7824cd7af50202a5cad367f441ef618d3ec.lean#L918).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `491c5ad64b6bb8914918c2875cb764857511420e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
