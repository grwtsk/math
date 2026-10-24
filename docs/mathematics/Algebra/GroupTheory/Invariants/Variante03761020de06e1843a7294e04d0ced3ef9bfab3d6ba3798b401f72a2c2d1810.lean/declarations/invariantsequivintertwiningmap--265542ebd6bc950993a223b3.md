# invariantsEquivIntertwiningMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c0518ed2d10d5d04498b22b551a01392cee2bff5fea39ccb7cc1300d886731c3",
  "kind": "def",
  "lexical_name": "invariantsEquivIntertwiningMap",
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
  "slug": "invariantsequivintertwiningmap--265542ebd6bc950993a223b3",
  "source": {
    "blob": "e0c2930575c4b551cc05f8cbd9a56f4aef78951d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 110,
    "path": "GRWTSK/Algebra/GroupTheory/Invariants/Variante03761020de06e1843a7294e04d0ced3ef9bfab3d6ba3798b401f72a2c2d1810.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:265542ebd6bc950993a223b3de014648836993f7111407b1dca4e634fc73cb76",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Invariants/Variante03761020de06e1843a7294e04d0ced3ef9bfab3d6ba3798b401f72a2c2d1810.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c0518ed2d10d5d04498b22b551a01392cee2bff5fea39ccb7cc1300d886731c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def invariantsEquivIntertwiningMap : (linHom ρ σ).invariants ≃ₗ[k] IntertwiningMap ρ σ where
  toFun f := f.val.intertwiningMap_of_isIntertwiningMap ρ σ
    ((mem_linHom_invariants_iff_isIntertwining f.val).mp f.property).isIntertwining
  map_add' _ _ := IntertwiningMap.ext_iff.mpr rfl
  map_smul' _ _ := IntertwiningMap.ext_iff.mpr rfl
  invFun g :=
    { val := g.toLinearMap
      property := (mem_linHom_invariants_iff_isIntertwining g.toLinearMap).mpr
        { isIntertwining := g.isIntertwining } }

section

variable [Fintype G] [Invertible (Fintype.card G : k)]

/-- The action of `average k G` gives a projection map onto the subspace of invariants.
-/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Invariants/Variante03761020de06e1843a7294e04d0ced3ef9bfab3d6ba3798b401f72a2c2d1810.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Invariants/Variante03761020de06e1843a7294e04d0ced3ef9bfab3d6ba3798b401f72a2c2d1810.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0c2930575c4b551cc05f8cbd9a56f4aef78951d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
