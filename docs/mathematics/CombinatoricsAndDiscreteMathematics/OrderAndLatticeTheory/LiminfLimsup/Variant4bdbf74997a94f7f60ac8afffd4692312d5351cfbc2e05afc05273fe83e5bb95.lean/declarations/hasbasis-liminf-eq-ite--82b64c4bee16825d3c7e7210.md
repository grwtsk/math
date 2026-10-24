# HasBasis.liminf_eq_ite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6e61e485b4114ebb9b0b55fabec32a39113e2b23",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1013,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4bdbf74997a94f7f60ac8afffd4692312d5351cfbc2e05afc05273fe83e5bb95.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65e29a52-3aa3-88d6-8a34-860eed3f8ad7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:693e4bbb-39be-3558-055f-1952bcf05d81",
  "kind": "theorem",
  "lexical_name": "HasBasis.liminf_eq_ite",
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
  "slug": "hasbasis-liminf-eq-ite--82b64c4bee16825d3c7e7210",
  "source": {
    "blob": "6e61e485b4114ebb9b0b55fabec32a39113e2b23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1039,
    "line": 1013,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variant4bdbf74997a94f7f60ac8afffd4692312d5351cfbc2e05afc05273fe83e5bb95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82b64c4bee16825d3c7e7210cf32f9bff3dd06e64c89bf1bac1e1e4c63ffc683",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variant4bdbf74997a94f7f60ac8afffd4692312d5351cfbc2e05afc05273fe83e5bb95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:693e4bbb-39be-3558-055f-1952bcf05d81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1013–1039.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasBasis.liminf_eq_ite {v : Filter ι} {p : ι' → Prop} {s : ι' → Set ι}
    [Countable (Subtype p)] [Nonempty (Subtype p)] (hv : v.HasBasis p s) (f : ι → α) :
    liminf f v = if ∃ (j : Subtype p), s j = ∅ then sSup univ else
      if ∀ (j : Subtype p), ¬BddBelow (range (fun (i : s j) ↦ f i)) then sSup ∅
      else ⨆ (j : Subtype p), ⨅ (i : s (liminf_reparam f s p j)), f i := by
  by_cases H : ∃ (j : Subtype p), s j = ∅
  · rw [if_pos H]
    rcases H with ⟨j, hj⟩
    simp [hv.liminf_eq_sSup_univ_of_empty j j.2 hj]
  rw [if_neg H]
  by_cases H' : ∀ (j : Subtype p), ¬BddBelow (range (fun (i : s j) ↦ f i))
  · have A : ∀ (j : Subtype p), ⋂ (i : s j), Iic (f i) = ∅ := by
      simp_rw [← not_nonempty_iff_eq_empty, nonempty_iInter_Iic_iff]
      exact H'
    simp_rw [if_pos H', hv.liminf_eq_sSup_iUnion_iInter, A, iUnion_empty]
  rw [if_neg H']
  apply hv.liminf_eq_ciSup_ciInf
  · push_neg at H
    simpa only [nonempty_iff_ne_empty] using H
  · push_neg at H'
    exact H'

/-- Given an indexed family of sets `s j` and a function `f`, then `limsup_reparam j` is equal
to `j` if `f` is bounded above on `s j`, and otherwise to some index `k` such that `f` is bounded
above on `s k` (if there exists one). To ensure good measurability behavior, this index `k` is
chosen as the minimal suitable index. This function is used to write down a limsup in a measurable
way, in `Filter.HasBasis.limsup_eq_ciInf_ciSup` and `Filter.HasBasis.limsup_eq_ite`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variant4bdbf74997a94f7f60ac8afffd4692312d5351cfbc2e05afc05273fe83e5bb95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variant4bdbf74997a94f7f60ac8afffd4692312d5351cfbc2e05afc05273fe83e5bb95.lean#L1013).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e61e485b4114ebb9b0b55fabec32a39113e2b23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
