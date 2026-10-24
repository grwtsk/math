# liftMonoid_symm_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb1cb684-3acb-ce13-3d1d-39012fd61535",
  "kind": "theorem",
  "lexical_name": "liftMonoid_symm_coe",
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
  "slug": "liftmonoid-symm-coe--7f899a2cd6df5593533d6e31",
  "source": {
    "blob": "3060e64081b3e4fe91eb13fdf8daee28c6486f6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 534,
    "line": 529,
    "path": "GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variante8dda905f0d6000bf4a913575e660576f449ccdd753075cd95fe511d6a802ca9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f899a2cd6df5593533d6e31e391ab95e6c3bf81a2b9120460b92db9a369d548",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/FreeAbelianGroup/Variante8dda905f0d6000bf4a913575e660576f449ccdd753075cd95fe511d6a802ca9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb1cb684-3acb-ce13-3d1d-39012fd61535`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 529–534.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftMonoid_symm_coe (f : FreeAbelianGroup α →+* R) :
    ⇑(liftMonoid.symm f) = lift.symm f :=
  rfl

end Monoid

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/FreeAbelianGroup/Variante8dda905f0d6000bf4a913575e660576f449ccdd753075cd95fe511d6a802ca9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variante8dda905f0d6000bf4a913575e660576f449ccdd753075cd95fe511d6a802ca9.lean#L529).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3060e64081b3e4fe91eb13fdf8daee28c6486f6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
