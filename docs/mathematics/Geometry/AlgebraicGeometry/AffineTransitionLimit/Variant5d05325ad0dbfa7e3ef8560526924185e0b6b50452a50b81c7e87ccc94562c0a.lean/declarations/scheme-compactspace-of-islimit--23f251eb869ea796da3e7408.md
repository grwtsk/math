# Scheme.compactSpace_of_isLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d722dad9181cfd6d7afa3fa039a957385fa07fe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 366,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:819ed8db-cec4-b0f3-c689-58502c01b1ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:169747d9-4174-cf44-da47-2a80d9c6b7c1",
  "kind": "lemma",
  "lexical_name": "Scheme.compactSpace_of_isLimit",
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
  "slug": "scheme-compactspace-of-islimit--23f251eb869ea796da3e7408",
  "source": {
    "blob": "9d722dad9181cfd6d7afa3fa039a957385fa07fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 366,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23f251eb869ea796da3e740805c92437cf06079c4c218450ee5251e6c52701ba",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:169747d9-4174-cf44-da47-2a80d9c6b7c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Scheme.compactSpace_of_isLimit [IsCofiltered I]
    [∀ {i j} (f : i ⟶ j), IsAffineHom (D.map f)] [∀ i, CompactSpace (D.obj i)] :
    CompactSpace c.pt := by
  obtain ⟨i⟩ := IsCofiltered.nonempty (C := I)
  have := isAffineHom_π_app _ _ hc
  exact QuasiCompact.compactSpace_of_compactSpace (c.π.app i)

/-!

## Cofiltered Limits and Schemes of Finite Type

Given a cofiltered diagram `D` of quasi-compact `S`-schemes with affine transition maps,
and another scheme `X` of finite type over `S`.
Then the canonical map `colim Homₛ(Dᵢ, X) ⟶ Homₛ(lim Dᵢ, X)` is injective.
In other words, for each pair of `a : Homₛ(Dᵢ, X)` and `b : Homₛ(Dⱼ, X)` that give rise to the
same map `Homₛ(lim Dᵢ, X)`, there exists a `k` with `fᵢ : k ⟶ i` and `fⱼ : k ⟶ j` such that
`D(fᵢ) ≫ a = D(fⱼ) ≫ b`.
This results is formalized in `Scheme.exists_hom_hom_comp_eq_comp_of_locallyOfFiniteType`.

We first reduce to the case `i = j`, and the goal is to reduce to the case where `X` and `S`
are affine, where the result follows from commutative algebra.

To achieve this, we show that there exists some `i₀ ⟶ i` such that for each `x`, `a x` and `b x`
are contained in the same component (i.e. given an open cover `𝒰ₛ` of `S`,
and `𝒰ₓ` of `X` refining `𝒰ₛ`, the range of `x ↦ (a x, b x)` falls in the diagonal part
`⋃ᵢⱼ 𝒰ₓⱼ ×[𝒰ₛᵢ] 𝒰ₓⱼ`).
Then we may restrict to the sub-diagram over `i₀` (which is cofinal because `D` is cofiltered),
and check locally on `X`, reducing to the affine case.

For the actual implementation, we wrap `i`, `a`, `b`, the limit cone `lim Dᵢ`, and open covers
of `X` and `S` into a structure `ExistsHomHomCompEqCompAux` for convenience.

See the injective part of (1) => (3) of https://stacks.math.columbia.edu/tag/01ZC.
-/

section LocallyOfFiniteType

variable [∀ i, CompactSpace (D.obj i)] [LocallyOfFiniteType f] [IsCofiltered I]

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
include hc in
/-- Subsumed by `Scheme.exists_hom_hom_comp_eq_comp_of_locallyOfFiniteType`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d722dad9181cfd6d7afa3fa039a957385fa07fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
