# iteratedFDerivComponent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:558ca5e3aa63912f20b5e134b4fbe67814f5cfa9b88da8147f963928c371342a",
  "kind": "def",
  "lexical_name": "iteratedFDerivComponent",
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
  "slug": "iteratedfderivcomponent--07e5a3770e177a8921fa32c7",
  "source": {
    "blob": "a2b2a00c76a87ec6e1d861c21016714c5fbd3b12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1037,
    "line": 1018,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantd140b673a633ab0f467b5282902ae022c23b202ef1a5605e23c025c89e0ab87b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:07e5a3770e177a8921fa32c770747fa59ffa512154c98d94b794dca3bd22433e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variantd140b673a633ab0f467b5282902ae022c23b202ef1a5605e23c025c89e0ab87b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:558ca5e3aa63912f20b5e134b4fbe67814f5cfa9b88da8147f963928c371342a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1018–1037.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def iteratedFDerivComponent {α : Type*}
    (f : MultilinearMap R M₁ M₂) {s : Set ι} (e : α ≃ s) [DecidablePred (· ∈ s)] :
    MultilinearMap R (fun (i : {a : ι // a ∉ s}) ↦ M₁ i)
      (MultilinearMap R (fun (_ : α) ↦ (∀ i, M₁ i)) M₂) where
  toFun := fun z ↦
    { toFun := fun v ↦ domDomRestrictₗ f (fun i ↦ i ∈ s) z (fun i ↦ v (e.symm i) i)
      map_update_add' := by classical simp [iteratedFDeriv_aux]
      map_update_smul' := by classical simp [iteratedFDeriv_aux] }
  map_update_add' := by intros; ext; simp
  map_update_smul' := by intros; ext; simp

open Classical in
/-- The `k`-th iterated derivative of a multilinear map `f` at the point `x`. It is a multilinear
map of `k` vectors `v₁, ..., vₖ` (with the same type as `x`), mapping them
to `∑ f (x₁, (v_{i₁})₂, x₃, ...)`, where at each index `j` one uses either `xⱼ` or one
of the `(vᵢ)ⱼ`, and each `vᵢ` has to be used exactly once.
The sum is parameterized by the embeddings of `Fin k` in the index type `ι` (or, equivalently,
by the subsets `s` of `ι` of cardinality `k` and then the bijections between `Fin k` and `s`).

For the continuous version, see `ContinuousMultilinearMap.iteratedFDeriv`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variantd140b673a633ab0f467b5282902ae022c23b202ef1a5605e23c025c89e0ab87b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantd140b673a633ab0f467b5282902ae022c23b202ef1a5605e23c025c89e0ab87b.lean#L1018).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2b2a00c76a87ec6e1d861c21016714c5fbd3b12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
