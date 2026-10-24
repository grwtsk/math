# even.algHom_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c5e55661dfcb6486dec30c345da02fd83552f7eb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/072a64e19bd5eb098f2449156810d9b347745d7f5dfc56066faf253988a42a33.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f02e97a2-cd7b-eab9-cb6b-cd172e307757",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:abd45afa-4674-bf44-3964-150ecfeae6e6",
  "kind": "theorem",
  "lexical_name": "even.algHom_ext",
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
  "slug": "even-alghom-ext--de7d89197acb906bc47768d4",
  "source": {
    "blob": "c5e55661dfcb6486dec30c345da02fd83552f7eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 118,
    "path": "GRWTSK/Algebra/LinearAlgebra/Even/Variant072a64e19bd5eb098f2449156810d9b347745d7f5dfc56066faf253988a42a33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de7d89197acb906bc47768d4c4e6edb788257bf465aa41f8fe703b669613e4cc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Even/Variant072a64e19bd5eb098f2449156810d9b347745d7f5dfc56066faf253988a42a33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abd45afa-4674-bf44-3964-150ecfeae6e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem even.algHom_ext ⦃f g : even Q →ₐ[R] A⦄ (h : (even.ι Q).compr₂ f = (even.ι Q).compr₂ g) :
    f = g := by
  rw [EvenHom.ext_iff] at h
  ext ⟨x, hx⟩
  refine' even_induction _ _ _ _ _ hx
  · intro r
    exact (f.commutes r).trans (g.commutes r).symm
  · intro x y hx hy ihx ihy
    have := congr_arg₂ (· + ·) ihx ihy
    exact (f.map_add _ _).trans (this.trans <| (g.map_add _ _).symm)
  · intro m₁ m₂ x hx ih
    have := congr_arg₂ (· * ·) (LinearMap.congr_fun (LinearMap.congr_fun h m₁) m₂) ih
    exact (f.map_mul _ _).trans (this.trans <| (g.map_mul _ _).symm)
#align clifford_algebra.even.alg_hom_ext CliffordAlgebra.even.algHom_ext

variable {Q}

namespace even.lift

/-- An auxiliary submodule used to store the half-applied values of `f`.
This is the span of elements `f'` such that `∃ x m₂, ∀ m₁, f' m₁ = f m₁ m₂ * x`.  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Even/Variant072a64e19bd5eb098f2449156810d9b347745d7f5dfc56066faf253988a42a33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Even/Variant072a64e19bd5eb098f2449156810d9b347745d7f5dfc56066faf253988a42a33.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5e55661dfcb6486dec30c345da02fd83552f7eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
