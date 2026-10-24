# symm_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6766aac-4767-31ac-4551-ee92e3c7c01d",
  "kind": "theorem",
  "lexical_name": "symm_trans",
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
  "slug": "symm-trans--4911e6cb17aafc68541d138a",
  "source": {
    "blob": "f059a383bf3f5c1c318d8c0cd013e49de406c272",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 199,
    "path": "GRWTSK/Topology/AlgebraicTopology/TopPair/Variant092f50e13dacc13ff79dad27d3d29a94e6763b37dad4c60889e0e76437edaaed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4911e6cb17aafc68541d138a76616f7eb8676bdd94d6d89c04b8340bde63d198",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/TopPair/Variant092f50e13dacc13ff79dad27d3d29a94e6763b37dad4c60889e0e76437edaaed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6766aac-4767-31ac-4551-ee92e3c7c01d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symm_trans {f₀ f₁ f₂ : X ⟶ Y} (F : Homotopy f₀ f₁) (G : Homotopy f₁ f₂) :
    (F.trans G).symm = G.symm.trans F.symm := by
      ext : 1 <;> exact ContinuousMap.Homotopy.symm_trans _ _

set_option backward.isDefEq.respectTransparency false in
/-- If we have a `Homotopy g₀ g₁` and a `Homotopy f₀ f₁`, we can define a
`Homotopy (f₀ ≫ g₀) (f₁ ≫ g₁)` by `TopCat.Homotopy.comp` on the first and second components.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/TopPair/Variant092f50e13dacc13ff79dad27d3d29a94e6763b37dad4c60889e0e76437edaaed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/TopPair/Variant092f50e13dacc13ff79dad27d3d29a94e6763b37dad4c60889e0e76437edaaed.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f059a383bf3f5c1c318d8c0cd013e49de406c272` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
