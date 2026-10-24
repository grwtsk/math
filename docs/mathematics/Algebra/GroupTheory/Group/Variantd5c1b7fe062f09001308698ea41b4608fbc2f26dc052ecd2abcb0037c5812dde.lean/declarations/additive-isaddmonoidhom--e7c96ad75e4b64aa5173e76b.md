# Additive.isAddMonoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93ad8d24-6f59-e93c-8f6a-574eae2778c1",
  "kind": "theorem",
  "lexical_name": "Additive.isAddMonoidHom",
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
  "slug": "additive-isaddmonoidhom--e7c96ad75e4b64aa5173e76b",
  "source": {
    "blob": "242555ab14b88c1022ba17b076fbc5d3d30cebf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 464,
    "line": 460,
    "path": "GRWTSK/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7c96ad75e4b64aa5173e76b9e17957ddbd3d6f354d714ba1dfa9ec8fe2ccc6b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93ad8d24-6f59-e93c-8f6a-574eae2778c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 460–464.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Additive.isAddMonoidHom [MulOneClass α] [MulOneClass β] {f : α → β}
    (hf : IsMonoidHom f) : @IsAddMonoidHom (Additive α) (Additive β) _ _ f :=
  { Additive.isAddHom hf.toIsMulHom with map_zero := hf.map_one }
#align additive.is_add_monoid_hom Additive.isAddMonoidHom

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Group/Variantd5c1b7fe062f09001308698ea41b4608fbc2f26dc052ecd2abcb0037c5812dde.lean#L460).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `242555ab14b88c1022ba17b076fbc5d3d30cebf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
