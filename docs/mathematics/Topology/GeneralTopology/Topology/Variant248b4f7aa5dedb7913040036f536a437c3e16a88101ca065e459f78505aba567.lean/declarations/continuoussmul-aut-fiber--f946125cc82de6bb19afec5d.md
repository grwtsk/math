# continuousSMul_aut_fiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:17423f02f53b86a61d5f5d67a9629b0111b4c0f88b99947a00ee2face18238d7",
  "kind": "instance",
  "lexical_name": "continuousSMul_aut_fiber",
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
  "slug": "continuoussmul-aut-fiber--f946125cc82de6bb19afec5d",
  "source": {
    "blob": "674ea2d06bc0bd7fdf3776d619c6b881696e5572",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 122,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant248b4f7aa5dedb7913040036f536a437c3e16a88101ca065e459f78505aba567.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f946125cc82de6bb19afec5de7f99d4182fdc5e20a11a6e90b896e4b43667bcd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant248b4f7aa5dedb7913040036f536a437c3e16a88101ca065e459f78505aba567.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:17423f02f53b86a61d5f5d67a9629b0111b4c0f88b99947a00ee2face18238d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance continuousSMul_aut_fiber (X : C) : ContinuousSMul (Aut F) (F.obj X) where
  continuous_smul := by
    let g : Aut (F.obj X) × F.obj X → F.obj X := fun ⟨σ, x⟩ ↦ σ.hom x
    let h (q : Aut F × F.obj X) : Aut (F.obj X) × F.obj X :=
      ⟨((fun p ↦ p X) ∘ autEmbedding F) q.1, q.2⟩
    show Continuous (g ∘ h)
    fun_prop

/-- If `G` is a functor of categories of finite types, the induced map `Aut F → Aut (F ⋙ G)` is
continuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant248b4f7aa5dedb7913040036f536a437c3e16a88101ca065e459f78505aba567.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant248b4f7aa5dedb7913040036f536a437c3e16a88101ca065e459f78505aba567.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `674ea2d06bc0bd7fdf3776d619c6b881696e5572` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
