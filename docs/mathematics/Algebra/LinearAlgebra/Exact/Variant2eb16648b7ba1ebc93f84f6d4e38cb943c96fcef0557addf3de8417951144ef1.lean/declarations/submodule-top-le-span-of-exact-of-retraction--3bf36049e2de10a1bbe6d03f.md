# Submodule.top_le_span_of_exact_of_retraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4446cde0-2baa-d121-2ddd-5cdaa58ac89e",
  "kind": "lemma",
  "lexical_name": "Submodule.top_le_span_of_exact_of_retraction",
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
  "slug": "submodule-top-le-span-of-exact-of-retraction--3bf36049e2de10a1bbe6d03f",
  "source": {
    "blob": "d3232d19982d0cbbffa6d6d1520220396e6e10f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 87,
    "path": "GRWTSK/Algebra/LinearAlgebra/Exact/Variant2eb16648b7ba1ebc93f84f6d4e38cb943c96fcef0557addf3de8417951144ef1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3bf36049e2de10a1bbe6d03fc1090f92785327c7e405c1ddf4e6845972e1ee6c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Exact/Variant2eb16648b7ba1ebc93f84f6d4e38cb943c96fcef0557addf3de8417951144ef1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4446cde0-2baa-d121-2ddd-5cdaa58ac89e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Submodule.top_le_span_of_exact_of_retraction (hg : Function.Surjective g)
    (hsa : ∀ i, s (v (a i)) = 0) (hlib : LinearIndependent R (s ∘ v ∘ b))
    (hab : Codisjoint (Set.range a) (Set.range b))
    (hsp : ⊤ ≤ Submodule.span R (Set.range v)) :
    ⊤ ≤ Submodule.span R (Set.range <| g ∘ v ∘ a) := by
  apply top_le_span_of_aux hs hfg (Sum.elim (v ∘ a) (v ∘ b)) hg hsa hlib
  simp only [codisjoint_iff, Set.sup_eq_union, Set.top_eq_univ] at hab
  rwa [Set.Sum.elim_range, Set.range_comp, Set.range_comp, ← Set.image_union, hab, Set.image_univ]

/-- Let `0 → K → M → P → 0` be a split exact sequence of `R`-modules, let `s : M → K` be a
retraction of `f` and `v` be a basis of `M` indexed by `κ ⊕ σ`. Then
if `s vᵢ = 0` for `i : κ` and `(s vⱼ)ⱼ` is linear independent for `j : σ`, then
the images of `vᵢ` for `i : κ` form a basis of `P`.

For convenience this is stated for an arbitrary type `ι` with two maps `κ → ι` and `σ → ι`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Exact/Variant2eb16648b7ba1ebc93f84f6d4e38cb943c96fcef0557addf3de8417951144ef1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Exact/Variant2eb16648b7ba1ebc93f84f6d4e38cb943c96fcef0557addf3de8417951144ef1.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3232d19982d0cbbffa6d6d1520220396e6e10f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
