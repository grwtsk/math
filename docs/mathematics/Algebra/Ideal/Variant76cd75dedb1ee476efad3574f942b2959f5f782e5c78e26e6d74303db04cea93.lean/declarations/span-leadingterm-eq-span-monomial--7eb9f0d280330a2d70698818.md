# span_leadingTerm_eq_span_monomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dac63ce6ee2b177434a64b7f47c7301977ddebc5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/76cd75dedb1ee476efad3574f942b2959f5f782e5c78e26e6d74303db04cea93.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:55abce3b-cace-54e8-df0e-6ee2ef0ac473",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:37cf6de9-9756-5b20-3e3e-343a4cb31256",
  "kind": "lemma",
  "lexical_name": "span_leadingTerm_eq_span_monomial",
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
  "slug": "span-leadingterm-eq-span-monomial--7eb9f0d280330a2d70698818",
  "source": {
    "blob": "dac63ce6ee2b177434a64b7f47c7301977ddebc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 160,
    "path": "GRWTSK/Algebra/Ideal/Variant76cd75dedb1ee476efad3574f942b2959f5f782e5c78e26e6d74303db04cea93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7eb9f0d280330a2d70698818b48f82756700afe7b7eb4cbf073bb86dff6498b3",
  "verification": {
    "reference": "docs/verification/Algebra/Ideal/Variant76cd75dedb1ee476efad3574f942b2959f5f782e5c78e26e6d74303db04cea93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37cf6de9-9756-5b20-3e3e-343a4cb31256`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma span_leadingTerm_eq_span_monomial {B : Set (MvPolynomial σ R)}
    (hB : ∀ p ∈ B, IsUnit (m.leadingCoeff p)) :
    span (m.leadingTerm '' B) =
      span ((fun p ↦ MvPolynomial.monomial (m.degree p) (1 : R)) '' B) := by
  apply le_antisymm
  all_goals
    rw [Ideal.span_le, Set.image_subset_iff]
    intro p hp
  · rw [Set.mem_preimage, SetLike.mem_coe, ← C_mul_leadingCoeff_monomial_degree]
    exact Ideal.mul_mem_left _ _ (Ideal.subset_span ⟨_, hp, rfl⟩)
  · rw [Set.mem_preimage, SetLike.mem_coe]
    convert!
      (span <| m.leadingTerm '' B).mul_mem_left (MvPolynomial.C (hB p hp).unit⁻¹.val) <|
        subset_span ⟨p, hp, rfl⟩
    rw [← C_mul_leadingCoeff_monomial_degree, ← mul_assoc, ← map_mul,
      IsUnit.val_inv_mul, MvPolynomial.C_1, one_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variant76cd75dedb1ee476efad3574f942b2959f5f782e5c78e26e6d74303db04cea93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variant76cd75dedb1ee476efad3574f942b2959f5f782e5c78e26e6d74303db04cea93.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dac63ce6ee2b177434a64b7f47c7301977ddebc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
