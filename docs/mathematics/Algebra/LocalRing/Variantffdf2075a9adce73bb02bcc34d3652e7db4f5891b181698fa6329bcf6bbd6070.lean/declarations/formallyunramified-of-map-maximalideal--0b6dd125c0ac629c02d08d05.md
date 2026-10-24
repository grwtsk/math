# FormallyUnramified.of_map_maximalIdeal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9561d981adef35629d468401007745d68fccc2f7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ffdf2075a9adce73bb02bcc34d3652e7db4f5891b181698fa6329bcf6bbd6070.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5401b209-fd00-565a-9a86-a8c6811dde6b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c7aa4df4-3286-5b3c-8878-94031e5e3feb",
  "kind": "lemma",
  "lexical_name": "FormallyUnramified.of_map_maximalIdeal",
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
  "slug": "formallyunramified-of-map-maximalideal--0b6dd125c0ac629c02d08d05",
  "source": {
    "blob": "9561d981adef35629d468401007745d68fccc2f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 80,
    "path": "GRWTSK/Algebra/LocalRing/Variantffdf2075a9adce73bb02bcc34d3652e7db4f5891b181698fa6329bcf6bbd6070.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b6dd125c0ac629c02d08d051b3291a390eda465e43c6f3fa3c43dbcd45bbe89",
  "verification": {
    "reference": "docs/verification/Algebra/LocalRing/Variantffdf2075a9adce73bb02bcc34d3652e7db4f5891b181698fa6329bcf6bbd6070.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7aa4df4-3286-5b3c-8878-94031e5e3feb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma FormallyUnramified.of_map_maximalIdeal
    [Algebra.IsSeparable (ResidueField R) (ResidueField S)]
    (H : (maximalIdeal R).map (algebraMap R S) = maximalIdeal S) :
    Algebra.FormallyUnramified R S := by
  constructor
  have : FormallyUnramified (ResidueField R) (ResidueField S) := .of_isSeparable _ _
  have : FormallyUnramified R (ResidueField S) := .comp _ (ResidueField R) _
  rw [← subsingleton_tensorProduct (R := S)]
  refine subsingleton_of_forall_eq 0 fun x ↦ ?_
  obtain ⟨x, rfl⟩ := (KaehlerDifferential.exact_kerCotangentToTensor_mapBaseChange R S
    (ResidueField S) Ideal.Quotient.mk_surjective x).mp (Subsingleton.elim _ _)
  obtain ⟨⟨x, hx⟩, rfl⟩ := Ideal.toCotangent_surjective _ x
  simp only [KaehlerDifferential.kerCotangentToTensor_toCotangent]
  replace hx : x ∈ Ideal.map (algebraMap R S) (maximalIdeal R) := by simpa [H] using hx
  induction hx using Submodule.span_induction with
  | zero => simp
  | mem x h => obtain ⟨x, hx, rfl⟩ := h; simp
  | add x y hx hy _ _ => simp [*, TensorProduct.tmul_add]
  | smul a x hx _ =>
    have : residue S x = 0 := by rwa [residue_eq_zero_iff, ← H]
    simp [*, TensorProduct.tmul_add, TensorProduct.smul_tmul', ← Algebra.algebraMap_eq_smul_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalRing/Variantffdf2075a9adce73bb02bcc34d3652e7db4f5891b181698fa6329bcf6bbd6070.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalRing/Variantffdf2075a9adce73bb02bcc34d3652e7db4f5891b181698fa6329bcf6bbd6070.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9561d981adef35629d468401007745d68fccc2f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
