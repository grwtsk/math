# mvPolynomial_zeroLocus_definable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c80853d3fff676163418f5cf04add97d699594f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/53a07b30f8f7030fe648d88e8db11be934fdb2db8309a8d18b4f1c58d5e9f8e4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f819a690-6208-7ec6-b612-58179dca545a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b6a1359d-f22b-555c-c124-ab2c1d30ddb3",
  "kind": "theorem",
  "lexical_name": "mvPolynomial_zeroLocus_definable",
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
  "slug": "mvpolynomial-zerolocus-definable--64aa55d3a3d51865b5cf94c1",
  "source": {
    "blob": "c80853d3fff676163418f5cf04add97d699594f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant53a07b30f8f7030fe648d88e8db11be934fdb2db8309a8d18b4f1c58d5e9f8e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64aa55d3a3d51865b5cf94c115703ef3df562d0c66a96997f7123edc5352e754",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant53a07b30f8f7030fe648d88e8db11be934fdb2db8309a8d18b4f1c58d5e9f8e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6a1359d-f22b-555c-c124-ab2c1d30ddb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mvPolynomial_zeroLocus_definable {ι K : Type*} [Field K]
    [CompatibleRing K] (S : Finset (MvPolynomial ι K)) :
    Set.Definable (⋃ p ∈ S, p.coeff '' p.support : Set K) Language.ring
      (zeroLocus (Ideal.span (S : Set (MvPolynomial ι K)))) := by
  rw [Set.definable_iff_exists_formula_sum]
  let p' := genericPolyMap (fun p : S => p.1.support)
  letI := Classical.decEq ι
  letI := Classical.decEq K
  rw [MvPolynomial.zeroLocus_span]
  refine ⟨BoundedFormula.iInf
      (fun i : S => Term.equal
        ((termOfFreeCommRing (p' i)).relabel
          (Sum.map (fun p => ⟨p.1.1.coeff p.2.1, by
            simp only [Set.mem_iUnion]
            exact ⟨p.1.1, p.1.2, Set.mem_image_of_mem _ p.2.2⟩⟩) id)) 0), ?_⟩
  -- Squeezing this simp slows it down significantly. Please measure before removing.
  simp? [Formula.Realize, Term.equal, Function.comp_def, p'] says
    simp only [Finset.mem_coe, Formula.Realize, Term.equal, Term.relabel_relabel,
    Function.comp_def, realize_iInf, realize_bdEqual, Term.realize_relabel, Sum.elim_inl,
    realize_termOfFreeCommRing, lift_genericPolyMap, Sum.map_inr, id_eq, Sum.elim_inr, Sum.map_inl,
    MvPolynomialSupportLEEquiv_symm_apply_coeff, realize_zero, Subtype.forall, p']

end Ring

end FirstOrder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant53a07b30f8f7030fe648d88e8db11be934fdb2db8309a8d18b4f1c58d5e9f8e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant53a07b30f8f7030fe648d88e8db11be934fdb2db8309a8d18b4f1c58d5e9f8e4.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c80853d3fff676163418f5cf04add97d699594f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
