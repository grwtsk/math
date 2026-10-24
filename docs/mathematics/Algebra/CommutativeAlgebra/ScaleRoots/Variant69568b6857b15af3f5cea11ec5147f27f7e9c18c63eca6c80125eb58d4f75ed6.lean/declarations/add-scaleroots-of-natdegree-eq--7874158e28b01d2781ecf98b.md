# add_scaleRoots_of_natDegree_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1f54b81-4059-ba29-d6a1-4b31344f7cd3",
  "kind": "lemma",
  "lexical_name": "add_scaleRoots_of_natDegree_eq",
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
  "slug": "add-scaleroots-of-natdegree-eq--7874158e28b01d2781ecf98b",
  "source": {
    "blob": "6cf059d83b19f8c6570f3f5a41367af9a595bbc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 217,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7874158e28b01d2781ecf98bef2e3a6441551e0ba758feb185f9f68518afff01",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1f54b81-4059-ba29-d6a1-4b31344f7cd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma add_scaleRoots_of_natDegree_eq (p q : R[X]) (r : R) (h : natDegree p = natDegree q) :
    r ^ (natDegree p - natDegree (p + q)) • (p + q).scaleRoots r =
      p.scaleRoots r + q.scaleRoots r := by
  ext n; simp only [coeff_smul, coeff_scaleRoots, coeff_add, smul_eq_mul,
    mul_comm (r ^ _), ← pow_add, ← h, ← add_mul, add_comm (_ - n)]
  #adaptation_note /-- v4.7.0-rc1
  Previously `mul_assoc` was part of the `simp only` above, and this `rw` was not needed.
  but this now causes a max rec depth error. -/
  rw [mul_assoc, ← pow_add]
  cases lt_or_le (natDegree (p + q)) n with
  | inl hn => simp only [← coeff_add, coeff_eq_zero_of_natDegree_lt hn, zero_mul]
  | inr hn =>
      rw [add_comm (_ - n), tsub_add_tsub_cancel (natDegree_add_le_of_degree_le le_rfl h.ge) hn]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cf059d83b19f8c6570f3f5a41367af9a595bbc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
