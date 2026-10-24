# apply_zero_path

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "293583c0136be647b00b520209c95076e78bfd01",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 227,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b1dcd8354e9a68faba0db20fbeb8bcf5b1e629602ab4dfd544bbac6e33dc366d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3bcd28d5-821a-1be2-abdf-5558661382c2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7eab3711-eb30-77e7-6d82-e6e067f0461f",
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
  "slug": "apply-zero-path--d69f51a148b5112ce90c860a",
  "source": {
    "blob": "293583c0136be647b00b520209c95076e78bfd01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 227,
    "path": "GRWTSK/Topology/AlgebraicTopology/InducedMaps/Variantb1dcd8354e9a68faba0db20fbeb8bcf5b1e629602ab4dfd544bbac6e33dc366d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d69f51a148b5112ce90c860a43129289c2b2b8d0dc7bec17dc96b3a219752ee0",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/InducedMaps/Variantb1dcd8354e9a68faba0db20fbeb8bcf5b1e629602ab4dfd544bbac6e33dc366d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7eab3711-eb30-77e7-6d82-e6e067f0461f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem apply_zero_path : (πₘ (TopCat.ofHom f)).map p = hcast (H.apply_zero x₀).symm ≫
    (πₘ (TopCat.ofHom H.uliftMap)).map
      (prodToProdTopI (𝟙 (@fromTop ↧_ (ULift.up 0))) p) ≫
    hcast (H.apply_zero x₁) :=
  Quotient.inductionOn p fun p' => by
    apply @eq_path_of_eq_image _ _ _ _ H.uliftMap _ _ _ _ _ ((Path.refl (ULift.up _)).prod p')
    intros
    rw [Path.prod_coe, ulift_apply H]
    simp

/-- Proof that `g(p) = H(1 ⟶ 1, p)`, with the appropriate casts -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/InducedMaps/Variantb1dcd8354e9a68faba0db20fbeb8bcf5b1e629602ab4dfd544bbac6e33dc366d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/InducedMaps/Variantb1dcd8354e9a68faba0db20fbeb8bcf5b1e629602ab4dfd544bbac6e33dc366d.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `293583c0136be647b00b520209c95076e78bfd01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
