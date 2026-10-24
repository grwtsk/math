# iteratedFDerivComponent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a35496864403a88bc5b5f33fdd1a3ea85874e65a2ed929515b1e600b146f665b",
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
  "slug": "iteratedfderivcomponent--942085703bc61f544eb54da1",
  "source": {
    "blob": "5673e3ee94a2d607bd6a91444f39c8d0be9992ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1080,
    "line": 1061,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant7f871849d6bec1f381b3800f69e69843ff9657010bf0232da26da94964375669.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:942085703bc61f544eb54da15067b83d46c7f3eb1d86ad20d060b04bac516575",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant7f871849d6bec1f381b3800f69e69843ff9657010bf0232da26da94964375669.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a35496864403a88bc5b5f33fdd1a3ea85874e65a2ed929515b1e600b146f665b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1061–1080.

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

open scoped Classical in
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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant7f871849d6bec1f381b3800f69e69843ff9657010bf0232da26da94964375669.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant7f871849d6bec1f381b3800f69e69843ff9657010bf0232da26da94964375669.lean#L1061).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5673e3ee94a2d607bd6a91444f39c8d0be9992ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
