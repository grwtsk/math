# exists_monic_span_sup_map_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "00fe5d9cce36d837a9f26b4e0e47424f0c7e6168",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1e48e4bbc30d465ecb74c74222443de9837bdef1e9cf1eec8dc5effed82b587b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96715bcc-b362-e8f1-da07-8b97119e406e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:04a1d23d-630e-9065-176a-0fa36fa7a29c",
  "kind": "lemma",
  "lexical_name": "exists_monic_span_sup_map_eq",
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
  "slug": "exists-monic-span-sup-map-eq--ef400b685895a3233cdbb1ad",
  "source": {
    "blob": "00fe5d9cce36d837a9f26b4e0e47424f0c7e6168",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 35,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/MonicSpan/Variant1e48e4bbc30d465ecb74c74222443de9837bdef1e9cf1eec8dc5effed82b587b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef400b685895a3233cdbb1ad05572156cf7f2e1763f3a4957ea220cd98c830e6",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/MonicSpan/Variant1e48e4bbc30d465ecb74c74222443de9837bdef1e9cf1eec8dc5effed82b587b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04a1d23d-630e-9065-176a-0fa36fa7a29c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_monic_span_sup_map_eq (p : Ideal R[X])
    (ism : (p.comap C).IsMaximal) (ne : p ≠ (p.comap C).map C) :
    ∃ f : R[X], f.Monic ∧ p = (p.comap C).map C ⊔ Ideal.span {f} := by
  let q := p.comap C
  let : Field (R ⧸ q) := Ideal.Quotient.field q
  have ne' : Ideal.map (mapRingHom (Ideal.Quotient.mk q)) p ≠ ⊥ := by
    simp only [ne_eq, map_eq_bot_iff_le_ker, Polynomial.ker_mapRingHom, q, mk_ker]
    exact not_le_of_gt (lt_of_le_of_ne Ideal.map_comap_le ne.symm)
  rcases Polynomial.exists_monic_span _ ne' with ⟨y, mony, hy⟩
  have : y ∈ lifts (Ideal.Quotient.mk q) := map_surjective _ Ideal.Quotient.mk_surjective _
  rcases Polynomial.lifts_and_natDegree_eq_and_monic this mony with ⟨f, hf, deg, monf⟩
  use f, monf
  trans comap (mapRingHom (Ideal.Quotient.mk q)) ((span {f}).map (mapRingHom (Ideal.Quotient.mk q)))
  · rw [Ideal.map_span, coe_mapRingHom, Set.image_singleton, hf, ← hy,
      Ideal.comap_map_of_surjective' _ (map_surjective _ Ideal.Quotient.mk_surjective)]
    simpa [Polynomial.ker_mapRingHom, q] using Ideal.map_comap_le
  · rw [Ideal.comap_map_of_surjective' _ (map_surjective _ Ideal.Quotient.mk_surjective),
      sup_comm, Polynomial.ker_mapRingHom, mk_ker]

end Polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/MonicSpan/Variant1e48e4bbc30d465ecb74c74222443de9837bdef1e9cf1eec8dc5effed82b587b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/MonicSpan/Variant1e48e4bbc30d465ecb74c74222443de9837bdef1e9cf1eec8dc5effed82b587b.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00fe5d9cce36d837a9f26b4e0e47424f0c7e6168` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
