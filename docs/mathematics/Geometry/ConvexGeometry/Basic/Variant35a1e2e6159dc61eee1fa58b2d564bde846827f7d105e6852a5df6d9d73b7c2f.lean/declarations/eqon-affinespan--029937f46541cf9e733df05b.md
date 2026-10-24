# eqOn_affineSpan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4950f932-cc6c-fbf9-0a8f-c152a3182fab",
  "kind": "theorem",
  "lexical_name": "eqOn_affineSpan",
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
  "slug": "eqon-affinespan--029937f46541cf9e733df05b",
  "source": {
    "blob": "8de1be405ca81df88563402e29d7e86c1fbd5f16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 683,
    "line": 676,
    "path": "GRWTSK/Geometry/ConvexGeometry/Basic/Variant35a1e2e6159dc61eee1fa58b2d564bde846827f7d105e6852a5df6d9d73b7c2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:029937f46541cf9e733df05b2d12e7699172e6a3165743686b2ba9712fe2d644",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Basic/Variant35a1e2e6159dc61eee1fa58b2d564bde846827f7d105e6852a5df6d9d73b7c2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4950f932-cc6c-fbf9-0a8f-c152a3182fab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 676–683.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eqOn_affineSpan {V₂ P₂ : Type*} [AddCommGroup V₂] [Module k V₂] [AddTorsor V₂ P₂]
    {s : Set P₁} {f g : P₁ →ᵃ[k] P₂}
    (h_agree : s.EqOn f g) : Set.EqOn f g (affineSpan k s) := by
  rcases s.eq_empty_or_nonempty with rfl | ⟨q, hq⟩; · simp
  rintro - ⟨x, hx, y, hy, rfl⟩
  simp [h_agree hx, linear_eqOn_vectorSpan h_agree hy]

/-- If two affine maps agree on a set that spans the entire space, then they are equal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Basic/Variant35a1e2e6159dc61eee1fa58b2d564bde846827f7d105e6852a5df6d9d73b7c2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Basic/Variant35a1e2e6159dc61eee1fa58b2d564bde846827f7d105e6852a5df6d9d73b7c2f.lean#L676).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8de1be405ca81df88563402e29d7e86c1fbd5f16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
