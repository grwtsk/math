# reduce_to_affine_global

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bbf920420ae4fb78b438b0344e8b2b37c39d7e6d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:66c0eb7f-6dd3-9fc6-a72c-c0face1f647e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:46a5a322-c0a4-2728-48c9-3432fb5047ac",
  "kind": "theorem",
  "lexical_name": "reduce_to_affine_global",
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
  "slug": "reduce-to-affine-global--f1867faf752e18575128d1ce",
  "source": {
    "blob": "bbf920420ae4fb78b438b0344e8b2b37c39d7e6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 120,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1867faf752e18575128d1cea081fc4b375d9ba573000213c2ac742f240ece0f",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46a5a322-c0a4-2728-48c9-3432fb5047ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reduce_to_affine_global (P : ∀ {X : Scheme} (_ : X.Opens), Prop)
    {X : Scheme} (U : X.Opens)
    (h₁ : ∀ (X : Scheme) (U : X.Opens),
      (∀ x : U, ∃ (V : _) (_ : x.1 ∈ V) (_ : V ⟶ U), P V) → P U)
    (h₂ : ∀ (X Y) (f : X ⟶ Y) [IsOpenImmersion f],
      ∃ (U : X.Opens) (V : Y.Opens), U = ⊤ ∧ V = f.opensRange ∧ (P U → P V))
    (h₃ : ∀ R : CommRingCat, P (X := Spec R) ⊤) : P U := by
  apply h₁
  intro x
  obtain ⟨_, ⟨j, rfl⟩, hx, i⟩ :=
    X.affineBasisCover_is_basis.exists_subset_of_mem_open (SetLike.mem_coe.2 x.prop) U.isOpen
  let U' : Opens _ := ⟨_, (X.affineBasisCover.map_prop j).base_open.isOpen_range⟩
  let i' : U' ⟶ U := homOfLE i
  refine ⟨U', hx, i', ?_⟩
  obtain ⟨_, _, rfl, rfl, h₂'⟩ := h₂ _ _ (X.affineBasisCover.map j)
  apply h₂'
  apply h₃

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Properties/Variante64ba4e2cca7f8333c3a471ec69e0b98bd65299ab04a1cce84f0be70342a23d5.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbf920420ae4fb78b438b0344e8b2b37c39d7e6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
