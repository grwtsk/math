# apply_zero_path

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5257616193dec9069c0c8d98098348978df1a6dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 169,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a2a62b7932acb6f22c8b729fb6a7aebc5958c6bc73cf1ba5ff38b4179bd9a94f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15cb1bb8-e64d-2fa5-9491-745d2e4ef4ee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a1015439-4b6c-caf7-cd09-7488b2eee71d",
  "kind": "theorem",
  "lexical_name": "apply_zero_path",
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
  "slug": "apply-zero-path--698a8c151e61f9f16b798d5f",
  "source": {
    "blob": "5257616193dec9069c0c8d98098348978df1a6dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 169,
    "path": "GRWTSK/Topology/AlgebraicTopology/InducedMaps/Varianta2a62b7932acb6f22c8b729fb6a7aebc5958c6bc73cf1ba5ff38b4179bd9a94f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:698a8c151e61f9f16b798d5f9cc53cddaab056b8829f63e8243becaf79bb5a40",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/InducedMaps/Varianta2a62b7932acb6f22c8b729fb6a7aebc5958c6bc73cf1ba5ff38b4179bd9a94f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1015439-4b6c-caf7-cd09-7488b2eee71d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem apply_zero_path : (πₘ f).map p = hcast (H.apply_zero x₀).symm ≫
    (πₘ H.uliftMap).map (prodToProdTopI (𝟙 (@fromTop (TopCat.of _) (ULift.up 0))) p) ≫
    hcast (H.apply_zero x₁) :=
  Quotient.inductionOn p fun p' => by
    apply @eq_path_of_eq_image _ _ _ _ H.uliftMap _ _ _ _ _ ((Path.refl (ULift.up _)).prod p')
    rw [Path.prod_coe]; simp_rw [ulift_apply]; simp
#align continuous_map.homotopy.apply_zero_path ContinuousMap.Homotopy.apply_zero_path

/-- Proof that `g(p) = H(1 ⟶ 1, p)`, with the appropriate casts -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/InducedMaps/Varianta2a62b7932acb6f22c8b729fb6a7aebc5958c6bc73cf1ba5ff38b4179bd9a94f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/InducedMaps/Varianta2a62b7932acb6f22c8b729fb6a7aebc5958c6bc73cf1ba5ff38b4179bd9a94f.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5257616193dec9069c0c8d98098348978df1a6dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
