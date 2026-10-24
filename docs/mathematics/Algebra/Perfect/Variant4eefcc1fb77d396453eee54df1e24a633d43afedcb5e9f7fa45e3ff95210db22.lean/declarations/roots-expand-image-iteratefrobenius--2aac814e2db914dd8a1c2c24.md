# roots_expand_image_iterateFrobenius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46a0d524-8882-7ec5-08af-f184cc2d7ae2",
  "kind": "theorem",
  "lexical_name": "roots_expand_image_iterateFrobenius",
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
  "slug": "roots-expand-image-iteratefrobenius--2aac814e2db914dd8a1c2c24",
  "source": {
    "blob": "6aea37303222861166b3e97ad53e0fe5fb9880d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 325,
    "path": "GRWTSK/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2aac814e2db914dd8a1c2c24c65102f0e391199d75537945a2e17690145b0297",
  "verification": {
    "reference": "docs/verification/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46a0d524-8882-7ec5-08af-f184cc2d7ae2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem roots_expand_image_iterateFrobenius [DecidableEq R] :
    (expand R (p ^ n) f).roots.toFinset.image (iterateFrobenius R p n) = f.roots.toFinset := by
  rw [Finset.image_toFinset, roots_expand_pow_map_iterateFrobenius,
    (roots f).toFinset_nsmul _ (expChar_pow_pos R p n).ne']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6aea37303222861166b3e97ad53e0fe5fb9880d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
