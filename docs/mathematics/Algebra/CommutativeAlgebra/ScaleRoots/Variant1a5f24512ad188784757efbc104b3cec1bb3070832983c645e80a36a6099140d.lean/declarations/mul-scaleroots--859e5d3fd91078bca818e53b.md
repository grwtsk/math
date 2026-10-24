# mul_scaleRoots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79afc27c3351833a16a37d00d3b67c633c9baf96",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 193,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1a5f24512ad188784757efbc104b3cec1bb3070832983c645e80a36a6099140d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:55557ba7-c071-17b8-5cea-610aec57c07c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f9564ba-ab8d-2a96-4985-360c9d4f3b08",
  "kind": "lemma",
  "lexical_name": "mul_scaleRoots",
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
  "slug": "mul-scaleroots--859e5d3fd91078bca818e53b",
  "source": {
    "blob": "79afc27c3351833a16a37d00d3b67c633c9baf96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 193,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Variant1a5f24512ad188784757efbc104b3cec1bb3070832983c645e80a36a6099140d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:859e5d3fd91078bca818e53b7c41556a6b8ac9905a910354eb7d2828f7750527",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ScaleRoots/Variant1a5f24512ad188784757efbc104b3cec1bb3070832983c645e80a36a6099140d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f9564ba-ab8d-2a96-4985-360c9d4f3b08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mul_scaleRoots (p q : R[X]) (r : R) :
    r ^ (natDegree p + natDegree q - natDegree (p * q)) • (p * q).scaleRoots r =
      p.scaleRoots r * q.scaleRoots r := by
  ext n; simp only [coeff_scaleRoots, coeff_smul, smul_eq_mul]
  trans (∑ x ∈ Finset.antidiagonal n, coeff p x.1 * coeff q x.2) *
    r ^ (natDegree p + natDegree q - n)
  · rw [← coeff_mul]
    cases lt_or_ge (natDegree (p * q)) n with
    | inl h => simp only [coeff_eq_zero_of_natDegree_lt h, zero_mul, mul_zero]
    | inr h =>
      rw [mul_comm, mul_assoc, ← pow_add, add_comm, tsub_add_tsub_cancel natDegree_mul_le h]
  · rw [coeff_mul, Finset.sum_mul]
    apply Finset.sum_congr rfl
    simp only [Finset.mem_antidiagonal, coeff_scaleRoots, Prod.forall]
    intro a b e
    cases lt_or_ge (natDegree p) a with
    | inl h => simp only [coeff_eq_zero_of_natDegree_lt h, zero_mul]
    | inr ha =>
      cases lt_or_ge (natDegree q) b with
      | inl h => simp only [coeff_eq_zero_of_natDegree_lt h, zero_mul, mul_zero]
      | inr hb =>
        simp only [← e, mul_assoc, mul_comm (r ^ (_ - a)), ← pow_add]
        rw [add_comm (_ - _), tsub_add_tsub_comm ha hb]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ScaleRoots/Variant1a5f24512ad188784757efbc104b3cec1bb3070832983c645e80a36a6099140d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Variant1a5f24512ad188784757efbc104b3cec1bb3070832983c645e80a36a6099140d.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79afc27c3351833a16a37d00d3b67c633c9baf96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
