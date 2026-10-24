# equiv_free_prod_directSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d00839496e5c2d9cff32ed8b36766e66e260b12b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 257,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/045f88f612385ab1ea5f1b656ddef9315c958e842bb7ccf2db7a28f58676588f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3dfc6afe-f5ec-858b-77b8-7c7e6c37c459",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef63cfbe-8c5d-3db2-8f7e-cca29da852f4",
  "kind": "theorem",
  "lexical_name": "equiv_free_prod_directSum",
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
  "slug": "equiv-free-prod-directsum--5bb2a6689a48ccd0ce0b520b",
  "source": {
    "blob": "d00839496e5c2d9cff32ed8b36766e66e260b12b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 257,
    "path": "GRWTSK/Algebra/LinearAlgebra/PID/Variant045f88f612385ab1ea5f1b656ddef9315c958e842bb7ccf2db7a28f58676588f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bb2a6689a48ccd0ce0b520b63ccc114ad7c2e48778f4b2df8df3df2298b3cf6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PID/Variant045f88f612385ab1ea5f1b656ddef9315c958e842bb7ccf2db7a28f58676588f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef63cfbe-8c5d-3db2-8f7e-cca29da852f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equiv_free_prod_directSum [h' : Module.Finite R M] :
    ∃ (n : ℕ) (ι : Type u) (_ : Fintype ι) (p : ι → R) (_ : ∀ i, Irreducible <| p i) (e : ι → ℕ),
      Nonempty <| M ≃ₗ[R] (Fin n →₀ R) × ⨁ i : ι, R ⧸ R ∙ p i ^ e i := by
  obtain ⟨I, fI, p, hp, e, ⟨h⟩⟩ :=
    equiv_directSum_of_isTorsion.{u, v} (@torsion_isTorsion R M _ _ _)
  obtain ⟨n, ⟨g⟩⟩ := @Module.basisOfFiniteTypeTorsionFree' R _ (M ⧸ torsion R M) _ _ _ _ _ _
  obtain ⟨f, hf⟩ := Module.projective_lifting_property _ LinearMap.id (torsion R M).mkQ_surjective
  refine
    ⟨n, I, fI, p, hp, e,
      ⟨(lequivProdOfRightSplitExact (torsion R M).injective_subtype ?_ hf).symm.trans <|
          (h.prodCongr g).trans <| LinearEquiv.prodComm.{u, u} R _ (Fin n →₀ R) ⟩⟩
  rw [range_subtype, ker_mkQ]

open LinearMap in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PID/Variant045f88f612385ab1ea5f1b656ddef9315c958e842bb7ccf2db7a28f58676588f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PID/Variant045f88f612385ab1ea5f1b656ddef9315c958e842bb7ccf2db7a28f58676588f.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d00839496e5c2d9cff32ed8b36766e66e260b12b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
