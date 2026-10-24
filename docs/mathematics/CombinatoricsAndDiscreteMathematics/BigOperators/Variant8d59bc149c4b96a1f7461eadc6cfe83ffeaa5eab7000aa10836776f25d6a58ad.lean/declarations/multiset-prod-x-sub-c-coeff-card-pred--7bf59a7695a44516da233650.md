# multiset_prod_X_sub_C_coeff_card_pred

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2204f11-fcc5-e90e-d3dd-9d6abfcddc9d",
  "kind": "theorem",
  "lexical_name": "multiset_prod_X_sub_C_coeff_card_pred",
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
  "slug": "multiset-prod-x-sub-c-coeff-card-pred--7bf59a7695a44516da233650",
  "source": {
    "blob": "22631d5bbba8f7c0bd7bac57c40371f45dbacce8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 269,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bf59a7695a44516da233650f9e233a34aa341d0d56c0f285239565d20986144",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2204f11-fcc5-e90e-d3dd-9d6abfcddc9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiset_prod_X_sub_C_coeff_card_pred (t : Multiset R) (ht : 0 < Multiset.card t) :
    (t.map fun x => X - C x).prod.coeff ((Multiset.card t) - 1) = -t.sum := by
  nontriviality R
  convert multiset_prod_X_sub_C_nextCoeff (by assumption)
  rw [nextCoeff]; split_ifs with h
  · rw [natDegree_multiset_prod_of_monic] at h <;> simp only [Multiset.mem_map] at *
    swap
    · rintro _ ⟨_, _, rfl⟩
      apply monic_X_sub_C
    simp_rw [Multiset.sum_eq_zero_iff, Multiset.mem_map] at h
    contrapose! h
    obtain ⟨x, hx⟩ := card_pos_iff_exists_mem.mp ht
    exact ⟨_, ⟨_, ⟨x, hx, rfl⟩, natDegree_X_sub_C _⟩, one_ne_zero⟩
  congr; rw [natDegree_multiset_prod_of_monic] <;> · simp [natDegree_X_sub_C, monic_X_sub_C]
set_option linter.uppercaseLean3 false in
#align polynomial.multiset_prod_X_sub_C_coeff_card_pred Polynomial.multiset_prod_X_sub_C_coeff_card_pred

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22631d5bbba8f7c0bd7bac57c40371f45dbacce8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
