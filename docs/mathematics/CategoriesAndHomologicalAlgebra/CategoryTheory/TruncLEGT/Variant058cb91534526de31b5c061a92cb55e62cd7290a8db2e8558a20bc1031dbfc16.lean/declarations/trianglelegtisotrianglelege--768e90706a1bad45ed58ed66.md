# triangleLEGTIsoTriangleLEGE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f4cab07ede0b839bf31f34d838ca0c2b69d0a7e0ed12d5e506b770a0382de778",
  "kind": "def",
  "lexical_name": "triangleLEGTIsoTriangleLEGE",
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
  "slug": "trianglelegtisotrianglelege--768e90706a1bad45ed58ed66",
  "source": {
    "blob": "d676903f0c35f56084dd73aaf5c39433bbb3c740",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 228,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TruncLEGT/Variant058cb91534526de31b5c061a92cb55e62cd7290a8db2e8558a20bc1031dbfc16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:768e90706a1bad45ed58ed66019b28f89606e49d98f46ccc235c7e2e5fa3ef38",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TruncLEGT/Variant058cb91534526de31b5c061a92cb55e62cd7290a8db2e8558a20bc1031dbfc16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f4cab07ede0b839bf31f34d838ca0c2b69d0a7e0ed12d5e506b770a0382de778`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def triangleLEGTIsoTriangleLEGE (a b : ℤ) (h : a + 1 = b) :
    t.triangleLEGT a ≅ t.triangleLEGE a b h :=
  Triangle.functorIsoMk _ _ (Iso.refl _) (Iso.refl _) (t.truncGTIsoTruncGE a b h)
    (by cat_disch) (by cat_disch) (by
      ext
      dsimp [truncGTδLE]
      subst h
      simp only [Functor.map_id, Category.comp_id])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TruncLEGT/Variant058cb91534526de31b5c061a92cb55e62cd7290a8db2e8558a20bc1031dbfc16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TruncLEGT/Variant058cb91534526de31b5c061a92cb55e62cd7290a8db2e8558a20bc1031dbfc16.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d676903f0c35f56084dd73aaf5c39433bbb3c740` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
