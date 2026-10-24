# compLinearMapMultilinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a800852cae5ce7c979d6cfc1fd5a6090d7c43aa80be923e24c8687f6097f9e3f",
  "kind": "def",
  "lexical_name": "compLinearMapMultilinear",
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
  "slug": "complinearmapmultilinear--ca389ce6c53adc52209a2bc1",
  "source": {
    "blob": "5673e3ee94a2d607bd6a91444f39c8d0be9992ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1138,
    "line": 1109,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant7f871849d6bec1f381b3800f69e69843ff9657010bf0232da26da94964375669.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca389ce6c53adc52209a2bc14e705b4467cf3d27accfb7becb6c352f0c7a2522",
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

Occurrence: `declaration:a800852cae5ce7c979d6cfc1fd5a6090d7c43aa80be923e24c8687f6097f9e3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1109–1138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps] def compLinearMapMultilinear :
    @MultilinearMap R ι (fun i ↦ M₁ i →ₗ[R] M₁' i)
      ((MultilinearMap R M₁' M₂) →ₗ[R] MultilinearMap R M₁ M₂) _ _ _
        (fun _ ↦ LinearMap.module) _ where
  toFun := MultilinearMap.compLinearMapₗ
  map_update_add' := by
    intro _ f i f₁ f₂
    ext g x
    change (g fun j ↦ update f i (f₁ + f₂) j <| x j) =
        (g fun j ↦ update f i f₁ j <| x j) + g fun j ↦ update f i f₂ j (x j)
    let c : Π (i : ι), (M₁ i →ₗ[R] M₁' i) → M₁' i := fun i f ↦ f (x i)
    convert! g.map_update_add (fun j ↦ f j (x j)) i (f₁ (x i)) (f₂ (x i)) with j j j
    · exact Function.apply_update c f i (f₁ + f₂) j
    · exact Function.apply_update c f i f₁ j
    · exact Function.apply_update c f i f₂ j
  map_update_smul' := by
    intro _ f i a f₀
    ext g x
    change (g fun j ↦ update f i (a • f₀) j <| x j) = a • g fun j ↦ update f i f₀ j (x j)
    let c : Π (i : ι), (M₁ i →ₗ[R] M₁' i) → M₁' i := fun i f ↦ f (x i)
    convert! g.map_update_smul (fun j ↦ f j (x j)) i a (f₀ (x i)) with j j j
    · exact Function.apply_update c f i (a • f₀) j
    · exact Function.apply_update c f i f₀ j

/--
Let `M₁ᵢ` and `M₁ᵢ'` be two families of `R`-modules and `M₂` an `R`-module.
Let us denote `Π i, M₁ᵢ` and `Π i, M₁ᵢ'` by `M` and `M'` respectively.
If `g` is a multilinear map `M' → M₂`, then `g` can be reinterpreted as a multilinear
map from `Π i, M₁ᵢ ⟶ M₁ᵢ'` to `M ⟶ M₂` via `(fᵢ) ↦ v ↦ g(fᵢ vᵢ)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant7f871849d6bec1f381b3800f69e69843ff9657010bf0232da26da94964375669.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant7f871849d6bec1f381b3800f69e69843ff9657010bf0232da26da94964375669.lean#L1109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5673e3ee94a2d607bd6a91444f39c8d0be9992ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
