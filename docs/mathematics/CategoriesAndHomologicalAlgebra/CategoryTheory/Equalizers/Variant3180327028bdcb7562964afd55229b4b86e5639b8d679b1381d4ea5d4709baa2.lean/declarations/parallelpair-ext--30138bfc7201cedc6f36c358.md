# parallelPair.ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5258051e043cccb05f2cbbaa49aae95a4970bfa898ae573f98de55c5f52ecdac",
  "kind": "def",
  "lexical_name": "parallelPair.ext",
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
  "slug": "parallelpair-ext--30138bfc7201cedc6f36c358",
  "source": {
    "blob": "4d936506d9f9eace0673f0cc79aa8ee4d6e85278",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 283,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant3180327028bdcb7562964afd55229b4b86e5639b8d679b1381d4ea5d4709baa2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30138bfc7201cedc6f36c358ca800c2b088198c43007f3b0a3ac0814c0945561",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant3180327028bdcb7562964afd55229b4b86e5639b8d679b1381d4ea5d4709baa2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5258051e043cccb05f2cbbaa49aae95a4970bfa898ae573f98de55c5f52ecdac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parallelPair.ext {F G : WalkingParallelPair ⥤ C} (zero : F.obj zero ≅ G.obj zero)
    (one : F.obj one ≅ G.obj one) (left : F.map left ≫ one.hom = zero.hom ≫ G.map left)
    (right : F.map right ≫ one.hom = zero.hom ≫ G.map right) : F ≅ G :=
  NatIso.ofComponents
    (by
      rintro ⟨j⟩
      exacts [zero, one])
    (by rintro _ _ ⟨_⟩ <;> simp [left, right])
#align category_theory.limits.parallel_pair.ext CategoryTheory.Limits.parallelPair.ext

/-- Construct a natural isomorphism between `parallelPair f g` and `parallelPair f' g'` given
equalities `f = f'` and `g = g'`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant3180327028bdcb7562964afd55229b4b86e5639b8d679b1381d4ea5d4709baa2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant3180327028bdcb7562964afd55229b4b86e5639b8d679b1381d4ea5d4709baa2.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d936506d9f9eace0673f0cc79aa8ee4d6e85278` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
