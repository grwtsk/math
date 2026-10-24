# isoSum_inv_app_inr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86f0e8c6-1055-675d-4739-f16d90e61c17",
  "kind": "lemma",
  "lexical_name": "isoSum_inv_app_inr",
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
  "slug": "isosum-inv-app-inr--3f86a21db4b46ce2a108561f",
  "source": {
    "blob": "a465ddcb9e973ac51916d8f0770e7bc01a6deff6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 259,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf395c6dc1ba0d719871a5d4d3da25c202b5085f9df2c1b24f32158efadf8a4d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f86a21db4b46ce2a108561ff067235800c8bd250e3ab2803383c582de9be7ce",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf395c6dc1ba0d719871a5d4d3da25c202b5085f9df2c1b24f32158efadf8a4d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86f0e8c6-1055-675d-4739-f16d90e61c17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isoSum_inv_app_inr : (isoSum F).inv.app (inr b) = 𝟙 (F.obj (inr b)) := rfl

end

end Functor

namespace NatTrans

variable {A : Type u₁} [Category.{v₁} A] {B : Type u₂} [Category.{v₂} B] {C : Type u₃}
  [Category.{v₃} C] {D : Type u₄} [Category.{v₄} D]

/-- The sum of two natural transformations, where all functors have the same target category. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf395c6dc1ba0d719871a5d4d3da25c202b5085f9df2c1b24f32158efadf8a4d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf395c6dc1ba0d719871a5d4d3da25c202b5085f9df2c1b24f32158efadf8a4d7.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a465ddcb9e973ac51916d8f0770e7bc01a6deff6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
