# Arrow.homMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:566fb589785ae7491f976aaeda3b66f838f8eee0bba494b8a6c7687ecac5e0d1",
  "kind": "def",
  "lexical_name": "Arrow.homMk",
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
  "slug": "arrow-hommk--563af19ca1520d888ddec34a",
  "source": {
    "blob": "b9ed750bc5ba48fd64d0d9b5373353575df2584f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 559,
    "line": 551,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant1e263a4cd73fbe9358bf0bb51c1f6a6ccd989246f9ee7767a176b75913d74790.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:563af19ca1520d888ddec34a5c0b592bbc154acee3cf1e7fc21c94eea96c44e9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant1e263a4cd73fbe9358bf0bb51c1f6a6ccd989246f9ee7767a176b75913d74790.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:566fb589785ae7491f976aaeda3b66f838f8eee0bba494b8a6c7687ecac5e0d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 551–559.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def Arrow.homMk {A B : P.Arrow Q W} (f : A.left ⟶ B.left) (g : A.right ⟶ B.right)
    (w : f ≫ B.hom = A.hom ≫ g := by cat_disch)
    (hf : Q f := by trivial) (hg : W g := by trivial) : A ⟶ B where
  __ := CategoryTheory.Arrow.homMk f g w
  prop_hom_left := hf
  prop_hom_right := hg

/-- Make an isomorphism in `P.Arrow Q X` from isomorphisms in `T` with compatibilities. -/
@[simps! hom_left inv_left]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant1e263a4cd73fbe9358bf0bb51c1f6a6ccd989246f9ee7767a176b75913d74790.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant1e263a4cd73fbe9358bf0bb51c1f6a6ccd989246f9ee7767a176b75913d74790.lean#L551).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9ed750bc5ba48fd64d0d9b5373353575df2584f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
