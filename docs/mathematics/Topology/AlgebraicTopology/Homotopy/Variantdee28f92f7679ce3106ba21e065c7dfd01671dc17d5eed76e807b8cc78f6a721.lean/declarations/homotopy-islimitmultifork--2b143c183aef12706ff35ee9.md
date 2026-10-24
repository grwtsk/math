# Homotopy.isLimitMultifork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b1d36b27773d393d6a80bd8f64835f96750d870830f4fb700c901aef401be93f",
  "kind": "def",
  "lexical_name": "Homotopy.isLimitMultifork",
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
  "slug": "homotopy-islimitmultifork--2b143c183aef12706ff35ee9",
  "source": {
    "blob": "e3a1a1458883e1e8722ecefcbda6610a65933dcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 80,
    "path": "GRWTSK/Topology/AlgebraicTopology/Homotopy/Variantdee28f92f7679ce3106ba21e065c7dfd01671dc17d5eed76e807b8cc78f6a721.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b143c183aef12706ff35ee9ee665d8984d0992a673506d4887fa9de7caa69a8",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Homotopy/Variantdee28f92f7679ce3106ba21e065c7dfd01671dc17d5eed76e807b8cc78f6a721.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b1d36b27773d393d6a80bd8f64835f96750d870830f4fb700c901aef401be93f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Homotopy.isLimitMultifork (f : E.Hom F) (g : F.Hom E) (hgf : Homotopy (g.comp f) (.id F))
    {G : Cᵒᵖ ⥤ A} (hE : IsLimit (E.multifork G)) :
    IsLimit (F.multifork G) := by
  refine Multifork.IsLimit.mk _ ?_ ?_ ?_
  · intro t
    refine Multifork.IsLimit.lift hE (fun a ↦ t.ι (f.s₀ a) ≫ G.map (f.h₀ a).op) ?_
    intro b
    dsimp
    simp only [Category.assoc, ← Functor.map_comp, ← op_comp]
    rw [← f.w₁₁, ← f.w₁₂]
    simp only [op_comp, Functor.map_comp]
    exact t.condition_assoc ⟨(f.s₀ b.1.1, f.s₀ b.1.2), f.s₁ b.2⟩ _
  · intro t i
    simp only [multicospanIndex_left, multicospanShape_L, multifork_ι]
    have h1 := hgf.wl i
    have h2 := t.condition ⟨⟨_, _⟩, hgf.H i⟩
    dsimp at h1 h2
    rw [← g.w₀, op_comp, Functor.map_comp, ← E.multifork_ι, Multifork.IsLimit.fac_assoc,
      Category.assoc, ← Functor.map_comp, ← op_comp, ← h1, op_comp, Functor.map_comp,
      reassoc_of% h2, ← Functor.map_comp, ← op_comp, hgf.wr i]
    simp
  · intro t m hm
    refine Multifork.IsLimit.hom_ext hE fun i ↦ ?_
    rw [Multifork.IsLimit.fac, multifork_ι, ← f.w₀, op_comp, Functor.map_comp, ← F.multifork_ι,
      reassoc_of% hm]

/-- `E` and `F` are homotopy equivalent, then the multifork associated
to `E` is exact if and only if the multifork associated to `F` is exact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Homotopy/Variantdee28f92f7679ce3106ba21e065c7dfd01671dc17d5eed76e807b8cc78f6a721.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Homotopy/Variantdee28f92f7679ce3106ba21e065c7dfd01671dc17d5eed76e807b8cc78f6a721.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3a1a1458883e1e8722ecefcbda6610a65933dcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
