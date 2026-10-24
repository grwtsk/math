# fiberPerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5908c9562cb2e60ecc7d9b4645a9bc46c60693c73937314985f005778d969679",
  "kind": "def",
  "lexical_name": "fiberPerm",
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
  "slug": "fiberperm--94d2ecc565ea3e1dbd3ef909",
  "source": {
    "blob": "e677e57bba4bf43c32315a095e9a02efd3ccd9e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 230,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variantfa328199fe816b72de75a76192c12c5acbabdfbe6d3b72a9cee97aa726a46d52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:94d2ecc565ea3e1dbd3ef909a7c8df6a7b2ec8eb298809e47e7b17ee0032e412",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variantfa328199fe816b72de75a76192c12c5acbabdfbe6d3b72a9cee97aa726a46d52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5908c9562cb2e60ecc7d9b4645a9bc46c60693c73937314985f005778d969679`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private noncomputable def fiberPerm (b : F.obj A) : F.obj X ≃ F.obj X := by
  let σ (t : F.obj X) : F.obj X := F.map (selfProdProj u t) b
  apply Equiv.ofBijective σ
  apply Finite.injective_iff_bijective.mp
  intro t s (hs : F.map (selfProdProj u t) b = F.map (selfProdProj u s) b)
  change id t = id s
  have h' : selfProdProj u t = selfProdProj u s := evaluation_injective_of_isConnected F A X b hs
  rw [← selfProdProj_fiber h s, ← selfProdProj_fiber h t, h']

set_option backward.privateInPublic true in
/-- Twisting `u` by `fiberPerm h b` yields an inclusion of `A` into `selfProd F X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variantfa328199fe816b72de75a76192c12c5acbabdfbe6d3b72a9cee97aa726a46d52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variantfa328199fe816b72de75a76192c12c5acbabdfbe6d3b72a9cee97aa726a46d52.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e677e57bba4bf43c32315a095e9a02efd3ccd9e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
