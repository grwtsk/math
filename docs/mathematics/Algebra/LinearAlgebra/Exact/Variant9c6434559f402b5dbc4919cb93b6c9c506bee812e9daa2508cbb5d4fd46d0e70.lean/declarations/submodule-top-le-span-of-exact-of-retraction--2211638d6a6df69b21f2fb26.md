# Submodule.top_le_span_of_exact_of_retraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09d79670-be67-e24a-0ae5-5c67989fed6e",
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
  "slug": "submodule-top-le-span-of-exact-of-retraction--2211638d6a6df69b21f2fb26",
  "source": {
    "blob": "6f1220a2482bf3f8450ee4225ae4fabc767526c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 80,
    "path": "GRWTSK/Algebra/LinearAlgebra/Exact/Variant9c6434559f402b5dbc4919cb93b6c9c506bee812e9daa2508cbb5d4fd46d0e70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2211638d6a6df69b21f2fb26fcf915ffc1136113e8a87d52cd0768c8c33c0ff4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Exact/Variant9c6434559f402b5dbc4919cb93b6c9c506bee812e9daa2508cbb5d4fd46d0e70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09d79670-be67-e24a-0ae5-5c67989fed6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–94.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Exact/Variant9c6434559f402b5dbc4919cb93b6c9c506bee812e9daa2508cbb5d4fd46d0e70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Exact/Variant9c6434559f402b5dbc4919cb93b6c9c506bee812e9daa2508cbb5d4fd46d0e70.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f1220a2482bf3f8450ee4225ae4fabc767526c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
